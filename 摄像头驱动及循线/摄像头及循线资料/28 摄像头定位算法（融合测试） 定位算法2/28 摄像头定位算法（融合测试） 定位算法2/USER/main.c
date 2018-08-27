#include "stm32f10x.h"
#include "Nvic_Exit.h"
#include "ov7670.h"
#include "I2C.h"
#include "ILI9325_32.h"
#include "GUI_32.h"
#include "delay.h"
#include "led.h"
#include "data_conf.h"
#include "PictureAnalyse.h"
#include "Tim1.h"

/*
用到的模块
1：IIC 对应端口初始化
2：OV7670寄存器初始化+端口初始化
3：添加FIFO.C辅助端口初始化，并且添加RRST()和WRST()两个初始化函数
4：外部中断初始化
5：LED指示灯初始化
6：延时初始化
7: 串口初始化 测试用

程序逻辑

*/
extern Picture_Control PictureContorl;
int main()
{ 
	  LED_GPIO_Config();//指示灯初始化
	  delay_init(72);//延时初始化   
	  ILI9325_initial();//TFT端口初始化
	  Anal_I2C_Init();//IIC初始化
    ov7670_PortConfig();//摄像头模块引脚初始化//对RCK,WR,OE,WRST,RRST进行了端口设置	
	  Cmos7670_init();//配置寄存
	  GUI_clearscreen(0xffff);//清屏 
    GUI_sprintf_string(50, 100,"TFT Init Successful !", 0x0000,0xffff);	//显示初始化
	  GUI_clearscreen(0xffff);//清屏 
		Exit_Init(GPIOC, GPIO_Pin_12, GPIO_Mode_IPU, EXTI_Trigger_Falling, 0, 0);	//VSYNC //外部中断初始化
  //	TakeVerfPhoto();
	  TIM1_Init();
		GUI_sprintf_string(10,50,"ERROR:",0x0000,0xffff);
	  GUI_sprintf_string(10,100,"ERROR_Verf:",0x0000,0xffff);
		GUI_sprintf_string(10,150,"+offset:",0x0000,0xffff);
		GUI_sprintf_string(10,200,"-offset:",0x0000,0xffff);
	  GUI_sprintf_string(10,250,"RunTime:",0x0000,0xffff);
    while(1)
		{

      	GUI_wrul(200,50,PictureContorl.Control_Value,0x0000,0xffff); //刷新控制�
			GUI_wrul(200,100,PictureContorl.Control_Value_Verf,0x0000,0xffff); //刷新控制量
		  if(PictureContorl.Control_Value-PictureContorl.Control_Value_Verf>0)
			
				GUI_wrul(200,150,(PictureContorl.Control_Value-PictureContorl.Control_Value_Verf),0x0000,0xffff); //刷新控制量
			else
        GUI_wrul(200,200,(PictureContorl.Control_Value_Verf-PictureContorl.Control_Value),0x0000,0xffff); //刷新控制量
				GUI_wrul(200,250,PictureContorl.Control_Value,0x0000,0xffff); //刷新控制�
			
		}
}

