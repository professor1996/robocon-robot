<!doctype html public "-//w3c//dtd html 4.0 transitional//en">
<html><head>
<title>Static Call Graph - [.\Obj\project.axf]</title></head>
<body><HR>
<H1>Static Call Graph for image .\Obj\project.axf</H1><HR>
<BR><P>#&#060CALLGRAPH&#062# ARM Linker, 5.03 [Build 76]: Last Updated: Wed Jun 01 08:40:13 2016
<BR><P>
<H3>Maximum Stack Usage =        472 bytes + Unknown(Cycles, Untraceable Function Pointers)</H3><H3>
Call chain for Maximum Stack Depth:</H3>
main &rArr; midline_draw_hd &rArr; __aeabi_i2d &rArr; _double_epilogue &rArr; _double_round
<P>
<H3>
Mutually Recursive functions
</H3> <LI><a href="#[1c]">ADC_IRQHandler</a>&nbsp;&nbsp;&nbsp;&rArr;&nbsp;&nbsp;&nbsp;<a href="#[1c]">ADC_IRQHandler</a><BR>
</UL>
<P>
<H3>
Function Pointers
</H3><UL>
 <LI><a href="#[1c]">ADC_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[4]">BusFault_Handler</a> from stm32f4xx_it.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[1e]">CAN1_RX0_IRQHandler</a> from can1.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[1f]">CAN1_RX1_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[20]">CAN1_SCE_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[1d]">CAN1_TX_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[4a]">CAN2_RX0_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[4b]">CAN2_RX1_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[4c]">CAN2_SCE_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[49]">CAN2_TX_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[59]">CRYP_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[58]">DCMI_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[15]">DMA1_Stream0_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[16]">DMA1_Stream1_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[17]">DMA1_Stream2_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[18]">DMA1_Stream3_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[19]">DMA1_Stream4_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[1a]">DMA1_Stream5_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[1b]">DMA1_Stream6_IRQHandler</a> from usart.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[39]">DMA1_Stream7_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[42]">DMA2_Stream0_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[43]">DMA2_Stream1_IRQHandler</a> from main.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[44]">DMA2_Stream2_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[45]">DMA2_Stream3_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[46]">DMA2_Stream4_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[4e]">DMA2_Stream5_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[4f]">DMA2_Stream6_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[50]">DMA2_Stream7_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[7]">DebugMon_Handler</a> from stm32f4xx_it.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[47]">ETH_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[48]">ETH_WKUP_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[10]">EXTI0_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[32]">EXTI15_10_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[11]">EXTI1_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[12]">EXTI2_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[13]">EXTI3_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[14]">EXTI4_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[21]">EXTI9_5_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[e]">FLASH_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[5b]">FPU_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[3a]">FSMC_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[5a]">HASH_RNG_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[2]">HardFault_Handler</a> from stm32f4xx_it.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[2a]">I2C1_ER_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[29]">I2C1_EV_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[2c]">I2C2_ER_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[2b]">I2C2_EV_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[53]">I2C3_ER_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[52]">I2C3_EV_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[3]">MemManage_Handler</a> from stm32f4xx_it.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[1]">NMI_Handler</a> from stm32f4xx_it.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[4d]">OTG_FS_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[34]">OTG_FS_WKUP_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[55]">OTG_HS_EP1_IN_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[54]">OTG_HS_EP1_OUT_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[57]">OTG_HS_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[56]">OTG_HS_WKUP_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[b]">PVD_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[8]">PendSV_Handler</a> from stm32f4xx_it.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[f]">RCC_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[33]">RTC_Alarm_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[d]">RTC_WKUP_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[0]">Reset_Handler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[3b]">SDIO_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[2d]">SPI1_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[2e]">SPI2_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[3d]">SPI3_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[6]">SVC_Handler</a> from stm32f4xx_it.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[9]">SysTick_Handler</a> from main.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[5d]">SystemInit</a> from system_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(.text)
 <LI><a href="#[c]">TAMP_STAMP_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[22]">TIM1_BRK_TIM9_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[25]">TIM1_CC_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[24]">TIM1_TRG_COM_TIM11_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[23]">TIM1_UP_TIM10_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[26]">TIM2_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[27]">TIM3_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[28]">TIM4_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[3c]">TIM5_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[40]">TIM6_DAC_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[41]">TIM7_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[35]">TIM8_BRK_TIM12_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[38]">TIM8_CC_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[37]">TIM8_TRG_COM_TIM14_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[36]">TIM8_UP_TIM13_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[3e]">UART4_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[3f]">UART5_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[2f]">USART1_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[30]">USART2_IRQHandler</a> from usart.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[31]">USART3_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[51]">USART6_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[5]">UsageFault_Handler</a> from stm32f4xx_it.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[a]">WWDG_IRQHandler</a> from startup_stm32f4xx.o(.text) referenced from startup_stm32f4xx.o(RESET)
 <LI><a href="#[5e]">__main</a> from entry.o(.ARM.Collect$$$$00000000) referenced from startup_stm32f4xx.o(.text)
 <LI><a href="#[5f]">_sputc</a> from printfa.o(i._sputc) referenced from printfa.o(i.__0sprintf)
 <LI><a href="#[5c]">main</a> from main.o(.text) referenced from entry9a.o(.ARM.Collect$$$$0000000B)
</UL>
<P>
<H3>
Global Symbols
</H3>
<P><STRONG><a name="[5e]"></a>__main</STRONG> (Thumb, 0 bytes, Stack size unknown bytes, entry.o(.ARM.Collect$$$$00000000))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(.text)
</UL>
<P><STRONG><a name="[10c]"></a>_main_stk</STRONG> (Thumb, 0 bytes, Stack size unknown bytes, entry2.o(.ARM.Collect$$$$00000001))

<P><STRONG><a name="[60]"></a>_main_scatterload</STRONG> (Thumb, 0 bytes, Stack size unknown bytes, entry5.o(.ARM.Collect$$$$00000004))
<BR><BR>[Calls]<UL><LI><a href="#[61]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__scatterload
</UL>

<P><STRONG><a name="[105]"></a>__main_after_scatterload</STRONG> (Thumb, 0 bytes, Stack size unknown bytes, entry5.o(.ARM.Collect$$$$00000004))
<BR><BR>[Called By]<UL><LI><a href="#[61]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__scatterload
</UL>

<P><STRONG><a name="[10d]"></a>_main_clock</STRONG> (Thumb, 0 bytes, Stack size unknown bytes, entry7b.o(.ARM.Collect$$$$00000008))

<P><STRONG><a name="[10e]"></a>_main_cpp_init</STRONG> (Thumb, 0 bytes, Stack size unknown bytes, entry8b.o(.ARM.Collect$$$$0000000A))

<P><STRONG><a name="[10f]"></a>_main_init</STRONG> (Thumb, 0 bytes, Stack size unknown bytes, entry9a.o(.ARM.Collect$$$$0000000B))

<P><STRONG><a name="[110]"></a>__rt_final_cpp</STRONG> (Thumb, 0 bytes, Stack size unknown bytes, entry10a.o(.ARM.Collect$$$$0000000D))

<P><STRONG><a name="[111]"></a>__rt_final_exit</STRONG> (Thumb, 0 bytes, Stack size unknown bytes, entry11a.o(.ARM.Collect$$$$0000000F))

<P><STRONG><a name="[5c]"></a>main</STRONG> (Thumb, 1406 bytes, Stack size 16 bytes, main.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 472<LI>Call Chain = main &rArr; midline_draw_hd &rArr; __aeabi_i2d &rArr; _double_epilogue &rArr; _double_round
</UL>
<BR>[Calls]<UL><LI><a href="#[70]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;send_picture
<LI><a href="#[71]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;restart_judge
<LI><a href="#[76]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;midline_draw_hd
<LI><a href="#[77]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;midline_draw
<LI><a href="#[64]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;led_configuration
<LI><a href="#[75]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;image_threshold_xp
<LI><a href="#[73]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;image_threshold_sp
<LI><a href="#[74]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;image_threshold_hd
<LI><a href="#[6d]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;ili9320_SetCursor
<LI><a href="#[63]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;ili9320_Initializtion
<LI><a href="#[78]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;error_ca
<LI><a href="#[67]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;delay_ms
<LI><a href="#[7a]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_dmul
<LI><a href="#[7b]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_d2iz
<LI><a href="#[7c]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;VS4Channal_Send
<LI><a href="#[6b]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;USART_GPIO_Config
<LI><a href="#[6f]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;Transfer2Gray
<LI><a href="#[5d]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;SystemInit
<LI><a href="#[6a]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;OV_Start
<LI><a href="#[72]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;OV_Init2
<LI><a href="#[68]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;OV_Init
<LI><a href="#[62]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;NVIC_PriorityGroupConfig
<LI><a href="#[6e]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;GUI_Text
<LI><a href="#[66]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;GPIO_ToggleBits
<LI><a href="#[69]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;GPIO_SetBits
<LI><a href="#[6c]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;GPIO_ReadInputDataBit
<LI><a href="#[65]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;Can1_Configuration
<LI><a href="#[79]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;CameraPid
</UL>
<BR>[Address Reference Count : 1]<UL><LI> entry9a.o(.ARM.Collect$$$$0000000B)
</UL>
<P><STRONG><a name="[43]"></a>DMA2_Stream1_IRQHandler</STRONG> (Thumb, 46 bytes, Stack size 8 bytes, main.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 24<LI>Call Chain = DMA2_Stream1_IRQHandler &rArr; DMA_GetITStatus
</UL>
<BR>[Calls]<UL><LI><a href="#[7d]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;DMA_GetITStatus
<LI><a href="#[7f]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;DMA_ClearITPendingBit
<LI><a href="#[7e]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;DMA_ClearFlag
<LI><a href="#[80]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;DCMI_CaptureCmd
</UL>
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[9]"></a>SysTick_Handler</STRONG> (Thumb, 334 bytes, Stack size 8 bytes, main.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 48<LI>Call Chain = SysTick_Handler &rArr; SendPulseBeep &rArr; CAN_Transmit
</UL>
<BR>[Calls]<UL><LI><a href="#[81]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;SendPulseBeep
</UL>
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[1]"></a>NMI_Handler</STRONG> (Thumb, 2 bytes, Stack size 0 bytes, stm32f4xx_it.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[2]"></a>HardFault_Handler</STRONG> (Thumb, 4 bytes, Stack size 0 bytes, stm32f4xx_it.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[3]"></a>MemManage_Handler</STRONG> (Thumb, 4 bytes, Stack size 0 bytes, stm32f4xx_it.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[4]"></a>BusFault_Handler</STRONG> (Thumb, 4 bytes, Stack size 0 bytes, stm32f4xx_it.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[5]"></a>UsageFault_Handler</STRONG> (Thumb, 4 bytes, Stack size 0 bytes, stm32f4xx_it.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[6]"></a>SVC_Handler</STRONG> (Thumb, 2 bytes, Stack size 0 bytes, stm32f4xx_it.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[7]"></a>DebugMon_Handler</STRONG> (Thumb, 2 bytes, Stack size 0 bytes, stm32f4xx_it.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[8]"></a>PendSV_Handler</STRONG> (Thumb, 2 bytes, Stack size 0 bytes, stm32f4xx_it.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[64]"></a>led_configuration</STRONG> (Thumb, 128 bytes, Stack size 16 bytes, led.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 36<LI>Call Chain = led_configuration &rArr; GPIO_Init
</UL>
<BR>[Calls]<UL><LI><a href="#[82]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;RCC_AHB1PeriphClockCmd
<LI><a href="#[83]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;GPIO_Init
<LI><a href="#[69]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;GPIO_SetBits
</UL>
<BR>[Called By]<UL><LI><a href="#[5c]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;main
</UL>

<P><STRONG><a name="[112]"></a>Systic_Configuration</STRONG> (Thumb, 32 bytes, Stack size 0 bytes, led.o(.text), UNUSED)

<P><STRONG><a name="[67]"></a>delay_ms</STRONG> (Thumb, 28 bytes, Stack size 8 bytes, delay.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 8<LI>Call Chain = delay_ms
</UL>
<BR>[Called By]<UL><LI><a href="#[e6]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;ili9320_Delay
<LI><a href="#[94]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;OV_QVGAConfig
<LI><a href="#[63]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;ili9320_Initializtion
<LI><a href="#[68]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;OV_Init
<LI><a href="#[5c]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;main
</UL>

<P><STRONG><a name="[113]"></a>delay_us</STRONG> (Thumb, 26 bytes, Stack size 8 bytes, delay.o(.text), UNUSED)

<P><STRONG><a name="[84]"></a>OV_GPIO_Init</STRONG> (Thumb, 322 bytes, Stack size 16 bytes, ov7725.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 52<LI>Call Chain = OV_GPIO_Init &rArr; SCCB_GPIO_Config &rArr; GPIO_Init
</UL>
<BR>[Calls]<UL><LI><a href="#[87]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;SCCB_GPIO_Config
<LI><a href="#[88]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;RCC_MCO1Config
<LI><a href="#[86]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;GPIO_ResetBits
<LI><a href="#[85]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;GPIO_PinAFConfig
<LI><a href="#[82]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;RCC_AHB1PeriphClockCmd
<LI><a href="#[83]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;GPIO_Init
<LI><a href="#[69]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;GPIO_SetBits
</UL>
<BR>[Called By]<UL><LI><a href="#[68]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;OV_Init
</UL>

<P><STRONG><a name="[89]"></a>OV_DCMI_Init</STRONG> (Thumb, 54 bytes, Stack size 24 bytes, ov7725.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 24<LI>Call Chain = OV_DCMI_Init
</UL>
<BR>[Calls]<UL><LI><a href="#[8a]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;RCC_AHB2PeriphClockCmd
<LI><a href="#[8b]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;DCMI_Init
</UL>
<BR>[Called By]<UL><LI><a href="#[72]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;OV_Init2
<LI><a href="#[68]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;OV_Init
</UL>

<P><STRONG><a name="[8c]"></a>OV_DCMI_DMA_Init</STRONG> (Thumb, 128 bytes, Stack size 80 bytes, ov7725.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 96<LI>Call Chain = OV_DCMI_DMA_Init &rArr; NVIC_Init
</UL>
<BR>[Calls]<UL><LI><a href="#[8d]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;NVIC_Init
<LI><a href="#[90]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;DMA_Init
<LI><a href="#[8f]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;DMA_ITConfig
<LI><a href="#[8e]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;DMA_DeInit
<LI><a href="#[82]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;RCC_AHB1PeriphClockCmd
</UL>
<BR>[Called By]<UL><LI><a href="#[72]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;OV_Init2
<LI><a href="#[68]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;OV_Init
</UL>

<P><STRONG><a name="[91]"></a>OV_Window_Set</STRONG> (Thumb, 94 bytes, Stack size 24 bytes, ov7725.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 44<LI>Call Chain = OV_Window_Set &rArr; RD_SENSOR_Reg &rArr; I2C_ReadByte
</UL>
<BR>[Calls]<UL><LI><a href="#[92]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;WR_SENSOR_Reg
<LI><a href="#[93]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;RD_SENSOR_Reg
</UL>
<BR>[Called By]<UL><LI><a href="#[72]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;OV_Init2
<LI><a href="#[68]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;OV_Init
</UL>

<P><STRONG><a name="[94]"></a>OV_QVGAConfig</STRONG> (Thumb, 46 bytes, Stack size 8 bytes, ov7725.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 24<LI>Call Chain = OV_QVGAConfig &rArr; WR_SENSOR_Reg &rArr; I2C_SendByte
</UL>
<BR>[Calls]<UL><LI><a href="#[92]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;WR_SENSOR_Reg
<LI><a href="#[67]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;delay_ms
</UL>
<BR>[Called By]<UL><LI><a href="#[68]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;OV_Init
</UL>

<P><STRONG><a name="[95]"></a>OV_QVGAConfig2</STRONG> (Thumb, 40 bytes, Stack size 8 bytes, ov7725.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 24<LI>Call Chain = OV_QVGAConfig2 &rArr; WR_SENSOR_Reg &rArr; I2C_SendByte
</UL>
<BR>[Calls]<UL><LI><a href="#[92]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;WR_SENSOR_Reg
</UL>
<BR>[Called By]<UL><LI><a href="#[72]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;OV_Init2
</UL>

<P><STRONG><a name="[6a]"></a>OV_Start</STRONG> (Thumb, 24 bytes, Stack size 8 bytes, ov7725.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 8<LI>Call Chain = OV_Start
</UL>
<BR>[Calls]<UL><LI><a href="#[96]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;DMA_Cmd
<LI><a href="#[97]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;DCMI_Cmd
<LI><a href="#[80]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;DCMI_CaptureCmd
</UL>
<BR>[Called By]<UL><LI><a href="#[5c]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;main
</UL>

<P><STRONG><a name="[98]"></a>OV_Stop</STRONG> (Thumb, 24 bytes, Stack size 8 bytes, ov7725.o(.text), UNUSED)
<BR><BR>[Calls]<UL><LI><a href="#[96]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;DMA_Cmd
<LI><a href="#[97]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;DCMI_Cmd
<LI><a href="#[80]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;DCMI_CaptureCmd
</UL>

<P><STRONG><a name="[68]"></a>OV_Init</STRONG> (Thumb, 104 bytes, Stack size 8 bytes, ov7725.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 104<LI>Call Chain = OV_Init &rArr; OV_DCMI_DMA_Init &rArr; NVIC_Init
</UL>
<BR>[Calls]<UL><LI><a href="#[92]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;WR_SENSOR_Reg
<LI><a href="#[93]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;RD_SENSOR_Reg
<LI><a href="#[94]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;OV_QVGAConfig
<LI><a href="#[91]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;OV_Window_Set
<LI><a href="#[8c]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;OV_DCMI_DMA_Init
<LI><a href="#[89]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;OV_DCMI_Init
<LI><a href="#[84]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;OV_GPIO_Init
<LI><a href="#[67]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;delay_ms
</UL>
<BR>[Called By]<UL><LI><a href="#[5c]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;main
</UL>

<P><STRONG><a name="[72]"></a>OV_Init2</STRONG> (Thumb, 44 bytes, Stack size 8 bytes, ov7725.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 104<LI>Call Chain = OV_Init2 &rArr; OV_DCMI_DMA_Init &rArr; NVIC_Init
</UL>
<BR>[Calls]<UL><LI><a href="#[95]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;OV_QVGAConfig2
<LI><a href="#[91]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;OV_Window_Set
<LI><a href="#[8c]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;OV_DCMI_DMA_Init
<LI><a href="#[89]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;OV_DCMI_Init
</UL>
<BR>[Called By]<UL><LI><a href="#[5c]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;main
</UL>

<P><STRONG><a name="[87]"></a>SCCB_GPIO_Config</STRONG> (Thumb, 48 bytes, Stack size 16 bytes, sccb.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 36<LI>Call Chain = SCCB_GPIO_Config &rArr; GPIO_Init
</UL>
<BR>[Calls]<UL><LI><a href="#[82]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;RCC_AHB1PeriphClockCmd
<LI><a href="#[83]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;GPIO_Init
</UL>
<BR>[Called By]<UL><LI><a href="#[84]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;OV_GPIO_Init
</UL>

<P><STRONG><a name="[9a]"></a>I2C_delay</STRONG> (Thumb, 14 bytes, Stack size 0 bytes, sccb.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[a0]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;I2C_ReadByte
<LI><a href="#[9f]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;I2C_SendByte
<LI><a href="#[9e]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;I2C_WaitAck
<LI><a href="#[9d]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;I2C_NoAck
<LI><a href="#[9c]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;I2C_Ack
<LI><a href="#[9b]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;I2C_Start
<LI><a href="#[99]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;I2C_Stop
<LI><a href="#[92]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;WR_SENSOR_Reg
<LI><a href="#[93]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;RD_SENSOR_Reg
</UL>

<P><STRONG><a name="[99]"></a>I2C_Stop</STRONG> (Thumb, 60 bytes, Stack size 4 bytes, sccb.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 4<LI>Call Chain = I2C_Stop
</UL>
<BR>[Calls]<UL><LI><a href="#[9a]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;I2C_delay
</UL>
<BR>[Called By]<UL><LI><a href="#[92]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;WR_SENSOR_Reg
<LI><a href="#[93]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;RD_SENSOR_Reg
</UL>

<P><STRONG><a name="[9b]"></a>I2C_Start</STRONG> (Thumb, 92 bytes, Stack size 4 bytes, sccb.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 4<LI>Call Chain = I2C_Start
</UL>
<BR>[Calls]<UL><LI><a href="#[9a]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;I2C_delay
</UL>
<BR>[Called By]<UL><LI><a href="#[92]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;WR_SENSOR_Reg
<LI><a href="#[93]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;RD_SENSOR_Reg
</UL>

<P><STRONG><a name="[9c]"></a>I2C_Ack</STRONG> (Thumb, 60 bytes, Stack size 4 bytes, sccb.o(.text), UNUSED)
<BR><BR>[Calls]<UL><LI><a href="#[9a]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;I2C_delay
</UL>

<P><STRONG><a name="[9d]"></a>I2C_NoAck</STRONG> (Thumb, 60 bytes, Stack size 4 bytes, sccb.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 4<LI>Call Chain = I2C_NoAck
</UL>
<BR>[Calls]<UL><LI><a href="#[9a]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;I2C_delay
</UL>
<BR>[Called By]<UL><LI><a href="#[93]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;RD_SENSOR_Reg
</UL>

<P><STRONG><a name="[9e]"></a>I2C_WaitAck</STRONG> (Thumb, 92 bytes, Stack size 4 bytes, sccb.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 4<LI>Call Chain = I2C_WaitAck
</UL>
<BR>[Calls]<UL><LI><a href="#[9a]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;I2C_delay
</UL>
<BR>[Called By]<UL><LI><a href="#[92]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;WR_SENSOR_Reg
<LI><a href="#[93]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;RD_SENSOR_Reg
</UL>

<P><STRONG><a name="[9f]"></a>I2C_SendByte</STRONG> (Thumb, 94 bytes, Stack size 4 bytes, sccb.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 4<LI>Call Chain = I2C_SendByte
</UL>
<BR>[Calls]<UL><LI><a href="#[9a]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;I2C_delay
</UL>
<BR>[Called By]<UL><LI><a href="#[92]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;WR_SENSOR_Reg
<LI><a href="#[93]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;RD_SENSOR_Reg
</UL>

<P><STRONG><a name="[a0]"></a>I2C_ReadByte</STRONG> (Thumb, 88 bytes, Stack size 4 bytes, sccb.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 4<LI>Call Chain = I2C_ReadByte
</UL>
<BR>[Calls]<UL><LI><a href="#[9a]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;I2C_delay
</UL>
<BR>[Called By]<UL><LI><a href="#[93]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;RD_SENSOR_Reg
</UL>

<P><STRONG><a name="[92]"></a>WR_SENSOR_Reg</STRONG> (Thumb, 86 bytes, Stack size 12 bytes, sccb.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 16<LI>Call Chain = WR_SENSOR_Reg &rArr; I2C_SendByte
</UL>
<BR>[Calls]<UL><LI><a href="#[9f]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;I2C_SendByte
<LI><a href="#[9e]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;I2C_WaitAck
<LI><a href="#[9b]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;I2C_Start
<LI><a href="#[99]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;I2C_Stop
<LI><a href="#[9a]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;I2C_delay
</UL>
<BR>[Called By]<UL><LI><a href="#[95]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;OV_QVGAConfig2
<LI><a href="#[94]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;OV_QVGAConfig
<LI><a href="#[91]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;OV_Window_Set
<LI><a href="#[68]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;OV_Init
</UL>

<P><STRONG><a name="[93]"></a>RD_SENSOR_Reg</STRONG> (Thumb, 118 bytes, Stack size 16 bytes, sccb.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 20<LI>Call Chain = RD_SENSOR_Reg &rArr; I2C_ReadByte
</UL>
<BR>[Calls]<UL><LI><a href="#[a0]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;I2C_ReadByte
<LI><a href="#[9f]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;I2C_SendByte
<LI><a href="#[9e]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;I2C_WaitAck
<LI><a href="#[9d]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;I2C_NoAck
<LI><a href="#[9b]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;I2C_Start
<LI><a href="#[99]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;I2C_Stop
<LI><a href="#[9a]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;I2C_delay
</UL>
<BR>[Called By]<UL><LI><a href="#[91]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;OV_Window_Set
<LI><a href="#[68]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;OV_Init
</UL>

<P><STRONG><a name="[6f]"></a>Transfer2Gray</STRONG> (Thumb, 84 bytes, Stack size 16 bytes, image.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 16<LI>Call Chain = Transfer2Gray
</UL>
<BR>[Called By]<UL><LI><a href="#[5c]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;main
</UL>

<P><STRONG><a name="[114]"></a>Transfer2Gray_UV</STRONG> (Thumb, 84 bytes, Stack size 16 bytes, image.o(.text), UNUSED)

<P><STRONG><a name="[73]"></a>image_threshold_sp</STRONG> (Thumb, 1024 bytes, Stack size 144 bytes, image.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 200<LI>Call Chain = image_threshold_sp &rArr; __aeabi_i2d &rArr; _double_epilogue &rArr; _double_round
</UL>
<BR>[Calls]<UL><LI><a href="#[a2]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_i2d
<LI><a href="#[a5]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_f2d
<LI><a href="#[a6]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_cdrcmple
<LI><a href="#[a4]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_cdcmple
<LI><a href="#[a1]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_memclr4
<LI><a href="#[a3]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__hardfp_fabs
</UL>
<BR>[Called By]<UL><LI><a href="#[5c]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;main
</UL>

<P><STRONG><a name="[74]"></a>image_threshold_hd</STRONG> (Thumb, 1142 bytes, Stack size 176 bytes, image.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 232<LI>Call Chain = image_threshold_hd &rArr; __aeabi_i2d &rArr; _double_epilogue &rArr; _double_round
</UL>
<BR>[Calls]<UL><LI><a href="#[a2]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_i2d
<LI><a href="#[a5]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_f2d
<LI><a href="#[a6]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_cdrcmple
<LI><a href="#[a4]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_cdcmple
<LI><a href="#[a1]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_memclr4
<LI><a href="#[a3]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__hardfp_fabs
</UL>
<BR>[Called By]<UL><LI><a href="#[5c]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;main
</UL>

<P><STRONG><a name="[75]"></a>image_threshold_xp</STRONG> (Thumb, 1488 bytes, Stack size 296 bytes, image.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 352<LI>Call Chain = image_threshold_xp &rArr; __aeabi_i2d &rArr; _double_epilogue &rArr; _double_round
</UL>
<BR>[Calls]<UL><LI><a href="#[a2]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_i2d
<LI><a href="#[a8]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_ddiv
<LI><a href="#[a6]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_cdrcmple
<LI><a href="#[a4]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_cdcmple
<LI><a href="#[a7]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_cdcmpeq
<LI><a href="#[a1]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_memclr4
<LI><a href="#[a3]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__hardfp_fabs
</UL>
<BR>[Called By]<UL><LI><a href="#[5c]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;main
</UL>

<P><STRONG><a name="[77]"></a>midline_draw</STRONG> (Thumb, 1066 bytes, Stack size 136 bytes, image.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 192<LI>Call Chain = midline_draw &rArr; __aeabi_i2d &rArr; _double_epilogue &rArr; _double_round
</UL>
<BR>[Calls]<UL><LI><a href="#[a2]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_i2d
<LI><a href="#[a6]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_cdrcmple
<LI><a href="#[a1]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_memclr4
<LI><a href="#[a3]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__hardfp_fabs
</UL>
<BR>[Called By]<UL><LI><a href="#[5c]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;main
</UL>

<P><STRONG><a name="[76]"></a>midline_draw_hd</STRONG> (Thumb, 976 bytes, Stack size 400 bytes, image.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 456<LI>Call Chain = midline_draw_hd &rArr; __aeabi_i2d &rArr; _double_epilogue &rArr; _double_round
</UL>
<BR>[Calls]<UL><LI><a href="#[a2]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_i2d
<LI><a href="#[a6]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_cdrcmple
<LI><a href="#[a4]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_cdcmple
<LI><a href="#[a1]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_memclr4
<LI><a href="#[a3]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__hardfp_fabs
</UL>
<BR>[Called By]<UL><LI><a href="#[5c]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;main
</UL>

<P><STRONG><a name="[a9]"></a>race_identity</STRONG> (Thumb, 814 bytes, Stack size 40 bytes, image.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 128<LI>Call Chain = race_identity &rArr; __aeabi_dsub &rArr; __aeabi_dadd &rArr; _double_epilogue &rArr; _double_round
</UL>
<BR>[Calls]<UL><LI><a href="#[a5]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_f2d
<LI><a href="#[aa]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_dsub
<LI><a href="#[a6]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_cdrcmple
<LI><a href="#[a4]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_cdcmple
<LI><a href="#[a3]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__hardfp_fabs
</UL>
<BR>[Called By]<UL><LI><a href="#[78]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;error_ca
</UL>

<P><STRONG><a name="[ab]"></a>Screen</STRONG> (Thumb, 378 bytes, Stack size 16 bytes, image.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 164<LI>Call Chain = Screen &rArr; float_number_show &rArr; GUI_Text &rArr; ili9320_PutChar &rArr; ili9320_SetPoint &rArr; ili9320_SetCursor
</UL>
<BR>[Calls]<UL><LI><a href="#[ac]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;number_show
<LI><a href="#[ae]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;float_number_show
<LI><a href="#[ad]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_d2f
</UL>
<BR>[Called By]<UL><LI><a href="#[78]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;error_ca
</UL>

<P><STRONG><a name="[78]"></a>error_ca</STRONG> (Thumb, 3630 bytes, Stack size 56 bytes, image.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 220<LI>Call Chain = error_ca &rArr; Screen &rArr; float_number_show &rArr; GUI_Text &rArr; ili9320_PutChar &rArr; ili9320_SetPoint &rArr; ili9320_SetCursor
</UL>
<BR>[Calls]<UL><LI><a href="#[a2]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_i2d
<LI><a href="#[a5]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_f2d
<LI><a href="#[a6]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_cdrcmple
<LI><a href="#[a4]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_cdcmple
<LI><a href="#[ab]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;Screen
<LI><a href="#[a9]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;race_identity
<LI><a href="#[7a]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_dmul
<LI><a href="#[7b]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_d2iz
<LI><a href="#[a3]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__hardfp_fabs
</UL>
<BR>[Called By]<UL><LI><a href="#[5c]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;main
</UL>

<P><STRONG><a name="[115]"></a>max</STRONG> (Thumb, 32 bytes, Stack size 0 bytes, image.o(.text), UNUSED)

<P><STRONG><a name="[71]"></a>restart_judge</STRONG> (Thumb, 80 bytes, Stack size 8 bytes, image.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 8<LI>Call Chain = restart_judge
</UL>
<BR>[Called By]<UL><LI><a href="#[5c]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;main
</UL>

<P><STRONG><a name="[6b]"></a>USART_GPIO_Config</STRONG> (Thumb, 334 bytes, Stack size 96 bytes, usart.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 164<LI>Call Chain = USART_GPIO_Config &rArr; USART_Init &rArr; RCC_GetClocksFreq
</UL>
<BR>[Calls]<UL><LI><a href="#[b0]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;USART_Init
<LI><a href="#[b1]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;USART_ITConfig
<LI><a href="#[b4]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;USART_DMACmd
<LI><a href="#[b5]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;USART_Cmd
<LI><a href="#[b3]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;USART_ClearITPendingBit
<LI><a href="#[b2]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;USART_ClearFlag
<LI><a href="#[af]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;RCC_APB1PeriphClockCmd
<LI><a href="#[8d]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;NVIC_Init
<LI><a href="#[85]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;GPIO_PinAFConfig
<LI><a href="#[90]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;DMA_Init
<LI><a href="#[8f]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;DMA_ITConfig
<LI><a href="#[8e]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;DMA_DeInit
<LI><a href="#[82]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;RCC_AHB1PeriphClockCmd
<LI><a href="#[83]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;GPIO_Init
<LI><a href="#[7f]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;DMA_ClearITPendingBit
<LI><a href="#[7e]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;DMA_ClearFlag
</UL>
<BR>[Called By]<UL><LI><a href="#[5c]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;main
</UL>

<P><STRONG><a name="[b6]"></a>usart_txhander</STRONG> (Thumb, 80 bytes, Stack size 16 bytes, usart.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 24<LI>Call Chain = usart_txhander &rArr; DeQueue
</UL>
<BR>[Calls]<UL><LI><a href="#[b8]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;GetQueueLength
<LI><a href="#[b9]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;DeQueue
<LI><a href="#[ba]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;DMA_SetCurrDataCounter
<LI><a href="#[b7]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;DMA_GetCurrDataCounter
<LI><a href="#[96]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;DMA_Cmd
</UL>
<BR>[Called By]<UL><LI><a href="#[1b]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;DMA1_Stream6_IRQHandler
</UL>

<P><STRONG><a name="[bb]"></a>USART2_sendData</STRONG> (Thumb, 98 bytes, Stack size 24 bytes, usart.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 32<LI>Call Chain = USART2_sendData &rArr; EnQueue
</UL>
<BR>[Calls]<UL><LI><a href="#[b8]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;GetQueueLength
<LI><a href="#[bc]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;EnQueue
<LI><a href="#[b9]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;DeQueue
<LI><a href="#[ba]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;DMA_SetCurrDataCounter
<LI><a href="#[b7]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;DMA_GetCurrDataCounter
<LI><a href="#[96]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;DMA_Cmd
</UL>
<BR>[Called By]<UL><LI><a href="#[7c]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;VS4Channal_Send
</UL>

<P><STRONG><a name="[1b]"></a>DMA1_Stream6_IRQHandler</STRONG> (Thumb, 36 bytes, Stack size 8 bytes, usart.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 32<LI>Call Chain = DMA1_Stream6_IRQHandler &rArr; usart_txhander &rArr; DeQueue
</UL>
<BR>[Calls]<UL><LI><a href="#[b6]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;usart_txhander
<LI><a href="#[7d]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;DMA_GetITStatus
<LI><a href="#[7f]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;DMA_ClearITPendingBit
<LI><a href="#[7e]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;DMA_ClearFlag
</UL>
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[70]"></a>send_picture</STRONG> (Thumb, 42 bytes, Stack size 16 bytes, usart.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 16<LI>Call Chain = send_picture
</UL>
<BR>[Calls]<UL><LI><a href="#[be]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;USART_SendData
<LI><a href="#[bd]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;USART_GetFlagStatus
</UL>
<BR>[Called By]<UL><LI><a href="#[5c]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;main
</UL>

<P><STRONG><a name="[116]"></a>delay</STRONG> (Thumb, 28 bytes, Stack size 8 bytes, usart.o(.text), UNUSED)

<P><STRONG><a name="[30]"></a>USART2_IRQHandler</STRONG> (Thumb, 296 bytes, Stack size 8 bytes, usart.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 24<LI>Call Chain = USART2_IRQHandler &rArr; USART_GetITStatus
</UL>
<BR>[Calls]<UL><LI><a href="#[c0]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;USART_ReceiveData
<LI><a href="#[bf]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;USART_GetITStatus
<LI><a href="#[b3]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;USART_ClearITPendingBit
<LI><a href="#[b2]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;USART_ClearFlag
</UL>
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[c1]"></a>send_big_data</STRONG> (Thumb, 438 bytes, Stack size 24 bytes, usart.o(.text), UNUSED)
<BR><BR>[Calls]<UL><LI><a href="#[be]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;USART_SendData
<LI><a href="#[bd]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;USART_GetFlagStatus
</UL>

<P><STRONG><a name="[65]"></a>Can1_Configuration</STRONG> (Thumb, 238 bytes, Stack size 48 bytes, can1.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 68<LI>Call Chain = Can1_Configuration &rArr; GPIO_PinAFConfig
</UL>
<BR>[Calls]<UL><LI><a href="#[c3]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;CAN_StructInit
<LI><a href="#[c4]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;CAN_Init
<LI><a href="#[c6]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;CAN_ITConfig
<LI><a href="#[c5]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;CAN_FilterInit
<LI><a href="#[c2]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;CAN_DeInit
<LI><a href="#[af]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;RCC_APB1PeriphClockCmd
<LI><a href="#[8d]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;NVIC_Init
<LI><a href="#[85]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;GPIO_PinAFConfig
<LI><a href="#[82]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;RCC_AHB1PeriphClockCmd
<LI><a href="#[83]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;GPIO_Init
</UL>
<BR>[Called By]<UL><LI><a href="#[5c]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;main
</UL>

<P><STRONG><a name="[c7]"></a>SendPulse</STRONG> (Thumb, 58 bytes, Stack size 32 bytes, can1.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 40<LI>Call Chain = SendPulse &rArr; EncodeS32Data
</UL>
<BR>[Calls]<UL><LI><a href="#[c8]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;EncodeS32Data
<LI><a href="#[c9]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;CAN_Transmit
</UL>
<BR>[Called By]<UL><LI><a href="#[79]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;CameraPid
</UL>

<P><STRONG><a name="[81]"></a>SendPulseBeep</STRONG> (Thumb, 48 bytes, Stack size 32 bytes, can1.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 40<LI>Call Chain = SendPulseBeep &rArr; CAN_Transmit
</UL>
<BR>[Calls]<UL><LI><a href="#[ca]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;EncodeS16Data
<LI><a href="#[c9]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;CAN_Transmit
</UL>
<BR>[Called By]<UL><LI><a href="#[79]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;CameraPid
<LI><a href="#[9]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;SysTick_Handler
</UL>

<P><STRONG><a name="[cb]"></a>SendHandKey_3</STRONG> (Thumb, 54 bytes, Stack size 40 bytes, can1.o(.text), UNUSED)
<BR><BR>[Calls]<UL><LI><a href="#[c9]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;CAN_Transmit
</UL>

<P><STRONG><a name="[cc]"></a>SendElectromagnet</STRONG> (Thumb, 44 bytes, Stack size 32 bytes, can1.o(.text), UNUSED)
<BR><BR>[Calls]<UL><LI><a href="#[c9]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;CAN_Transmit
</UL>

<P><STRONG><a name="[1e]"></a>CAN1_RX0_IRQHandler</STRONG> (Thumb, 92 bytes, Stack size 32 bytes, can1.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 48<LI>Call Chain = CAN1_RX0_IRQHandler &rArr; CAN_GetITStatus
</UL>
<BR>[Calls]<UL><LI><a href="#[cf]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;DecodeS16Data
<LI><a href="#[d0]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;DecodeFloatData
<LI><a href="#[ce]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;CAN_Receive
<LI><a href="#[cd]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;CAN_GetITStatus
<LI><a href="#[d1]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;CAN_ClearITPendingBit
<LI><a href="#[d2]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;CAN_ClearFlag
</UL>
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[c8]"></a>EncodeS32Data</STRONG> (Thumb, 40 bytes, Stack size 8 bytes, mydataprocess.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 8<LI>Call Chain = EncodeS32Data
</UL>
<BR>[Called By]<UL><LI><a href="#[c7]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;SendPulse
</UL>

<P><STRONG><a name="[117]"></a>DecodeS32Data</STRONG> (Thumb, 36 bytes, Stack size 8 bytes, mydataprocess.o(.text), UNUSED)

<P><STRONG><a name="[118]"></a>EncodeFloatData</STRONG> (Thumb, 44 bytes, Stack size 8 bytes, mydataprocess.o(.text), UNUSED)

<P><STRONG><a name="[d0]"></a>DecodeFloatData</STRONG> (Thumb, 40 bytes, Stack size 8 bytes, mydataprocess.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 8<LI>Call Chain = DecodeFloatData
</UL>
<BR>[Called By]<UL><LI><a href="#[1e]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;CAN1_RX0_IRQHandler
</UL>

<P><STRONG><a name="[ca]"></a>EncodeS16Data</STRONG> (Thumb, 12 bytes, Stack size 0 bytes, mydataprocess.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[81]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;SendPulseBeep
</UL>

<P><STRONG><a name="[cf]"></a>DecodeS16Data</STRONG> (Thumb, 14 bytes, Stack size 0 bytes, mydataprocess.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[1e]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;CAN1_RX0_IRQHandler
</UL>

<P><STRONG><a name="[119]"></a>EncodeU16Data</STRONG> (Thumb, 12 bytes, Stack size 0 bytes, mydataprocess.o(.text), UNUSED)

<P><STRONG><a name="[11a]"></a>DecodeU16Data</STRONG> (Thumb, 12 bytes, Stack size 0 bytes, mydataprocess.o(.text), UNUSED)

<P><STRONG><a name="[11b]"></a>EncodeU12Data</STRONG> (Thumb, 22 bytes, Stack size 0 bytes, mydataprocess.o(.text), UNUSED)

<P><STRONG><a name="[11c]"></a>DecodeU12Data</STRONG> (Thumb, 16 bytes, Stack size 0 bytes, mydataprocess.o(.text), UNUSED)

<P><STRONG><a name="[11d]"></a>EncodeU16to5Dec</STRONG> (Thumb, 42 bytes, Stack size 12 bytes, mydataprocess.o(.text), UNUSED)

<P><STRONG><a name="[79]"></a>CameraPid</STRONG> (Thumb, 1974 bytes, Stack size 40 bytes, pid.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 128<LI>Call Chain = CameraPid &rArr; __aeabi_dadd &rArr; _double_epilogue &rArr; _double_round
</UL>
<BR>[Calls]<UL><LI><a href="#[d3]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_dadd
<LI><a href="#[c7]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;SendPulse
<LI><a href="#[a5]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_f2d
<LI><a href="#[aa]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_dsub
<LI><a href="#[a8]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_ddiv
<LI><a href="#[ad]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_d2f
<LI><a href="#[a6]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_cdrcmple
<LI><a href="#[a4]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_cdcmple
<LI><a href="#[7a]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_dmul
<LI><a href="#[7b]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_d2iz
<LI><a href="#[81]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;SendPulseBeep
<LI><a href="#[a3]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__hardfp_fabs
</UL>
<BR>[Called By]<UL><LI><a href="#[5c]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;main
</UL>

<P><STRONG><a name="[11e]"></a>GUI_Color565</STRONG> (Thumb, 28 bytes, Stack size 8 bytes, ili9320_api.o(.text), UNUSED)

<P><STRONG><a name="[6e]"></a>GUI_Text</STRONG> (Thumb, 56 bytes, Stack size 40 bytes, ili9320_api.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 100<LI>Call Chain = GUI_Text &rArr; ili9320_PutChar &rArr; ili9320_SetPoint &rArr; ili9320_SetCursor
</UL>
<BR>[Calls]<UL><LI><a href="#[d4]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;ili9320_PutChar
</UL>
<BR>[Called By]<UL><LI><a href="#[ac]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;number_show
<LI><a href="#[ae]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;float_number_show
<LI><a href="#[5c]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;main
</UL>

<P><STRONG><a name="[d5]"></a>GUI_Line</STRONG> (Thumb, 508 bytes, Stack size 48 bytes, ili9320_api.o(.text), UNUSED)
<BR><BR>[Calls]<UL><LI><a href="#[d6]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;ili9320_SetPoint
</UL>
<BR>[Called By]<UL><LI><a href="#[d8]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;GUI_Rectangle
<LI><a href="#[d7]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;GUI_Circle
</UL>

<P><STRONG><a name="[d7]"></a>GUI_Circle</STRONG> (Thumb, 372 bytes, Stack size 40 bytes, ili9320_api.o(.text), UNUSED)
<BR><BR>[Calls]<UL><LI><a href="#[d6]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;ili9320_SetPoint
<LI><a href="#[d5]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;GUI_Line
</UL>

<P><STRONG><a name="[d8]"></a>GUI_Rectangle</STRONG> (Thumb, 122 bytes, Stack size 40 bytes, ili9320_api.o(.text), UNUSED)
<BR><BR>[Calls]<UL><LI><a href="#[d5]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;GUI_Line
</UL>
<BR>[Called By]<UL><LI><a href="#[d9]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;GUI_Square
</UL>

<P><STRONG><a name="[d9]"></a>GUI_Square</STRONG> (Thumb, 40 bytes, Stack size 32 bytes, ili9320_api.o(.text), UNUSED)
<BR><BR>[Calls]<UL><LI><a href="#[d8]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;GUI_Rectangle
</UL>

<P><STRONG><a name="[ac]"></a>number_show</STRONG> (Thumb, 50 bytes, Stack size 32 bytes, led_show.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 132<LI>Call Chain = number_show &rArr; GUI_Text &rArr; ili9320_PutChar &rArr; ili9320_SetPoint &rArr; ili9320_SetCursor
</UL>
<BR>[Calls]<UL><LI><a href="#[6e]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;GUI_Text
<LI><a href="#[da]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__2sprintf
</UL>
<BR>[Called By]<UL><LI><a href="#[ab]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;Screen
</UL>

<P><STRONG><a name="[ae]"></a>float_number_show</STRONG> (Thumb, 88 bytes, Stack size 48 bytes, led_show.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 148<LI>Call Chain = float_number_show &rArr; GUI_Text &rArr; ili9320_PutChar &rArr; ili9320_SetPoint &rArr; ili9320_SetCursor
</UL>
<BR>[Calls]<UL><LI><a href="#[a5]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_f2d
<LI><a href="#[6e]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;GUI_Text
<LI><a href="#[da]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__2sprintf
</UL>
<BR>[Called By]<UL><LI><a href="#[ab]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;Screen
</UL>

<P><STRONG><a name="[db]"></a>LCD_CtrlLinesConfig</STRONG> (Thumb, 338 bytes, Stack size 16 bytes, ili9325.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 36<LI>Call Chain = LCD_CtrlLinesConfig &rArr; GPIO_PinAFConfig
</UL>
<BR>[Calls]<UL><LI><a href="#[dc]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;RCC_AHB3PeriphClockCmd
<LI><a href="#[86]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;GPIO_ResetBits
<LI><a href="#[85]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;GPIO_PinAFConfig
<LI><a href="#[82]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;RCC_AHB1PeriphClockCmd
<LI><a href="#[83]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;GPIO_Init
</UL>
<BR>[Called By]<UL><LI><a href="#[e0]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;LCD_X_Init
</UL>

<P><STRONG><a name="[dd]"></a>LCD_FSMCConfig</STRONG> (Thumb, 88 bytes, Stack size 96 bytes, ili9325.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 96<LI>Call Chain = LCD_FSMCConfig
</UL>
<BR>[Calls]<UL><LI><a href="#[de]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;FSMC_NORSRAMInit
<LI><a href="#[df]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;FSMC_NORSRAMCmd
</UL>
<BR>[Called By]<UL><LI><a href="#[e0]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;LCD_X_Init
</UL>

<P><STRONG><a name="[e0]"></a>LCD_X_Init</STRONG> (Thumb, 12 bytes, Stack size 8 bytes, ili9325.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 104<LI>Call Chain = LCD_X_Init &rArr; LCD_FSMCConfig
</UL>
<BR>[Calls]<UL><LI><a href="#[dd]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;LCD_FSMCConfig
<LI><a href="#[db]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;LCD_CtrlLinesConfig
</UL>
<BR>[Called By]<UL><LI><a href="#[63]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;ili9320_Initializtion
</UL>

<P><STRONG><a name="[e2]"></a>LCD_WriteReg</STRONG> (Thumb, 10 bytes, Stack size 0 bytes, ili9325.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[e3]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;ili9320_SetWindows
<LI><a href="#[e1]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;LCD_SetCursor
<LI><a href="#[6d]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;ili9320_SetCursor
<LI><a href="#[63]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;ili9320_Initializtion
</UL>

<P><STRONG><a name="[e7]"></a>LCD_ReadReg</STRONG> (Thumb, 10 bytes, Stack size 0 bytes, ili9325.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[63]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;ili9320_Initializtion
</UL>

<P><STRONG><a name="[11f]"></a>LCD_ReadSta</STRONG> (Thumb, 6 bytes, Stack size 0 bytes, ili9325.o(.text), UNUSED)

<P><STRONG><a name="[120]"></a>LCD_WriteCommand</STRONG> (Thumb, 6 bytes, Stack size 0 bytes, ili9325.o(.text), UNUSED)

<P><STRONG><a name="[e5]"></a>LCD_WriteRAM_Prepare</STRONG> (Thumb, 8 bytes, Stack size 0 bytes, ili9325.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[e4]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;ili9320_Clear
<LI><a href="#[d6]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;ili9320_SetPoint
</UL>

<P><STRONG><a name="[eb]"></a>LCD_WriteRAM</STRONG> (Thumb, 8 bytes, Stack size 0 bytes, ili9325.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[d6]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;ili9320_SetPoint
</UL>

<P><STRONG><a name="[e9]"></a>LCD_ReadRAM</STRONG> (Thumb, 20 bytes, Stack size 0 bytes, ili9325.o(.text), UNUSED)
<BR><BR>[Called By]<UL><LI><a href="#[e8]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;ili9320_GetPoint
</UL>

<P><STRONG><a name="[e1]"></a>LCD_SetCursor</STRONG> (Thumb, 40 bytes, Stack size 8 bytes, ili9325.o(.text), UNUSED)
<BR><BR>[Calls]<UL><LI><a href="#[e2]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;LCD_WriteReg
</UL>

<P><STRONG><a name="[121]"></a>Delay_nms</STRONG> (Thumb, 24 bytes, Stack size 0 bytes, ili9325.o(.text), UNUSED)

<P><STRONG><a name="[6d]"></a>ili9320_SetCursor</STRONG> (Thumb, 96 bytes, Stack size 8 bytes, ili9325.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 8<LI>Call Chain = ili9320_SetCursor
</UL>
<BR>[Calls]<UL><LI><a href="#[e2]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;LCD_WriteReg
</UL>
<BR>[Called By]<UL><LI><a href="#[e8]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;ili9320_GetPoint
<LI><a href="#[e4]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;ili9320_Clear
<LI><a href="#[e3]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;ili9320_SetWindows
<LI><a href="#[d6]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;ili9320_SetPoint
<LI><a href="#[5c]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;main
</UL>

<P><STRONG><a name="[e3]"></a>ili9320_SetWindows</STRONG> (Thumb, 52 bytes, Stack size 20 bytes, ili9325.o(.text), UNUSED)
<BR><BR>[Calls]<UL><LI><a href="#[e2]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;LCD_WriteReg
<LI><a href="#[6d]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;ili9320_SetCursor
</UL>

<P><STRONG><a name="[e4]"></a>ili9320_Clear</STRONG> (Thumb, 38 bytes, Stack size 12 bytes, ili9325.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 20<LI>Call Chain = ili9320_Clear &rArr; ili9320_SetCursor
</UL>
<BR>[Calls]<UL><LI><a href="#[e5]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;LCD_WriteRAM_Prepare
<LI><a href="#[6d]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;ili9320_SetCursor
</UL>
<BR>[Called By]<UL><LI><a href="#[63]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;ili9320_Initializtion
</UL>

<P><STRONG><a name="[e6]"></a>ili9320_Delay</STRONG> (Thumb, 10 bytes, Stack size 8 bytes, ili9325.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 16<LI>Call Chain = ili9320_Delay &rArr; delay_ms
</UL>
<BR>[Calls]<UL><LI><a href="#[67]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;delay_ms
</UL>
<BR>[Called By]<UL><LI><a href="#[63]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;ili9320_Initializtion
</UL>

<P><STRONG><a name="[63]"></a>ili9320_Initializtion</STRONG> (Thumb, 3018 bytes, Stack size 8 bytes, ili9325.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 112<LI>Call Chain = ili9320_Initializtion &rArr; LCD_X_Init &rArr; LCD_FSMCConfig
</UL>
<BR>[Calls]<UL><LI><a href="#[e6]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;ili9320_Delay
<LI><a href="#[e4]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;ili9320_Clear
<LI><a href="#[e7]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;LCD_ReadReg
<LI><a href="#[e2]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;LCD_WriteReg
<LI><a href="#[e0]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;LCD_X_Init
<LI><a href="#[67]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;delay_ms
<LI><a href="#[69]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;GPIO_SetBits
</UL>
<BR>[Called By]<UL><LI><a href="#[5c]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;main
</UL>

<P><STRONG><a name="[ea]"></a>ili9320_BGR2RGB</STRONG> (Thumb, 26 bytes, Stack size 12 bytes, ili9325.o(.text), UNUSED)
<BR><BR>[Called By]<UL><LI><a href="#[e8]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;ili9320_GetPoint
</UL>

<P><STRONG><a name="[e8]"></a>ili9320_GetPoint</STRONG> (Thumb, 26 bytes, Stack size 16 bytes, ili9325.o(.text), UNUSED)
<BR><BR>[Calls]<UL><LI><a href="#[ea]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;ili9320_BGR2RGB
<LI><a href="#[e9]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;LCD_ReadRAM
<LI><a href="#[6d]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;ili9320_SetCursor
</UL>

<P><STRONG><a name="[d6]"></a>ili9320_SetPoint</STRONG> (Thumb, 42 bytes, Stack size 16 bytes, ili9325.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 24<LI>Call Chain = ili9320_SetPoint &rArr; ili9320_SetCursor
</UL>
<BR>[Calls]<UL><LI><a href="#[eb]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;LCD_WriteRAM
<LI><a href="#[e5]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;LCD_WriteRAM_Prepare
<LI><a href="#[6d]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;ili9320_SetCursor
</UL>
<BR>[Called By]<UL><LI><a href="#[ec]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;ili9320_DrawPicture
<LI><a href="#[d4]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;ili9320_PutChar
<LI><a href="#[d7]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;GUI_Circle
<LI><a href="#[d5]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;GUI_Line
</UL>

<P><STRONG><a name="[ec]"></a>ili9320_DrawPicture</STRONG> (Thumb, 184 bytes, Stack size 64 bytes, ili9325.o(.text), UNUSED)
<BR><BR>[Calls]<UL><LI><a href="#[d6]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;ili9320_SetPoint
</UL>

<P><STRONG><a name="[d4]"></a>ili9320_PutChar</STRONG> (Thumb, 182 bytes, Stack size 36 bytes, ili9325.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 60<LI>Call Chain = ili9320_PutChar &rArr; ili9320_SetPoint &rArr; ili9320_SetCursor
</UL>
<BR>[Calls]<UL><LI><a href="#[d6]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;ili9320_SetPoint
</UL>
<BR>[Called By]<UL><LI><a href="#[6e]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;GUI_Text
</UL>

<P><STRONG><a name="[ed]"></a>ili9320_BackLight</STRONG> (Thumb, 28 bytes, Stack size 8 bytes, ili9325.o(.text), UNUSED)
<BR><BR>[Calls]<UL><LI><a href="#[86]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;GPIO_ResetBits
<LI><a href="#[69]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;GPIO_SetBits
</UL>

<P><STRONG><a name="[122]"></a>SetEmpty</STRONG> (Thumb, 8 bytes, Stack size 0 bytes, queue.o(.text), UNUSED)

<P><STRONG><a name="[bc]"></a>EnQueue</STRONG> (Thumb, 52 bytes, Stack size 8 bytes, queue.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 8<LI>Call Chain = EnQueue
</UL>
<BR>[Called By]<UL><LI><a href="#[bb]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;USART2_sendData
</UL>

<P><STRONG><a name="[b9]"></a>DeQueue</STRONG> (Thumb, 42 bytes, Stack size 8 bytes, queue.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 8<LI>Call Chain = DeQueue
</UL>
<BR>[Called By]<UL><LI><a href="#[bb]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;USART2_sendData
<LI><a href="#[b6]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;usart_txhander
</UL>

<P><STRONG><a name="[b8]"></a>GetQueueLength</STRONG> (Thumb, 46 bytes, Stack size 0 bytes, queue.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[bb]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;USART2_sendData
<LI><a href="#[b6]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;usart_txhander
</UL>

<P><STRONG><a name="[7c]"></a>VS4Channal_Send</STRONG> (Thumb, 118 bytes, Stack size 40 bytes, visual_scope.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 72<LI>Call Chain = VS4Channal_Send &rArr; USART2_sendData &rArr; EnQueue
</UL>
<BR>[Calls]<UL><LI><a href="#[bb]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;USART2_sendData
<LI><a href="#[ee]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;CRC_CHECK
</UL>
<BR>[Called By]<UL><LI><a href="#[5c]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;main
</UL>

<P><STRONG><a name="[62]"></a>NVIC_PriorityGroupConfig</STRONG> (Thumb, 10 bytes, Stack size 0 bytes, misc.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[5c]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;main
</UL>

<P><STRONG><a name="[8d]"></a>NVIC_Init</STRONG> (Thumb, 108 bytes, Stack size 16 bytes, misc.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 16<LI>Call Chain = NVIC_Init
</UL>
<BR>[Called By]<UL><LI><a href="#[8c]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;OV_DCMI_DMA_Init
<LI><a href="#[6b]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;USART_GPIO_Config
<LI><a href="#[65]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;Can1_Configuration
</UL>

<P><STRONG><a name="[123]"></a>NVIC_SetVectorTable</STRONG> (Thumb, 14 bytes, Stack size 0 bytes, misc.o(.text), UNUSED)

<P><STRONG><a name="[124]"></a>NVIC_SystemLPConfig</STRONG> (Thumb, 34 bytes, Stack size 0 bytes, misc.o(.text), UNUSED)

<P><STRONG><a name="[125]"></a>SysTick_CLKSourceConfig</STRONG> (Thumb, 40 bytes, Stack size 0 bytes, misc.o(.text), UNUSED)

<P><STRONG><a name="[ef]"></a>GPIO_DeInit</STRONG> (Thumb, 220 bytes, Stack size 8 bytes, stm32f4xx_gpio.o(.text), UNUSED)
<BR><BR>[Calls]<UL><LI><a href="#[f0]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;RCC_AHB1PeriphResetCmd
</UL>

<P><STRONG><a name="[83]"></a>GPIO_Init</STRONG> (Thumb, 144 bytes, Stack size 20 bytes, stm32f4xx_gpio.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 20<LI>Call Chain = GPIO_Init
</UL>
<BR>[Called By]<UL><LI><a href="#[db]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;LCD_CtrlLinesConfig
<LI><a href="#[87]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;SCCB_GPIO_Config
<LI><a href="#[84]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;OV_GPIO_Init
<LI><a href="#[64]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;led_configuration
<LI><a href="#[6b]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;USART_GPIO_Config
<LI><a href="#[65]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;Can1_Configuration
</UL>

<P><STRONG><a name="[126]"></a>GPIO_StructInit</STRONG> (Thumb, 18 bytes, Stack size 0 bytes, stm32f4xx_gpio.o(.text), UNUSED)

<P><STRONG><a name="[127]"></a>GPIO_PinLockConfig</STRONG> (Thumb, 34 bytes, Stack size 8 bytes, stm32f4xx_gpio.o(.text), UNUSED)

<P><STRONG><a name="[6c]"></a>GPIO_ReadInputDataBit</STRONG> (Thumb, 18 bytes, Stack size 0 bytes, stm32f4xx_gpio.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[5c]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;main
</UL>

<P><STRONG><a name="[128]"></a>GPIO_ReadInputData</STRONG> (Thumb, 8 bytes, Stack size 0 bytes, stm32f4xx_gpio.o(.text), UNUSED)

<P><STRONG><a name="[129]"></a>GPIO_ReadOutputDataBit</STRONG> (Thumb, 18 bytes, Stack size 0 bytes, stm32f4xx_gpio.o(.text), UNUSED)

<P><STRONG><a name="[12a]"></a>GPIO_ReadOutputData</STRONG> (Thumb, 8 bytes, Stack size 0 bytes, stm32f4xx_gpio.o(.text), UNUSED)

<P><STRONG><a name="[69]"></a>GPIO_SetBits</STRONG> (Thumb, 4 bytes, Stack size 0 bytes, stm32f4xx_gpio.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[ed]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;ili9320_BackLight
<LI><a href="#[84]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;OV_GPIO_Init
<LI><a href="#[64]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;led_configuration
<LI><a href="#[63]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;ili9320_Initializtion
<LI><a href="#[5c]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;main
</UL>

<P><STRONG><a name="[86]"></a>GPIO_ResetBits</STRONG> (Thumb, 4 bytes, Stack size 0 bytes, stm32f4xx_gpio.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[ed]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;ili9320_BackLight
<LI><a href="#[db]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;LCD_CtrlLinesConfig
<LI><a href="#[84]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;OV_GPIO_Init
</UL>

<P><STRONG><a name="[12b]"></a>GPIO_WriteBit</STRONG> (Thumb, 10 bytes, Stack size 0 bytes, stm32f4xx_gpio.o(.text), UNUSED)

<P><STRONG><a name="[12c]"></a>GPIO_Write</STRONG> (Thumb, 4 bytes, Stack size 0 bytes, stm32f4xx_gpio.o(.text), UNUSED)

<P><STRONG><a name="[66]"></a>GPIO_ToggleBits</STRONG> (Thumb, 8 bytes, Stack size 0 bytes, stm32f4xx_gpio.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[5c]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;main
</UL>

<P><STRONG><a name="[85]"></a>GPIO_PinAFConfig</STRONG> (Thumb, 70 bytes, Stack size 20 bytes, stm32f4xx_gpio.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 20<LI>Call Chain = GPIO_PinAFConfig
</UL>
<BR>[Called By]<UL><LI><a href="#[db]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;LCD_CtrlLinesConfig
<LI><a href="#[84]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;OV_GPIO_Init
<LI><a href="#[6b]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;USART_GPIO_Config
<LI><a href="#[65]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;Can1_Configuration
</UL>

<P><STRONG><a name="[12d]"></a>RCC_DeInit</STRONG> (Thumb, 60 bytes, Stack size 0 bytes, stm32f4xx_rcc.o(.text), UNUSED)

<P><STRONG><a name="[12e]"></a>RCC_HSEConfig</STRONG> (Thumb, 14 bytes, Stack size 0 bytes, stm32f4xx_rcc.o(.text), UNUSED)

<P><STRONG><a name="[f2]"></a>RCC_GetFlagStatus</STRONG> (Thumb, 60 bytes, Stack size 8 bytes, stm32f4xx_rcc.o(.text), UNUSED)
<BR><BR>[Called By]<UL><LI><a href="#[f1]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;RCC_WaitForHSEStartUp
</UL>

<P><STRONG><a name="[f1]"></a>RCC_WaitForHSEStartUp</STRONG> (Thumb, 56 bytes, Stack size 16 bytes, stm32f4xx_rcc.o(.text), UNUSED)
<BR><BR>[Calls]<UL><LI><a href="#[f2]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;RCC_GetFlagStatus
</UL>

<P><STRONG><a name="[12f]"></a>RCC_AdjustHSICalibrationValue</STRONG> (Thumb, 20 bytes, Stack size 0 bytes, stm32f4xx_rcc.o(.text), UNUSED)

<P><STRONG><a name="[130]"></a>RCC_HSICmd</STRONG> (Thumb, 6 bytes, Stack size 0 bytes, stm32f4xx_rcc.o(.text), UNUSED)

<P><STRONG><a name="[131]"></a>RCC_LSEConfig</STRONG> (Thumb, 46 bytes, Stack size 0 bytes, stm32f4xx_rcc.o(.text), UNUSED)

<P><STRONG><a name="[132]"></a>RCC_LSICmd</STRONG> (Thumb, 6 bytes, Stack size 0 bytes, stm32f4xx_rcc.o(.text), UNUSED)

<P><STRONG><a name="[133]"></a>RCC_PLLConfig</STRONG> (Thumb, 32 bytes, Stack size 16 bytes, stm32f4xx_rcc.o(.text), UNUSED)

<P><STRONG><a name="[134]"></a>RCC_PLLCmd</STRONG> (Thumb, 6 bytes, Stack size 0 bytes, stm32f4xx_rcc.o(.text), UNUSED)

<P><STRONG><a name="[135]"></a>RCC_PLLI2SConfig</STRONG> (Thumb, 14 bytes, Stack size 0 bytes, stm32f4xx_rcc.o(.text), UNUSED)

<P><STRONG><a name="[136]"></a>RCC_PLLI2SCmd</STRONG> (Thumb, 6 bytes, Stack size 0 bytes, stm32f4xx_rcc.o(.text), UNUSED)

<P><STRONG><a name="[137]"></a>RCC_ClockSecuritySystemCmd</STRONG> (Thumb, 6 bytes, Stack size 0 bytes, stm32f4xx_rcc.o(.text), UNUSED)

<P><STRONG><a name="[88]"></a>RCC_MCO1Config</STRONG> (Thumb, 28 bytes, Stack size 0 bytes, stm32f4xx_rcc.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[84]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;OV_GPIO_Init
</UL>

<P><STRONG><a name="[138]"></a>RCC_MCO2Config</STRONG> (Thumb, 28 bytes, Stack size 0 bytes, stm32f4xx_rcc.o(.text), UNUSED)

<P><STRONG><a name="[139]"></a>RCC_SYSCLKConfig</STRONG> (Thumb, 20 bytes, Stack size 0 bytes, stm32f4xx_rcc.o(.text), UNUSED)

<P><STRONG><a name="[13a]"></a>RCC_GetSYSCLKSource</STRONG> (Thumb, 12 bytes, Stack size 0 bytes, stm32f4xx_rcc.o(.text), UNUSED)

<P><STRONG><a name="[13b]"></a>RCC_HCLKConfig</STRONG> (Thumb, 20 bytes, Stack size 0 bytes, stm32f4xx_rcc.o(.text), UNUSED)

<P><STRONG><a name="[13c]"></a>RCC_PCLK1Config</STRONG> (Thumb, 20 bytes, Stack size 0 bytes, stm32f4xx_rcc.o(.text), UNUSED)

<P><STRONG><a name="[13d]"></a>RCC_PCLK2Config</STRONG> (Thumb, 22 bytes, Stack size 0 bytes, stm32f4xx_rcc.o(.text), UNUSED)

<P><STRONG><a name="[f6]"></a>RCC_GetClocksFreq</STRONG> (Thumb, 222 bytes, Stack size 20 bytes, stm32f4xx_rcc.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 20<LI>Call Chain = RCC_GetClocksFreq
</UL>
<BR>[Called By]<UL><LI><a href="#[b0]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;USART_Init
</UL>

<P><STRONG><a name="[13e]"></a>RCC_RTCCLKConfig</STRONG> (Thumb, 54 bytes, Stack size 0 bytes, stm32f4xx_rcc.o(.text), UNUSED)

<P><STRONG><a name="[13f]"></a>RCC_RTCCLKCmd</STRONG> (Thumb, 8 bytes, Stack size 0 bytes, stm32f4xx_rcc.o(.text), UNUSED)

<P><STRONG><a name="[140]"></a>RCC_BackupResetCmd</STRONG> (Thumb, 8 bytes, Stack size 0 bytes, stm32f4xx_rcc.o(.text), UNUSED)

<P><STRONG><a name="[141]"></a>RCC_I2SCLKConfig</STRONG> (Thumb, 6 bytes, Stack size 0 bytes, stm32f4xx_rcc.o(.text), UNUSED)

<P><STRONG><a name="[82]"></a>RCC_AHB1PeriphClockCmd</STRONG> (Thumb, 34 bytes, Stack size 0 bytes, stm32f4xx_rcc.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[db]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;LCD_CtrlLinesConfig
<LI><a href="#[87]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;SCCB_GPIO_Config
<LI><a href="#[8c]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;OV_DCMI_DMA_Init
<LI><a href="#[84]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;OV_GPIO_Init
<LI><a href="#[64]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;led_configuration
<LI><a href="#[6b]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;USART_GPIO_Config
<LI><a href="#[65]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;Can1_Configuration
</UL>

<P><STRONG><a name="[8a]"></a>RCC_AHB2PeriphClockCmd</STRONG> (Thumb, 34 bytes, Stack size 0 bytes, stm32f4xx_rcc.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[89]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;OV_DCMI_Init
</UL>

<P><STRONG><a name="[dc]"></a>RCC_AHB3PeriphClockCmd</STRONG> (Thumb, 34 bytes, Stack size 0 bytes, stm32f4xx_rcc.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[db]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;LCD_CtrlLinesConfig
</UL>

<P><STRONG><a name="[af]"></a>RCC_APB1PeriphClockCmd</STRONG> (Thumb, 34 bytes, Stack size 0 bytes, stm32f4xx_rcc.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[6b]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;USART_GPIO_Config
<LI><a href="#[65]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;Can1_Configuration
</UL>

<P><STRONG><a name="[142]"></a>RCC_APB2PeriphClockCmd</STRONG> (Thumb, 34 bytes, Stack size 0 bytes, stm32f4xx_rcc.o(.text), UNUSED)

<P><STRONG><a name="[f0]"></a>RCC_AHB1PeriphResetCmd</STRONG> (Thumb, 34 bytes, Stack size 0 bytes, stm32f4xx_rcc.o(.text), UNUSED)
<BR><BR>[Called By]<UL><LI><a href="#[ef]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;GPIO_DeInit
</UL>

<P><STRONG><a name="[143]"></a>RCC_AHB2PeriphResetCmd</STRONG> (Thumb, 72 bytes, Stack size 0 bytes, stm32f4xx_rcc.o(.text), UNUSED)

<P><STRONG><a name="[144]"></a>RCC_AHB3PeriphResetCmd</STRONG> (Thumb, 34 bytes, Stack size 0 bytes, stm32f4xx_rcc.o(.text), UNUSED)

<P><STRONG><a name="[f5]"></a>RCC_APB1PeriphResetCmd</STRONG> (Thumb, 34 bytes, Stack size 0 bytes, stm32f4xx_rcc.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[c2]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;CAN_DeInit
<LI><a href="#[f3]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;USART_DeInit
</UL>

<P><STRONG><a name="[f4]"></a>RCC_APB2PeriphResetCmd</STRONG> (Thumb, 34 bytes, Stack size 0 bytes, stm32f4xx_rcc.o(.text), UNUSED)
<BR><BR>[Called By]<UL><LI><a href="#[f3]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;USART_DeInit
</UL>

<P><STRONG><a name="[145]"></a>RCC_AHB1PeriphClockLPModeCmd</STRONG> (Thumb, 34 bytes, Stack size 0 bytes, stm32f4xx_rcc.o(.text), UNUSED)

<P><STRONG><a name="[146]"></a>RCC_AHB2PeriphClockLPModeCmd</STRONG> (Thumb, 34 bytes, Stack size 0 bytes, stm32f4xx_rcc.o(.text), UNUSED)

<P><STRONG><a name="[147]"></a>RCC_AHB3PeriphClockLPModeCmd</STRONG> (Thumb, 34 bytes, Stack size 0 bytes, stm32f4xx_rcc.o(.text), UNUSED)

<P><STRONG><a name="[148]"></a>RCC_APB1PeriphClockLPModeCmd</STRONG> (Thumb, 34 bytes, Stack size 0 bytes, stm32f4xx_rcc.o(.text), UNUSED)

<P><STRONG><a name="[149]"></a>RCC_APB2PeriphClockLPModeCmd</STRONG> (Thumb, 34 bytes, Stack size 0 bytes, stm32f4xx_rcc.o(.text), UNUSED)

<P><STRONG><a name="[14a]"></a>RCC_ITConfig</STRONG> (Thumb, 34 bytes, Stack size 0 bytes, stm32f4xx_rcc.o(.text), UNUSED)

<P><STRONG><a name="[14b]"></a>RCC_ClearFlag</STRONG> (Thumb, 18 bytes, Stack size 0 bytes, stm32f4xx_rcc.o(.text), UNUSED)

<P><STRONG><a name="[14c]"></a>RCC_GetITStatus</STRONG> (Thumb, 22 bytes, Stack size 0 bytes, stm32f4xx_rcc.o(.text), UNUSED)

<P><STRONG><a name="[14d]"></a>RCC_ClearITPendingBit</STRONG> (Thumb, 8 bytes, Stack size 0 bytes, stm32f4xx_rcc.o(.text), UNUSED)

<P><STRONG><a name="[f3]"></a>USART_DeInit</STRONG> (Thumb, 156 bytes, Stack size 8 bytes, stm32f4xx_usart.o(.text), UNUSED)
<BR><BR>[Calls]<UL><LI><a href="#[f4]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;RCC_APB2PeriphResetCmd
<LI><a href="#[f5]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;RCC_APB1PeriphResetCmd
</UL>

<P><STRONG><a name="[b0]"></a>USART_Init</STRONG> (Thumb, 204 bytes, Stack size 48 bytes, stm32f4xx_usart.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 68<LI>Call Chain = USART_Init &rArr; RCC_GetClocksFreq
</UL>
<BR>[Calls]<UL><LI><a href="#[f6]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;RCC_GetClocksFreq
</UL>
<BR>[Called By]<UL><LI><a href="#[6b]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;USART_GPIO_Config
</UL>

<P><STRONG><a name="[14e]"></a>USART_StructInit</STRONG> (Thumb, 24 bytes, Stack size 0 bytes, stm32f4xx_usart.o(.text), UNUSED)

<P><STRONG><a name="[14f]"></a>USART_ClockInit</STRONG> (Thumb, 32 bytes, Stack size 8 bytes, stm32f4xx_usart.o(.text), UNUSED)

<P><STRONG><a name="[150]"></a>USART_ClockStructInit</STRONG> (Thumb, 12 bytes, Stack size 0 bytes, stm32f4xx_usart.o(.text), UNUSED)

<P><STRONG><a name="[b5]"></a>USART_Cmd</STRONG> (Thumb, 24 bytes, Stack size 0 bytes, stm32f4xx_usart.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[6b]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;USART_GPIO_Config
</UL>

<P><STRONG><a name="[151]"></a>USART_SetPrescaler</STRONG> (Thumb, 16 bytes, Stack size 0 bytes, stm32f4xx_usart.o(.text), UNUSED)

<P><STRONG><a name="[152]"></a>USART_OverSampling8Cmd</STRONG> (Thumb, 22 bytes, Stack size 0 bytes, stm32f4xx_usart.o(.text), UNUSED)

<P><STRONG><a name="[153]"></a>USART_OneBitMethodCmd</STRONG> (Thumb, 24 bytes, Stack size 0 bytes, stm32f4xx_usart.o(.text), UNUSED)

<P><STRONG><a name="[be]"></a>USART_SendData</STRONG> (Thumb, 8 bytes, Stack size 0 bytes, stm32f4xx_usart.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[c1]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;send_big_data
<LI><a href="#[70]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;send_picture
</UL>

<P><STRONG><a name="[c0]"></a>USART_ReceiveData</STRONG> (Thumb, 10 bytes, Stack size 0 bytes, stm32f4xx_usart.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[30]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;USART2_IRQHandler
</UL>

<P><STRONG><a name="[154]"></a>USART_SetAddress</STRONG> (Thumb, 18 bytes, Stack size 0 bytes, stm32f4xx_usart.o(.text), UNUSED)

<P><STRONG><a name="[155]"></a>USART_ReceiverWakeUpCmd</STRONG> (Thumb, 24 bytes, Stack size 0 bytes, stm32f4xx_usart.o(.text), UNUSED)

<P><STRONG><a name="[156]"></a>USART_WakeUpConfig</STRONG> (Thumb, 18 bytes, Stack size 0 bytes, stm32f4xx_usart.o(.text), UNUSED)

<P><STRONG><a name="[157]"></a>USART_LINBreakDetectLengthConfig</STRONG> (Thumb, 18 bytes, Stack size 0 bytes, stm32f4xx_usart.o(.text), UNUSED)

<P><STRONG><a name="[158]"></a>USART_LINCmd</STRONG> (Thumb, 24 bytes, Stack size 0 bytes, stm32f4xx_usart.o(.text), UNUSED)

<P><STRONG><a name="[159]"></a>USART_SendBreak</STRONG> (Thumb, 10 bytes, Stack size 0 bytes, stm32f4xx_usart.o(.text), UNUSED)

<P><STRONG><a name="[15a]"></a>USART_HalfDuplexCmd</STRONG> (Thumb, 24 bytes, Stack size 0 bytes, stm32f4xx_usart.o(.text), UNUSED)

<P><STRONG><a name="[15b]"></a>USART_SetGuardTime</STRONG> (Thumb, 16 bytes, Stack size 0 bytes, stm32f4xx_usart.o(.text), UNUSED)

<P><STRONG><a name="[15c]"></a>USART_SmartCardCmd</STRONG> (Thumb, 24 bytes, Stack size 0 bytes, stm32f4xx_usart.o(.text), UNUSED)

<P><STRONG><a name="[15d]"></a>USART_SmartCardNACKCmd</STRONG> (Thumb, 24 bytes, Stack size 0 bytes, stm32f4xx_usart.o(.text), UNUSED)

<P><STRONG><a name="[15e]"></a>USART_IrDAConfig</STRONG> (Thumb, 18 bytes, Stack size 0 bytes, stm32f4xx_usart.o(.text), UNUSED)

<P><STRONG><a name="[15f]"></a>USART_IrDACmd</STRONG> (Thumb, 24 bytes, Stack size 0 bytes, stm32f4xx_usart.o(.text), UNUSED)

<P><STRONG><a name="[b4]"></a>USART_DMACmd</STRONG> (Thumb, 18 bytes, Stack size 0 bytes, stm32f4xx_usart.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[6b]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;USART_GPIO_Config
</UL>

<P><STRONG><a name="[b1]"></a>USART_ITConfig</STRONG> (Thumb, 74 bytes, Stack size 20 bytes, stm32f4xx_usart.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 20<LI>Call Chain = USART_ITConfig
</UL>
<BR>[Called By]<UL><LI><a href="#[6b]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;USART_GPIO_Config
</UL>

<P><STRONG><a name="[bd]"></a>USART_GetFlagStatus</STRONG> (Thumb, 26 bytes, Stack size 0 bytes, stm32f4xx_usart.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[c1]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;send_big_data
<LI><a href="#[70]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;send_picture
</UL>

<P><STRONG><a name="[b2]"></a>USART_ClearFlag</STRONG> (Thumb, 18 bytes, Stack size 0 bytes, stm32f4xx_usart.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[30]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;USART2_IRQHandler
<LI><a href="#[6b]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;USART_GPIO_Config
</UL>

<P><STRONG><a name="[bf]"></a>USART_GetITStatus</STRONG> (Thumb, 110 bytes, Stack size 16 bytes, stm32f4xx_usart.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 16<LI>Call Chain = USART_GetITStatus
</UL>
<BR>[Called By]<UL><LI><a href="#[30]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;USART2_IRQHandler
</UL>

<P><STRONG><a name="[b3]"></a>USART_ClearITPendingBit</STRONG> (Thumb, 30 bytes, Stack size 8 bytes, stm32f4xx_usart.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 8<LI>Call Chain = USART_ClearITPendingBit
</UL>
<BR>[Called By]<UL><LI><a href="#[30]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;USART2_IRQHandler
<LI><a href="#[6b]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;USART_GPIO_Config
</UL>

<P><STRONG><a name="[160]"></a>FSMC_NORSRAMDeInit</STRONG> (Thumb, 56 bytes, Stack size 0 bytes, stm32f4xx_fsmc.o(.text), UNUSED)

<P><STRONG><a name="[de]"></a>FSMC_NORSRAMInit</STRONG> (Thumb, 224 bytes, Stack size 0 bytes, stm32f4xx_fsmc.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[dd]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;LCD_FSMCConfig
</UL>

<P><STRONG><a name="[161]"></a>FSMC_NORSRAMStructInit</STRONG> (Thumb, 114 bytes, Stack size 0 bytes, stm32f4xx_fsmc.o(.text), UNUSED)

<P><STRONG><a name="[df]"></a>FSMC_NORSRAMCmd</STRONG> (Thumb, 46 bytes, Stack size 0 bytes, stm32f4xx_fsmc.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[dd]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;LCD_FSMCConfig
</UL>

<P><STRONG><a name="[162]"></a>FSMC_NANDDeInit</STRONG> (Thumb, 62 bytes, Stack size 0 bytes, stm32f4xx_fsmc.o(.text), UNUSED)

<P><STRONG><a name="[163]"></a>FSMC_NANDInit</STRONG> (Thumb, 130 bytes, Stack size 12 bytes, stm32f4xx_fsmc.o(.text), UNUSED)

<P><STRONG><a name="[164]"></a>FSMC_NANDStructInit</STRONG> (Thumb, 54 bytes, Stack size 0 bytes, stm32f4xx_fsmc.o(.text), UNUSED)

<P><STRONG><a name="[165]"></a>FSMC_NANDCmd</STRONG> (Thumb, 86 bytes, Stack size 0 bytes, stm32f4xx_fsmc.o(.text), UNUSED)

<P><STRONG><a name="[166]"></a>FSMC_NANDECCCmd</STRONG> (Thumb, 86 bytes, Stack size 0 bytes, stm32f4xx_fsmc.o(.text), UNUSED)

<P><STRONG><a name="[167]"></a>FSMC_GetECC</STRONG> (Thumb, 22 bytes, Stack size 0 bytes, stm32f4xx_fsmc.o(.text), UNUSED)

<P><STRONG><a name="[168]"></a>FSMC_PCCARDDeInit</STRONG> (Thumb, 40 bytes, Stack size 0 bytes, stm32f4xx_fsmc.o(.text), UNUSED)

<P><STRONG><a name="[169]"></a>FSMC_PCCARDInit</STRONG> (Thumb, 124 bytes, Stack size 0 bytes, stm32f4xx_fsmc.o(.text), UNUSED)

<P><STRONG><a name="[16a]"></a>FSMC_PCCARDStructInit</STRONG> (Thumb, 60 bytes, Stack size 0 bytes, stm32f4xx_fsmc.o(.text), UNUSED)

<P><STRONG><a name="[16b]"></a>FSMC_PCCARDCmd</STRONG> (Thumb, 40 bytes, Stack size 0 bytes, stm32f4xx_fsmc.o(.text), UNUSED)

<P><STRONG><a name="[16c]"></a>FSMC_ITConfig</STRONG> (Thumb, 128 bytes, Stack size 8 bytes, stm32f4xx_fsmc.o(.text), UNUSED)

<P><STRONG><a name="[16d]"></a>FSMC_GetFlagStatus</STRONG> (Thumb, 48 bytes, Stack size 8 bytes, stm32f4xx_fsmc.o(.text), UNUSED)

<P><STRONG><a name="[16e]"></a>FSMC_ClearFlag</STRONG> (Thumb, 62 bytes, Stack size 0 bytes, stm32f4xx_fsmc.o(.text), UNUSED)

<P><STRONG><a name="[16f]"></a>FSMC_GetITStatus</STRONG> (Thumb, 110 bytes, Stack size 16 bytes, stm32f4xx_fsmc.o(.text), UNUSED)

<P><STRONG><a name="[170]"></a>FSMC_ClearITPendingBit</STRONG> (Thumb, 64 bytes, Stack size 0 bytes, stm32f4xx_fsmc.o(.text), UNUSED)

<P><STRONG><a name="[8e]"></a>DMA_DeInit</STRONG> (Thumb, 324 bytes, Stack size 0 bytes, stm32f4xx_dma.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[8c]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;OV_DCMI_DMA_Init
<LI><a href="#[6b]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;USART_GPIO_Config
</UL>

<P><STRONG><a name="[90]"></a>DMA_Init</STRONG> (Thumb, 82 bytes, Stack size 8 bytes, stm32f4xx_dma.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 8<LI>Call Chain = DMA_Init
</UL>
<BR>[Called By]<UL><LI><a href="#[8c]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;OV_DCMI_DMA_Init
<LI><a href="#[6b]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;USART_GPIO_Config
</UL>

<P><STRONG><a name="[171]"></a>DMA_StructInit</STRONG> (Thumb, 34 bytes, Stack size 0 bytes, stm32f4xx_dma.o(.text), UNUSED)

<P><STRONG><a name="[96]"></a>DMA_Cmd</STRONG> (Thumb, 22 bytes, Stack size 0 bytes, stm32f4xx_dma.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[bb]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;USART2_sendData
<LI><a href="#[b6]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;usart_txhander
<LI><a href="#[98]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;OV_Stop
<LI><a href="#[6a]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;OV_Start
</UL>

<P><STRONG><a name="[172]"></a>DMA_PeriphIncOffsetSizeConfig</STRONG> (Thumb, 22 bytes, Stack size 0 bytes, stm32f4xx_dma.o(.text), UNUSED)

<P><STRONG><a name="[173]"></a>DMA_FlowControllerConfig</STRONG> (Thumb, 22 bytes, Stack size 0 bytes, stm32f4xx_dma.o(.text), UNUSED)

<P><STRONG><a name="[ba]"></a>DMA_SetCurrDataCounter</STRONG> (Thumb, 4 bytes, Stack size 0 bytes, stm32f4xx_dma.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[bb]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;USART2_sendData
<LI><a href="#[b6]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;usart_txhander
</UL>

<P><STRONG><a name="[b7]"></a>DMA_GetCurrDataCounter</STRONG> (Thumb, 8 bytes, Stack size 0 bytes, stm32f4xx_dma.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[bb]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;USART2_sendData
<LI><a href="#[b6]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;usart_txhander
</UL>

<P><STRONG><a name="[174]"></a>DMA_DoubleBufferModeConfig</STRONG> (Thumb, 24 bytes, Stack size 0 bytes, stm32f4xx_dma.o(.text), UNUSED)

<P><STRONG><a name="[175]"></a>DMA_DoubleBufferModeCmd</STRONG> (Thumb, 22 bytes, Stack size 0 bytes, stm32f4xx_dma.o(.text), UNUSED)

<P><STRONG><a name="[176]"></a>DMA_MemoryTargetConfig</STRONG> (Thumb, 10 bytes, Stack size 0 bytes, stm32f4xx_dma.o(.text), UNUSED)

<P><STRONG><a name="[177]"></a>DMA_GetCurrentMemoryTarget</STRONG> (Thumb, 20 bytes, Stack size 0 bytes, stm32f4xx_dma.o(.text), UNUSED)

<P><STRONG><a name="[178]"></a>DMA_GetCmdStatus</STRONG> (Thumb, 20 bytes, Stack size 0 bytes, stm32f4xx_dma.o(.text), UNUSED)

<P><STRONG><a name="[179]"></a>DMA_GetFIFOStatus</STRONG> (Thumb, 12 bytes, Stack size 0 bytes, stm32f4xx_dma.o(.text), UNUSED)

<P><STRONG><a name="[17a]"></a>DMA_GetFlagStatus</STRONG> (Thumb, 54 bytes, Stack size 12 bytes, stm32f4xx_dma.o(.text), UNUSED)

<P><STRONG><a name="[7e]"></a>DMA_ClearFlag</STRONG> (Thumb, 40 bytes, Stack size 0 bytes, stm32f4xx_dma.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[1b]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;DMA1_Stream6_IRQHandler
<LI><a href="#[6b]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;USART_GPIO_Config
<LI><a href="#[43]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;DMA2_Stream1_IRQHandler
</UL>

<P><STRONG><a name="[8f]"></a>DMA_ITConfig</STRONG> (Thumb, 58 bytes, Stack size 8 bytes, stm32f4xx_dma.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 8<LI>Call Chain = DMA_ITConfig
</UL>
<BR>[Called By]<UL><LI><a href="#[8c]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;OV_DCMI_DMA_Init
<LI><a href="#[6b]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;USART_GPIO_Config
</UL>

<P><STRONG><a name="[7d]"></a>DMA_GetITStatus</STRONG> (Thumb, 82 bytes, Stack size 16 bytes, stm32f4xx_dma.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 16<LI>Call Chain = DMA_GetITStatus
</UL>
<BR>[Called By]<UL><LI><a href="#[1b]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;DMA1_Stream6_IRQHandler
<LI><a href="#[43]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;DMA2_Stream1_IRQHandler
</UL>

<P><STRONG><a name="[7f]"></a>DMA_ClearITPendingBit</STRONG> (Thumb, 40 bytes, Stack size 0 bytes, stm32f4xx_dma.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[1b]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;DMA1_Stream6_IRQHandler
<LI><a href="#[6b]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;USART_GPIO_Config
<LI><a href="#[43]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;DMA2_Stream1_IRQHandler
</UL>

<P><STRONG><a name="[17b]"></a>DCMI_DeInit</STRONG> (Thumb, 24 bytes, Stack size 0 bytes, stm32f4xx_dcmi.o(.text), UNUSED)

<P><STRONG><a name="[8b]"></a>DCMI_Init</STRONG> (Thumb, 60 bytes, Stack size 0 bytes, stm32f4xx_dcmi.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[89]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;OV_DCMI_Init
</UL>

<P><STRONG><a name="[17c]"></a>DCMI_StructInit</STRONG> (Thumb, 18 bytes, Stack size 0 bytes, stm32f4xx_dcmi.o(.text), UNUSED)

<P><STRONG><a name="[17d]"></a>DCMI_CROPConfig</STRONG> (Thumb, 26 bytes, Stack size 0 bytes, stm32f4xx_dcmi.o(.text), UNUSED)

<P><STRONG><a name="[17e]"></a>DCMI_CROPCmd</STRONG> (Thumb, 30 bytes, Stack size 0 bytes, stm32f4xx_dcmi.o(.text), UNUSED)

<P><STRONG><a name="[17f]"></a>DCMI_SetEmbeddedSynchroCodes</STRONG> (Thumb, 26 bytes, Stack size 0 bytes, stm32f4xx_dcmi.o(.text), UNUSED)

<P><STRONG><a name="[180]"></a>DCMI_JPEGCmd</STRONG> (Thumb, 30 bytes, Stack size 0 bytes, stm32f4xx_dcmi.o(.text), UNUSED)

<P><STRONG><a name="[97]"></a>DCMI_Cmd</STRONG> (Thumb, 30 bytes, Stack size 0 bytes, stm32f4xx_dcmi.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[98]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;OV_Stop
<LI><a href="#[6a]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;OV_Start
</UL>

<P><STRONG><a name="[80]"></a>DCMI_CaptureCmd</STRONG> (Thumb, 30 bytes, Stack size 0 bytes, stm32f4xx_dcmi.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[98]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;OV_Stop
<LI><a href="#[6a]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;OV_Start
<LI><a href="#[43]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;DMA2_Stream1_IRQHandler
</UL>

<P><STRONG><a name="[181]"></a>DCMI_ReadData</STRONG> (Thumb, 6 bytes, Stack size 0 bytes, stm32f4xx_dcmi.o(.text), UNUSED)

<P><STRONG><a name="[182]"></a>DCMI_ITConfig</STRONG> (Thumb, 30 bytes, Stack size 0 bytes, stm32f4xx_dcmi.o(.text), UNUSED)

<P><STRONG><a name="[183]"></a>DCMI_GetFlagStatus</STRONG> (Thumb, 44 bytes, Stack size 8 bytes, stm32f4xx_dcmi.o(.text), UNUSED)

<P><STRONG><a name="[184]"></a>DCMI_ClearFlag</STRONG> (Thumb, 6 bytes, Stack size 0 bytes, stm32f4xx_dcmi.o(.text), UNUSED)

<P><STRONG><a name="[185]"></a>DCMI_GetITStatus</STRONG> (Thumb, 24 bytes, Stack size 0 bytes, stm32f4xx_dcmi.o(.text), UNUSED)

<P><STRONG><a name="[186]"></a>DCMI_ClearITPendingBit</STRONG> (Thumb, 6 bytes, Stack size 0 bytes, stm32f4xx_dcmi.o(.text), UNUSED)

<P><STRONG><a name="[c2]"></a>CAN_DeInit</STRONG> (Thumb, 50 bytes, Stack size 8 bytes, stm32f4xx_can.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 8<LI>Call Chain = CAN_DeInit
</UL>
<BR>[Calls]<UL><LI><a href="#[f5]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;RCC_APB1PeriphResetCmd
</UL>
<BR>[Called By]<UL><LI><a href="#[65]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;Can1_Configuration
</UL>

<P><STRONG><a name="[c4]"></a>CAN_Init</STRONG> (Thumb, 276 bytes, Stack size 12 bytes, stm32f4xx_can.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 12<LI>Call Chain = CAN_Init
</UL>
<BR>[Called By]<UL><LI><a href="#[65]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;Can1_Configuration
</UL>

<P><STRONG><a name="[c5]"></a>CAN_FilterInit</STRONG> (Thumb, 258 bytes, Stack size 8 bytes, stm32f4xx_can.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 8<LI>Call Chain = CAN_FilterInit
</UL>
<BR>[Called By]<UL><LI><a href="#[65]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;Can1_Configuration
</UL>

<P><STRONG><a name="[c3]"></a>CAN_StructInit</STRONG> (Thumb, 32 bytes, Stack size 0 bytes, stm32f4xx_can.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[65]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;Can1_Configuration
</UL>

<P><STRONG><a name="[187]"></a>CAN_SlaveStartBank</STRONG> (Thumb, 48 bytes, Stack size 0 bytes, stm32f4xx_can.o(.text), UNUSED)

<P><STRONG><a name="[188]"></a>CAN_DBGFreeze</STRONG> (Thumb, 22 bytes, Stack size 0 bytes, stm32f4xx_can.o(.text), UNUSED)

<P><STRONG><a name="[189]"></a>CAN_TTComModeCmd</STRONG> (Thumb, 118 bytes, Stack size 0 bytes, stm32f4xx_can.o(.text), UNUSED)

<P><STRONG><a name="[c9]"></a>CAN_Transmit</STRONG> (Thumb, 304 bytes, Stack size 8 bytes, stm32f4xx_can.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 8<LI>Call Chain = CAN_Transmit
</UL>
<BR>[Called By]<UL><LI><a href="#[cc]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;SendElectromagnet
<LI><a href="#[cb]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;SendHandKey_3
<LI><a href="#[c7]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;SendPulse
<LI><a href="#[81]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;SendPulseBeep
</UL>

<P><STRONG><a name="[18a]"></a>CAN_TransmitStatus</STRONG> (Thumb, 138 bytes, Stack size 8 bytes, stm32f4xx_can.o(.text), UNUSED)

<P><STRONG><a name="[18b]"></a>CAN_CancelTransmit</STRONG> (Thumb, 48 bytes, Stack size 0 bytes, stm32f4xx_can.o(.text), UNUSED)

<P><STRONG><a name="[ce]"></a>CAN_Receive</STRONG> (Thumb, 240 bytes, Stack size 8 bytes, stm32f4xx_can.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 8<LI>Call Chain = CAN_Receive
</UL>
<BR>[Called By]<UL><LI><a href="#[1e]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;CAN1_RX0_IRQHandler
</UL>

<P><STRONG><a name="[18c]"></a>CAN_FIFORelease</STRONG> (Thumb, 22 bytes, Stack size 0 bytes, stm32f4xx_can.o(.text), UNUSED)

<P><STRONG><a name="[18d]"></a>CAN_MessagePending</STRONG> (Thumb, 30 bytes, Stack size 0 bytes, stm32f4xx_can.o(.text), UNUSED)

<P><STRONG><a name="[18e]"></a>CAN_OperatingModeRequest</STRONG> (Thumb, 162 bytes, Stack size 8 bytes, stm32f4xx_can.o(.text), UNUSED)

<P><STRONG><a name="[18f]"></a>CAN_Sleep</STRONG> (Thumb, 30 bytes, Stack size 0 bytes, stm32f4xx_can.o(.text), UNUSED)

<P><STRONG><a name="[190]"></a>CAN_WakeUp</STRONG> (Thumb, 48 bytes, Stack size 0 bytes, stm32f4xx_can.o(.text), UNUSED)

<P><STRONG><a name="[191]"></a>CAN_GetLastErrorCode</STRONG> (Thumb, 12 bytes, Stack size 0 bytes, stm32f4xx_can.o(.text), UNUSED)

<P><STRONG><a name="[192]"></a>CAN_GetReceiveErrorCounter</STRONG> (Thumb, 10 bytes, Stack size 0 bytes, stm32f4xx_can.o(.text), UNUSED)

<P><STRONG><a name="[193]"></a>CAN_GetLSBTransmitErrorCounter</STRONG> (Thumb, 12 bytes, Stack size 0 bytes, stm32f4xx_can.o(.text), UNUSED)

<P><STRONG><a name="[c6]"></a>CAN_ITConfig</STRONG> (Thumb, 18 bytes, Stack size 0 bytes, stm32f4xx_can.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[65]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;Can1_Configuration
</UL>

<P><STRONG><a name="[194]"></a>CAN_GetFlagStatus</STRONG> (Thumb, 120 bytes, Stack size 8 bytes, stm32f4xx_can.o(.text), UNUSED)

<P><STRONG><a name="[d2]"></a>CAN_ClearFlag</STRONG> (Thumb, 52 bytes, Stack size 0 bytes, stm32f4xx_can.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[1e]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;CAN1_RX0_IRQHandler
</UL>

<P><STRONG><a name="[cd]"></a>CAN_GetITStatus</STRONG> (Thumb, 308 bytes, Stack size 16 bytes, stm32f4xx_can.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 16<LI>Call Chain = CAN_GetITStatus
</UL>
<BR>[Calls]<UL><LI><a href="#[f7]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;CheckITStatus
</UL>
<BR>[Called By]<UL><LI><a href="#[1e]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;CAN1_RX0_IRQHandler
</UL>

<P><STRONG><a name="[d1]"></a>CAN_ClearITPendingBit</STRONG> (Thumb, 162 bytes, Stack size 0 bytes, stm32f4xx_can.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[1e]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;CAN1_RX0_IRQHandler
</UL>

<P><STRONG><a name="[5d]"></a>SystemInit</STRONG> (Thumb, 88 bytes, Stack size 8 bytes, system_stm32f4xx.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 20<LI>Call Chain = SystemInit &rArr; SetSysClock
</UL>
<BR>[Calls]<UL><LI><a href="#[f8]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;SetSysClock
</UL>
<BR>[Called By]<UL><LI><a href="#[5c]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;main
</UL>
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(.text)
</UL>
<P><STRONG><a name="[195]"></a>SystemCoreClockUpdate</STRONG> (Thumb, 174 bytes, Stack size 16 bytes, system_stm32f4xx.o(.text), UNUSED)

<P><STRONG><a name="[0]"></a>Reset_Handler</STRONG> (Thumb, 8 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[1c]"></a>ADC_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR><BR>[Calls]<UL><LI><a href="#[1c]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;ADC_IRQHandler
</UL>
<BR>[Called By]<UL><LI><a href="#[1c]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;ADC_IRQHandler
</UL>
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[1f]"></a>CAN1_RX1_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[20]"></a>CAN1_SCE_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[1d]"></a>CAN1_TX_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[4a]"></a>CAN2_RX0_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[4b]"></a>CAN2_RX1_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[4c]"></a>CAN2_SCE_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[49]"></a>CAN2_TX_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[59]"></a>CRYP_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[58]"></a>DCMI_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[15]"></a>DMA1_Stream0_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[16]"></a>DMA1_Stream1_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[17]"></a>DMA1_Stream2_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[18]"></a>DMA1_Stream3_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[19]"></a>DMA1_Stream4_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[1a]"></a>DMA1_Stream5_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[39]"></a>DMA1_Stream7_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[42]"></a>DMA2_Stream0_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[44]"></a>DMA2_Stream2_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[45]"></a>DMA2_Stream3_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[46]"></a>DMA2_Stream4_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[4e]"></a>DMA2_Stream5_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[4f]"></a>DMA2_Stream6_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[50]"></a>DMA2_Stream7_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[47]"></a>ETH_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[48]"></a>ETH_WKUP_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[10]"></a>EXTI0_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[32]"></a>EXTI15_10_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[11]"></a>EXTI1_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[12]"></a>EXTI2_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[13]"></a>EXTI3_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[14]"></a>EXTI4_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[21]"></a>EXTI9_5_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[e]"></a>FLASH_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[5b]"></a>FPU_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[3a]"></a>FSMC_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[5a]"></a>HASH_RNG_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[2a]"></a>I2C1_ER_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[29]"></a>I2C1_EV_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[2c]"></a>I2C2_ER_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[2b]"></a>I2C2_EV_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[53]"></a>I2C3_ER_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[52]"></a>I2C3_EV_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[4d]"></a>OTG_FS_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[34]"></a>OTG_FS_WKUP_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[55]"></a>OTG_HS_EP1_IN_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[54]"></a>OTG_HS_EP1_OUT_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[57]"></a>OTG_HS_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[56]"></a>OTG_HS_WKUP_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[b]"></a>PVD_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[f]"></a>RCC_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[33]"></a>RTC_Alarm_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[d]"></a>RTC_WKUP_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[3b]"></a>SDIO_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[2d]"></a>SPI1_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[2e]"></a>SPI2_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[3d]"></a>SPI3_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[c]"></a>TAMP_STAMP_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[22]"></a>TIM1_BRK_TIM9_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[25]"></a>TIM1_CC_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[24]"></a>TIM1_TRG_COM_TIM11_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[23]"></a>TIM1_UP_TIM10_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[26]"></a>TIM2_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[27]"></a>TIM3_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[28]"></a>TIM4_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[3c]"></a>TIM5_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[40]"></a>TIM6_DAC_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[41]"></a>TIM7_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[35]"></a>TIM8_BRK_TIM12_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[38]"></a>TIM8_CC_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[37]"></a>TIM8_TRG_COM_TIM14_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[36]"></a>TIM8_UP_TIM13_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[3e]"></a>UART4_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[3f]"></a>UART5_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[2f]"></a>USART1_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[31]"></a>USART3_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[51]"></a>USART6_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[a]"></a>WWDG_IRQHandler</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, startup_stm32f4xx.o(.text))
<BR>[Address Reference Count : 1]<UL><LI> startup_stm32f4xx.o(RESET)
</UL>
<P><STRONG><a name="[fa]"></a>__aeabi_memset</STRONG> (Thumb, 14 bytes, Stack size 0 bytes, memseta.o(.text), UNUSED)
<BR><BR>[Called By]<UL><LI><a href="#[fb]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;_memset$wrapper
<LI><a href="#[f9]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_memclr
</UL>

<P><STRONG><a name="[196]"></a>__aeabi_memset4</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, memseta.o(.text), UNUSED)

<P><STRONG><a name="[197]"></a>__aeabi_memset8</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, memseta.o(.text), UNUSED)

<P><STRONG><a name="[f9]"></a>__aeabi_memclr</STRONG> (Thumb, 4 bytes, Stack size 0 bytes, memseta.o(.text), UNUSED)
<BR><BR>[Calls]<UL><LI><a href="#[fa]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_memset
</UL>

<P><STRONG><a name="[a1]"></a>__aeabi_memclr4</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, memseta.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[76]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;midline_draw_hd
<LI><a href="#[77]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;midline_draw
<LI><a href="#[75]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;image_threshold_xp
<LI><a href="#[73]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;image_threshold_sp
<LI><a href="#[74]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;image_threshold_hd
</UL>

<P><STRONG><a name="[198]"></a>__aeabi_memclr8</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, memseta.o(.text), UNUSED)

<P><STRONG><a name="[fb]"></a>_memset$wrapper</STRONG> (Thumb, 18 bytes, Stack size 8 bytes, memseta.o(.text), UNUSED)
<BR><BR>[Calls]<UL><LI><a href="#[fa]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_memset
</UL>

<P><STRONG><a name="[d3]"></a>__aeabi_dadd</STRONG> (Thumb, 322 bytes, Stack size 48 bytes, dadd.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 88<LI>Call Chain = __aeabi_dadd &rArr; _double_epilogue &rArr; _double_round
</UL>
<BR>[Calls]<UL><LI><a href="#[fd]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_lasr
<LI><a href="#[fc]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_llsl
<LI><a href="#[ff]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;_double_round
<LI><a href="#[fe]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;_double_epilogue
</UL>
<BR>[Called By]<UL><LI><a href="#[aa]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_dsub
<LI><a href="#[79]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;CameraPid
<LI><a href="#[100]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_drsub
<LI><a href="#[108]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;_fp_digits
</UL>

<P><STRONG><a name="[aa]"></a>__aeabi_dsub</STRONG> (Thumb, 6 bytes, Stack size 0 bytes, dadd.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 88<LI>Call Chain = __aeabi_dsub &rArr; __aeabi_dadd &rArr; _double_epilogue &rArr; _double_round
</UL>
<BR>[Calls]<UL><LI><a href="#[d3]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_dadd
</UL>
<BR>[Called By]<UL><LI><a href="#[a9]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;race_identity
<LI><a href="#[79]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;CameraPid
</UL>

<P><STRONG><a name="[100]"></a>__aeabi_drsub</STRONG> (Thumb, 6 bytes, Stack size 0 bytes, dadd.o(.text), UNUSED)
<BR><BR>[Calls]<UL><LI><a href="#[d3]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_dadd
</UL>

<P><STRONG><a name="[7a]"></a>__aeabi_dmul</STRONG> (Thumb, 228 bytes, Stack size 48 bytes, dmul.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 88<LI>Call Chain = __aeabi_dmul &rArr; _double_epilogue &rArr; _double_round
</UL>
<BR>[Calls]<UL><LI><a href="#[fe]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;_double_epilogue
</UL>
<BR>[Called By]<UL><LI><a href="#[78]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;error_ca
<LI><a href="#[79]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;CameraPid
<LI><a href="#[5c]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;main
<LI><a href="#[108]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;_fp_digits
</UL>

<P><STRONG><a name="[a8]"></a>__aeabi_ddiv</STRONG> (Thumb, 222 bytes, Stack size 32 bytes, ddiv.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 40<LI>Call Chain = __aeabi_ddiv &rArr; _double_round
</UL>
<BR>[Calls]<UL><LI><a href="#[ff]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;_double_round
</UL>
<BR>[Called By]<UL><LI><a href="#[75]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;image_threshold_xp
<LI><a href="#[79]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;CameraPid
<LI><a href="#[108]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;_fp_digits
</UL>

<P><STRONG><a name="[a2]"></a>__aeabi_i2d</STRONG> (Thumb, 34 bytes, Stack size 16 bytes, dflti.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 56<LI>Call Chain = __aeabi_i2d &rArr; _double_epilogue &rArr; _double_round
</UL>
<BR>[Calls]<UL><LI><a href="#[fe]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;_double_epilogue
</UL>
<BR>[Called By]<UL><LI><a href="#[76]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;midline_draw_hd
<LI><a href="#[77]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;midline_draw
<LI><a href="#[75]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;image_threshold_xp
<LI><a href="#[73]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;image_threshold_sp
<LI><a href="#[74]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;image_threshold_hd
<LI><a href="#[78]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;error_ca
</UL>

<P><STRONG><a name="[7b]"></a>__aeabi_d2iz</STRONG> (Thumb, 62 bytes, Stack size 16 bytes, dfixi.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 16<LI>Call Chain = __aeabi_d2iz
</UL>
<BR>[Calls]<UL><LI><a href="#[101]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_llsr
</UL>
<BR>[Called By]<UL><LI><a href="#[78]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;error_ca
<LI><a href="#[79]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;CameraPid
<LI><a href="#[5c]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;main
</UL>

<P><STRONG><a name="[a5]"></a>__aeabi_f2d</STRONG> (Thumb, 38 bytes, Stack size 0 bytes, f2d.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[ae]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;float_number_show
<LI><a href="#[a9]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;race_identity
<LI><a href="#[73]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;image_threshold_sp
<LI><a href="#[74]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;image_threshold_hd
<LI><a href="#[78]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;error_ca
<LI><a href="#[79]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;CameraPid
</UL>

<P><STRONG><a name="[a7]"></a>__aeabi_cdcmpeq</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, cdcmple.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[75]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;image_threshold_xp
</UL>

<P><STRONG><a name="[a4]"></a>__aeabi_cdcmple</STRONG> (Thumb, 38 bytes, Stack size 0 bytes, cdcmple.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[a9]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;race_identity
<LI><a href="#[76]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;midline_draw_hd
<LI><a href="#[75]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;image_threshold_xp
<LI><a href="#[73]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;image_threshold_sp
<LI><a href="#[74]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;image_threshold_hd
<LI><a href="#[78]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;error_ca
<LI><a href="#[79]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;CameraPid
</UL>

<P><STRONG><a name="[a6]"></a>__aeabi_cdrcmple</STRONG> (Thumb, 38 bytes, Stack size 0 bytes, cdrcmple.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[a9]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;race_identity
<LI><a href="#[76]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;midline_draw_hd
<LI><a href="#[77]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;midline_draw
<LI><a href="#[75]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;image_threshold_xp
<LI><a href="#[73]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;image_threshold_sp
<LI><a href="#[74]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;image_threshold_hd
<LI><a href="#[78]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;error_ca
<LI><a href="#[79]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;CameraPid
<LI><a href="#[108]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;_fp_digits
</UL>

<P><STRONG><a name="[ad]"></a>__aeabi_d2f</STRONG> (Thumb, 56 bytes, Stack size 8 bytes, d2f.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 8<LI>Call Chain = __aeabi_d2f
</UL>
<BR>[Calls]<UL><LI><a href="#[102]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;_float_round
</UL>
<BR>[Called By]<UL><LI><a href="#[ab]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;Screen
<LI><a href="#[79]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;CameraPid
</UL>

<P><STRONG><a name="[199]"></a>__aeabi_uidiv</STRONG> (Thumb, 0 bytes, Stack size 12 bytes, uidiv.o(.text), UNUSED)

<P><STRONG><a name="[10b]"></a>__aeabi_uidivmod</STRONG> (Thumb, 44 bytes, Stack size 12 bytes, uidiv.o(.text), UNUSED)
<BR><BR>[Called By]<UL><LI><a href="#[107]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;_printf_core
</UL>

<P><STRONG><a name="[103]"></a>__aeabi_uldivmod</STRONG> (Thumb, 98 bytes, Stack size 40 bytes, uldiv.o(.text), UNUSED)
<BR><BR>[Calls]<UL><LI><a href="#[101]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_llsr
<LI><a href="#[fc]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_llsl
</UL>
<BR>[Called By]<UL><LI><a href="#[107]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;_printf_core
<LI><a href="#[108]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;_fp_digits
</UL>

<P><STRONG><a name="[fc]"></a>__aeabi_llsl</STRONG> (Thumb, 30 bytes, Stack size 0 bytes, llshl.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[d3]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_dadd
<LI><a href="#[103]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_uldivmod
<LI><a href="#[fe]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;_double_epilogue
<LI><a href="#[104]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_d2ulz
</UL>

<P><STRONG><a name="[19a]"></a>_ll_shift_l</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, llshl.o(.text), UNUSED)

<P><STRONG><a name="[101]"></a>__aeabi_llsr</STRONG> (Thumb, 32 bytes, Stack size 0 bytes, llushr.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[7b]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_d2iz
<LI><a href="#[103]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_uldivmod
<LI><a href="#[fe]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;_double_epilogue
<LI><a href="#[104]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_d2ulz
</UL>

<P><STRONG><a name="[19b]"></a>_ll_ushift_r</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, llushr.o(.text), UNUSED)

<P><STRONG><a name="[fd]"></a>__aeabi_lasr</STRONG> (Thumb, 36 bytes, Stack size 0 bytes, llsshr.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[d3]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_dadd
</UL>

<P><STRONG><a name="[19c]"></a>_ll_sshift_r</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, llsshr.o(.text), UNUSED)

<P><STRONG><a name="[19d]"></a>__I$use$fp</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, iusefp.o(.text), UNUSED)

<P><STRONG><a name="[102]"></a>_float_round</STRONG> (Thumb, 18 bytes, Stack size 0 bytes, fepilogue.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[ad]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_d2f
</UL>

<P><STRONG><a name="[19e]"></a>_float_epilogue</STRONG> (Thumb, 90 bytes, Stack size 4 bytes, fepilogue.o(.text), UNUSED)

<P><STRONG><a name="[ff]"></a>_double_round</STRONG> (Thumb, 26 bytes, Stack size 8 bytes, depilogue.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 8<LI>Call Chain = _double_round
</UL>
<BR>[Called By]<UL><LI><a href="#[d3]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_dadd
<LI><a href="#[a8]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_ddiv
<LI><a href="#[fe]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;_double_epilogue
</UL>

<P><STRONG><a name="[fe]"></a>_double_epilogue</STRONG> (Thumb, 164 bytes, Stack size 32 bytes, depilogue.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 40<LI>Call Chain = _double_epilogue &rArr; _double_round
</UL>
<BR>[Calls]<UL><LI><a href="#[101]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_llsr
<LI><a href="#[fc]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_llsl
<LI><a href="#[ff]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;_double_round
</UL>
<BR>[Called By]<UL><LI><a href="#[d3]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_dadd
<LI><a href="#[a2]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_i2d
<LI><a href="#[7a]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_dmul
</UL>

<P><STRONG><a name="[104]"></a>__aeabi_d2ulz</STRONG> (Thumb, 48 bytes, Stack size 0 bytes, dfixul.o(.text), UNUSED)
<BR><BR>[Calls]<UL><LI><a href="#[101]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_llsr
<LI><a href="#[fc]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_llsl
</UL>
<BR>[Called By]<UL><LI><a href="#[108]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;_fp_digits
</UL>

<P><STRONG><a name="[61]"></a>__scatterload</STRONG> (Thumb, 28 bytes, Stack size 0 bytes, init.o(.text))
<BR><BR>[Calls]<UL><LI><a href="#[105]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__main_after_scatterload
</UL>
<BR>[Called By]<UL><LI><a href="#[60]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;_main_scatterload
</UL>

<P><STRONG><a name="[19f]"></a>__scatterload_rt2</STRONG> (Thumb, 0 bytes, Stack size 0 bytes, init.o(.text), UNUSED)

<P><STRONG><a name="[1a0]"></a>__decompress</STRONG> (Thumb, 0 bytes, Stack size unknown bytes, __dczerorl2.o(.text), UNUSED)

<P><STRONG><a name="[1a1]"></a>__decompress1</STRONG> (Thumb, 92 bytes, Stack size unknown bytes, __dczerorl2.o(.text), UNUSED)

<P><STRONG><a name="[106]"></a>__0sprintf</STRONG> (Thumb, 34 bytes, Stack size 24 bytes, printfa.o(i.__0sprintf), UNUSED)
<BR><BR>[Calls]<UL><LI><a href="#[5f]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;_sputc
<LI><a href="#[107]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;_printf_core
</UL>

<P><STRONG><a name="[1a2]"></a>__1sprintf</STRONG> (Thumb, 0 bytes, Stack size 24 bytes, printfa.o(i.__0sprintf), UNUSED)

<P><STRONG><a name="[da]"></a>__2sprintf</STRONG> (Thumb, 0 bytes, Stack size 24 bytes, printfa.o(i.__0sprintf))
<BR><BR>[Stack]<UL><LI>Max Depth = 24<LI>Call Chain = __2sprintf
</UL>
<BR>[Called By]<UL><LI><a href="#[ac]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;number_show
<LI><a href="#[ae]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;float_number_show
</UL>

<P><STRONG><a name="[1a3]"></a>__c89sprintf</STRONG> (Thumb, 0 bytes, Stack size 24 bytes, printfa.o(i.__0sprintf), UNUSED)

<P><STRONG><a name="[1a4]"></a>sprintf</STRONG> (Thumb, 0 bytes, Stack size 24 bytes, printfa.o(i.__0sprintf), UNUSED)

<P><STRONG><a name="[a3]"></a>__hardfp_fabs</STRONG> (Thumb, 20 bytes, Stack size 8 bytes, fabs.o(i.__hardfp_fabs))
<BR><BR>[Stack]<UL><LI>Max Depth = 8<LI>Call Chain = __hardfp_fabs
</UL>
<BR>[Called By]<UL><LI><a href="#[a9]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;race_identity
<LI><a href="#[76]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;midline_draw_hd
<LI><a href="#[77]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;midline_draw
<LI><a href="#[75]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;image_threshold_xp
<LI><a href="#[73]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;image_threshold_sp
<LI><a href="#[74]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;image_threshold_hd
<LI><a href="#[78]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;error_ca
<LI><a href="#[79]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;CameraPid
</UL>

<P><STRONG><a name="[1a5]"></a>__scatterload_copy</STRONG> (Thumb, 14 bytes, Stack size unknown bytes, handlers.o(i.__scatterload_copy), UNUSED)

<P><STRONG><a name="[1a6]"></a>__scatterload_null</STRONG> (Thumb, 2 bytes, Stack size unknown bytes, handlers.o(i.__scatterload_null), UNUSED)

<P><STRONG><a name="[1a7]"></a>__scatterload_zeroinit</STRONG> (Thumb, 14 bytes, Stack size unknown bytes, handlers.o(i.__scatterload_zeroinit), UNUSED)
<P>
<H3>
Local Symbols
</H3>
<P><STRONG><a name="[ee]"></a>CRC_CHECK</STRONG> (Thumb, 58 bytes, Stack size 12 bytes, visual_scope.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 12<LI>Call Chain = CRC_CHECK
</UL>
<BR>[Called By]<UL><LI><a href="#[7c]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;VS4Channal_Send
</UL>

<P><STRONG><a name="[f7]"></a>CheckITStatus</STRONG> (Thumb, 16 bytes, Stack size 0 bytes, stm32f4xx_can.o(.text))
<BR><BR>[Called By]<UL><LI><a href="#[cd]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;CAN_GetITStatus
</UL>

<P><STRONG><a name="[f8]"></a>SetSysClock</STRONG> (Thumb, 218 bytes, Stack size 12 bytes, system_stm32f4xx.o(.text))
<BR><BR>[Stack]<UL><LI>Max Depth = 12<LI>Call Chain = SetSysClock
</UL>
<BR>[Called By]<UL><LI><a href="#[5d]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;SystemInit
</UL>

<P><STRONG><a name="[108]"></a>_fp_digits</STRONG> (Thumb, 326 bytes, Stack size 56 bytes, printfa.o(i._fp_digits), UNUSED)
<BR><BR>[Calls]<UL><LI><a href="#[d3]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_dadd
<LI><a href="#[a8]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_ddiv
<LI><a href="#[a6]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_cdrcmple
<LI><a href="#[7a]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_dmul
<LI><a href="#[103]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_uldivmod
<LI><a href="#[104]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_d2ulz
</UL>
<BR>[Called By]<UL><LI><a href="#[107]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;_printf_core
</UL>

<P><STRONG><a name="[107]"></a>_printf_core</STRONG> (Thumb, 1762 bytes, Stack size 136 bytes, printfa.o(i._printf_core), UNUSED)
<BR><BR>[Calls]<UL><LI><a href="#[103]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_uldivmod
<LI><a href="#[10b]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__aeabi_uidivmod
<LI><a href="#[109]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;_printf_pre_padding
<LI><a href="#[10a]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;_printf_post_padding
<LI><a href="#[108]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;_fp_digits
</UL>
<BR>[Called By]<UL><LI><a href="#[106]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__0sprintf
</UL>

<P><STRONG><a name="[10a]"></a>_printf_post_padding</STRONG> (Thumb, 38 bytes, Stack size 24 bytes, printfa.o(i._printf_post_padding), UNUSED)
<BR><BR>[Called By]<UL><LI><a href="#[107]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;_printf_core
</UL>

<P><STRONG><a name="[109]"></a>_printf_pre_padding</STRONG> (Thumb, 48 bytes, Stack size 24 bytes, printfa.o(i._printf_pre_padding), UNUSED)
<BR><BR>[Called By]<UL><LI><a href="#[107]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;_printf_core
</UL>

<P><STRONG><a name="[5f]"></a>_sputc</STRONG> (Thumb, 10 bytes, Stack size 0 bytes, printfa.o(i._sputc))
<BR><BR>[Called By]<UL><LI><a href="#[106]">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;__0sprintf
</UL>
<BR>[Address Reference Count : 1]<UL><LI> printfa.o(i.__0sprintf)
</UL><P>
<H3>
Undefined Global Symbols
</H3><HR></body></html>
