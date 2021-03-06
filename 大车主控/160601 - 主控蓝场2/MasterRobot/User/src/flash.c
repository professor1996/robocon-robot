#include "flash.h"

/******  flash三个检测字符**********/
u8 check1 = 0x00;    //W
u8 check2 = 0x00;    //H
u8 check3 = 0x00;    //U
u8 check1_temp = 0x57;    //W
u8 check2_temp = 0x48;    //H
u8 check3_temp = 0x55;    //U

//u8 flash_first_flag = 0x00;

//#define check_PAGE_ADDRESS                                    0x08010000
//#define all_PAGE_ADDRESS                                      0x08011000

#define check1_ADDRESS                                          0x080E1000
#define location_p_ADDRESS                                  0x08020000

/*
***************************************************************************************

* Name : Flash_Write_Word

* Describe : 向Flash中指定地址写入一个字的数据（四个字节）

* Input : Address： 指定地址
                    Data：      待写入的数据

* Outputn : None

* Return :  None

****************************************************************************************
*/
void Flash_Write_Word(uint32_t Address, uint32_t Data)
{
    FLASH_Unlock();
    FLASH_ProgramWord(Address, (uint32_t)Data);
    FLASH_Lock();
}


/*
***************************************************************************************

* Name : Flash_Write_Word

* Describe : 向Flash中指定地址写入一个半字的数据

* Input : Address ：指定地址
                    Data :      待写入的数据

* Outputn : None

* Return :  None

****************************************************************************************
*/
void Flash_Write_HalfWord(uint32_t Address, uint16_t Data)
{
    FLASH_Unlock();
    while(FLASH_ProgramHalfWord(Address, (uint16_t)Data) != FLASH_COMPLETE);
    FLASH_Lock();
}
/*
***************************************************************************************

* Name : Flash_Erase_Page

* Describe : 清除Flash中指定的一页数据

* Input : Address ：指定地址
                    Data :      待写入的数据

* Outputn : None

* Return :  None

****************************************************************************************
*/

void Flash_Erase_Page(uint16_t FLASH_Sector)
{
    FLASH_Unlock();
    FLASH_ClearFlag(FLASH_FLAG_EOP | FLASH_FLAG_OPERR | FLASH_FLAG_WRPERR |
                    FLASH_FLAG_PGAERR | FLASH_FLAG_PGPERR | FLASH_FLAG_PGSERR);
    FLASH->ACR &= ~(1 << 10);
    while(FLASH_EraseSector(FLASH_Sector, VoltageRange_2) != FLASH_COMPLETE);
//  FLASH_Lock();
}

/*
***************************************************************************************

* Name :  Flash_Read_HalfWord

* Describe : 将Flash中的指定地址里面的数据以半字长度读出来

* Input : Address ：指定地址


* Outputn : None

* Return :  None

****************************************************************************************
*/
uint16_t Flash_Read_HalfWord(uint32_t Address)
{
    return *((uint32_t*)Address);
}


/*
***************************************************************************************

* Name : Flash_Write_check

* Describe : 将数据写入Flash时检查

* Input : None


* Outputn : None

* Return :  None

****************************************************************************************
*/

void Flash_Write_check(void)
{
    u32 Address_temp;
    u16 temp;
    Flash_Erase_Page(FLASH_Sector_11);
    Address_temp = check1_ADDRESS;
    temp = (u16)(check1_temp);
    Flash_Write_HalfWord(Address_temp , temp);
    Address_temp += 0x00000002;
    temp = (u16)(check2_temp);
    Flash_Write_HalfWord(Address_temp , temp);
    Address_temp += 0x00000002;
    temp = (u16)(check3_temp);
    Flash_Write_HalfWord(Address_temp , temp);
//  Address_temp += 0x00000002;
//  temp = (u16)(flash_first_flag);
//  Flash_Write_HalfWord(Address_temp , temp);
    FLASH->ACR |= 1 << 10;
    FLASH_Lock();
}

/*
***************************************************************************************

* Name : Flash_Write_all

* Describe : 将需要存在Flash里面的数据全部写入Flash

* Input : None


* Outputn : None

* Return :  None

****************************************************************************************
*/

void Flash_Write_all(u8 kind)
{
    u16 temp;
    u32 Address_temp;
    delay_ms(100);
    switch (kind)
    {
        case 4:
            Address_temp = 0x08040000;
            Flash_Erase_Page(FLASH_Sector_6);
            break;
        case 3:
            Address_temp = 0x08060000;
            Flash_Erase_Page(FLASH_Sector_7);
            break;
        case 0:
            Address_temp = 0x08020000;
            Flash_Erase_Page(FLASH_Sector_5);
            break;
				 case 8:
            Address_temp = 0x08080000;
            Flash_Erase_Page(FLASH_Sector_8);
            break;
				 case 9:
            Address_temp = 0x080A0000;
            Flash_Erase_Page(FLASH_Sector_9);
            break;
        default:
            Flash_Read_all(kind);
            return;
    }

    /****************写入位置PID参数********************/
    temp = (u16)((s16)(CarBehindPoint));
    Flash_Write_HalfWord(Address_temp , temp);
    Address_temp += 0x00000002;
    temp = (u16)((s16)(PathPoint));
    Flash_Write_HalfWord(Address_temp  , temp);
    Address_temp += 0x00000002;
    temp = (u16)((s16)(AnglePoint));
    Flash_Write_HalfWord(Address_temp , temp);
    Address_temp += 0x00000002;
    temp = (u16)((s16)(LineY));
    Flash_Write_HalfWord(Address_temp , temp);
    Address_temp += 0x00000002;
    temp = (u16)((s16)(RiverTimeLimit));
    Flash_Write_HalfWord(Address_temp  , temp);
    Address_temp += 0x00000002;
    temp = (u16)((s16)(PutFanLimit));
    Flash_Write_HalfWord(Address_temp , temp);
    Address_temp += 0x00000002;
    temp = (u16)((s16)(RiverTimeDown));
    Flash_Write_HalfWord(Address_temp , temp);
    Address_temp += 0x00000002;
    temp = (u16)((s16)(FanSpeedFour));
    Flash_Write_HalfWord(Address_temp  , temp);
    Address_temp += 0x00000002;
    temp = (u16)((s16)(ClimbTimeLimit));
    Flash_Write_HalfWord(Address_temp , temp);
    Address_temp += 0x00000002;
    temp = (u16)((s16)(ClimbDownLimit));
    Flash_Write_HalfWord(Address_temp , temp);
    Address_temp += 0x00000002;
    temp = (u16)((s16)(BazierAngle1));
    Flash_Write_HalfWord(Address_temp  , temp);
    Address_temp += 0x00000002;
    temp = (u16)((s16)(BazierLength1));
    Flash_Write_HalfWord(Address_temp , temp);
    Address_temp += 0x00000002;
    temp = (u16)((s16)(BazierLength2));
    Flash_Write_HalfWord(Address_temp , temp);
    Address_temp += 0x00000002;
    temp = (u16)((s16)(Switch_ClimbDown));
    Flash_Write_HalfWord(Address_temp  , temp);
    Address_temp += 0x00000002;
    temp = (u16)((s16)(Switch_DT50));
    Flash_Write_HalfWord(Address_temp , temp);
    Address_temp += 0x00000002;
    temp = (u16)((s16)(Switch_Computer));
    Flash_Write_HalfWord(Address_temp , temp);
    Address_temp += 0x00000002;
    temp = (u16)((s16)(LineCameraCorrent));
    Flash_Write_HalfWord(Address_temp , temp);
		Address_temp += 0x00000002;
		temp = (u16)((s16)(Flagu16[HandTime]));
		Flash_Write_HalfWord(Address_temp , temp);
		Address_temp += 0x00000002;
		temp = (u16)((s16)(Flagu16[MotorPutFanSpeedBlue]));
		Flash_Write_HalfWord(Address_temp , temp);
		Address_temp += 0x00000002;
		temp = (u16)((s16)(DT50LineStandar));
		Flash_Write_HalfWord(Address_temp , temp);
		Address_temp += 0x00000002;
		temp = (u16)((s16)(Switch_SpeedDown));
		Flash_Write_HalfWord(Address_temp , temp);
		Address_temp += 0x00000002;
		temp = (u16)((s16)(BazierAngle2));
		Flash_Write_HalfWord(Address_temp , temp);
		Address_temp += 0x00000002;
		temp = (u16)((s16)(GyroscopeCoefficientX));
		Flash_Write_HalfWord(Address_temp , temp);
		Address_temp += 0x00000002;
		temp = (u16)((s16)(GyroscopeCoefficientY));
		Flash_Write_HalfWord(Address_temp , temp);
		Address_temp += 0x00000002;
		temp = (u16)((s16)(Switch_Magnetic));
		Flash_Write_HalfWord(Address_temp , temp);
		Address_temp += 0x00000002;
		temp = (u16)((s16)(DT50Speed));
		Flash_Write_HalfWord(Address_temp , temp);
		Address_temp += 0x00000002;
		temp = (u16)((s16)(Switch_DT50Line));
		Flash_Write_HalfWord(Address_temp , temp);
		Address_temp += 0x00000002;
		temp = (u16)((s16)(CarBehindStartX));
		Flash_Write_HalfWord(Address_temp , temp);
		Address_temp += 0x00000002;
		temp = (u16)((s16)(Vbegin));
		Flash_Write_HalfWord(Address_temp , temp);
		Address_temp += 0x00000002;
		temp = (u16)((s16)(Abegin));
		Flash_Write_HalfWord(Address_temp , temp);
		Address_temp += 0x00000002;
		temp = (u16)((s16)(FanSpeedDown));
		Flash_Write_HalfWord(Address_temp , temp);
		Address_temp += 0x00000002;
		temp = (u16)((s16)(Switch_Climb));
		Flash_Write_HalfWord(Address_temp , temp);
    FLASH->ACR |= 1 << 10;
    FLASH_Lock();

}


/*
***************************************************************************************

* Name : Flash_Read_check

* Describe : 将数据从Flash中读出来时的检查

* Input : None


* Outputn : None

* Return :  None

****************************************************************************************
*/
void Flash_Read_check(void)
{
    u32 Address_temp;
    Address_temp = check1_ADDRESS;
    check1 = ((u8)(Flash_Read_HalfWord(Address_temp)));
    Address_temp += 0x00000002;
    check2 = ((u8)(Flash_Read_HalfWord(Address_temp)));
    Address_temp += 0x00000002;
    check3 = ((u8)(Flash_Read_HalfWord(Address_temp)));
//  Address_temp += 0x00000002;
//  flash_first_flag = ((u8)(Flash_Read_HalfWord(Address_temp)));

}
/*
***************************************************************************************

* Name : Flash_Read_all

* Describe : 将需要的数据全部从Flash中读出来

* Input : None


* Outputn : None

* Return :  None

****************************************************************************************
*/
void Flash_Read_all(u8 kind)
{

    u32 Address_temp;
    switch (kind)
    {
        case 4:
            Address_temp = 0x08040000;
            break;
        case 3:
            Address_temp = 0x08060000;
            break;
				case 8:
            Address_temp = 0x08080000;
            break;
				case 9:
            Address_temp = 0x080A0000;
            break;
        default :
            Address_temp = 0x08020000;
            break;
    }


    /*****************读出位置PID参数*********************************/
    CarBehindPoint = ((double)(Flash_Read_HalfWord(Address_temp)));
    Address_temp += 0x00000002;
    PathPoint = ((double)(Flash_Read_HalfWord(Address_temp)));
    Address_temp += 0x00000002;
    AnglePoint = ((double)(Flash_Read_HalfWord(Address_temp)));
    Address_temp += 0x00000002;

    LineY = ((double)(Flash_Read_HalfWord(Address_temp)));
    Address_temp += 0x00000002;
    RiverTimeLimit = (((double)(Flash_Read_HalfWord(Address_temp))));
    Address_temp += 0x00000002;
    PutFanLimit = (((double)(Flash_Read_HalfWord(Address_temp))));
    Address_temp += 0x00000002;
//
    RiverTimeDown = (((double)(Flash_Read_HalfWord(Address_temp))));
    Address_temp += 0x00000002;
    FanSpeedFour = (((double)(Flash_Read_HalfWord(Address_temp))));
    Address_temp += 0x00000002;
    ClimbTimeLimit = (((double)(Flash_Read_HalfWord(Address_temp))));
    Address_temp += 0x00000002;


///*****************读出速度PID参数*********************************/
    ClimbDownLimit = (((double)(Flash_Read_HalfWord(Address_temp))));
    Address_temp += 0x00000002;
    BazierAngle1 = (((double)(Flash_Read_HalfWord(Address_temp))));
    Address_temp += 0x00000002;
    BazierLength1 = (((double)(Flash_Read_HalfWord(Address_temp))));
    Address_temp += 0x00000002;
    BazierLength2 = (((double)(Flash_Read_HalfWord(Address_temp))));
    Address_temp += 0x00000002;
    Switch_ClimbDown = (((double)(Flash_Read_HalfWord(Address_temp))));
    Address_temp += 0x00000002;
    Switch_DT50 = (((double)(Flash_Read_HalfWord(Address_temp))));
    Address_temp += 0x00000002;
    Switch_Computer = (((double)(Flash_Read_HalfWord(Address_temp))));
    Address_temp += 0x00000002;
    LineCameraCorrent = (((double)(Flash_Read_HalfWord(Address_temp))));
		Address_temp += 0x00000002;
		Flagu16[HandTime] = (((double)(Flash_Read_HalfWord(Address_temp))));
//
///*****************读出速度PID参数*********************************/
  Address_temp += 0x00000002;
  Flagu16[MotorPutFanSpeedBlue] = (((double)(Flash_Read_HalfWord(Address_temp))));
  Address_temp += 0x00000002;
  DT50LineStandar = (((double)(Flash_Read_HalfWord(Address_temp))));
  Address_temp += 0x00000002;
  Switch_SpeedDown = (((double)(Flash_Read_HalfWord(Address_temp))));
  Address_temp += 0x00000002;
  BazierAngle2 = (((double)(Flash_Read_HalfWord(Address_temp))));
  Address_temp += 0x00000002;
  GyroscopeCoefficientX = ((double)(Flash_Read_HalfWord(Address_temp)));
  Address_temp += 0x00000002;
  GyroscopeCoefficientY = ((double)(Flash_Read_HalfWord(Address_temp)));
  Address_temp += 0x00000002;
  Switch_Magnetic= ((double)(Flash_Read_HalfWord(Address_temp)));
  Address_temp += 0x00000002;
  DT50Speed = ((double)(Flash_Read_HalfWord(Address_temp)));
  Address_temp += 0x00000002;
  Switch_DT50Line = (((double)(Flash_Read_HalfWord(Address_temp))));
	Address_temp += 0x00000002;
  CarBehindStartX = (((double)(Flash_Read_HalfWord(Address_temp))));
	Address_temp += 0x00000002;
  Vbegin = (((double)(Flash_Read_HalfWord(Address_temp))));
	Address_temp += 0x00000002;
  Abegin = (((double)(Flash_Read_HalfWord(Address_temp))));
	Address_temp += 0x00000002;
  FanSpeedDown = (((double)(Flash_Read_HalfWord(Address_temp))));
	Address_temp += 0x00000002;
  Switch_Climb = (((double)(Flash_Read_HalfWord(Address_temp))));

}

/*
***************************************************************************************

* Name : Flash_Write

* Describe : 将数据写入Flash

* Input : None


* Outputn : None

* Return :  None

****************************************************************************************
*/
void Flash_Write(u8 kind)
{
    Flash_Write_check();
    Flash_Write_all(kind);
}
/*
***************************************************************************************

* Name :Flash_Read

* Describe : 将数据从Flash中读出来

* Input : None


* Outputn : None

* Return :  None

****************************************************************************************
*/
void Flash_Read(u8 kind)
{
    Flash_Read_check();
    if((check1 == 0x57) && (check2 == 0x48) && (check3 == 0x55) )
    {
        Flash_Read_all(kind);
    }
}



