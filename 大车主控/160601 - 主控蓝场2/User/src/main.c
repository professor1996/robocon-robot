#include "main.h"
#include <math.h>
/************设置任务优先级（单位为 OS_STK ）************/
#define START_TASK_PRIO 	5
#define	TASK_Run_PRIO		  10
#define	TASK_LCD_PRIO			55
#define	TASK_Arm_PRIO			25
#define	TASK_Fan_PRIO			30
#define	TASK_Visual_PRIO	57
#define	TASK_6_PRIO				15
#define	TASK_Led_PRIO			60
#define	TASK_Warning_PRIO	4



/************设置栈大小（单位为 OS_STK ）************/
#define START_TASK_STK_SIZE 	256
#define	TASK_Run_STK_SIZE		  256
#define	TASK_LCD_STK_SIZE			256
#define	TASK_Arm_STK_SIZE			256
#define	TASK_Fan_STK_SIZE			256
#define	TASK_Visual_STK_SIZE	256
#define	TASK_6_STK_SIZE				256
#define	TASK_Led_STK_SIZE			256
#define	TASK_Warning_STK_SIZE	256


__align(8) OS_STK start_task_stk[START_TASK_STK_SIZE];			//定义栈
__align(8) OS_STK task_Run_stk[TASK_Run_STK_SIZE];		  		//定义栈
__align(8) OS_STK task_LCD_stk[TASK_LCD_STK_SIZE];		  		//定义栈
__align(8) OS_STK task_Arm_stk[TASK_Arm_STK_SIZE];		  		//定义栈
__align(8) OS_STK task_Fan_stk[TASK_Fan_STK_SIZE];		  		//定义栈
__align(8) OS_STK task_Visual_stk[TASK_Visual_STK_SIZE];		//定义栈
__align(8) OS_STK task_6_stk[TASK_6_STK_SIZE];		  				//定义栈
__align(8) OS_STK task_Led_stk[TASK_Led_STK_SIZE];		  		//定义栈
__align(8) OS_STK task_Warning_stk[TASK_Warning_STK_SIZE];	//定义栈

void TaskStart(void *arg);
void TaskRun(void *arg);
void TaskLCD(void *arg);
void TaskArm(void *arg);
void TaskFan(void *arg);
void TaskVisual(void *arg);
void Task6(void *arg);
void TaskLed(void *arg);
void TaskWarning(void *arg);

OS_STK_DATA StackBytes_start;
OS_STK_DATA StackBytes_1;
OS_STK_DATA StackBytes_2;
OS_STK_DATA StackBytes_3;
OS_STK_DATA StackBytes_4;
OS_STK_DATA StackBytes_5;
OS_STK_DATA StackBytes_6;
OS_STK_DATA StackBytes_7;
OS_STK_DATA StackBytes_8;

int main(void)
{
		SystemInit();
		Beep_Configuration();
		LED_Configuration();
		Led8_Configuration();
		Key_Configuration();
		ili9320_Initializtion();
		NVIC_PriorityGroupConfig(NVIC_PriorityGroup_2);
		
	
		Can1_Configuration();
    Can2_Configuration();
		usart_config();
		USART2_Configuration();
	  USART4_Configuration();
		second_order_init2(&second_order_flt_DT50,250);
		second_order_init2(&second_order_flt_Rotate,250);
		second_order_init2(&second_order_flt_X,200);
		second_order_init2(&second_order_flt_Y,200);
		second_order_init2(&second_order_flt_Vx,20);
		second_order_init2(&second_order_flt_Vy,20);
	  TIM7_init();
	
		#if Switch_CanReturn
			Tim2Configuration();
		#endif
	#if Switch_Exti
	  exti_init();
	#endif
	
	
		OSInit();
		OSTaskCreateExt(TaskStart,(void *)0,&start_task_stk[START_TASK_STK_SIZE-1],START_TASK_PRIO,START_TASK_PRIO,start_task_stk,START_TASK_STK_SIZE,(void *)0,OS_TASK_OPT_STK_CHK|OS_TASK_OPT_STK_CLR);
		OSStart();
		return 0;
}



void TaskStart(void *arg)
{
//	OS_CPU_SR cpu_sr = 0;
	u8 StartKey=0;
  (void)arg;                		// 'arg' 并没有用到，防止编译器提示警告
	OS_CPU_SysTickInit ();
	
	RunStart=OSSemCreate(0);
	ArmStart=OSSemCreate(0);
	Task6Start=OSSemCreate(0);
	FanSpeedChange=OSSemCreate(0);
	ElmoSpeed=OSSemCreate(0);
	
	Flash_Read_all(0);
	
	SelfResetCan1();
	SelfResetCan2();
	
	OSTaskCreateExt(TaskLed,(void *)0,&task_Led_stk[TASK_Led_STK_SIZE-1],TASK_Led_PRIO,TASK_Led_PRIO,task_Led_stk,TASK_Led_STK_SIZE,(void *)0,OS_TASK_OPT_STK_CHK|OS_TASK_OPT_STK_CLR);	
	OSTaskCreateExt(TaskLCD,(void *)0,&task_LCD_stk[TASK_LCD_STK_SIZE-1],TASK_LCD_PRIO,TASK_LCD_PRIO,task_LCD_stk,TASK_LCD_STK_SIZE,(void *)0,OS_TASK_OPT_STK_CHK|OS_TASK_OPT_STK_CLR);		//创建任务LCD
	
	OSSemPend(RunStart,0,ErrorRunStart);
	
	Elmo_Ele();
	OSTimeDly(100);
	Elmo_GetId();
		
	Flag_Pend=OSFlagCreate(0,ErrorFlabellumFinish);
	CanSelfCheck=OSFlagCreate(0,ErrorCanSelfCheck);            //自检模块
	SelfCheckCan1();
	SelfCheckCan2();
	OSFlagPend(CanSelfCheck, 0X0000,OS_FLAG_WAIT_SET_ALL | OS_FLAG_CONSUME,100,ErrorCanSelfCheck);

	KeyNumber=GPIO_ReadInputDataBit(GPIOF,GPIO_Pin_13) | ((u8)GPIO_ReadInputDataBit(GPIOF,GPIO_Pin_12))<<1 | ((u8)GPIO_ReadInputDataBit(GPIOF,GPIO_Pin_14))<<2 ;
	
	OSTaskCreateExt(TaskRun,(void *)0,&task_Run_stk[TASK_Run_STK_SIZE-1],TASK_Run_PRIO,TASK_Run_PRIO,task_Run_stk,TASK_Run_STK_SIZE,(void *)0,OS_TASK_OPT_STK_CHK|OS_TASK_OPT_STK_CLR);		//创建任务1
	OSTaskCreateExt(TaskArm,(void *)0,&task_Arm_stk[TASK_Arm_STK_SIZE-1],TASK_Arm_PRIO,TASK_Arm_PRIO,task_Arm_stk,TASK_Arm_STK_SIZE,(void *)0,OS_TASK_OPT_STK_CHK|OS_TASK_OPT_STK_CLR);		//创建任务3
  OSTaskCreateExt(TaskFan,(void *)0,&task_Fan_stk[TASK_Fan_STK_SIZE-1],TASK_Fan_PRIO,TASK_Fan_PRIO,task_Fan_stk,TASK_Fan_STK_SIZE,(void *)0,OS_TASK_OPT_STK_CHK|OS_TASK_OPT_STK_CLR);
	OSTaskCreateExt(TaskVisual,(void *)0,&task_Visual_stk[TASK_Visual_STK_SIZE-1],TASK_Visual_PRIO,TASK_Visual_PRIO,task_Visual_stk,TASK_Visual_STK_SIZE,(void *)0,OS_TASK_OPT_STK_CHK|OS_TASK_OPT_STK_CLR);		
	OSTaskCreateExt(Task6,(void *)0,&task_6_stk[TASK_6_STK_SIZE-1],TASK_6_PRIO,TASK_6_PRIO,task_6_stk,TASK_6_STK_SIZE,(void *)0,OS_TASK_OPT_STK_CHK|OS_TASK_OPT_STK_CLR);
	OSTaskCreateExt(TaskWarning,(void *)0,&task_Warning_stk[TASK_Warning_STK_SIZE-1],TASK_Warning_PRIO,TASK_Warning_PRIO,task_Warning_stk,TASK_Warning_STK_SIZE,(void *)0,OS_TASK_OPT_STK_CHK|OS_TASK_OPT_STK_CLR);	
	
	
	while(GPIO_ReadInputDataBit(GPIOG,GPIO_Pin_4) == 0)
	{
		BeepOn;
		OSTimeDly(100);
	}
	
	BeepOff;

  USART_SendData(UART4,'1');
	beep_show(3);
	ChangeMotor(RunMotor);
	switch (KeyNumber & 0x07)
	{
		case 0x04:
			ResetPosition_EN(BeginX,BeginY*PlacePart,0);
	  	while(GPIO_ReadInputDataBit(GPIOF,GPIO_Pin_11)==0)
		    OSTimeDly(100);
	  	MotorInit();
			Cylinder(CylinderSetHeart | CylinderHand,CylinderSetHeartOpen | CylinderHandOpen,'W');
		  MotorPosition(MotorFanCircle,7000,-111*35);
			MotorPositionSet.FanCircle=-111*35;
			MotorPositionSetOld.FanCircle=-111*35;
			OSTimeDly(300);
			break;
		case 0x00:
		case 0x01:
		case 0x02:
		case 0x03:
			ResetGyroscope_EN(BeginX,BeginY*PlacePart,0);
		  StartKey=GPIO_ReadInputDataBit(GPIOF,GPIO_Pin_11);
	  	while(GPIO_ReadInputDataBit(GPIOF,GPIO_Pin_11)==StartKey)
		    OSTimeDly(100);
			Cylinder(CylinderSetHeart,CylinderSetHeartOpen,'W');
			MotorInit();
			StartStteringEngine(StteringEngineBlue,StteringEngineBlueUp);
		  StartStteringEngine(StteringEngineRed,StteringEngineRedUp);
		break;
		case 0x05:
			delay_ms(2);
			ResetPosition_EN(120,880*PlacePart,180);
		  StartKey=GPIO_ReadInputDataBit(GPIOF,GPIO_Pin_11);
			while(GPIO_ReadInputDataBit(GPIOF,GPIO_Pin_11)==StartKey)
		    OSTimeDly(100);
			StartStteringEngine(StteringEngineBlue,StteringEngineBlueUp);
		  StartStteringEngine(StteringEngineRed,StteringEngineRedUp);
      MotorInit();
			Cylinder(CylinderSetHeart | CylinderHand | CylinderClimbTwoMotor | CylinderClimbOneMotor,CylinderSetHeartOpen | CylinderHandOpen | CylinderClimbTwoOpen | CylinderClimbOneClose,'W');
    break;
		case 0x06:
			StartKey=GPIO_ReadInputDataBit(GPIOF,GPIO_Pin_11);
			ResetGyroscope_EN(BeginSixX,BeginSixY*PlacePart,-180*PlacePart);
			Cylinder(CylinderHand,CylinderHandClose,'W');
		  StartStteringEngine(StteringEngineBlue,StteringEngineBlueDown);
		  StartStteringEngine(StteringEngineRed,StteringEngineRedUp);
		  while(GPIO_ReadInputDataBit(GPIOF,GPIO_Pin_11)==StartKey)
		    OSTimeDly(100);	
			Cylinder(CylinderSetHeart | CylinderClimbTwoMotor | CylinderClimbOneMotor,CylinderSetHeartOpen | CylinderClimbTwoClose | CylinderClimbOneClose,'W');					
			MotorInitFive();	
			break;
		case 0x07:
			ChangeMotor(ClimbMotor);
			Cylinder(CylinderSetHeart | CylinderClimbTwoMotor | CylinderClimbOneMotor | CylinderHand,CylinderSetHeartOpen | CylinderClimbTwoOpen | CylinderClimbOneOpen | CylinderHandClose,'W');
			delay_ms(2);
			ResetPosition_EN(BeginSixX,BeginSixY*PlacePart,-180*PlacePart);	
			StartKey=GPIO_ReadInputDataBit(GPIOF,GPIO_Pin_11);		  
			StartStteringEngine(StteringEngineBlue,StteringEngineBlueDown);
		  StartStteringEngine(StteringEngineRed,StteringEngineRedUp);
	  	MotorInitFive();			
		  while(GPIO_ReadInputDataBit(GPIOF,GPIO_Pin_11)==StartKey)
		    OSTimeDly(100);		
		break;
	}

	Led8DisData(0);
	delay_ms(2);
	OSSemPost(RunStart);            
	while (1)
  {
		Pid();
		OSTimeDly(100);
  }
}

void TaskRun(void *arg)
{
	OSSemPend(RunStart,0,ErrorRunStart);
	if(ErrorCameraWidth==500 && ErrorCameraHeight==500)
		Switch_Computer=0;
	Led8DisData(1);
	while(1)
	{
		OSSemPost(FanSpeedChange);
		switch (KeyNumber & 0x07)
		{
			case 0x00:
				Flag[HeightChangeByCar]=1;
			  Vmax=400;
				Led8DisData(2);
				RunPoint(1,1,0,0,200,200,50,345+CarBehindPoint,45,0,140,140,0,0);
				Led8DisData(3);
				Flag[StartDt50Work] = 1;
				OSSemPost(ArmStart);
				Flag[AutoRun] = 1;
				Flag[LockPointOn] = 0;
				Flag[FanSpeedChangeByDT50] = 0;
				RunPoint(1,0,0,1,380,200,380,260+PathPoint,280,0,70,0,0,0);	
				Led8DisData(4);
				
				Vmax=250;                                          //下面还有限制Vmax的地方
				SetBezier(PositionNow.x,PositionNow.y,50+AnglePoint,870,106+BazierAngle1,90,30+BazierLength1,470+BazierLength2);   
				RunBezier(0,0,1,1,320,320,320,-90,0.35,0.4,0.65,0.25,BPidGROUP2);
				Led8DisData(5);
				Flag[SpeedChange] = 0;
				Flag[FanSpeedChangeByDT50] = 0;
				StartFan(0);	//涵道风扇	
				MotorStop(MotorFanCircle);
				
				if(Flag[FanStop]==0)
			 {				
				   Flag[FanStop]=1;
				   Flag[SpeedChange]=0;
					 OSTaskSuspend(25);
			 }
			 MotorPosition(MotorFanHight,5000,-2000);

				Vmax = 400;
				USART_SendData(UART4,'5');
				SetBezier(PositionNow.x,PositionNow.y,430,1300+LineY,90,0,200,250);	//430,1300,90,0,30,300
				RunBezier(1,1,0,1,350,350,350,-180,0.3,0.5,0,0.2,BPidGROUP3);
				MotorPosition(MotorFanHight,5000,-2000);
				Led8DisData(6);
				OSSemPost(Task6Start);
				break;
			case 0x01:
				Vmax=400;
			  Flag[StartDt50Work]=1;
		  	OSSemPost(ArmStart);
				SetBezier(PositionNow.x,PositionNow.y,260,280,0,120,0,220);
				RunBezier(1,1,0,1,200,250,250,0,0.3,0.3,0,0.2,BPidGROUP1);
			  Flag[HeightChangeByCar]=1;
		  	SetBezier(PositionNow.x,PositionNow.y,50+AnglePoint,870,106+BazierAngle1,90,30+BazierLength1,470+BazierLength2);   
				RunBezier(0,0,1,1,320,320,320,-90,0.35,0.4,0.65,0.25,BPidGROUP2);
				if(Flag[FanStop]==0)
				 {				
						 Flag[FanStop]=1;
						 Flag[SpeedChange]=0;
						 OSTaskSuspend(25);
				 }
			  MotorStop(MotorFanCircle);
				MotorPosition(MotorFanHight,5000,-2000);
				MotorPWM(MotorSetHeart,-1500);
			  Vmax=400;
				SetBezier(PositionNow.x,PositionNow.y,430,1300+LineY,90,0,200,250);	//430,1300,90,0,30,300
				RunBezier(1,1,0,1,350,350,350,-180,0.3,0.5,0,0.2,BPidGROUP3);
		  	Led8DisData(6);
				OSSemPost(Task6Start);
				break;
			case 0x02:
				Vmax=400;
				SetBezier(PositionNow.x,PositionNow.y,100,420,70,106,100,10);
			  RunBezier(1,1,0,1,250,350,350,0,0.3,0.3,0,0.2,BPidGROUP1);
		  	Flag[HeightChangeByCar]=1;
				Led8DisData(2);
				SetBezier(PositionNow.x,PositionNow.y,50+AnglePoint,870,106+BazierAngle1,90,30+BazierLength1,470+BazierLength2);   
			  RunBezier(1,1,1,1,320,320,320,-90,0.35,0.6,0.4,0.55,BPidGROUP2);	
				if(Flag[FanStop]==0)
				 {				
						 Flag[FanStop]=1;
						 Flag[SpeedChange]=0;
						 OSTaskSuspend(25);
				 }
				 Vmax=400;
				 	Led8DisData(3);
				 MotorStop(MotorFanCircle);
				MotorPosition(MotorFanHight,5000,-2000);
				MotorPWM(MotorSetHeart,-1500);
				SetBezier(PositionNow.x,PositionNow.y,385,1295+LineY,90,0,100,200);
				RunBezier(1,1,1,1,350,350,350,-180,0.3,0.3,0,0.2,BPidGROUP3);
				OSSemPost(Task6Start);
				 Led8DisData(6);
				break;
			case 0x03:
				Vmax=400;
				RunPoint(1,1,1,1,350,200,200,70,520,-90,100,100,50,200);
				Flag[SpeedChange]=1;
				OSSemPost(ArmStart);
			  Flag[StartDt50Work]=1;
		  	Vmax=150;
				RunPoint(0,0,0,1,320,320,320,55+AnglePoint,870,-90,100,70,50,200);
				 if(Flag[FanStop]==0)
				 {
					 Flag[FanStop]=1;
					 Flag[SpeedChange]=0;
					 OSTaskSuspend(25);
					 StartFan(0);
				 }
				Vmax=400;
				Led8DisData(3);
				MotorStop(MotorFanCircle);
				MotorPosition(MotorFanHight,5000,-2000);
				MotorPWM(MotorSetHeart,-1500);
				SetBezier(PositionNow.x,PositionNow.y,430,1310+LineY,90,0,200,250);	//430,1300,90,0,30,300
				RunBezier(1,1,0,1,350,350,350,-180,0.3,0.5,0,0.2,BPidGROUP3);
				OSSemPost(Task6Start);
				Led8DisData(6);
				break;				
			case 0x04:
				Vmax=380;
			  OSSemPost(ArmStart);
				StartFan(600);
				RunPoint(1,1,0,1,300,100,200,55,420,0,200,100,50,250);
				
				StartFan(800);
				RunPoint(0,0,1,1,200,200,200,55,830,-100,100,70,80,280);
				StartFan(0);
				OSTaskSuspend(25);
				SetBezier(PositionNow.x,PositionNow.y,385,1340,90,0,100,200);
				RunBezier(1,1,1,1,350,150>CurrentV?150:CurrentV,150,-180,0.3,0.3,0,0.2,BPidGROUP3);		
		
				OSSemPost(Task6Start);				
				break;
			case 0x05:
				Vmax=400;		
				SetBezier(PositionNow.x,PositionNow.y,430,1300+LineY,90,0,30,300);
				RunBezier(1,1,0,1,320,200,320,-180,0.3,0.5,0,0.2,BPidGROUP3);
			  Led8DisData(6);
				OSSemPost(Task6Start);		
				break;
			case 0x06:
			case 0x07:
				OSSemPost(Task6Start);
			break;
			default:
				break;
		}
	
			OSSemPend(RunStart,0,ErrorRunStart);
			Led8DisData(12);
			OSTimeDly(3000);
			AskForCylinderState();
			
			if((KeyNumber & 0x07)!=6 || (KeyNumber & 0x07)!=7)
			{
				if((MagneticSwitchState & 0x01)==0)
				{
					Cylinder(CylinderHand,CylinderHandOpen,'W');
					OSTimeDly(200);
					Cylinder(CylinderHand,CylinderHandClose,'W');
				}
				else
				{
					Cylinder(CylinderHand,CylinderHandOpen,'W');
					OSTimeDly(500);
					Cylinder(CylinderHand,CylinderHandClose,'W');
				}
			}		
			OSTimeDly(5000);
		 
			OSTimeDly(5000);
			MotorPWM(MotorSetHeart,-1500);
			Cylinder(CylinderSetHeart,CylinderSetHeartClose,'W');
//			OSTimeDly(6500);
			StartStteringEngine(StteringEngineRed,1700);
			Flag[HeartHandSearchZero]=1;
//			MotorSearchZero(MotorHeartHand,3000);
				MotorPosition(MotorHeartHand,4000,-44896);
			
			OSTaskSuspend(OS_PRIO_SELF);
	}
}

void Task6(void *arg)
{
	OSSemPend(Task6Start,0,ErrorTask6Start);
  Led8DisData(7);	
	while(1)
	{
		switch (KeyNumber & 0x07)
		{
			case 0x00:
			case 0x01:
			case 0x02:
			case 0x03:
			case 0x04:
			case 0x05:
				MotorChangeMode(MotorFanCircle,ModePosition);
				MotorPosition(MotorFanCircle,4000,-111*(90)*PlacePart);
				MotorChangeMode(MotorSetHeart,ModePWM);
				StartStteringEngine(StteringEngineBlue,StteringEngineBlueDown);
			  
				Cylinder(CylinderClimbTwoMotor,CylinderClimbTwoClose,'W');
				MotorPWM(MotorSetHeart,1500);
			case 0x06:
				Vmax=250;
				RunCamera();
				Led8DisData(8);
				OSTimeDly(100);
		
			while(fabs(PositionNow.angle+180)>1.0f)
				OSTimeDly(50);
			USART_SendData(UART4,'6');
			Cylinder(CylinderClimbTwoMotor,CylinderClimbTwoOpen,'W');
//			OSTimeDly(1000);
			case 0x07:
				OSTaskSuspend(5);	//START_TASK_PRIO
				AskForMotorCurrent(MotorSetHeart);
			  Flagu16[OverTime]=0;
				Led8DisData(9);
		  	OSSemPost(ElmoSpeed);
				ClimbPole();
				Led8DisData(15);
				
				OSTaskSuspend(OS_PRIO_SELF);
			break;
			default:
				OSTaskSuspend(OS_PRIO_SELF);
				break;
		}
	}
}


void TaskLCD(void *arg)
{
		while(!Adjust[Save])
		{			
				LCDAdjust();
				OSTimeDly(1000);
		}
		ili9320_Clear(Green);
		OSTimeDly(1000);
		while(1)
		{
			  LCDShow();
				OSTimeDly(1000);
		}	
}




void TaskArm(void *arg)
{
  OSSemPend(ArmStart,0,ErrorArmStart);	
  if(!Switch_Computer)
		MotorChangeMode(MotorFanCircle,ModeSpeed);
	while(1)
	{
		if(Switch_Computer)
		  ArmCamera(ErrorCameraHeight,ErrorCameraWidth);
		else
			ArmChangeByPosition();
		if(Flag[StartDt50Work]==1)
		{
			if(Switch_DT50)
			  DT50Distance(CameraDistance);
			else
				;
		}
		AskForMotorPosition(MotorFanCircle);
		AskForMotorPosition(MotorFanHight);
		AskForMotorSpeed(MotorFanCircle);
		AskForMotorSpeed(MotorFanHight);
		OSTimeDly(200);		
	}
}


void TaskFan(void *arg)
{
	OSSemPend(FanSpeedChange,0,ErrorFanSpeedChange);
	while(1)
	{
		 OSTimeDly(1000);
		 while(CurrentV<20 && !((KeyNumber & 0x07)==0x06 || (KeyNumber & 0x07)==0x07))
		{
//			__set_FAULTMASK(1);
//			NVIC_SystemReset();
			 OSTaskDel(10);
			 OSTimeDly(10);
			 OSTaskCreateExt(TaskRun,(void *)0,&task_Run_stk[TASK_Run_STK_SIZE-1],TASK_Run_PRIO,TASK_Run_PRIO,task_Run_stk,TASK_Run_STK_SIZE,(void *)0,OS_TASK_OPT_STK_CHK|OS_TASK_OPT_STK_CLR);		//创建任务1
	     OSTimeDly(10);
			 OSSemPost(RunStart);     
			 OSTimeDly(100);
		}
		OSTimeDly(2000);
		while(fabs(SpeedAbsolute.Vx)<10)
		{
			Elmo_Ele();
			FREE_ALL_MOTOR;
			BeepOn;
			OSTimeDly(5000);
		}
		BeepOff;
		switch (KeyNumber & 0x07)
		{
			case 0x00:
				while(PositionNow.x<200)	//起始
					OSTimeDly(200);
				USART_SendData(UART4,'2');
				FanSpeed=900;//650 550;
				StartFan(FanSpeed);
//				
				while(PositionNow.y<150)	//小车第一个平地
					OSTimeDly(200);

				
				Flag[FanSpeedChangeByDT50]=1;

				while(PositionNow.y<610)	//直角
				{
					OSTimeDly(100);
				}

				Flag[SpeedChange]=1;
			  Flag[FanSpeedChangeByDT50]=0;
				FanSpeed = 800;
				StartFan(FanSpeed);
				OSTimeDly(200);
				StartFan(FanSpeed);
			break;
				
			case 0x01:
				while(PositionNow.y<60)
					OSTimeDly(100);
				StartFan(800);
				while(PositionNow.y<250)	//小车第二个上坡
					OSTimeDly(200);
				Flag[FanSpeedChangeByDT50]=1;
				while(PositionNow.y<620)	//直角
					OSTimeDly(100);
				Flag[SpeedChange]=1;
			  Flag[FanSpeedChangeByDT50]=0;
				FanSpeed = 900;
				StartFan(FanSpeed);
				break;
			case 0x02:
				while(PositionNow.y<100)
					OSTimeDly(100);
				StartFan(700);
				while(PositionNow.y<280)
					OSTimeDly(100);
				Flag[StartDt50Work]=1;
				OSSemPost(ArmStart);
				while(PositionNow.y<420)
					OSTimeDly(100);
        Flag[FanSpeedChangeByDT50]=1;
				while(CameraDistanceValue<120 || PositionNow.y<660)	//直角
					OSTimeDly(100);
				Flag[SpeedChange]=1;
			  Flag[FanSpeedChangeByDT50]=0;
				FanSpeed = 900;
				StartFan(FanSpeed);
				break;
			case 0x03:
				while(PositionNow.y<350)
					OSTimeDly(100);
				StartFan(900);
				break;
			default:break;
		}
    OSTaskSuspend(OS_PRIO_SELF);
		while(1)
		{		 

		}		
	}
}



void TaskVisual(void *arg)
{
	OSSemPend(ElmoSpeed,0,ErrorElmoSpeed);
	if((KeyNumber & 0x07)!=7)
	{
		OSTimeDly(5000);
		Elmo_RelieveMotor();
		BREAK_All_MOTOR;
	}
	while(1)
	{
    Elmo_GetMainPosition();
		AskForMotorPosition(MotorHeartHand);
		AskForMotorCurrent(MotorHeartHand);
		OSTimeDly(200);
//	  VS4Channal_Send(MotorRealSpeed.MotorOne,MotorRealSpeed.MotorTwo,MotorRealSpeed.MotorThree,MotorRealSpeed.MotorFour);
		DT50_VS4Channal_Send(MotorRealPosition.HeartHand/10,Flagu16[PutFanTime],Flag[SunSwitchOn]*100,MotorRealCurrent.HeartHand*10);
	}
}


void TaskWarning(void *arg)
{
	u8 Key_Stop,Key_Fan;
	Key_Stop=GPIO_ReadInputDataBit(GPIOF,GPIO_Pin_6);
	Key_Fan=GPIO_ReadInputDataBit(GPIOB,GPIO_Pin_10);
	while(1)
	{
		if(GPIO_ReadInputDataBit(GPIOF,GPIO_Pin_6)!=Key_Stop)
  	{			
				OSTimeDly(10);
				if(GPIO_ReadInputDataBit(GPIOF,GPIO_Pin_6)!=Key_Stop)
				{
					Key_Stop=GPIO_ReadInputDataBit(GPIOF,GPIO_Pin_6);
					BREAK_All_MOTOR;
					MotorStop(MotorHeartHand);
					MotorStop(MotorFanHight);
					MotorStop(MotorFanCircle);
					MotorStop(MotorSetHeart);
					StartFan(0);
					OSTaskSuspend(5);
					Vmax=0;
				}
	  }		 
		else if(GPIO_ReadInputDataBit(GPIOB,GPIO_Pin_10)!=Key_Fan)
	  {
				OSTimeDly(10);
				if(GPIO_ReadInputDataBit(GPIOB,GPIO_Pin_10)!=Key_Fan)
				{
					Key_Fan=GPIO_ReadInputDataBit(GPIOB,GPIO_Pin_10);
					BREAK_All_MOTOR;
					Cylinder(CylinderClimbTwoMotor | CylinderClimbOneMotor,CylinderClimbTwoClose | CylinderClimbOneClose,'W');
					StartFan(0);
					OSTaskSuspend(15);
				}
	  }
		OSTimeDly(1000);
	}
}


void TaskLed(void *arg)
{
	while(1)
	{
		LED_PowerOn;		
		AskForMotorPosition(MotorHeartHand);
		OSTimeDly(5000);
		LED_PowerOff;
		OSTimeDly(5000);
	}
}



