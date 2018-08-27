#include "PictureAnalyse.h" 
#include "data_conf.h"
#include "OV7670.h"
#include "GUI_32.h"
uint16_t Control_Value;  //控制量， 对外接口
uint8_t VSYNCCnt = 0;    //中断计数量
uint16_t yBuf[500];//存放被选中的像素点当中变成黑点的坐标
uint16_t p=0;//指针变量v
uint16_t Time;
Picture_Control PictureContorl;
void PictureAnalyse(void)
{
uint16_t x=0,y=0;
		uint16_t average=0;

uint16_t t1=0,t2=0,temp=0;   //循环量中转量  

EXTI_ClearITPendingBit(EXTI_Line4);  	
	 //给指针复位
	LED1(ON);
	LED2(OFF);
   VSYNCCnt++;
	/*
	1:等待OV7670同步信号，进入中断函数说明沿信号来了
	*/
	if(VSYNCCnt==1)    //FIFO写指针复位
	{
	  FIFO_WRST=1;
		for(x=0;x<5;x++);
		FIFO_WRST=0;
 		for(x=0;x<100;x++);
		FIFO_WRST=1;      	//写指针复位
		FIFO_WR=1;	  //写使能，写指针复位只会就可以开始写了	   
	}

	/*
	2&3:FIFO写指针复位，按照手册上的时序，复位完成
	*/
	
	/*
	4:进入下面这个函数说明第二次接收到了沿信号
	*/
	if(VSYNCCnt==2)
	{
	 	FIFO_WR=0;     //禁止CMOS数据写入FIFO
	/*
	5:禁止FIFO写，换做读数据，读写使能转换，一帧数据储存完毕
	*/
/////////////////////读取数据完毕///////////////////////////////////

		EXTI->IMR&=~(1<<4);	 //静止外部中断
		EXTI->EMR&=~(1<<4);
	   
			FIFO_RRST =0;				//读指针复位										
			for(x=0;x<10;x++)		
			{
				FIFO_RCK =0;				//至少需要一个时钟周期的跳变才能复位
				FIFO_RCK =1;
			}
			FIFO_RRST =1;
      /*
		1：FIFO读指针复位操作完成，参照读指针复位时序
	  */

		write_cmd_data(0x0003,0x1018);
		write_cmd_data(0x0050,0x0000); 
		write_cmd_data(0x0051,0x00ef);
		write_cmd_data(0x0052,0x0000);
		write_cmd_data(0x0053,0x013f);
		write_cmd_data(0x0020,0x0000);
		write_cmd_data(0x0021,0x013f);   
		//设置TFT显示模式，为动态显示
			
		LCD_WriteRAM_Prepare();
		FIFO_OE=0;			  //允许FIFO输出，打开输出时能
			

		for(x = 1; x <= Windows_X; x ++)	 
		 {	
			 	LED1(OFF);
				LED2(ON);			
		 	for(y = 1; y <= Windows_Y; y ++)
			{			
				FIFO_RCK=0;					
				FIFO_RCK=1;				//模拟读时钟，读取高八位字节
				
				//读取T1的时间段  低八位

				
				FIFO_RCK=0;						
				FIFO_RCK=1;	//模拟读时钟，读取第八位
				
				//读高八位 YUV输出高八位有效
				//核心算法 取27*27个采样点，若采样点为黑点则把该点的横坐标放入Buf中最终求和
			   if(0x0002&GPIOD->IDR)  //第三根数据线有效   &&x%6==0&&y%8==0
				{
						t1=0xff;  //以位带字节，位1字节FF 位0 字节00
					  //yBuf[p]=x; //说明该采样点是黑色的
					 // PictureContorl.Control_Value+=yBuf[p];//求和黑点横坐标
					//  p++;//黑点指针加
				}
				else
				{
						t1=0x00;  
				}
				#ifdef TFT_OutPut
			  temp=(t1<<8)|t2;	//整合	
				write_data_u16(temp);//整合数据+显示在TFT上	
				#endif
			}
		}
		  p=0; 

		 		PictureContorl.Control_Value=PictureContorl.Control_Value/p;	//取平均
		  if(PictureContorl.TakeVerf==1)//抓拍参考值
			{
				PictureContorl.Control_Value_Verf=PictureContorl.Control_Value;
				PictureContorl.TakeVerf=0;
			}
				 TIM_Cmd(TIM1, DISABLE);
		//	while(1)
				//				GUI_wrul(200,250,TIM1->CNT,0x0000,0xffff); //刷新控制�
		/*
		2&3&4 : 读取一侦数据结束
		*/	

		FIFO_OE=1;		 	  //禁止FIFO输出
		VSYNCCnt = 0;	      //清楚数量标志
		EXTI->IMR|=(1<<4);	  //允许外部中断，以便接收下帧图像数据
		EXTI->EMR|=(1<<4);
   }
 }

 void TakeVerfPhoto()
 {
	 PictureContorl.TakeVerf=1;
 }
 
