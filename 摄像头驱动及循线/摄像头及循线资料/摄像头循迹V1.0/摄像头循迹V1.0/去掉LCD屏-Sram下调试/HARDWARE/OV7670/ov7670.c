#include "sys.h"
#include "ov7670.h"
#include "ov7670config.h"	  
#include "delay.h"
#include "usart.h"			 
#include "sccb.h"	


//数据采集矩阵
u16 Array[60] ={
	 /*采集像素点矩阵【（46,150），（49,154）】 320列*/
	14870,14871,14872,14873,14874,
	15190,15191,15192,15193,15194,
	15510,15511,15512,15513,15514,
	15830,15831,15832,15833,15834,
	 /*采集像素点矩阵【（100,10），（104,13）】 320列*/
	32010,32011,32012,32013,			 
	32330,32331,32332,32333,
	32650,32651,32652,32653,
	32970,32971,32972,32973,
	33290,33291,33292,33293,
	/*采集像素点矩阵【（165,150），（168,154）】 320列  */
	52950,52951,52952,52953,52954,		 
	53270,53271,53272,53273,53274,
	53590,53591,53592,53593,53594,
	53910,53911,53912,53913,53914,

};
		    
//初始化OV7670
//返回0:成功
//返回其他值:错误代码
u8 OV7670_Init(void)
{
	u8 temp;
	u16 i=0;
	 
 	GPIO_InitTypeDef  GPIO_InitStructure;
 	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA|RCC_APB2Periph_GPIOB|RCC_APB2Periph_AFIO, ENABLE);	 
 

	GPIO_InitStructure.GPIO_Pin  = GPIO_Pin_15; 	//PA15 输入 上拉
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
 	GPIO_Init(GPIOA, &GPIO_InitStructure);


	
 	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_0|GPIO_Pin_1|GPIO_Pin_4|GPIO_Pin_11|GPIO_Pin_12;				 // |GPIO_Pin_14端口配置
 	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP; 		 //推挽输出
 	GPIO_Init(GPIOA, &GPIO_InitStructure);
 	GPIO_SetBits(GPIOA,GPIO_Pin_0|GPIO_Pin_1|GPIO_Pin_4|GPIO_Pin_11|GPIO_Pin_12);//|GPIO_Pin_14);
	
	/*PB0~7设置为输入*/
	GPIOB->CRL=0X88888888;	



   // GPIO_PinRemapConfig(GPIO_Remap_SWJ_JTAGDisable,ENABLE);	//SWD
	JTAG_Set(SWD_ENABLE);
 	SCCB_Init();        		//初始化SCCB 的IO口	   	  
 	if(SCCB_WR_Reg(0x12,0x80))return 1;	//复位SCCB	  
	delay_ms(50); 
	//读取产品型号
 	temp=SCCB_RD_Reg(0x0b);   
	if(temp!=0x73)return 2;  
 	temp=SCCB_RD_Reg(0x0a);   
	if(temp!=0x76)return 2;
	//初始化序列	  
	for(i=0;i<sizeof(ov7670_init_reg_tbl)/sizeof(ov7670_init_reg_tbl[0])/2;i++)
	{
	   	SCCB_WR_Reg(ov7670_init_reg_tbl[i][0],ov7670_init_reg_tbl[i][1]);
		delay_ms(2);
 	}
   	return 0x00; 	//ok
} 
////////////////////////////////////////////////////////////////////////////
//OV7670功能设置
//白平衡设置
//0:自动
//1:太阳sunny
//2,阴天cloudy
//3,办公室office
//4,家里home
void OV7670_Light_Mode(u8 mode)
{
	u8 reg13val=0XE7;//默认就是设置为自动白平衡
	u8 reg01val=0;
	u8 reg02val=0;
	switch(mode)
	{
		case 1://sunny
			reg13val=0XE5;
			reg01val=0X5A;
			reg02val=0X5C;
			break;	
		case 2://cloudy
			reg13val=0XE5;
			reg01val=0X58;
			reg02val=0X60;
			break;	
		case 3://office
			reg13val=0XE5;
			reg01val=0X84;
			reg02val=0X4c;
			break;	
		case 4://home
			reg13val=0XE5;
			reg01val=0X96;
			reg02val=0X40;
			break;	
	}
	SCCB_WR_Reg(0X13,reg13val);//COM8设置 
	SCCB_WR_Reg(0X01,reg01val);//AWB蓝色通道增益 
	SCCB_WR_Reg(0X02,reg02val);//AWB红色通道增益 
}				  
//色度设置
//0:-2
//1:-1
//2,0
//3,1
//4,2
void OV7670_Color_Saturation(u8 sat)
{
	u8 reg4f5054val=0X80;//默认就是sat=2,即不调节色度的设置
 	u8 reg52val=0X22;
	u8 reg53val=0X5E;
 	switch(sat)
	{
		case 0://-2
			reg4f5054val=0X40;  	 
			reg52val=0X11;
			reg53val=0X2F;	 	 
			break;	
		case 1://-1
			reg4f5054val=0X66;	    
			reg52val=0X1B;
			reg53val=0X4B;	  
			break;	
		case 3://1
			reg4f5054val=0X99;	   
			reg52val=0X28;
			reg53val=0X71;	   
			break;	
		case 4://2
			reg4f5054val=0XC0;	   
			reg52val=0X33;
			reg53val=0X8D;	   
			break;	
	}
	SCCB_WR_Reg(0X4F,reg4f5054val);	//色彩矩阵系数1
	SCCB_WR_Reg(0X50,reg4f5054val);	//色彩矩阵系数2 
	SCCB_WR_Reg(0X51,0X00);			//色彩矩阵系数3  
	SCCB_WR_Reg(0X52,reg52val);		//色彩矩阵系数4 
	SCCB_WR_Reg(0X53,reg53val);		//色彩矩阵系数5 
	SCCB_WR_Reg(0X54,reg4f5054val);	//色彩矩阵系数6  
	SCCB_WR_Reg(0X58,0X9E);			//MTXS 
}
//亮度设置
//0:-2
//1:-1
//2,0
//3,1
//4,2
void OV7670_Brightness(u8 bright)
{
	u8 reg55val=0X00;//默认就是bright=2
  	switch(bright)
	{
		case 0://-2
			reg55val=0XB0;	 	 
			break;	
		case 1://-1
			reg55val=0X98;	 	 
			break;	
		case 3://1
			reg55val=0X18;	 	 
			break;	
		case 4://2
			reg55val=0X30;	 	 
			break;	
	}
	SCCB_WR_Reg(0X55,reg55val);	//亮度调节 
}
//对比度设置
//0:-2
//1:-1
//2,0
//3,1
//4,2
void OV7670_Contrast(u8 contrast)
{
	u8 reg56val=0X40;//默认就是contrast=2
  	switch(contrast)
	{
		case 0://-2
			reg56val=0X30;	 	 
			break;	
		case 1://-1
			reg56val=0X38;	 	 
			break;	
		case 3://1
			reg56val=0X50;	 	 
			break;	
		case 4://2
			reg56val=0X60;	 	 
			break;	
	}
	SCCB_WR_Reg(0X56,reg56val);	//对比度调节 
}
//特效设置
//0:普通模式    
//1,负片
//2,黑白   
//3,偏红色
//4,偏绿色
//5,偏蓝色
//6,复古	    
void OV7670_Special_Effects(u8 eft)
{
	u8 reg3aval=0X04;//默认为普通模式
	u8 reg67val=0XC0;
	u8 reg68val=0X80;
	switch(eft)
	{
		case 1://负片
			reg3aval=0X24;
			reg67val=0X80;
			reg68val=0X80;
			break;	
		case 2://黑白
			reg3aval=0X14;
			reg67val=0X80;
			reg68val=0X80;
			break;	
		case 3://偏红色
			reg3aval=0X14;
			reg67val=0Xc0;
			reg68val=0X80;
			break;	
		case 4://偏绿色
			reg3aval=0X14;
			reg67val=0X40;
			reg68val=0X40;
			break;	
		case 5://偏蓝色
			reg3aval=0X14;
			reg67val=0X80;
			reg68val=0XC0;
			break;	
		case 6://复古
			reg3aval=0X14;
			reg67val=0XA0;
			reg68val=0X40;
			break;	 
	}
	SCCB_WR_Reg(0X3A,reg3aval);//TSLB设置 
	SCCB_WR_Reg(0X68,reg67val);//MANU,手动U值 
	SCCB_WR_Reg(0X67,reg68val);//MANV,手动V值 
}	
//设置图像输出窗口
//对QVGA设置。
void OV7670_Window_Set(u16 sx,u16 sy,u16 width,u16 height)
{
	u16 endx;
	u16 endy;
	u8 temp; 
	endx=sx+width*2;	//V*2
 	endy=sy+height*2;
	if(endy>784)endy-=784;
	temp=SCCB_RD_Reg(0X03);				//读取Vref之前的值
	temp&=0XF0;
	temp|=((endx&0X03)<<2)|(sx&0X03);
	SCCB_WR_Reg(0X03,temp);				//设置Vref的start和end的最低2位
	SCCB_WR_Reg(0X19,sx>>2);			//设置Vref的start高8位
	SCCB_WR_Reg(0X1A,endx>>2);			//设置Vref的end的高8位

	temp=SCCB_RD_Reg(0X32);				//读取Href之前的值
	temp&=0XC0;
	temp|=((endy&0X07)<<3)|(sy&0X07);
	SCCB_WR_Reg(0X17,sy>>3);			//设置Href的start高8位
	SCCB_WR_Reg(0X18,endy>>3);			//设置Href的end的高8位
}

extern u8 ov_sta;	//在exit.c里面定义

/*
	函 数 名：camera_refresh
	输入参数：void
	返 回 值：STOP 		0
			  GOHEAD	1
			  goLEFT		2
			  goRIGHT		3
			  
*/
u8 camera_refresh(void)
{
	u32 j;
	u8 k = 0;
 	u16 color;


	u8 whitepoint = 0;
	u8 leftblackpoint  = 0;
	u8 rightblackpoint = 0;

volatile u8 JudgeFlag = 0;
	
		 
	if(ov_sta==2)
	{
	
//		 	  	/*关闭定时器中断*/
//				NVIC_DisableIRQ(TIM3_IRQn);			//读取fifo不被打断
//				NVIC_DisableIRQ(TIM2_IRQn);			//读取fifo不被打断
//				NVIC_DisableIRQ(EXTI15_10_IRQn); 	//避免再次写fifo
		/*开始复位读指针 */
		OV7670_RRST=0;				
		OV7670_RCK=0;
		OV7670_RCK=1;
		OV7670_RCK=0;
		/*复位读指针结束 */
		OV7670_RRST=1;		
		OV7670_RCK=1; 	
			for(j=0;j<76800;j++)
			{	

			
						/*读数据*/
				OV7670_RCK=0;
				color=GPIOB->IDR&0x00FF;
				OV7670_RCK=1;
				 
				color<<=8;
				  
				/*读数据*/
				OV7670_RCK=0;
				color|=GPIOB->IDR&0x00FF;	
				OV7670_RCK=1; 

//			EXTI_ClearITPendingBit(EXTI_Line15);



			if(j == Array[k]&&(k<=60))//init(k) = 0									  -=
			{
				if(k < 20)
				{
					   
					 if(!(color&0x8000))  //检测底片  黑，如果bit15为0，则黑点
						leftblackpoint++;
						
				}
				else if(k < 40)
				{
					if(color&0x8000)
					whitepoint++;		//测得白点
					
				}
				else if(k < 60)
				{
						if(!(color&0x8000))  //检测底片  黑，如果bit15为0，则黑点
						rightblackpoint++;
					
				}														   	 
			k++;
			}   
	   	}						 
				
		ov_sta=0;					//开始下一次采集

 	  	
		k=0;
	if(whitepoint<=13)	    //中间端未检测到白色则停止
	{
		JudgeFlag = 0;// stop
	}
	else 
	{

		if((whitepoint>13)&&(leftblackpoint>13)&&(rightblackpoint>13))//如果左端块黑色  中端块白色 右端块黑色 则前进
		{
			JudgeFlag = 1;
		}
	
		if(leftblackpoint <= 13 && rightblackpoint >13)	//左端白色 右端黑色 则向往左
		{
			JudgeFlag = 2;  //goleft
		}

		if(leftblackpoint > 13 && rightblackpoint <= 13)	//右端白色 左端黑色 则向往右
		{
			JudgeFlag = 3;  //goright
		}
    }	



	} 

// 	  
//	 /*开启定时器中断*/
//
//	 NVIC_EnableIRQ(TIM2_IRQn);
//	 NVIC_EnableIRQ(TIM3_IRQn);
//	 NVIC_EnableIRQ(EXTI15_10_IRQn);
	return JudgeFlag;
}		

























