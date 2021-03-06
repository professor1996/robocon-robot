#ifndef _CAN1_H
#define _CAN1_H

#include "stm32f4xx.h"
#include "run.h"
#include "led.h"
#include "beep.h"
#include "visual_scope.h"
#include "MyDataProcess.h"
#include "rundriver.h"
#include "can2.h"

extern s16 ErrorCameraLine;

extern OS_FLAG_GRP *MotorResetCheck;
extern OS_FLAG_GRP *CanSelfCheck;
extern OS_FLAG_GRP *Flag_Pend;
extern OS_FLAGS Canself;
extern OS_EVENT *RunStart;
extern OS_EVENT *ArmStart;
extern OS_EVENT *Task6Start;
extern OS_EVENT *FanSpeedChange;
extern OS_EVENT *ElmoSpeed;

extern INT8U *ErrorFlabellumFinish;
extern INT8U *ErrorMotorResetCheck;
extern INT8U *ErrorCanSelfCheck;
extern INT8U *ErrorRunStart;
extern INT8U *ErrorTask6Start;
extern INT8U *ErrorArmStart;
extern INT8U *ErrorFanSpeedChange;
extern INT8U *ErrorElmoSpeed;

extern CAMERA CameraDate[2];

void Can1_Configuration(void);
void ResetPosition_EN(float x,float y,float angle);
void ResetGyroscope_EN(float x,float y,float angle);
void SelfCheckCan1(void);
void End(uint32_t ID);
void SelfResetCan1(void);
void Start(uint32_t ID);
void SteeringEngine(uint32_t ID,float angle);
void Can_VS4Channal_Send(int16_t n_dataCH1, int16_t n_dataCH2, int16_t n_dataCH3, int16_t n_dataCH4);
int Can_PutToQueue1(Can_Information *temp_message);
void Send_Can1Cmd(void);
void ChangeMotor(u16 ID,u8 motor);
void GyroscopeCoefficient(float x,float y);

void Elmo_Begin(void);
void Elmo_SetSpeed(u8 id,s32 speed);
void Elmo_StartMotor(void);
void Elmo_Ele(void);
void Elmo_Stop(void);
void Elmo_GetId(void);
void Elmo_GetMainPosition(void);
void Elmo_RelieveMotor(u16 ID);
void Elmo_SetDC(s32 dc);
void Elmo_GetCurrentV(void);
void Elmo_GetError(void);
#endif

