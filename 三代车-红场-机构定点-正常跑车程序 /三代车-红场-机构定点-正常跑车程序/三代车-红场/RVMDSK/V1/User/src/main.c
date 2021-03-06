#include "main.h"
int8_t UpdataTFT_flag = 0;
s16 SpeedLast[3] = {0};
s16 data1 = 0,data2 = 0,data3 = 0,data4 = 0;
int i = 0,j = 0;	
float message = 0 ;
int count = 0;
int send_flag = 0;
s16 HuorDistanceLast = 0;
int beep_starttime = 0;
int beep_startcount = 0;
u8 button1 = 0,button2 = 0,button3 = 0;

// 需要修改的参数

int main()
 {
	 // 前瞻50cm
	SystemInit();
	NVIC_PriorityGroupConfig(NVIC_PriorityGroup_2);
	ili9320_Initializtion();
	led_configuration();
	Can1_Configuration();
	while(OV_Init()==1)			
	{  
		LED_TOGGLE();
		delay_ms(50);
	}									// OV7725初始化
	LED_OFF(); 
	delay_ms(200); 
	OV_Start();
	USART_GPIO_Config();
	SysTick_Config(1680000);	 // 10ms进行一次计时函数调用
	beep_send_flag = 1;

	/* 重启 */
	button1 = GPIO_ReadInputDataBit(GPIOC,GPIO_Pin_13);
	button2 = GPIO_ReadInputDataBit(GPIOC,GPIO_Pin_14);
	button3 = GPIO_ReadInputDataBit(GPIOC,GPIO_Pin_15);

	if(button1==0&&button2==0&&button3==0)
	{
		sp_flag = 1;
		hd_flag = 0;
		xp_flag = 0;
		beep_count_send = 1;
		beep_time_send = 15;
	}
	else if(button1==1&&button2==0&&button3==0)
	{
		sp_flag = 0;
		hd_flag = 1;
		xp_flag = 0;
		beep_count_send = 2;
		beep_time_send = 15;
	}
	else if(button1==1&&button2==1&&button3==0)
	{
		sp_flag = 0;
		hd_flag = 0;
		xp_flag = 1;
		XpHuorStartFlag = 1;
		beep_count_send = 3;
		beep_time_send = 15;
	}  
	else if(button1==1&&button2==1&&button3==1)
	{
		sp_flag = 0;
		hd_flag = 0;
		xp_flag = 1;
		hand_restart = 1;
		beep_count_send = 4;
		beep_time_send = 15;
	}
	
	/* 显示屏初始化变量显示   记录场地参数，7ms*/
	ili9320_SetCursor(0,0);
	LCD->LCD_REG = R34; 
	GUI_Text(0,60,(u8*)"stage:",6,Black,White);
	GUI_Text(0,80,(u8*)"nu:",3,Black,White);
	GUI_Text(0,100,(u8*)"rr:",3,Black,White);
	GUI_Text(0,120,(u8*)"Hd:",3,Black,White);
	GUI_Text(0,140,(u8*)"Stop:",5,Black,White);
	GUI_Text(0,160,(u8*)"Dist:",5,Black,White);
	GUI_Text(0,180,(u8*)"UlDis:",6,Black,White);

	send_picture_flag = 0;
		
	while(1)
	{
		if(GPIO_ReadInputDataBit(GPIOC,GPIO_Pin_13)==0&&send_picture_flag==2)	
			send_picture_flag = 0;
		else if(send_picture_flag==0&&GPIO_ReadInputDataBit(GPIOC,GPIO_Pin_13)==1)				
			send_picture_flag = 1;	
		if(UpdataTFT_flag != 0)
			{	
//				if(UVFlag==1)
//				{
					if(xp_flag==1&&img_cross_flag<=2)
						Transfer2Gray_UV(image, Gray_Image_Buffer);
					else
					{
						Transfer2Gray(image, Gray_Image_Buffer);	// 提取灰度图，亮度图		
					}
//				}
//				else
//					Transfer2Gray(image, Gray_Image_Buffer);
				/* 发送图片到上位机 */
				if(send_picture_flag==1)
				{
					send_picture_flag = 2;
					if(ScreenChangeFlag==0)
						ScreenChangeFlag = 1;
					else if(ScreenChangeFlag==1)
						ScreenChangeFlag = 0;
					//send_picture(Gray_Image_Buffer,R*C);
//					if(UVFlag==0)
//					{
//						UVFlag = 1; 
//						xp_threshold_value = 3;
//						xp_value_sub = 6;
//					}
//					else if(UVFlag==1)
//					{
//						UVFlag = 0;
//						xp_threshold_value = 5;
//						xp_value_sub = 10;
//					}
				} 	
				// 判断摄像头图像是否乱掉
				restart_flag = restart_judge(Gray_Image_Buffer);
				if(restart_flag==1)
				{
					OV_Init2();
					OV_Start();
				}
				
				/* 阈值化 */
				if(sp_flag==1)
					image_threshold_sp(Gray_Image_Buffer);
				else if(hd_flag==1)
					image_threshold_hd(Gray_Image_Buffer);
				else 				
					image_threshold_xp(Gray_Image_Buffer);
				
				
				/* 图象显示2ms */
				ili9320_SetCursor(0,0);
				LCD->LCD_REG = R34; 
				for(i=0;i<R;i++)
				{
					for(j=0;j<C;j++)
						LCD->LCD_RAM=*((uint8_t *)Gray_Image_Buffer+(R-1-i)*C+j);
					for(j=C;j<IMAGE_COLUMN;j++)
						LCD->LCD_RAM=Red;
				}	
				
				/* 中线提取 */
				if(hd_flag==1)
					midline_draw_hd(Gray_Image_Buffer);
				else 
					midline_draw(Gray_Image_Buffer);

				/* 信息计算，发送 */
				message = error_ca(); 
				CameraPid();
				
				// 虚拟示波器观察数据
//				send_flag++;
//				if(send_flag>=2&&img_stop_flag!=5)
//				{
//					data1 = sp_flag*100+xp_flag*300+hd_flag*200;
//					if(hd_flag==1)
//						data1+=hd_stage_flag*20;
//					else if(xp_flag==1)
//						data1+=img_stop_flag*20;
//					data2 = nu;
//					data3 = race*100;//控制列信息
//					data4 = control_message;
//					VS4Channal_Send(data1,data2,data3,data4);
//					send_flag = 0;
//				}      
				UpdataTFT_flag=0;
				//framecount++;
			}	
	}	
}

/* 一张图片传输完成，场中断 */
void DMA2_Stream1_IRQHandler(void)
{
	if(DMA_GetITStatus(DMA2_Stream1, DMA_IT_TCIF1))
  {
		DMA_ClearFlag(DMA2_Stream1, DMA_FLAG_TCIF1);
    DMA_ClearITPendingBit(DMA2_Stream1, DMA_IT_TCIF1);
		DCMI_CaptureCmd(DISABLE);			
		UpdataTFT_flag=1;
		DCMI_CaptureCmd(ENABLE); 											// 中断只负责标志位的管理，处理函数放到中断外面
	}
}

/* 定时器 */
void SysTick_Handler()
{
	count++;
	speed_time++;
	if(zj_sc_count>0)
		zj_sc_count--;
	// 记录时间，做成时间轴
//	if(HuorDistance>20)
//		time_axial++;
	
	//上电蜂鸣器响三声
	if(beep_send_flag==1)
	{
		beep_startcount = 0;
		beep_starttime = 0;
		beep_send_flag = 0;
	}
	if(beep_starttime<=beep_time_send&&beep_startcount<=beep_count_send*2)
	{
		beep_starttime++;
		if(beep_starttime>=beep_time_send)
		{
			beep_count=0;
		  beep_starttime=0;
		  beep_startcount+=1;
		  if(beep_startcount%2==0)
		  {
			  beep_count=1;
		  }
			SendPulseBeep(beep_count,PulseLockPoint);
		}	
	}
	
	if(count==10)
	{
//		if(FrameCount!=framecount)
//			FrameCount=framecount;	
//		if((img_cross_flag==2||cross_flag>5)&&speed_now==0&&hand_restart==0)
//		{
//			stop_time++;
//			if(stop_time>10&&XPStopToHandFlag==0)
//				XPStopToHandFlag = 1;
//		}
		if(hand_restart==2)
			stop_time++;
		if(img_cross_flag==2&&speed_now==0)
			stop_time++;
//		framecount=0;
		count=0;
	}
	// 测速度
	if(speed_time==1)
	{
		HuorDistanceLast = HuorDistance;
	}
	else if(speed_time==10)
	{
		speed_time = 0;
		speed_now = HuorDistance-HuorDistanceLast;
	}
	SysTick->VAL = 0;    
}

