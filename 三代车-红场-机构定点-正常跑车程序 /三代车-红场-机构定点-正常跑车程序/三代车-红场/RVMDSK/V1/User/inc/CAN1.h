#ifndef _CAN1_H
#define _CAN1_H

#include "stm32f4xx.h"
#include "MyDataProcess.h"

void Can1_Configuration(void);

void SendPulse(s32 data1,s32 data2);
void SendPulseBeep(s16 data1,s32 data2);
void SendHandKey_3(u16 ID,char a,u8 state_up,u8 state_back);
void SendElectromagnet(char i);

extern s16 HuorDistance,HuorDistance2,DirectionFlag;
extern s32 Distance;
extern float Fdistance,UltrosonicDistance;
extern s16 KeyCommandFlag;


#endif

