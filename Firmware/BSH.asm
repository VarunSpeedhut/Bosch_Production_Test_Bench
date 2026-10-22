;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
; This file was generated Thu Jun 05 12:41:07 2014
;--------------------------------------------------------
	.module BSH
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _INT0_ISR
	.globl _UART0_ISR
	.globl _Timer0_ISR
	.globl __sdcc_external_startup
	.globl _DAC1_SEL
	.globl _LED
	.globl _SPIEN
	.globl _TXBMT
	.globl _NSSMD0
	.globl _NSSMD1
	.globl _RXOVRN
	.globl _MODF
	.globl _WCOL
	.globl _SPIF
	.globl _AD0CM0
	.globl _AD0CM1
	.globl _AD0LJST
	.globl _AD0WINT
	.globl _AD0BUSY
	.globl _AD0INT
	.globl _BURSTEN
	.globl _AD0EN
	.globl _CCF6
	.globl _CCF7
	.globl _CCF8
	.globl _CCF9
	.globl _CCF10
	.globl _CCF11
	.globl _CR1
	.globl _CF1
	.globl _CCF0
	.globl _CCF1
	.globl _CCF2
	.globl _CCF3
	.globl _CCF4
	.globl _CCF5
	.globl _CR
	.globl _CF
	.globl _P
	.globl _F1
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _CPRL4
	.globl _CT4
	.globl _TR4
	.globl _EXE4
	.globl _EXF4
	.globl _TF4
	.globl _T2XCLK
	.globl _T2RCLK
	.globl _TR2
	.globl _T2SPLIT
	.globl _TF2CEN
	.globl _TF2LEN
	.globl _TF2L
	.globl _TF2H
	.globl _SI
	.globl _ACK
	.globl _ARBLOST
	.globl _ACKRQ
	.globl _STO
	.globl _STA
	.globl _TXMODE
	.globl _MASTER
	.globl _PX0
	.globl _PT0
	.globl _PX1
	.globl _PT1
	.globl _PS
	.globl _PS0
	.globl _PT2
	.globl _PSPI0
	.globl _EX0
	.globl _ET0
	.globl _EX1
	.globl _ET1
	.globl _ES0
	.globl _ET2
	.globl _ESPI0
	.globl _EA
	.globl _RI1
	.globl _TI1
	.globl _RB81
	.globl _TB81
	.globl _REN1
	.globl _MCE1
	.globl _S1MODE
	.globl _RI0
	.globl _TI0
	.globl _RBX0
	.globl _TBX0
	.globl _REN0
	.globl _THRE0
	.globl _PERR0
	.globl _OVR0
	.globl _IT0
	.globl _IE0
	.globl _IT1
	.globl _IE1
	.globl _TR0
	.globl _TF0
	.globl _TR1
	.globl _TF1
	.globl __XPAGE
	.globl _CAN0IF2DB2
	.globl _CAN0IF2DB1
	.globl _CAN0IF2DA2
	.globl _CAN0IF2DA1
	.globl _CAN0IF2MC
	.globl _CAN0IF2A2
	.globl _CAN0IF2A1
	.globl _CAN0IF2M2
	.globl _CAN0IF2M1
	.globl _CAN0IF2CM
	.globl _CAN0IF2CR
	.globl _CAN0IF1DB2
	.globl _CAN0IF1DB1
	.globl _CAN0IF1DA2
	.globl _CAN0IF1DA1
	.globl _CAN0IF1MC
	.globl _CAN0IF1A2
	.globl _CAN0IF1A1
	.globl _CAN0IF1M2
	.globl _CAN0IF1M1
	.globl _CAN0IF1CM
	.globl _CAN0IF1CR
	.globl _CAN0MV2
	.globl _CAN0MV1
	.globl _CAN0IP2
	.globl _CAN0IP1
	.globl _CAN0ND2
	.globl _CAN0ND1
	.globl _CAN0TR2
	.globl _CAN0TR1
	.globl _CAN0IID
	.globl _CAN0BT
	.globl _CAN0ERR
	.globl _PCA1CP10
	.globl _PCA0CP4
	.globl _PCA1CP6
	.globl _PCA0CP0
	.globl _PCA1
	.globl _PCA0
	.globl _PCA1CP9
	.globl _PCA0CP3
	.globl _PCA1CP8
	.globl _PCA0CP2
	.globl _PCA1CP7
	.globl _PCA0CP1
	.globl _PCA1CP11
	.globl _PCA0CP5
	.globl _TMR4
	.globl _TMR2
	.globl _TMR4CAP
	.globl _TMR2RL
	.globl _ADC0LT
	.globl _ADC0GT
	.globl _ADC0
	.globl _SBRL0
	.globl _TMR5
	.globl _TMR3
	.globl _TMR5CAP
	.globl _TMR3RL
	.globl _DP
	.globl _CAN0IF2DB2H
	.globl _CAN0IF2DB2L
	.globl _CAN0IF2DB1H
	.globl _CAN0IF2DB1L
	.globl _CAN0IF2DA2H
	.globl _CAN0IF2DA2L
	.globl _CAN0IF2DA1H
	.globl _CAN0IF2DA1L
	.globl _CAN0IF2A2H
	.globl _CAN0IF2A2L
	.globl _CAN0IF2A1H
	.globl _CAN0IF2A1L
	.globl _CAN0IF2M2H
	.globl _CAN0IF2M2L
	.globl _CAN0IF2M1H
	.globl _CAN0IF2M1L
	.globl _CAN0IF2CMH
	.globl _CAN0IF2CML
	.globl _CAN0IF2CRH
	.globl _CAN0IF2CRL
	.globl _CAN0IF1DB2H
	.globl _CAN0IF1DB2L
	.globl _CAN0IF1DB1H
	.globl _CAN0IF1DB1L
	.globl _CAN0IF1DA2H
	.globl _CAN0IF1DA2L
	.globl _CAN0IF1DA1H
	.globl _CAN0IF1DA1L
	.globl _CAN0IF1MCH
	.globl _CAN0IF1MCL
	.globl _CAN0IF2MCH
	.globl _CAN0IF2MCL
	.globl _CAN0IF1A2H
	.globl _CAN0IF1A2L
	.globl _CAN0IF1A1H
	.globl _CAN0IF1A1L
	.globl _CAN0IF1M2H
	.globl _CAN0IF1M2L
	.globl _CAN0IF1M1H
	.globl _CAN0IF1M1L
	.globl _CAN0IF1CMH
	.globl _CAN0IF1CML
	.globl _CAN0CN
	.globl _CAN0IF1CRH
	.globl _CAN0IF1CRL
	.globl _CAN0MV2H
	.globl _CAN0MV2L
	.globl _CAN0MV1H
	.globl _CAN0MV1L
	.globl _CAN0IP2H
	.globl _CAN0IP2L
	.globl _CAN0IP1H
	.globl _CAN0IP1L
	.globl _CAN0ND2H
	.globl _CAN0ND2L
	.globl _CAN0ND1H
	.globl _CAN0ND1L
	.globl _CAN0TR2H
	.globl _CAN0TR2L
	.globl _CAN0TR1H
	.globl _CAN0TR1L
	.globl _CAN0BRPE
	.globl _CAN0TST
	.globl _CAN0IIDH
	.globl _CAN0IIDL
	.globl _CAN0BTH
	.globl _CAN0BTL
	.globl _CAN0ERRH
	.globl _CAN0ERRL
	.globl _CAN0STAT
	.globl _CAN0CFG
	.globl _VDM0CN
	.globl _PCA1CPH10
	.globl _PCA0CPH4
	.globl _PCA1CPL10
	.globl _PCA0CPL4
	.globl _SN3
	.globl _PCA1CPH6
	.globl _PCA0CPH0
	.globl _SN2
	.globl _PCA1CPL6
	.globl _PCA0CPL0
	.globl _SN1
	.globl _PCA1H
	.globl _PCA0H
	.globl _SN0
	.globl _PCA1L
	.globl _PCA0L
	.globl _SPI0CN
	.globl _EIP2
	.globl _EIP1
	.globl _PSBANK
	.globl _P3MDIN
	.globl _P1MASK
	.globl _P2MDIN
	.globl _P1MAT
	.globl _P1MDIN
	.globl _P0MASK
	.globl _P0MDIN
	.globl _P0MAT
	.globl _B
	.globl _RSTSRC
	.globl _PCA1CPH3
	.globl _PCA0CPH3
	.globl _PCA1CPL3
	.globl _PCA0CPL3
	.globl _PCA1CPH2
	.globl _PCA0CPH2
	.globl _PCA1CPL2
	.globl _PCA0CPL2
	.globl _PCA1CPH1
	.globl _PCA0CPH1
	.globl _PCA1CPL1
	.globl _PCA0CPL1
	.globl _ADC0CN
	.globl _EIE2
	.globl _EIE1
	.globl _IT01CF
	.globl _CCH0CN
	.globl _XBR1
	.globl _XBR0
	.globl _ACC
	.globl _PCA1CPM11
	.globl _PCA0CPM5
	.globl _PCA1CPM10
	.globl _PCA0CPM4
	.globl _PCA1CPM9
	.globl _PCA0CPM3
	.globl _PCA1CPM8
	.globl _PCA0CPM2
	.globl _PCA1CPM7
	.globl _PCA0CPM1
	.globl _PCA1PWM
	.globl _PCA1CPM6
	.globl _PCA0CPM0
	.globl _PCA0PWM
	.globl _PCA1MD
	.globl _PCA0MD
	.globl _PCA1CN
	.globl _PCA0CN
	.globl _P3SKIP
	.globl _P2SKIP
	.globl _P1SKIP
	.globl _P0SKIP
	.globl _LIN0ADR
	.globl _LIN0DAT
	.globl _REF0CN
	.globl _PSW
	.globl _PCA1CPH11
	.globl _PCA0CPH5
	.globl _PCA1CPL11
	.globl _PCA0CPL5
	.globl _TMR4H
	.globl _TMR2H
	.globl _TMR4L
	.globl _TMR2L
	.globl _TMR4CAPH
	.globl _TMR2RLH
	.globl _TMR4CAPL
	.globl _TMR2RLL
	.globl _TMR4CF
	.globl _LIN0CF
	.globl _REG0CN
	.globl _TMR4CN
	.globl _TMR2CN
	.globl _XBR2
	.globl _XBR3
	.globl _ADC0LTH
	.globl _ADC0LTL
	.globl _ADC0GTH
	.globl _ADC0GTL
	.globl _SMB0DAT
	.globl _SMB0CF
	.globl _SMB0CN
	.globl _ADC0H
	.globl _ADC0L
	.globl _ADC0CF
	.globl _ADC0MX
	.globl _SMB0ADM
	.globl _ADC0TK
	.globl _SMB0ADR
	.globl _IP
	.globl _FLKEY
	.globl _FLSCL
	.globl _P4
	.globl _EMI0CF
	.globl _P2MASK
	.globl _P2MAT
	.globl _P3
	.globl _P4MDOUT
	.globl _P3MASK
	.globl _P3MDOUT
	.globl _P3MAT
	.globl _SBRLH0
	.globl _SBRLL0
	.globl _SBCON0
	.globl _EMI0TC
	.globl _EMI0CN
	.globl _SMOD0
	.globl _IE
	.globl _SFRPAGE
	.globl _P2MDOUT
	.globl _P1MDOUT
	.globl _P0MDOUT
	.globl _SPI0DAT
	.globl _OSCICRS
	.globl _SPI0CKR
	.globl _OSCICN
	.globl _SPI0CFG
	.globl _P2
	.globl _OSCXCN
	.globl _CPT1MX
	.globl _OSCIFIN
	.globl _CPT1MD
	.globl _CPT1CN
	.globl _CPT2MX
	.globl _CPT0MX
	.globl _CPT2MD
	.globl _CPT0MD
	.globl _CPT2CN
	.globl _CPT0CN
	.globl _SBUF1
	.globl _SBUF0
	.globl _SCON1
	.globl _SCON0
	.globl _CLKMUL
	.globl _TMR5CF
	.globl _TMR5H
	.globl _TMR3H
	.globl _TMR5L
	.globl _TMR3L
	.globl _TMR5CAPH
	.globl _TMR3RLH
	.globl _TMR5CAPL
	.globl _TMR3RLL
	.globl _TMR5CN
	.globl _TMR3CN
	.globl _P1
	.globl _CLKSEL
	.globl _PSCTL
	.globl _CKCON
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _SFRLAST
	.globl _SFRNEXT
	.globl _SFR0CN
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _gvuiDutyCount
	.globl _gvuiTotalCount
	.globl _gbIntState
	.globl _gvcState
	.globl _gvuiDelayTimer
	.globl _gvuiLEDTimer
	.globl _Read_ADC
	.globl _Adjust_Power
	.globl _putchar0
	.globl _Warm_Reset
	.globl _PCA0_Init
	.globl _Timer_Init
	.globl _UART_Init
	.globl _SPI_Init
	.globl _ADC_Init
	.globl _Port_IO_Init
	.globl _Oscillator_Init
	.globl _Interrupts_Init
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0$0$0 == 0x0080
_P0	=	0x0080
G$SP$0$0 == 0x0081
_SP	=	0x0081
G$DPL$0$0 == 0x0082
_DPL	=	0x0082
G$DPH$0$0 == 0x0083
_DPH	=	0x0083
G$SFR0CN$0$0 == 0x0084
_SFR0CN	=	0x0084
G$SFRNEXT$0$0 == 0x0085
_SFRNEXT	=	0x0085
G$SFRLAST$0$0 == 0x0086
_SFRLAST	=	0x0086
G$PCON$0$0 == 0x0087
_PCON	=	0x0087
G$TCON$0$0 == 0x0088
_TCON	=	0x0088
G$TMOD$0$0 == 0x0089
_TMOD	=	0x0089
G$TL0$0$0 == 0x008a
_TL0	=	0x008a
G$TL1$0$0 == 0x008b
_TL1	=	0x008b
G$TH0$0$0 == 0x008c
_TH0	=	0x008c
G$TH1$0$0 == 0x008d
_TH1	=	0x008d
G$CKCON$0$0 == 0x008e
_CKCON	=	0x008e
G$PSCTL$0$0 == 0x008f
_PSCTL	=	0x008f
G$CLKSEL$0$0 == 0x008f
_CLKSEL	=	0x008f
G$P1$0$0 == 0x0090
_P1	=	0x0090
G$TMR3CN$0$0 == 0x0091
_TMR3CN	=	0x0091
G$TMR5CN$0$0 == 0x0091
_TMR5CN	=	0x0091
G$TMR3RLL$0$0 == 0x0092
_TMR3RLL	=	0x0092
G$TMR5CAPL$0$0 == 0x0092
_TMR5CAPL	=	0x0092
G$TMR3RLH$0$0 == 0x0093
_TMR3RLH	=	0x0093
G$TMR5CAPH$0$0 == 0x0093
_TMR5CAPH	=	0x0093
G$TMR3L$0$0 == 0x0094
_TMR3L	=	0x0094
G$TMR5L$0$0 == 0x0094
_TMR5L	=	0x0094
G$TMR3H$0$0 == 0x0095
_TMR3H	=	0x0095
G$TMR5H$0$0 == 0x0095
_TMR5H	=	0x0095
G$TMR5CF$0$0 == 0x0096
_TMR5CF	=	0x0096
G$CLKMUL$0$0 == 0x0097
_CLKMUL	=	0x0097
G$SCON0$0$0 == 0x0098
_SCON0	=	0x0098
G$SCON1$0$0 == 0x0098
_SCON1	=	0x0098
G$SBUF0$0$0 == 0x0099
_SBUF0	=	0x0099
G$SBUF1$0$0 == 0x0099
_SBUF1	=	0x0099
G$CPT0CN$0$0 == 0x009a
_CPT0CN	=	0x009a
G$CPT2CN$0$0 == 0x009a
_CPT2CN	=	0x009a
G$CPT0MD$0$0 == 0x009b
_CPT0MD	=	0x009b
G$CPT2MD$0$0 == 0x009b
_CPT2MD	=	0x009b
G$CPT0MX$0$0 == 0x009c
_CPT0MX	=	0x009c
G$CPT2MX$0$0 == 0x009c
_CPT2MX	=	0x009c
G$CPT1CN$0$0 == 0x009d
_CPT1CN	=	0x009d
G$CPT1MD$0$0 == 0x009e
_CPT1MD	=	0x009e
G$OSCIFIN$0$0 == 0x009e
_OSCIFIN	=	0x009e
G$CPT1MX$0$0 == 0x009f
_CPT1MX	=	0x009f
G$OSCXCN$0$0 == 0x009f
_OSCXCN	=	0x009f
G$P2$0$0 == 0x00a0
_P2	=	0x00a0
G$SPI0CFG$0$0 == 0x00a1
_SPI0CFG	=	0x00a1
G$OSCICN$0$0 == 0x00a1
_OSCICN	=	0x00a1
G$SPI0CKR$0$0 == 0x00a2
_SPI0CKR	=	0x00a2
G$OSCICRS$0$0 == 0x00a2
_OSCICRS	=	0x00a2
G$SPI0DAT$0$0 == 0x00a3
_SPI0DAT	=	0x00a3
G$P0MDOUT$0$0 == 0x00a4
_P0MDOUT	=	0x00a4
G$P1MDOUT$0$0 == 0x00a5
_P1MDOUT	=	0x00a5
G$P2MDOUT$0$0 == 0x00a6
_P2MDOUT	=	0x00a6
G$SFRPAGE$0$0 == 0x00a7
_SFRPAGE	=	0x00a7
G$IE$0$0 == 0x00a8
_IE	=	0x00a8
G$SMOD0$0$0 == 0x00a9
_SMOD0	=	0x00a9
G$EMI0CN$0$0 == 0x00aa
_EMI0CN	=	0x00aa
G$EMI0TC$0$0 == 0x00aa
_EMI0TC	=	0x00aa
G$SBCON0$0$0 == 0x00ab
_SBCON0	=	0x00ab
G$SBRLL0$0$0 == 0x00ac
_SBRLL0	=	0x00ac
G$SBRLH0$0$0 == 0x00ad
_SBRLH0	=	0x00ad
G$P3MAT$0$0 == 0x00ae
_P3MAT	=	0x00ae
G$P3MDOUT$0$0 == 0x00ae
_P3MDOUT	=	0x00ae
G$P3MASK$0$0 == 0x00af
_P3MASK	=	0x00af
G$P4MDOUT$0$0 == 0x00af
_P4MDOUT	=	0x00af
G$P3$0$0 == 0x00b0
_P3	=	0x00b0
G$P2MAT$0$0 == 0x00b1
_P2MAT	=	0x00b1
G$P2MASK$0$0 == 0x00b2
_P2MASK	=	0x00b2
G$EMI0CF$0$0 == 0x00b2
_EMI0CF	=	0x00b2
G$P4$0$0 == 0x00b5
_P4	=	0x00b5
G$FLSCL$0$0 == 0x00b6
_FLSCL	=	0x00b6
G$FLKEY$0$0 == 0x00b7
_FLKEY	=	0x00b7
G$IP$0$0 == 0x00b8
_IP	=	0x00b8
G$SMB0ADR$0$0 == 0x00b9
_SMB0ADR	=	0x00b9
G$ADC0TK$0$0 == 0x00ba
_ADC0TK	=	0x00ba
G$SMB0ADM$0$0 == 0x00ba
_SMB0ADM	=	0x00ba
G$ADC0MX$0$0 == 0x00bb
_ADC0MX	=	0x00bb
G$ADC0CF$0$0 == 0x00bc
_ADC0CF	=	0x00bc
G$ADC0L$0$0 == 0x00bd
_ADC0L	=	0x00bd
G$ADC0H$0$0 == 0x00be
_ADC0H	=	0x00be
G$SMB0CN$0$0 == 0x00c0
_SMB0CN	=	0x00c0
G$SMB0CF$0$0 == 0x00c1
_SMB0CF	=	0x00c1
G$SMB0DAT$0$0 == 0x00c2
_SMB0DAT	=	0x00c2
G$ADC0GTL$0$0 == 0x00c3
_ADC0GTL	=	0x00c3
G$ADC0GTH$0$0 == 0x00c4
_ADC0GTH	=	0x00c4
G$ADC0LTL$0$0 == 0x00c5
_ADC0LTL	=	0x00c5
G$ADC0LTH$0$0 == 0x00c6
_ADC0LTH	=	0x00c6
G$XBR3$0$0 == 0x00c6
_XBR3	=	0x00c6
G$XBR2$0$0 == 0x00c7
_XBR2	=	0x00c7
G$TMR2CN$0$0 == 0x00c8
_TMR2CN	=	0x00c8
G$TMR4CN$0$0 == 0x00c8
_TMR4CN	=	0x00c8
G$REG0CN$0$0 == 0x00c9
_REG0CN	=	0x00c9
G$LIN0CF$0$0 == 0x00c9
_LIN0CF	=	0x00c9
G$TMR4CF$0$0 == 0x00c9
_TMR4CF	=	0x00c9
G$TMR2RLL$0$0 == 0x00ca
_TMR2RLL	=	0x00ca
G$TMR4CAPL$0$0 == 0x00ca
_TMR4CAPL	=	0x00ca
G$TMR2RLH$0$0 == 0x00cb
_TMR2RLH	=	0x00cb
G$TMR4CAPH$0$0 == 0x00cb
_TMR4CAPH	=	0x00cb
G$TMR2L$0$0 == 0x00cc
_TMR2L	=	0x00cc
G$TMR4L$0$0 == 0x00cc
_TMR4L	=	0x00cc
G$TMR2H$0$0 == 0x00cd
_TMR2H	=	0x00cd
G$TMR4H$0$0 == 0x00cd
_TMR4H	=	0x00cd
G$PCA0CPL5$0$0 == 0x00ce
_PCA0CPL5	=	0x00ce
G$PCA1CPL11$0$0 == 0x00ce
_PCA1CPL11	=	0x00ce
G$PCA0CPH5$0$0 == 0x00cf
_PCA0CPH5	=	0x00cf
G$PCA1CPH11$0$0 == 0x00cf
_PCA1CPH11	=	0x00cf
G$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
G$REF0CN$0$0 == 0x00d1
_REF0CN	=	0x00d1
G$LIN0DAT$0$0 == 0x00d2
_LIN0DAT	=	0x00d2
G$LIN0ADR$0$0 == 0x00d3
_LIN0ADR	=	0x00d3
G$P0SKIP$0$0 == 0x00d4
_P0SKIP	=	0x00d4
G$P1SKIP$0$0 == 0x00d5
_P1SKIP	=	0x00d5
G$P2SKIP$0$0 == 0x00d6
_P2SKIP	=	0x00d6
G$P3SKIP$0$0 == 0x00d7
_P3SKIP	=	0x00d7
G$PCA0CN$0$0 == 0x00d8
_PCA0CN	=	0x00d8
G$PCA1CN$0$0 == 0x00d8
_PCA1CN	=	0x00d8
G$PCA0MD$0$0 == 0x00d9
_PCA0MD	=	0x00d9
G$PCA1MD$0$0 == 0x00d9
_PCA1MD	=	0x00d9
G$PCA0PWM$0$0 == 0x00d9
_PCA0PWM	=	0x00d9
G$PCA0CPM0$0$0 == 0x00da
_PCA0CPM0	=	0x00da
G$PCA1CPM6$0$0 == 0x00da
_PCA1CPM6	=	0x00da
G$PCA1PWM$0$0 == 0x00da
_PCA1PWM	=	0x00da
G$PCA0CPM1$0$0 == 0x00db
_PCA0CPM1	=	0x00db
G$PCA1CPM7$0$0 == 0x00db
_PCA1CPM7	=	0x00db
G$PCA0CPM2$0$0 == 0x00dc
_PCA0CPM2	=	0x00dc
G$PCA1CPM8$0$0 == 0x00dc
_PCA1CPM8	=	0x00dc
G$PCA0CPM3$0$0 == 0x00dd
_PCA0CPM3	=	0x00dd
G$PCA1CPM9$0$0 == 0x00dd
_PCA1CPM9	=	0x00dd
G$PCA0CPM4$0$0 == 0x00de
_PCA0CPM4	=	0x00de
G$PCA1CPM10$0$0 == 0x00de
_PCA1CPM10	=	0x00de
G$PCA0CPM5$0$0 == 0x00df
_PCA0CPM5	=	0x00df
G$PCA1CPM11$0$0 == 0x00df
_PCA1CPM11	=	0x00df
G$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
G$XBR0$0$0 == 0x00e1
_XBR0	=	0x00e1
G$XBR1$0$0 == 0x00e2
_XBR1	=	0x00e2
G$CCH0CN$0$0 == 0x00e3
_CCH0CN	=	0x00e3
G$IT01CF$0$0 == 0x00e4
_IT01CF	=	0x00e4
G$EIE1$0$0 == 0x00e6
_EIE1	=	0x00e6
G$EIE2$0$0 == 0x00e7
_EIE2	=	0x00e7
G$ADC0CN$0$0 == 0x00e8
_ADC0CN	=	0x00e8
G$PCA0CPL1$0$0 == 0x00e9
_PCA0CPL1	=	0x00e9
G$PCA1CPL1$0$0 == 0x00e9
_PCA1CPL1	=	0x00e9
G$PCA0CPH1$0$0 == 0x00ea
_PCA0CPH1	=	0x00ea
G$PCA1CPH1$0$0 == 0x00ea
_PCA1CPH1	=	0x00ea
G$PCA0CPL2$0$0 == 0x00eb
_PCA0CPL2	=	0x00eb
G$PCA1CPL2$0$0 == 0x00eb
_PCA1CPL2	=	0x00eb
G$PCA0CPH2$0$0 == 0x00ec
_PCA0CPH2	=	0x00ec
G$PCA1CPH2$0$0 == 0x00ec
_PCA1CPH2	=	0x00ec
G$PCA0CPL3$0$0 == 0x00ed
_PCA0CPL3	=	0x00ed
G$PCA1CPL3$0$0 == 0x00ed
_PCA1CPL3	=	0x00ed
G$PCA0CPH3$0$0 == 0x00ee
_PCA0CPH3	=	0x00ee
G$PCA1CPH3$0$0 == 0x00ee
_PCA1CPH3	=	0x00ee
G$RSTSRC$0$0 == 0x00ef
_RSTSRC	=	0x00ef
G$B$0$0 == 0x00f0
_B	=	0x00f0
G$P0MAT$0$0 == 0x00f1
_P0MAT	=	0x00f1
G$P0MDIN$0$0 == 0x00f1
_P0MDIN	=	0x00f1
G$P0MASK$0$0 == 0x00f2
_P0MASK	=	0x00f2
G$P1MDIN$0$0 == 0x00f2
_P1MDIN	=	0x00f2
G$P1MAT$0$0 == 0x00f3
_P1MAT	=	0x00f3
G$P2MDIN$0$0 == 0x00f3
_P2MDIN	=	0x00f3
G$P1MASK$0$0 == 0x00f4
_P1MASK	=	0x00f4
G$P3MDIN$0$0 == 0x00f4
_P3MDIN	=	0x00f4
G$PSBANK$0$0 == 0x00f5
_PSBANK	=	0x00f5
G$EIP1$0$0 == 0x00f6
_EIP1	=	0x00f6
G$EIP2$0$0 == 0x00f7
_EIP2	=	0x00f7
G$SPI0CN$0$0 == 0x00f8
_SPI0CN	=	0x00f8
G$PCA0L$0$0 == 0x00f9
_PCA0L	=	0x00f9
G$PCA1L$0$0 == 0x00f9
_PCA1L	=	0x00f9
G$SN0$0$0 == 0x00f9
_SN0	=	0x00f9
G$PCA0H$0$0 == 0x00fa
_PCA0H	=	0x00fa
G$PCA1H$0$0 == 0x00fa
_PCA1H	=	0x00fa
G$SN1$0$0 == 0x00fa
_SN1	=	0x00fa
G$PCA0CPL0$0$0 == 0x00fb
_PCA0CPL0	=	0x00fb
G$PCA1CPL6$0$0 == 0x00fb
_PCA1CPL6	=	0x00fb
G$SN2$0$0 == 0x00fb
_SN2	=	0x00fb
G$PCA0CPH0$0$0 == 0x00fc
_PCA0CPH0	=	0x00fc
G$PCA1CPH6$0$0 == 0x00fc
_PCA1CPH6	=	0x00fc
G$SN3$0$0 == 0x00fc
_SN3	=	0x00fc
G$PCA0CPL4$0$0 == 0x00fd
_PCA0CPL4	=	0x00fd
G$PCA1CPL10$0$0 == 0x00fd
_PCA1CPL10	=	0x00fd
G$PCA0CPH4$0$0 == 0x00fe
_PCA0CPH4	=	0x00fe
G$PCA1CPH10$0$0 == 0x00fe
_PCA1CPH10	=	0x00fe
G$VDM0CN$0$0 == 0x00ff
_VDM0CN	=	0x00ff
G$CAN0CFG$0$0 == 0x0092
_CAN0CFG	=	0x0092
G$CAN0STAT$0$0 == 0x0094
_CAN0STAT	=	0x0094
G$CAN0ERRL$0$0 == 0x0096
_CAN0ERRL	=	0x0096
G$CAN0ERRH$0$0 == 0x0097
_CAN0ERRH	=	0x0097
G$CAN0BTL$0$0 == 0x009a
_CAN0BTL	=	0x009a
G$CAN0BTH$0$0 == 0x009b
_CAN0BTH	=	0x009b
G$CAN0IIDL$0$0 == 0x009c
_CAN0IIDL	=	0x009c
G$CAN0IIDH$0$0 == 0x009d
_CAN0IIDH	=	0x009d
G$CAN0TST$0$0 == 0x009e
_CAN0TST	=	0x009e
G$CAN0BRPE$0$0 == 0x00a1
_CAN0BRPE	=	0x00a1
G$CAN0TR1L$0$0 == 0x00a2
_CAN0TR1L	=	0x00a2
G$CAN0TR1H$0$0 == 0x00a3
_CAN0TR1H	=	0x00a3
G$CAN0TR2L$0$0 == 0x00a4
_CAN0TR2L	=	0x00a4
G$CAN0TR2H$0$0 == 0x00a5
_CAN0TR2H	=	0x00a5
G$CAN0ND1L$0$0 == 0x00aa
_CAN0ND1L	=	0x00aa
G$CAN0ND1H$0$0 == 0x00ab
_CAN0ND1H	=	0x00ab
G$CAN0ND2L$0$0 == 0x00ac
_CAN0ND2L	=	0x00ac
G$CAN0ND2H$0$0 == 0x00ad
_CAN0ND2H	=	0x00ad
G$CAN0IP1L$0$0 == 0x00ae
_CAN0IP1L	=	0x00ae
G$CAN0IP1H$0$0 == 0x00af
_CAN0IP1H	=	0x00af
G$CAN0IP2L$0$0 == 0x00b2
_CAN0IP2L	=	0x00b2
G$CAN0IP2H$0$0 == 0x00b3
_CAN0IP2H	=	0x00b3
G$CAN0MV1L$0$0 == 0x00ba
_CAN0MV1L	=	0x00ba
G$CAN0MV1H$0$0 == 0x00bb
_CAN0MV1H	=	0x00bb
G$CAN0MV2L$0$0 == 0x00bc
_CAN0MV2L	=	0x00bc
G$CAN0MV2H$0$0 == 0x00bd
_CAN0MV2H	=	0x00bd
G$CAN0IF1CRL$0$0 == 0x00be
_CAN0IF1CRL	=	0x00be
G$CAN0IF1CRH$0$0 == 0x00bf
_CAN0IF1CRH	=	0x00bf
G$CAN0CN$0$0 == 0x00c0
_CAN0CN	=	0x00c0
G$CAN0IF1CML$0$0 == 0x00c2
_CAN0IF1CML	=	0x00c2
G$CAN0IF1CMH$0$0 == 0x00c3
_CAN0IF1CMH	=	0x00c3
G$CAN0IF1M1L$0$0 == 0x00c4
_CAN0IF1M1L	=	0x00c4
G$CAN0IF1M1H$0$0 == 0x00c5
_CAN0IF1M1H	=	0x00c5
G$CAN0IF1M2L$0$0 == 0x00c6
_CAN0IF1M2L	=	0x00c6
G$CAN0IF1M2H$0$0 == 0x00c7
_CAN0IF1M2H	=	0x00c7
G$CAN0IF1A1L$0$0 == 0x00ca
_CAN0IF1A1L	=	0x00ca
G$CAN0IF1A1H$0$0 == 0x00cb
_CAN0IF1A1H	=	0x00cb
G$CAN0IF1A2L$0$0 == 0x00cc
_CAN0IF1A2L	=	0x00cc
G$CAN0IF1A2H$0$0 == 0x00cd
_CAN0IF1A2H	=	0x00cd
G$CAN0IF2MCL$0$0 == 0x00ce
_CAN0IF2MCL	=	0x00ce
G$CAN0IF2MCH$0$0 == 0x00cf
_CAN0IF2MCH	=	0x00cf
G$CAN0IF1MCL$0$0 == 0x00d2
_CAN0IF1MCL	=	0x00d2
G$CAN0IF1MCH$0$0 == 0x00d3
_CAN0IF1MCH	=	0x00d3
G$CAN0IF1DA1L$0$0 == 0x00d4
_CAN0IF1DA1L	=	0x00d4
G$CAN0IF1DA1H$0$0 == 0x00d5
_CAN0IF1DA1H	=	0x00d5
G$CAN0IF1DA2L$0$0 == 0x00d6
_CAN0IF1DA2L	=	0x00d6
G$CAN0IF1DA2H$0$0 == 0x00d7
_CAN0IF1DA2H	=	0x00d7
G$CAN0IF1DB1L$0$0 == 0x00da
_CAN0IF1DB1L	=	0x00da
G$CAN0IF1DB1H$0$0 == 0x00db
_CAN0IF1DB1H	=	0x00db
G$CAN0IF1DB2L$0$0 == 0x00dc
_CAN0IF1DB2L	=	0x00dc
G$CAN0IF1DB2H$0$0 == 0x00dd
_CAN0IF1DB2H	=	0x00dd
G$CAN0IF2CRL$0$0 == 0x00de
_CAN0IF2CRL	=	0x00de
G$CAN0IF2CRH$0$0 == 0x00df
_CAN0IF2CRH	=	0x00df
G$CAN0IF2CML$0$0 == 0x00e2
_CAN0IF2CML	=	0x00e2
G$CAN0IF2CMH$0$0 == 0x00e3
_CAN0IF2CMH	=	0x00e3
G$CAN0IF2M1L$0$0 == 0x00ea
_CAN0IF2M1L	=	0x00ea
G$CAN0IF2M1H$0$0 == 0x00eb
_CAN0IF2M1H	=	0x00eb
G$CAN0IF2M2L$0$0 == 0x00ec
_CAN0IF2M2L	=	0x00ec
G$CAN0IF2M2H$0$0 == 0x00ed
_CAN0IF2M2H	=	0x00ed
G$CAN0IF2A1L$0$0 == 0x00ee
_CAN0IF2A1L	=	0x00ee
G$CAN0IF2A1H$0$0 == 0x00ef
_CAN0IF2A1H	=	0x00ef
G$CAN0IF2A2L$0$0 == 0x00f2
_CAN0IF2A2L	=	0x00f2
G$CAN0IF2A2H$0$0 == 0x00f3
_CAN0IF2A2H	=	0x00f3
G$CAN0IF2DA1L$0$0 == 0x00f6
_CAN0IF2DA1L	=	0x00f6
G$CAN0IF2DA1H$0$0 == 0x00f7
_CAN0IF2DA1H	=	0x00f7
G$CAN0IF2DA2L$0$0 == 0x00fa
_CAN0IF2DA2L	=	0x00fa
G$CAN0IF2DA2H$0$0 == 0x00fb
_CAN0IF2DA2H	=	0x00fb
G$CAN0IF2DB1L$0$0 == 0x00fc
_CAN0IF2DB1L	=	0x00fc
G$CAN0IF2DB1H$0$0 == 0x00fd
_CAN0IF2DB1H	=	0x00fd
G$CAN0IF2DB2L$0$0 == 0x00fe
_CAN0IF2DB2L	=	0x00fe
G$CAN0IF2DB2H$0$0 == 0x00ff
_CAN0IF2DB2H	=	0x00ff
G$DP$0$0 == 0x8382
_DP	=	0x8382
G$TMR3RL$0$0 == 0x9392
_TMR3RL	=	0x9392
G$TMR5CAP$0$0 == 0x9392
_TMR5CAP	=	0x9392
G$TMR3$0$0 == 0x9594
_TMR3	=	0x9594
G$TMR5$0$0 == 0x9594
_TMR5	=	0x9594
G$SBRL0$0$0 == 0xadac
_SBRL0	=	0xadac
G$ADC0$0$0 == 0xbebd
_ADC0	=	0xbebd
G$ADC0GT$0$0 == 0xc4c3
_ADC0GT	=	0xc4c3
G$ADC0LT$0$0 == 0xc6c5
_ADC0LT	=	0xc6c5
G$TMR2RL$0$0 == 0xcbca
_TMR2RL	=	0xcbca
G$TMR4CAP$0$0 == 0xcbca
_TMR4CAP	=	0xcbca
G$TMR2$0$0 == 0xcdcc
_TMR2	=	0xcdcc
G$TMR4$0$0 == 0xcdcc
_TMR4	=	0xcdcc
G$PCA0CP5$0$0 == 0xcfce
_PCA0CP5	=	0xcfce
G$PCA1CP11$0$0 == 0xcfce
_PCA1CP11	=	0xcfce
G$PCA0CP1$0$0 == 0xeae9
_PCA0CP1	=	0xeae9
G$PCA1CP7$0$0 == 0xeae9
_PCA1CP7	=	0xeae9
G$PCA0CP2$0$0 == 0xeceb
_PCA0CP2	=	0xeceb
G$PCA1CP8$0$0 == 0xeceb
_PCA1CP8	=	0xeceb
G$PCA0CP3$0$0 == 0xeeed
_PCA0CP3	=	0xeeed
G$PCA1CP9$0$0 == 0xeeed
_PCA1CP9	=	0xeeed
G$PCA0$0$0 == 0xfaf9
_PCA0	=	0xfaf9
G$PCA1$0$0 == 0xfaf9
_PCA1	=	0xfaf9
G$PCA0CP0$0$0 == 0xfcfb
_PCA0CP0	=	0xfcfb
G$PCA1CP6$0$0 == 0xfcfb
_PCA1CP6	=	0xfcfb
G$PCA0CP4$0$0 == 0xfefd
_PCA0CP4	=	0xfefd
G$PCA1CP10$0$0 == 0xfefd
_PCA1CP10	=	0xfefd
G$CAN0ERR$0$0 == 0x9796
_CAN0ERR	=	0x9796
G$CAN0BT$0$0 == 0x9b9a
_CAN0BT	=	0x9b9a
G$CAN0IID$0$0 == 0x9d9c
_CAN0IID	=	0x9d9c
G$CAN0TR1$0$0 == 0xa3a2
_CAN0TR1	=	0xa3a2
G$CAN0TR2$0$0 == 0xa5a4
_CAN0TR2	=	0xa5a4
G$CAN0ND1$0$0 == 0xabaa
_CAN0ND1	=	0xabaa
G$CAN0ND2$0$0 == 0xadac
_CAN0ND2	=	0xadac
G$CAN0IP1$0$0 == 0xafae
_CAN0IP1	=	0xafae
G$CAN0IP2$0$0 == 0xb3b2
_CAN0IP2	=	0xb3b2
G$CAN0MV1$0$0 == 0xbbba
_CAN0MV1	=	0xbbba
G$CAN0MV2$0$0 == 0xbdbc
_CAN0MV2	=	0xbdbc
G$CAN0IF1CR$0$0 == 0xbfbe
_CAN0IF1CR	=	0xbfbe
G$CAN0IF1CM$0$0 == 0xc3c2
_CAN0IF1CM	=	0xc3c2
G$CAN0IF1M1$0$0 == 0xc5c4
_CAN0IF1M1	=	0xc5c4
G$CAN0IF1M2$0$0 == 0xc7c6
_CAN0IF1M2	=	0xc7c6
G$CAN0IF1A1$0$0 == 0xcbca
_CAN0IF1A1	=	0xcbca
G$CAN0IF1A2$0$0 == 0xcdcc
_CAN0IF1A2	=	0xcdcc
G$CAN0IF1MC$0$0 == 0xd3d2
_CAN0IF1MC	=	0xd3d2
G$CAN0IF1DA1$0$0 == 0xd5d4
_CAN0IF1DA1	=	0xd5d4
G$CAN0IF1DA2$0$0 == 0xd7d6
_CAN0IF1DA2	=	0xd7d6
G$CAN0IF1DB1$0$0 == 0xdbda
_CAN0IF1DB1	=	0xdbda
G$CAN0IF1DB2$0$0 == 0xdddc
_CAN0IF1DB2	=	0xdddc
G$CAN0IF2CR$0$0 == 0xdfde
_CAN0IF2CR	=	0xdfde
G$CAN0IF2CM$0$0 == 0xe3e2
_CAN0IF2CM	=	0xe3e2
G$CAN0IF2M1$0$0 == 0xebea
_CAN0IF2M1	=	0xebea
G$CAN0IF2M2$0$0 == 0xedec
_CAN0IF2M2	=	0xedec
G$CAN0IF2A1$0$0 == 0xefee
_CAN0IF2A1	=	0xefee
G$CAN0IF2A2$0$0 == 0xf3f2
_CAN0IF2A2	=	0xf3f2
G$CAN0IF2MC$0$0 == 0xcfce
_CAN0IF2MC	=	0xcfce
G$CAN0IF2DA1$0$0 == 0xf7f6
_CAN0IF2DA1	=	0xf7f6
G$CAN0IF2DA2$0$0 == 0xfbfa
_CAN0IF2DA2	=	0xfbfa
G$CAN0IF2DB1$0$0 == 0xfdfc
_CAN0IF2DB1	=	0xfdfc
G$CAN0IF2DB2$0$0 == 0xfffe
_CAN0IF2DB2	=	0xfffe
G$_XPAGE$0$0 == 0x00aa
__XPAGE	=	0x00aa
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$TF1$0$0 == 0x008f
_TF1	=	0x008f
G$TR1$0$0 == 0x008e
_TR1	=	0x008e
G$TF0$0$0 == 0x008d
_TF0	=	0x008d
G$TR0$0$0 == 0x008c
_TR0	=	0x008c
G$IE1$0$0 == 0x008b
_IE1	=	0x008b
G$IT1$0$0 == 0x008a
_IT1	=	0x008a
G$IE0$0$0 == 0x0089
_IE0	=	0x0089
G$IT0$0$0 == 0x0088
_IT0	=	0x0088
G$OVR0$0$0 == 0x009f
_OVR0	=	0x009f
G$PERR0$0$0 == 0x009e
_PERR0	=	0x009e
G$THRE0$0$0 == 0x009d
_THRE0	=	0x009d
G$REN0$0$0 == 0x009c
_REN0	=	0x009c
G$TBX0$0$0 == 0x009b
_TBX0	=	0x009b
G$RBX0$0$0 == 0x009a
_RBX0	=	0x009a
G$TI0$0$0 == 0x0099
_TI0	=	0x0099
G$RI0$0$0 == 0x0098
_RI0	=	0x0098
G$S1MODE$0$0 == 0x009f
_S1MODE	=	0x009f
G$MCE1$0$0 == 0x009d
_MCE1	=	0x009d
G$REN1$0$0 == 0x009c
_REN1	=	0x009c
G$TB81$0$0 == 0x009b
_TB81	=	0x009b
G$RB81$0$0 == 0x009a
_RB81	=	0x009a
G$TI1$0$0 == 0x0099
_TI1	=	0x0099
G$RI1$0$0 == 0x0098
_RI1	=	0x0098
G$EA$0$0 == 0x00af
_EA	=	0x00af
G$ESPI0$0$0 == 0x00ae
_ESPI0	=	0x00ae
G$ET2$0$0 == 0x00ad
_ET2	=	0x00ad
G$ES0$0$0 == 0x00ac
_ES0	=	0x00ac
G$ET1$0$0 == 0x00ab
_ET1	=	0x00ab
G$EX1$0$0 == 0x00aa
_EX1	=	0x00aa
G$ET0$0$0 == 0x00a9
_ET0	=	0x00a9
G$EX0$0$0 == 0x00a8
_EX0	=	0x00a8
G$PSPI0$0$0 == 0x00be
_PSPI0	=	0x00be
G$PT2$0$0 == 0x00bd
_PT2	=	0x00bd
G$PS0$0$0 == 0x00bc
_PS0	=	0x00bc
G$PS$0$0 == 0x00bc
_PS	=	0x00bc
G$PT1$0$0 == 0x00bb
_PT1	=	0x00bb
G$PX1$0$0 == 0x00ba
_PX1	=	0x00ba
G$PT0$0$0 == 0x00b9
_PT0	=	0x00b9
G$PX0$0$0 == 0x00b8
_PX0	=	0x00b8
G$MASTER$0$0 == 0x00c7
_MASTER	=	0x00c7
G$TXMODE$0$0 == 0x00c6
_TXMODE	=	0x00c6
G$STA$0$0 == 0x00c5
_STA	=	0x00c5
G$STO$0$0 == 0x00c4
_STO	=	0x00c4
G$ACKRQ$0$0 == 0x00c3
_ACKRQ	=	0x00c3
G$ARBLOST$0$0 == 0x00c2
_ARBLOST	=	0x00c2
G$ACK$0$0 == 0x00c1
_ACK	=	0x00c1
G$SI$0$0 == 0x00c0
_SI	=	0x00c0
G$TF2H$0$0 == 0x00cf
_TF2H	=	0x00cf
G$TF2L$0$0 == 0x00ce
_TF2L	=	0x00ce
G$TF2LEN$0$0 == 0x00cd
_TF2LEN	=	0x00cd
G$TF2CEN$0$0 == 0x00cc
_TF2CEN	=	0x00cc
G$T2SPLIT$0$0 == 0x00cb
_T2SPLIT	=	0x00cb
G$TR2$0$0 == 0x00ca
_TR2	=	0x00ca
G$T2RCLK$0$0 == 0x00c9
_T2RCLK	=	0x00c9
G$T2XCLK$0$0 == 0x00c8
_T2XCLK	=	0x00c8
G$TF4$0$0 == 0x00cf
_TF4	=	0x00cf
G$EXF4$0$0 == 0x00ce
_EXF4	=	0x00ce
G$EXE4$0$0 == 0x00cb
_EXE4	=	0x00cb
G$TR4$0$0 == 0x00ca
_TR4	=	0x00ca
G$CT4$0$0 == 0x00c9
_CT4	=	0x00c9
G$CPRL4$0$0 == 0x00c8
_CPRL4	=	0x00c8
G$CY$0$0 == 0x00d7
_CY	=	0x00d7
G$AC$0$0 == 0x00d6
_AC	=	0x00d6
G$F0$0$0 == 0x00d5
_F0	=	0x00d5
G$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
G$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
G$OV$0$0 == 0x00d2
_OV	=	0x00d2
G$F1$0$0 == 0x00d1
_F1	=	0x00d1
G$P$0$0 == 0x00d0
_P	=	0x00d0
G$CF$0$0 == 0x00df
_CF	=	0x00df
G$CR$0$0 == 0x00de
_CR	=	0x00de
G$CCF5$0$0 == 0x00dd
_CCF5	=	0x00dd
G$CCF4$0$0 == 0x00dc
_CCF4	=	0x00dc
G$CCF3$0$0 == 0x00db
_CCF3	=	0x00db
G$CCF2$0$0 == 0x00da
_CCF2	=	0x00da
G$CCF1$0$0 == 0x00d9
_CCF1	=	0x00d9
G$CCF0$0$0 == 0x00d8
_CCF0	=	0x00d8
G$CF1$0$0 == 0x00df
_CF1	=	0x00df
G$CR1$0$0 == 0x00de
_CR1	=	0x00de
G$CCF11$0$0 == 0x00dd
_CCF11	=	0x00dd
G$CCF10$0$0 == 0x00dc
_CCF10	=	0x00dc
G$CCF9$0$0 == 0x00db
_CCF9	=	0x00db
G$CCF8$0$0 == 0x00da
_CCF8	=	0x00da
G$CCF7$0$0 == 0x00d9
_CCF7	=	0x00d9
G$CCF6$0$0 == 0x00d8
_CCF6	=	0x00d8
G$AD0EN$0$0 == 0x00ef
_AD0EN	=	0x00ef
G$BURSTEN$0$0 == 0x00ee
_BURSTEN	=	0x00ee
G$AD0INT$0$0 == 0x00ed
_AD0INT	=	0x00ed
G$AD0BUSY$0$0 == 0x00ec
_AD0BUSY	=	0x00ec
G$AD0WINT$0$0 == 0x00eb
_AD0WINT	=	0x00eb
G$AD0LJST$0$0 == 0x00ea
_AD0LJST	=	0x00ea
G$AD0CM1$0$0 == 0x00e9
_AD0CM1	=	0x00e9
G$AD0CM0$0$0 == 0x00e8
_AD0CM0	=	0x00e8
G$SPIF$0$0 == 0x00ff
_SPIF	=	0x00ff
G$WCOL$0$0 == 0x00fe
_WCOL	=	0x00fe
G$MODF$0$0 == 0x00fd
_MODF	=	0x00fd
G$RXOVRN$0$0 == 0x00fc
_RXOVRN	=	0x00fc
G$NSSMD1$0$0 == 0x00fb
_NSSMD1	=	0x00fb
G$NSSMD0$0$0 == 0x00fa
_NSSMD0	=	0x00fa
G$TXBMT$0$0 == 0x00f9
_TXBMT	=	0x00f9
G$SPIEN$0$0 == 0x00f8
_SPIEN	=	0x00f8
G$LED$0$0 == 0x00b2
_LED	=	0x00b2
G$DAC1_SEL$0$0 == 0x0091
_DAC1_SEL	=	0x0091
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
G$gvuiLEDTimer$0$0==.
_gvuiLEDTimer::
	.ds 2
G$gvuiDelayTimer$0$0==.
_gvuiDelayTimer::
	.ds 2
G$gvcState$0$0==.
_gvcState::
	.ds 1
G$gbIntState$0$0==.
_gbIntState::
	.ds 1
G$gvuiTotalCount$0$0==.
_gvuiTotalCount::
	.ds 2
G$gvuiDutyCount$0$0==.
_gvuiDutyCount::
	.ds 2
Lmain$uiADC_Count$1$1==.
_main_uiADC_Count_1_1:
	.ds 2
Lmain$fTemp$1$1==.
_main_fTemp_1_1:
	.ds 4
Lmain$bArray$1$1==.
_main_bArray_1_1:
	.ds 14
Lmain$uiPeriod$1$1==.
_main_uiPeriod_1_1:
	.ds 2
Lmain$uiDuty$1$1==.
_main_uiDuty_1_1:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG	(DATA)
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	ljmp	_INT0_ISR
	.ds	5
	ljmp	_Timer0_ISR
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_UART0_ISR
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	lcall	_main
;	return from main will lock up
	sjmp .
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function '_sdcc_external_startup'
;------------------------------------------------------------
;------------------------------------------------------------
	G$_sdcc_external_startup$0$0 ==.
	C$BSH.c$14$0$0 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:14: unsigned char _sdcc_external_startup(void)
;	-----------------------------------------
;	 function _sdcc_external_startup
;	-----------------------------------------
__sdcc_external_startup:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	C$BSH.c$16$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:16: PCA0MD &= ~0x40;                          // disable watchdog
	anl	_PCA0MD,#0xBF
	C$BSH.c$17$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:17: return 0;                                 // default value
	mov	dpl,#0x00
	C$BSH.c$18$1$1 ==.
	XG$_sdcc_external_startup$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer0_ISR'
;------------------------------------------------------------
;------------------------------------------------------------
	G$Timer0_ISR$0$0 ==.
	C$BSH.c$73$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:73: void Timer0_ISR(void) __interrupt 1
;	-----------------------------------------
;	 function Timer0_ISR
;	-----------------------------------------
_Timer0_ISR:
	push	acc
	push	psw
	mov	psw,#0x00
	C$BSH.c$75$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:75: if(gvuiLEDTimer == 0)
	mov	a,_gvuiLEDTimer
	orl	a,(_gvuiLEDTimer + 1)
	jnz	00102$
	C$BSH.c$77$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:77: LED = !LED;
	cpl	_LED
	C$BSH.c$78$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:78: gvuiLEDTimer = 500;
	mov	_gvuiLEDTimer,#0xF4
	mov	(_gvuiLEDTimer + 1),#0x01
00102$:
	C$BSH.c$80$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:80: if(gvuiLEDTimer)
	mov	a,_gvuiLEDTimer
	orl	a,(_gvuiLEDTimer + 1)
	jz	00104$
	C$BSH.c$81$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:81: --gvuiLEDTimer;
	dec	_gvuiLEDTimer
	mov	a,#0xff
	cjne	a,_gvuiLEDTimer,00114$
	dec	(_gvuiLEDTimer + 1)
00114$:
00104$:
	C$BSH.c$82$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:82: if(gvuiDelayTimer)
	mov	a,_gvuiDelayTimer
	orl	a,(_gvuiDelayTimer + 1)
	jz	00106$
	C$BSH.c$83$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:83: --gvuiDelayTimer;
	dec	_gvuiDelayTimer
	mov	a,#0xff
	cjne	a,_gvuiDelayTimer,00116$
	dec	(_gvuiDelayTimer + 1)
00116$:
00106$:
	C$BSH.c$85$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:85: TCON &= ~0x20;
	anl	_TCON,#0xDF
	pop	psw
	pop	acc
	C$BSH.c$86$1$1 ==.
	XG$Timer0_ISR$0$0 ==.
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'UART0_ISR'
;------------------------------------------------------------
;cData                     Allocated to registers r2 
;------------------------------------------------------------
	G$UART0_ISR$0$0 ==.
	C$BSH.c$89$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:89: void UART0_ISR(void) __interrupt 4
;	-----------------------------------------
;	 function UART0_ISR
;	-----------------------------------------
_UART0_ISR:
	push	acc
	push	b
	push	ar2
	push	psw
	mov	psw,#0x00
	C$BSH.c$93$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:93: if(RI0)
	C$BSH.c$95$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:95: RI0 = 0;                                     // Clear interrupt flag
	jbc	_RI0,00118$
	sjmp	00108$
00118$:
	C$BSH.c$96$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:96: if(SCON0 & 0x80)
	mov	a,_SCON0
	jnb	acc.7,00102$
	C$BSH.c$97$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:97: SCON0 &= ~0x80;
	anl	_SCON0,#0x7F
00102$:
	C$BSH.c$98$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:98: cData = SBUF0;                               // Get character from buffer
	mov	r2,_SBUF0
	C$BSH.c$99$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:99: if((cData >= '0') && (cData <= '9')) 
	clr	c
	mov	a,r2
	xrl	a,#0x80
	subb	a,#0xb0
	jc	00104$
	mov	a,#(0x39 ^ 0x80)
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	jc	00104$
	C$BSH.c$100$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:100: gvcState = cData - 0x30;
	mov	a,r2
	add	a,#0xd0
	mov	_gvcState,a
	sjmp	00108$
00104$:
	C$BSH.c$102$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:102: gvcState = cData;
	mov	_gvcState,r2
00108$:
	C$BSH.c$104$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:104: if(TI0)                                        // BYTE of data has been transmitted 
	C$BSH.c$105$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:105: TI0 = 0;                                     // Clear interrupt flag
	jbc	_TI0,00122$
	sjmp	00111$
00122$:
00111$:
	pop	psw
	pop	ar2
	pop	b
	pop	acc
	C$BSH.c$106$1$1 ==.
	XG$UART0_ISR$0$0 ==.
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;------------------------------------------------------------
;Allocation info for local variables in function 'INT0_ISR'
;------------------------------------------------------------
;------------------------------------------------------------
	G$INT0_ISR$0$0 ==.
	C$BSH.c$109$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:109: void INT0_ISR(void) __interrupt 0
;	-----------------------------------------
;	 function INT0_ISR
;	-----------------------------------------
_INT0_ISR:
	push	acc
	push	ar2
	push	ar3
	push	psw
	mov	psw,#0x00
	C$BSH.c$111$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:111: if(gbIntState == FALLING)                      // Caught a falling edge
	mov	a,_gbIntState
	C$BSH.c$114$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:114: gvuiDutyCount = (unsigned int)TH1;
	jnz	00102$
	mov	_gvuiDutyCount,_TH1
	mov	(_gvuiDutyCount + 1),a
	C$BSH.c$115$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:115: gvuiDutyCount <<= 8;
	mov	(_gvuiDutyCount + 1),_gvuiDutyCount
	mov	_gvuiDutyCount,#0x00
	C$BSH.c$116$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:116: gvuiDutyCount += (unsigned int)TL1;
	mov	r2,_TL1
	mov	r3,#0x00
	mov	a,r2
	add	a,_gvuiDutyCount
	mov	_gvuiDutyCount,a
	mov	a,r3
	addc	a,(_gvuiDutyCount + 1)
	mov	(_gvuiDutyCount + 1),a
	C$BSH.c$117$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:117: gbIntState = RISING;                         // Look for a rising edge
	mov	_gbIntState,#0x01
	C$BSH.c$118$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:118: SFRPAGE   = CONFIG_PAGE;
	mov	_SFRPAGE,#0x0F
	C$BSH.c$119$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:119: IT01CF    = 0x0F;
	mov	_IT01CF,#0x0F
	C$BSH.c$120$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:120: SFRPAGE   = ACTIVE_PAGE;
	mov	_SFRPAGE,#0x00
	sjmp	00103$
00102$:
	C$BSH.c$126$2$3 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:126: gvuiTotalCount = (unsigned int)TH1;          // Read in Timer high byte
	mov	_gvuiTotalCount,_TH1
	mov	(_gvuiTotalCount + 1),#0x00
	C$BSH.c$127$2$3 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:127: gvuiTotalCount <<= 8;                        // Bit shift
	mov	(_gvuiTotalCount + 1),_gvuiTotalCount
	mov	_gvuiTotalCount,#0x00
	C$BSH.c$128$2$3 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:128: gvuiTotalCount += (unsigned int)TL1;         // Read in Timer low byte
	mov	r2,_TL1
	mov	r3,#0x00
	mov	a,r2
	add	a,_gvuiTotalCount
	mov	_gvuiTotalCount,a
	mov	a,r3
	addc	a,(_gvuiTotalCount + 1)
	mov	(_gvuiTotalCount + 1),a
	C$BSH.c$129$2$3 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:129: TL1 = 0;                                     // Reset Timer low byte
	mov	_TL1,#0x00
	C$BSH.c$130$2$3 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:130: TH1 = 0;                                     // Reset Timer high byte
	mov	_TH1,#0x00
	C$BSH.c$131$2$3 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:131: gbIntState = FALLING;                        // Look for a falling edge
	mov	_gbIntState,#0x00
	C$BSH.c$132$2$3 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:132: SFRPAGE   = CONFIG_PAGE;
	mov	_SFRPAGE,#0x0F
	C$BSH.c$133$2$3 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:133: IT01CF    = 0x07;
	mov	_IT01CF,#0x07
	C$BSH.c$134$2$3 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:134: SFRPAGE   = ACTIVE_PAGE;
	mov	_SFRPAGE,#0x00
00103$:
	C$BSH.c$137$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:137: TCON &= ~0x02;
	anl	_TCON,#0xFD
	pop	psw
	pop	ar3
	pop	ar2
	pop	acc
	C$BSH.c$138$1$1 ==.
	XG$INT0_ISR$0$0 ==.
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;uiADC_Count               Allocated with name '_main_uiADC_Count_1_1'
;fTemp                     Allocated with name '_main_fTemp_1_1'
;bArray                    Allocated with name '_main_bArray_1_1'
;i                         Allocated to registers r2 
;uiPeriod                  Allocated with name '_main_uiPeriod_1_1'
;uiDuty                    Allocated with name '_main_uiDuty_1_1'
;------------------------------------------------------------
	G$main$0$0 ==.
	C$BSH.c$144$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:144: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	C$BSH.c$148$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:148: BYTE bArray[14] = {""};
	C$BSH.c$153$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:153: gvuiLEDTimer = 0;
	C$BSH.c$154$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:154: gvuiDelayTimer = 0;
	C$BSH.c$155$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:155: gvcState = 0;\
	clr a
	mov _main_bArray_1_1,a
	mov _gvuiLEDTimer,a
	mov (_gvuiLEDTimer + 1),a
	mov _gvuiDelayTimer,a
	mov (_gvuiDelayTimer + 1),a
	mov _gvcState,a
	mov	_gbIntState,#0x01
	C$BSH.c$157$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:157: gvuiTotalCount = 48000;
	mov	_gvuiTotalCount,#0x80
	mov	(_gvuiTotalCount + 1),#0xBB
	C$BSH.c$159$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:159: Warm_Reset();
	lcall	_Warm_Reset
	C$BSH.c$160$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:160: Adjust_Power(0);                              // Output at 12.00 V
	mov	dptr,#0x0000
	lcall	_Adjust_Power
	C$BSH.c$161$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:161: INT0_INT_ENABLE;
	orl	_IE,#0x01
	C$BSH.c$162$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:162: do
00125$:
	C$BSH.c$165$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:165: uiADC_Count = Read_ADC(VOLTS);
	mov	dpl,#0x13
	lcall	_Read_ADC
	C$BSH.c$166$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:166: fTemp = (float)uiADC_Count;
	mov	_main_uiADC_Count_1_1,dpl
	mov	(_main_uiADC_Count_1_1 + 1),dph
	mov	dph,(_main_uiADC_Count_1_1 + 1)
	lcall	___uint2fs
	mov	_main_fTemp_1_1,dpl
	mov	(_main_fTemp_1_1 + 1),dph
	mov	(_main_fTemp_1_1 + 2),b
	mov	(_main_fTemp_1_1 + 3),a
	C$BSH.c$167$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:167: fTemp *= 2.5;
	push	_main_fTemp_1_1
	push	(_main_fTemp_1_1 + 1)
	push	(_main_fTemp_1_1 + 2)
	push	(_main_fTemp_1_1 + 3)
	mov	dptr,#0x0000
	mov	b,#0x20
	mov	a,#0x40
	lcall	___fsmul
	mov	_main_fTemp_1_1,dpl
	mov	(_main_fTemp_1_1 + 1),dph
	mov	(_main_fTemp_1_1 + 2),b
	mov	(_main_fTemp_1_1 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	C$BSH.c$168$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:168: fTemp /= 4095;
	clr	a
	push	acc
	mov	a,#0xF0
	push	acc
	mov	a,#0x7F
	push	acc
	mov	a,#0x45
	push	acc
	mov	dpl,_main_fTemp_1_1
	mov	dph,(_main_fTemp_1_1 + 1)
	mov	b,(_main_fTemp_1_1 + 2)
	mov	a,(_main_fTemp_1_1 + 3)
	lcall	___fsdiv
	mov	_main_fTemp_1_1,dpl
	mov	(_main_fTemp_1_1 + 1),dph
	mov	(_main_fTemp_1_1 + 2),b
	mov	(_main_fTemp_1_1 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	C$BSH.c$169$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:169: fTemp *= 1000;
	push	_main_fTemp_1_1
	push	(_main_fTemp_1_1 + 1)
	push	(_main_fTemp_1_1 + 2)
	push	(_main_fTemp_1_1 + 3)
	mov	dptr,#0x0000
	mov	b,#0x7A
	mov	a,#0x44
	lcall	___fsmul
	mov	_main_fTemp_1_1,dpl
	mov	(_main_fTemp_1_1 + 1),dph
	mov	(_main_fTemp_1_1 + 2),b
	mov	(_main_fTemp_1_1 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	C$BSH.c$170$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:170: uiADC_Count = (unsigned int)fTemp;
	mov	dpl,_main_fTemp_1_1
	mov	dph,(_main_fTemp_1_1 + 1)
	mov	b,(_main_fTemp_1_1 + 2)
	mov	a,(_main_fTemp_1_1 + 3)
	lcall	___fs2uint
	C$BSH.c$171$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:171: bArray[3] = (uiADC_Count % 10) + 0x30;
	mov	_main_uiADC_Count_1_1,dpl
	mov	(_main_uiADC_Count_1_1 + 1),dph
	mov	__moduint_PARM_2,#0x0A
	mov	(__moduint_PARM_2 + 1),#0x00
	lcall	__moduint
	mov	r2,dpl
	mov	a,#0x30
	add	a,r2
	mov	(_main_bArray_1_1 + 0x0003),a
	C$BSH.c$172$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:172: uiADC_Count /= 10;
	mov	__divuint_PARM_2,#0x0A
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,_main_uiADC_Count_1_1
	mov	dph,(_main_uiADC_Count_1_1 + 1)
	lcall	__divuint
	C$BSH.c$173$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:173: bArray[2] = (uiADC_Count % 10) + 0x30;
	mov	_main_uiADC_Count_1_1,dpl
	mov	(_main_uiADC_Count_1_1 + 1),dph
	mov	__moduint_PARM_2,#0x0A
	mov	(__moduint_PARM_2 + 1),#0x00
	lcall	__moduint
	mov	r2,dpl
	mov	a,#0x30
	add	a,r2
	mov	(_main_bArray_1_1 + 0x0002),a
	C$BSH.c$174$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:174: uiADC_Count /= 10;
	mov	__divuint_PARM_2,#0x0A
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,_main_uiADC_Count_1_1
	mov	dph,(_main_uiADC_Count_1_1 + 1)
	lcall	__divuint
	C$BSH.c$175$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:175: bArray[1] = (uiADC_Count % 10) + 0x30;
	mov	_main_uiADC_Count_1_1,dpl
	mov	(_main_uiADC_Count_1_1 + 1),dph
	mov	__moduint_PARM_2,#0x0A
	mov	(__moduint_PARM_2 + 1),#0x00
	lcall	__moduint
	mov	r2,dpl
	mov	a,#0x30
	add	a,r2
	mov	(_main_bArray_1_1 + 0x0001),a
	C$BSH.c$176$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:176: uiADC_Count /= 10;
	mov	__divuint_PARM_2,#0x0A
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,_main_uiADC_Count_1_1
	mov	dph,(_main_uiADC_Count_1_1 + 1)
	lcall	__divuint
	C$BSH.c$177$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:177: bArray[0] = (uiADC_Count % 10) + 0x30;
	mov	_main_uiADC_Count_1_1,dpl
	mov	(_main_uiADC_Count_1_1 + 1),dph
	mov	__moduint_PARM_2,#0x0A
	mov	(__moduint_PARM_2 + 1),#0x00
	lcall	__moduint
	mov	r2,dpl
	mov	a,#0x30
	add	a,r2
	mov	_main_bArray_1_1,a
	C$BSH.c$181$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:181: uiADC_Count = Read_ADC(AMPS);
	mov	dpl,#0x12
	lcall	_Read_ADC
	C$BSH.c$182$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:182: fTemp = (float)uiADC_Count;
	mov	_main_uiADC_Count_1_1,dpl
	mov	(_main_uiADC_Count_1_1 + 1),dph
	mov	dph,(_main_uiADC_Count_1_1 + 1)
	lcall	___uint2fs
	mov	_main_fTemp_1_1,dpl
	mov	(_main_fTemp_1_1 + 1),dph
	mov	(_main_fTemp_1_1 + 2),b
	mov	(_main_fTemp_1_1 + 3),a
	C$BSH.c$183$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:183: fTemp *= 2.5;
	push	_main_fTemp_1_1
	push	(_main_fTemp_1_1 + 1)
	push	(_main_fTemp_1_1 + 2)
	push	(_main_fTemp_1_1 + 3)
	mov	dptr,#0x0000
	mov	b,#0x20
	mov	a,#0x40
	lcall	___fsmul
	mov	_main_fTemp_1_1,dpl
	mov	(_main_fTemp_1_1 + 1),dph
	mov	(_main_fTemp_1_1 + 2),b
	mov	(_main_fTemp_1_1 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	C$BSH.c$184$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:184: fTemp /= 4095;
	clr	a
	push	acc
	mov	a,#0xF0
	push	acc
	mov	a,#0x7F
	push	acc
	mov	a,#0x45
	push	acc
	mov	dpl,_main_fTemp_1_1
	mov	dph,(_main_fTemp_1_1 + 1)
	mov	b,(_main_fTemp_1_1 + 2)
	mov	a,(_main_fTemp_1_1 + 3)
	lcall	___fsdiv
	mov	_main_fTemp_1_1,dpl
	mov	(_main_fTemp_1_1 + 1),dph
	mov	(_main_fTemp_1_1 + 2),b
	mov	(_main_fTemp_1_1 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	C$BSH.c$185$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:185: fTemp *= 100;
	push	_main_fTemp_1_1
	push	(_main_fTemp_1_1 + 1)
	push	(_main_fTemp_1_1 + 2)
	push	(_main_fTemp_1_1 + 3)
	mov	dptr,#0x0000
	mov	b,#0xC8
	mov	a,#0x42
	lcall	___fsmul
	mov	_main_fTemp_1_1,dpl
	mov	(_main_fTemp_1_1 + 1),dph
	mov	(_main_fTemp_1_1 + 2),b
	mov	(_main_fTemp_1_1 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	C$BSH.c$186$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:186: uiADC_Count = (unsigned int)fTemp;
	mov	dpl,_main_fTemp_1_1
	mov	dph,(_main_fTemp_1_1 + 1)
	mov	b,(_main_fTemp_1_1 + 2)
	mov	a,(_main_fTemp_1_1 + 3)
	lcall	___fs2uint
	C$BSH.c$187$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:187: bArray[7] = (uiADC_Count % 10) + 0x30;
	mov	_main_uiADC_Count_1_1,dpl
	mov	(_main_uiADC_Count_1_1 + 1),dph
	mov	__moduint_PARM_2,#0x0A
	mov	(__moduint_PARM_2 + 1),#0x00
	lcall	__moduint
	mov	r2,dpl
	mov	a,#0x30
	add	a,r2
	mov	(_main_bArray_1_1 + 0x0007),a
	C$BSH.c$188$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:188: uiADC_Count /= 10;
	mov	__divuint_PARM_2,#0x0A
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,_main_uiADC_Count_1_1
	mov	dph,(_main_uiADC_Count_1_1 + 1)
	lcall	__divuint
	C$BSH.c$189$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:189: bArray[6] = (uiADC_Count % 10) + 0x30;
	mov	_main_uiADC_Count_1_1,dpl
	mov	(_main_uiADC_Count_1_1 + 1),dph
	mov	__moduint_PARM_2,#0x0A
	mov	(__moduint_PARM_2 + 1),#0x00
	lcall	__moduint
	mov	r2,dpl
	mov	a,#0x30
	add	a,r2
	mov	(_main_bArray_1_1 + 0x0006),a
	C$BSH.c$190$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:190: uiADC_Count /= 10;
	mov	__divuint_PARM_2,#0x0A
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,_main_uiADC_Count_1_1
	mov	dph,(_main_uiADC_Count_1_1 + 1)
	lcall	__divuint
	C$BSH.c$191$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:191: bArray[5] = (uiADC_Count % 10) + 0x30;
	mov	_main_uiADC_Count_1_1,dpl
	mov	(_main_uiADC_Count_1_1 + 1),dph
	mov	__moduint_PARM_2,#0x0A
	mov	(__moduint_PARM_2 + 1),#0x00
	lcall	__moduint
	mov	r2,dpl
	mov	a,#0x30
	add	a,r2
	mov	(_main_bArray_1_1 + 0x0005),a
	C$BSH.c$192$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:192: uiADC_Count /= 10;
	mov	__divuint_PARM_2,#0x0A
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,_main_uiADC_Count_1_1
	mov	dph,(_main_uiADC_Count_1_1 + 1)
	lcall	__divuint
	C$BSH.c$193$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:193: bArray[4] = (uiADC_Count % 10) + 0x30;
	mov	_main_uiADC_Count_1_1,dpl
	mov	(_main_uiADC_Count_1_1 + 1),dph
	mov	__moduint_PARM_2,#0x0A
	mov	(__moduint_PARM_2 + 1),#0x00
	lcall	__moduint
	mov	r2,dpl
	mov	r3,dph
	mov	a,#0x30
	add	a,r2
	mov	r2,a
	mov	(_main_bArray_1_1 + 0x0004),r2
	C$BSH.c$194$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:194: if(bArray[4] == 0x30)
	cjne	r2,#0x30,00106$
	C$BSH.c$196$3$3 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:196: bArray[4] = ' ';
	mov	(_main_bArray_1_1 + 0x0004),#0x20
	C$BSH.c$197$3$3 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:197: if(bArray[5] == 0x30)
	mov	a,#0x30
	cjne	a,(_main_bArray_1_1 + 0x0005),00106$
	C$BSH.c$199$4$4 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:199: bArray[5] = ' ';
	mov	(_main_bArray_1_1 + 0x0005),#0x20
	C$BSH.c$200$4$4 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:200: if(bArray[6] == 0x30)
	mov	a,#0x30
	cjne	a,(_main_bArray_1_1 + 0x0006),00106$
	C$BSH.c$201$4$4 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:201: bArray[6] = ' ';
	mov	(_main_bArray_1_1 + 0x0006),#0x20
00106$:
	C$BSH.c$205$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:205: INT0_INT_DISABLE;
	anl	_IE,#0xFE
	anl	_IE,#0xFE
	C$BSH.c$206$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:206: uiPeriod = gvuiTotalCount;
	mov	_main_uiPeriod_1_1,_gvuiTotalCount
	mov	(_main_uiPeriod_1_1 + 1),(_gvuiTotalCount + 1)
	C$BSH.c$207$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:207: uiDuty = gvuiDutyCount;
	mov	_main_uiDuty_1_1,_gvuiDutyCount
	mov	(_main_uiDuty_1_1 + 1),(_gvuiDutyCount + 1)
	C$BSH.c$208$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:208: INT0_INT_ENABLE;
	orl	_IE,#0x01
	C$BSH.c$211$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:211: fTemp = (float)uiDuty;
	mov	dpl,_main_uiDuty_1_1
	mov	dph,(_main_uiDuty_1_1 + 1)
	lcall	___uint2fs
	mov	_main_fTemp_1_1,dpl
	mov	(_main_fTemp_1_1 + 1),dph
	mov	(_main_fTemp_1_1 + 2),b
	mov	(_main_fTemp_1_1 + 3),a
	C$BSH.c$212$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:212: fTemp = fTemp / (float)uiPeriod;
	mov	dpl,_main_uiPeriod_1_1
	mov	dph,(_main_uiPeriod_1_1 + 1)
	lcall	___uint2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,_main_fTemp_1_1
	mov	dph,(_main_fTemp_1_1 + 1)
	mov	b,(_main_fTemp_1_1 + 2)
	mov	a,(_main_fTemp_1_1 + 3)
	lcall	___fsdiv
	mov	_main_fTemp_1_1,dpl
	mov	(_main_fTemp_1_1 + 1),dph
	mov	(_main_fTemp_1_1 + 2),b
	mov	(_main_fTemp_1_1 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	C$BSH.c$213$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:213: fTemp *= 100;
	push	_main_fTemp_1_1
	push	(_main_fTemp_1_1 + 1)
	push	(_main_fTemp_1_1 + 2)
	push	(_main_fTemp_1_1 + 3)
	mov	dptr,#0x0000
	mov	b,#0xC8
	mov	a,#0x42
	lcall	___fsmul
	mov	_main_fTemp_1_1,dpl
	mov	(_main_fTemp_1_1 + 1),dph
	mov	(_main_fTemp_1_1 + 2),b
	mov	(_main_fTemp_1_1 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	C$BSH.c$214$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:214: uiDuty = (unsigned int)fTemp;
	mov	dpl,_main_fTemp_1_1
	mov	dph,(_main_fTemp_1_1 + 1)
	mov	b,(_main_fTemp_1_1 + 2)
	mov	a,(_main_fTemp_1_1 + 3)
	lcall	___fs2uint
	C$BSH.c$215$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:215: bArray[9] = (uiDuty % 10) + 0x30;
	mov	_main_uiDuty_1_1,dpl
	mov	(_main_uiDuty_1_1 + 1),dph
	mov	__moduint_PARM_2,#0x0A
	mov	(__moduint_PARM_2 + 1),#0x00
	lcall	__moduint
	mov	r2,dpl
	mov	a,#0x30
	add	a,r2
	mov	(_main_bArray_1_1 + 0x0009),a
	C$BSH.c$216$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:216: uiDuty /= 10;
	mov	__divuint_PARM_2,#0x0A
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,_main_uiDuty_1_1
	mov	dph,(_main_uiDuty_1_1 + 1)
	lcall	__divuint
	C$BSH.c$217$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:217: bArray[8] = (uiDuty % 10) + 0x30;
	mov	_main_uiDuty_1_1,dpl
	mov	(_main_uiDuty_1_1 + 1),dph
	mov	__moduint_PARM_2,#0x0A
	mov	(__moduint_PARM_2 + 1),#0x00
	lcall	__moduint
	mov	r2,dpl
	mov	r3,dph
	mov	a,#0x30
	add	a,r2
	mov	r2,a
	mov	(_main_bArray_1_1 + 0x0008),r2
	C$BSH.c$218$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:218: if(bArray[8] == 0x30)
	cjne	r2,#0x30,00108$
	C$BSH.c$219$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:219: bArray[8] = ' ';
	mov	(_main_bArray_1_1 + 0x0008),#0x20
00108$:
	C$BSH.c$223$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:223: fTemp = (float)uiPeriod;
	mov	dpl,_main_uiPeriod_1_1
	mov	dph,(_main_uiPeriod_1_1 + 1)
	lcall	___uint2fs
	mov	_main_fTemp_1_1,dpl
	mov	(_main_fTemp_1_1 + 1),dph
	mov	(_main_fTemp_1_1 + 2),b
	mov	(_main_fTemp_1_1 + 3),a
	C$BSH.c$224$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:224: fTemp = 48000000 / fTemp;
	push	_main_fTemp_1_1
	push	(_main_fTemp_1_1 + 1)
	push	(_main_fTemp_1_1 + 2)
	push	(_main_fTemp_1_1 + 3)
	mov	dptr,#0x1B00
	mov	b,#0x37
	mov	a,#0x4C
	lcall	___fsdiv
	mov	_main_fTemp_1_1,dpl
	mov	(_main_fTemp_1_1 + 1),dph
	mov	(_main_fTemp_1_1 + 2),b
	mov	(_main_fTemp_1_1 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	C$BSH.c$225$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:225: fTemp += 0.5;
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#0x3F
	push	acc
	mov	dpl,_main_fTemp_1_1
	mov	dph,(_main_fTemp_1_1 + 1)
	mov	b,(_main_fTemp_1_1 + 2)
	mov	a,(_main_fTemp_1_1 + 3)
	lcall	___fsadd
	mov	_main_fTemp_1_1,dpl
	mov	(_main_fTemp_1_1 + 1),dph
	mov	(_main_fTemp_1_1 + 2),b
	mov	(_main_fTemp_1_1 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	C$BSH.c$226$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:226: uiPeriod = (unsigned int)fTemp;
	mov	dpl,_main_fTemp_1_1
	mov	dph,(_main_fTemp_1_1 + 1)
	mov	b,(_main_fTemp_1_1 + 2)
	mov	a,(_main_fTemp_1_1 + 3)
	lcall	___fs2uint
	C$BSH.c$227$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:227: bArray[13] = (uiPeriod % 10) + 0x30;
	mov	_main_uiPeriod_1_1,dpl
	mov	(_main_uiPeriod_1_1 + 1),dph
	mov	__moduint_PARM_2,#0x0A
	mov	(__moduint_PARM_2 + 1),#0x00
	lcall	__moduint
	mov	r2,dpl
	mov	a,#0x30
	add	a,r2
	mov	(_main_bArray_1_1 + 0x000d),a
	C$BSH.c$228$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:228: uiPeriod /= 10;
	mov	__divuint_PARM_2,#0x0A
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,_main_uiPeriod_1_1
	mov	dph,(_main_uiPeriod_1_1 + 1)
	lcall	__divuint
	C$BSH.c$229$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:229: bArray[12] = (uiPeriod % 10) + 0x30;
	mov	_main_uiPeriod_1_1,dpl
	mov	(_main_uiPeriod_1_1 + 1),dph
	mov	__moduint_PARM_2,#0x0A
	mov	(__moduint_PARM_2 + 1),#0x00
	lcall	__moduint
	mov	r2,dpl
	mov	a,#0x30
	add	a,r2
	mov	(_main_bArray_1_1 + 0x000c),a
	C$BSH.c$230$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:230: uiPeriod /= 10;
	mov	__divuint_PARM_2,#0x0A
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,_main_uiPeriod_1_1
	mov	dph,(_main_uiPeriod_1_1 + 1)
	lcall	__divuint
	C$BSH.c$231$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:231: bArray[11] = (uiPeriod % 10) + 0x30;
	mov	_main_uiPeriod_1_1,dpl
	mov	(_main_uiPeriod_1_1 + 1),dph
	mov	__moduint_PARM_2,#0x0A
	mov	(__moduint_PARM_2 + 1),#0x00
	lcall	__moduint
	mov	r2,dpl
	mov	a,#0x30
	add	a,r2
	mov	(_main_bArray_1_1 + 0x000b),a
	C$BSH.c$232$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:232: uiPeriod /= 10;
	mov	__divuint_PARM_2,#0x0A
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,_main_uiPeriod_1_1
	mov	dph,(_main_uiPeriod_1_1 + 1)
	lcall	__divuint
	C$BSH.c$233$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:233: bArray[10] = (uiPeriod % 10) + 0x30;
	mov	_main_uiPeriod_1_1,dpl
	mov	(_main_uiPeriod_1_1 + 1),dph
	mov	__moduint_PARM_2,#0x0A
	mov	(__moduint_PARM_2 + 1),#0x00
	lcall	__moduint
	mov	r2,dpl
	mov	r3,dph
	mov	a,#0x30
	add	a,r2
	mov	r2,a
	mov	(_main_bArray_1_1 + 0x000a),r2
	C$BSH.c$234$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:234: if(bArray[10] == 0x30)
	cjne	r2,#0x30,00110$
	C$BSH.c$235$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:235: bArray[10] = ' ';
	mov	(_main_bArray_1_1 + 0x000a),#0x20
00110$:
	C$BSH.c$238$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:238: switch(gvcState)
	mov	r2,_gvcState
	cjne	r2,#0x00,00165$
	sjmp	00111$
00165$:
	cjne	r2,#0x01,00166$
	sjmp	00112$
00166$:
	cjne	r2,#0x02,00167$
	sjmp	00113$
00167$:
	cjne	r2,#0x03,00168$
	ljmp	00114$
00168$:
	cjne	r2,#0x04,00169$
	ljmp	00115$
00169$:
	cjne	r2,#0x05,00170$
	ljmp	00116$
00170$:
	cjne	r2,#0x06,00171$
	ljmp	00117$
00171$:
	cjne	r2,#0x07,00172$
	ljmp	00118$
00172$:
	cjne	r2,#0x08,00173$
	ljmp	00119$
00173$:
	cjne	r2,#0x09,00174$
	ljmp	00120$
00174$:
	cjne	r2,#0x41,00175$
	ljmp	00121$
00175$:
	cjne	r2,#0x42,00176$
	ljmp	00122$
00176$:
	ljmp	00125$
	C$BSH.c$240$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:240: case 0:                                                 // 150 F
00111$:
	C$BSH.c$241$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:241: SFRPAGE   = CONFIG_PAGE;
	mov	_SFRPAGE,#0x0F
	C$BSH.c$242$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:242: PCA0PWM   |= 0x80;           // ARSEL = 1
	orl	_PCA0PWM,#0x80
	C$BSH.c$243$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:243: SFRPAGE   = ACTIVE_PAGE;
	mov	_SFRPAGE,#0x00
	C$BSH.c$244$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:244: PCA0CPL0  = 0xCC;            // 15% 
	mov	_PCA0CPL0,#0xCC
	C$BSH.c$245$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:245: PCA0CPH0  = 0x06;
	mov	_PCA0CPH0,#0x06
	C$BSH.c$246$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:246: SFRPAGE   = CONFIG_PAGE;
	mov	_SFRPAGE,#0x0F
	C$BSH.c$247$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:247: PCA0PWM   &= ~0x80;          // ARSEL = 0
	anl	_PCA0PWM,#0x7F
	C$BSH.c$248$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:248: SFRPAGE   = ACTIVE_PAGE;
	mov	_SFRPAGE,#0x00
	C$BSH.c$249$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:249: gvcState = 10;
	mov	_gvcState,#0x0A
	C$BSH.c$250$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:250: break;
	ljmp	00125$
	C$BSH.c$251$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:251: case 1:                                                 // 200 F
00112$:
	C$BSH.c$252$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:252: SFRPAGE   = CONFIG_PAGE;
	mov	_SFRPAGE,#0x0F
	C$BSH.c$253$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:253: PCA0PWM   |= 0x80;           // ARSEL = 1
	orl	_PCA0PWM,#0x80
	C$BSH.c$254$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:254: SFRPAGE   = ACTIVE_PAGE;
	mov	_SFRPAGE,#0x00
	C$BSH.c$255$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:255: PCA0CPL0  = 0xFF;            // 25% 
	mov	_PCA0CPL0,#0xFF
	C$BSH.c$256$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:256: PCA0CPH0  = 0x05;
	mov	_PCA0CPH0,#0x05
	C$BSH.c$257$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:257: SFRPAGE   = CONFIG_PAGE;
	mov	_SFRPAGE,#0x0F
	C$BSH.c$258$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:258: PCA0PWM   &= ~0x80;          // ARSEL = 0
	anl	_PCA0PWM,#0x7F
	C$BSH.c$259$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:259: SFRPAGE   = ACTIVE_PAGE;
	mov	_SFRPAGE,#0x00
	C$BSH.c$260$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:260: gvcState = 10;
	mov	_gvcState,#0x0A
	C$BSH.c$261$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:261: break;
	ljmp	00125$
	C$BSH.c$262$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:262: case 2:                                                 // 250 F
00113$:
	C$BSH.c$263$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:263: SFRPAGE   = CONFIG_PAGE;
	mov	_SFRPAGE,#0x0F
	C$BSH.c$264$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:264: PCA0PWM   |= 0x80;           // ARSEL = 1
	orl	_PCA0PWM,#0x80
	C$BSH.c$265$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:265: SFRPAGE   = ACTIVE_PAGE;
	mov	_SFRPAGE,#0x00
	C$BSH.c$266$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:266: PCA0CPL0  = 0x32;            // 35% 
	mov	_PCA0CPL0,#0x32
	C$BSH.c$267$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:267: PCA0CPH0  = 0x05;
	mov	_PCA0CPH0,#0x05
	C$BSH.c$268$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:268: SFRPAGE   = CONFIG_PAGE;
	mov	_SFRPAGE,#0x0F
	C$BSH.c$269$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:269: PCA0PWM   &= ~0x80;          // ARSEL = 0
	anl	_PCA0PWM,#0x7F
	C$BSH.c$270$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:270: SFRPAGE   = ACTIVE_PAGE;
	mov	_SFRPAGE,#0x00
	C$BSH.c$271$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:271: gvcState = 10;
	mov	_gvcState,#0x0A
	C$BSH.c$272$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:272: break;
	ljmp	00125$
	C$BSH.c$273$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:273: case 3:                                                 // 300 F
00114$:
	C$BSH.c$274$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:274: SFRPAGE   = CONFIG_PAGE;
	mov	_SFRPAGE,#0x0F
	C$BSH.c$275$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:275: PCA0PWM   |= 0x80;           // ARSEL = 1
	orl	_PCA0PWM,#0x80
	C$BSH.c$276$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:276: SFRPAGE   = ACTIVE_PAGE;
	mov	_SFRPAGE,#0x00
	C$BSH.c$277$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:277: PCA0CPL0  = 0x35;            // 45% 
	mov	_PCA0CPL0,#0x35
	C$BSH.c$278$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:278: PCA0CPH0  = 0x04;
	mov	_PCA0CPH0,#0x04
	C$BSH.c$279$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:279: SFRPAGE   = CONFIG_PAGE;
	mov	_SFRPAGE,#0x0F
	C$BSH.c$280$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:280: PCA0PWM   &= ~0x80;          // ARSEL = 0
	anl	_PCA0PWM,#0x7F
	C$BSH.c$281$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:281: SFRPAGE   = ACTIVE_PAGE;
	mov	_SFRPAGE,#0x00
	C$BSH.c$282$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:282: gvcState = 10;
	mov	_gvcState,#0x0A
	C$BSH.c$283$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:283: break;
	ljmp	00125$
	C$BSH.c$284$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:284: case 4:                                                 // 350 F
00115$:
	C$BSH.c$285$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:285: SFRPAGE   = CONFIG_PAGE;
	mov	_SFRPAGE,#0x0F
	C$BSH.c$286$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:286: PCA0PWM   |= 0x80;           // ARSEL = 1
	orl	_PCA0PWM,#0x80
	C$BSH.c$287$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:287: SFRPAGE   = ACTIVE_PAGE;
	mov	_SFRPAGE,#0x00
	C$BSH.c$288$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:288: PCA0CPL0  = 0x99;            // 55% 
	mov	_PCA0CPL0,#0x99
	C$BSH.c$289$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:289: PCA0CPH0  = 0x03;
	mov	_PCA0CPH0,#0x03
	C$BSH.c$290$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:290: SFRPAGE   = CONFIG_PAGE;
	mov	_SFRPAGE,#0x0F
	C$BSH.c$291$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:291: PCA0PWM   &= ~0x80;          // ARSEL = 0
	anl	_PCA0PWM,#0x7F
	C$BSH.c$292$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:292: SFRPAGE   = ACTIVE_PAGE;
	mov	_SFRPAGE,#0x00
	C$BSH.c$293$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:293: gvcState = 10;
	mov	_gvcState,#0x0A
	C$BSH.c$294$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:294: break;
	ljmp	00125$
	C$BSH.c$295$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:295: case 5:                                                 // 400 F
00116$:
	C$BSH.c$296$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:296: SFRPAGE   = CONFIG_PAGE;
	mov	_SFRPAGE,#0x0F
	C$BSH.c$297$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:297: PCA0PWM   |= 0x80;           // ARSEL = 1
	orl	_PCA0PWM,#0x80
	C$BSH.c$298$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:298: SFRPAGE   = ACTIVE_PAGE;
	mov	_SFRPAGE,#0x00
	C$BSH.c$299$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:299: PCA0CPL0  = 0xCC;            // 65% 
	mov	_PCA0CPL0,#0xCC
	C$BSH.c$300$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:300: PCA0CPH0  = 0x02;
	mov	_PCA0CPH0,#0x02
	C$BSH.c$301$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:301: SFRPAGE   = CONFIG_PAGE;
	mov	_SFRPAGE,#0x0F
	C$BSH.c$302$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:302: PCA0PWM   &= ~0x80;          // ARSEL = 0
	anl	_PCA0PWM,#0x7F
	C$BSH.c$303$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:303: SFRPAGE   = ACTIVE_PAGE;
	mov	_SFRPAGE,#0x00
	C$BSH.c$304$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:304: gvcState = 10;
	mov	_gvcState,#0x0A
	C$BSH.c$305$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:305: break;
	ljmp	00125$
	C$BSH.c$306$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:306: case 6:                                                 // 450 F
00117$:
	C$BSH.c$307$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:307: SFRPAGE   = CONFIG_PAGE;
	mov	_SFRPAGE,#0x0F
	C$BSH.c$308$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:308: PCA0PWM   |= 0x80;           // ARSEL = 1
	orl	_PCA0PWM,#0x80
	C$BSH.c$309$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:309: SFRPAGE   = ACTIVE_PAGE;
	mov	_SFRPAGE,#0x00
	C$BSH.c$310$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:310: PCA0CPL0  = 0xFF;            // 75% 
	mov	_PCA0CPL0,#0xFF
	C$BSH.c$311$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:311: PCA0CPH0  = 0x01;
	mov	_PCA0CPH0,#0x01
	C$BSH.c$312$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:312: SFRPAGE   = CONFIG_PAGE;
	mov	_SFRPAGE,#0x0F
	C$BSH.c$313$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:313: PCA0PWM   &= ~0x80;          // ARSEL = 0
	anl	_PCA0PWM,#0x7F
	C$BSH.c$314$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:314: SFRPAGE   = ACTIVE_PAGE;
	mov	_SFRPAGE,#0x00
	C$BSH.c$315$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:315: gvcState = 10;
	mov	_gvcState,#0x0A
	C$BSH.c$316$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:316: break;
	ljmp	00125$
	C$BSH.c$317$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:317: case 7:                                                 // 500 F
00118$:
	C$BSH.c$318$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:318: SFRPAGE   = CONFIG_PAGE;
	mov	_SFRPAGE,#0x0F
	C$BSH.c$319$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:319: PCA0PWM   |= 0x80;           // ARSEL = 1
	orl	_PCA0PWM,#0x80
	C$BSH.c$320$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:320: SFRPAGE   = ACTIVE_PAGE;
	mov	_SFRPAGE,#0x00
	C$BSH.c$321$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:321: PCA0CPL0  = 0x32;            // 85% 
	mov	_PCA0CPL0,#0x32
	C$BSH.c$322$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:322: PCA0CPH0  = 0x01;
	mov	_PCA0CPH0,#0x01
	C$BSH.c$323$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:323: SFRPAGE   = CONFIG_PAGE;
	mov	_SFRPAGE,#0x0F
	C$BSH.c$324$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:324: PCA0PWM   &= ~0x80;          // ARSEL = 0
	anl	_PCA0PWM,#0x7F
	C$BSH.c$325$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:325: SFRPAGE   = ACTIVE_PAGE;
	mov	_SFRPAGE,#0x00
	C$BSH.c$326$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:326: gvcState = 10;
	mov	_gvcState,#0x0A
	C$BSH.c$327$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:327: break;
	ljmp	00125$
	C$BSH.c$328$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:328: case 8:                                                 // Clean F
00119$:
	C$BSH.c$329$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:329: SFRPAGE   = CONFIG_PAGE;
	mov	_SFRPAGE,#0x0F
	C$BSH.c$330$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:330: PCA0PWM   |= 0x80;           // ARSEL = 1
	orl	_PCA0PWM,#0x80
	C$BSH.c$331$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:331: SFRPAGE   = ACTIVE_PAGE;
	mov	_SFRPAGE,#0x00
	C$BSH.c$332$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:332: PCA0CPL0  = 0x65;            // 95% 
	mov	_PCA0CPL0,#0x65
	C$BSH.c$333$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:333: PCA0CPH0  = 0x00;
	mov	_PCA0CPH0,#0x00
	C$BSH.c$334$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:334: SFRPAGE   = CONFIG_PAGE;
	mov	_SFRPAGE,#0x0F
	C$BSH.c$335$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:335: PCA0PWM   &= ~0x80;          // ARSEL = 0
	anl	_PCA0PWM,#0x7F
	C$BSH.c$336$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:336: SFRPAGE   = ACTIVE_PAGE;
	mov	_SFRPAGE,#0x00
	C$BSH.c$337$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:337: gvcState = 10;
	mov	_gvcState,#0x0A
	C$BSH.c$338$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:338: break;
	ljmp	00125$
	C$BSH.c$339$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:339: case 9:
00120$:
	C$BSH.c$340$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:340: UART0_INT_DISABLE;
	anl	_IE,#0xEF
	anl	_IE,#0xEF
	C$BSH.c$342$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:342: putchar0('$');
	mov	dpl,#0x24
	lcall	_putchar0
	C$BSH.c$343$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:343: for(i = 0; i < 14; i++)
	mov	r2,#0x00
00128$:
	cjne	r2,#0x0E,00177$
00177$:
	jnc	00131$
	C$BSH.c$344$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:344: putchar0(bArray[i]);
	mov	a,r2
	add	a,#_main_bArray_1_1
	mov	r0,a
	mov	dpl,@r0
	push	ar2
	lcall	_putchar0
	pop	ar2
	C$BSH.c$343$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:343: for(i = 0; i < 14; i++)
	inc	r2
	sjmp	00128$
00131$:
	C$BSH.c$345$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:345: putchar0('*');
	mov	dpl,#0x2A
	lcall	_putchar0
	C$BSH.c$346$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:346: gvcState = 10;
	mov	_gvcState,#0x0A
	C$BSH.c$348$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:348: UART0_INT_ENABLE;
	orl	_IE,#0x10
	C$BSH.c$349$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:349: break;
	ljmp	00125$
	C$BSH.c$351$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:351: case 'A':
00121$:
	C$BSH.c$352$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:352: Adjust_Power(39924);                              // Output at 12.00 V
	mov	dptr,#0x9BF4
	lcall	_Adjust_Power
	C$BSH.c$353$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:353: break;
	ljmp	00125$
	C$BSH.c$354$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:354: case 'B':
00122$:
	C$BSH.c$355$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:355: Adjust_Power(0);                                  // Output at 0 V
	mov	dptr,#0x0000
	lcall	_Adjust_Power
	C$BSH.c$356$3$5 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:356: break;
	C$BSH.c$362$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:362: }while(1);
	C$BSH.c$363$1$1 ==.
	XG$main$0$0 ==.
	ljmp	00125$
;------------------------------------------------------------
;Allocation info for local variables in function 'Read_ADC'
;------------------------------------------------------------
;bChannel                  Allocated to registers r2 
;j                         Allocated to registers r5 r6 
;uiSum                     Allocated to registers r3 r4 
;------------------------------------------------------------
	G$Read_ADC$0$0 ==.
	C$BSH.c$366$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:366: unsigned int Read_ADC(BYTE bChannel)
;	-----------------------------------------
;	 function Read_ADC
;	-----------------------------------------
_Read_ADC:
	mov	r2,dpl
	C$BSH.c$369$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:369: unsigned int uiSum = 0;
	mov	r3,#0x00
	mov	r4,#0x00
	C$BSH.c$371$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:371: for(j = 0; j < 16; j++)                    // Sample 16 times
	mov	r5,#0x00
	mov	r6,#0x00
00104$:
	clr	c
	mov	a,r5
	subb	a,#0x10
	mov	a,r6
	subb	a,#0x00
	jnc	00107$
	C$BSH.c$373$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:373: ADC0CN &= ~0x20;                         // Clear interrupt flag
	anl	_ADC0CN,#0xDF
	C$BSH.c$374$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:374: ADC0MX = bChannel;
	mov	_ADC0MX,r2
	C$BSH.c$375$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:375: NOP();
	 NOP 
	C$BSH.c$376$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:376: NOP();
	 NOP 
	C$BSH.c$377$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:377: NOP();
	 NOP 
	C$BSH.c$378$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:378: NOP();
	 NOP 
	C$BSH.c$379$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:379: NOP();
	 NOP 
	C$BSH.c$380$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:380: NOP();
	 NOP 
	C$BSH.c$381$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:381: NOP();
	 NOP 
	C$BSH.c$382$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:382: NOP();
	 NOP 
	C$BSH.c$383$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:383: NOP();
	 NOP 
	C$BSH.c$384$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:384: NOP();
	 NOP 
	C$BSH.c$385$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:385: ADC0CN |= 0x10;
	orl	_ADC0CN,#0x10
	C$BSH.c$386$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:386: while((ADC0CN & 0x20) == 0x00);          // Wait for conversion to complete
00101$:
	mov	a,_ADC0CN
	jnb	acc.5,00101$
	C$BSH.c$387$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:387: ADC0CN &= ~0x20;                         // Clear interrupt flag
	anl	_ADC0CN,#0xDF
	C$BSH.c$388$2$2 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:388: uiSum += ADC0;
	mov	a,_ADC0
	add	a,r3
	mov	r3,a
	mov	a,(_ADC0 >> 8)
	addc	a,r4
	mov	r4,a
	C$BSH.c$371$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:371: for(j = 0; j < 16; j++)                    // Sample 16 times
	inc	r5
	cjne	r5,#0x00,00104$
	inc	r6
	sjmp	00104$
00107$:
	C$BSH.c$390$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:390: uiSum /= 16; 
	mov	a,r4
	swap	a
	xch	a,r3
	swap	a
	anl	a,#0x0f
	xrl	a,r3
	xch	a,r3
	anl	a,#0x0f
	xch	a,r3
	xrl	a,r3
	xch	a,r3
	C$BSH.c$391$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:391: return(uiSum);
	C$BSH.c$392$1$1 ==.
	XG$Read_ADC$0$0 ==.
	mov	dpl,r3
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Adjust_Power'
;------------------------------------------------------------
;uiVolts                   Allocated to registers r2 r3 
;bPage                     Allocated to registers r4 
;------------------------------------------------------------
	G$Adjust_Power$0$0 ==.
	C$BSH.c$397$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:397: void Adjust_Power(unsigned int uiVolts)
;	-----------------------------------------
;	 function Adjust_Power
;	-----------------------------------------
_Adjust_Power:
	mov	r2,dpl
	mov	r3,dph
	C$BSH.c$401$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:401: bPage = SFRPAGE;
	mov	r4,_SFRPAGE
	C$BSH.c$402$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:402: SFRPAGE = ACTIVE_PAGE;
	mov	_SFRPAGE,#0x00
	C$BSH.c$403$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:403: SPI0CFG = 0x40;                                          // Clock low in idle state
	mov	_SPI0CFG,#0x40
	C$BSH.c$404$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:404: NOP();
	 NOP 
	C$BSH.c$405$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:405: NOP();
	 NOP 
	C$BSH.c$406$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:406: DAC1_SEL = 0;
	clr	_DAC1_SEL
	C$BSH.c$407$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:407: NOP();
	 NOP 
	C$BSH.c$408$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:408: NOP();
	 NOP 
	C$BSH.c$409$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:409: SPI0DAT = (BYTE)(uiVolts >> 8);
	mov	_SPI0DAT,r3
	C$BSH.c$410$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:410: while(!SPIF);                                          // Step1.3: Wait for end of transfer
00101$:
	C$BSH.c$411$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:411: SPIF = 0;                                              // Step1.4: Clear the SPI intr. flag
	jbc	_SPIF,00113$
	sjmp	00101$
00113$:
	C$BSH.c$412$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:412: SPI0DAT = (BYTE)(uiVolts);
	mov	_SPI0DAT,r2
	C$BSH.c$413$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:413: while(!SPIF);                                            // Step1.3: Wait for end of transfer
00104$:
	C$BSH.c$414$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:414: SPIF = 0;                                                // Step1.4: Clear the SPI intr. flag
	jbc	_SPIF,00114$
	sjmp	00104$
00114$:
	C$BSH.c$415$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:415: DAC1_SEL = 1;
	setb	_DAC1_SEL
	C$BSH.c$416$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:416: SFRPAGE = bPage;       
	mov	_SFRPAGE,r4
	C$BSH.c$417$1$1 ==.
	XG$Adjust_Power$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar0'
;------------------------------------------------------------
;bChar                     Allocated to registers r2 
;bPage                     Allocated to registers r3 
;------------------------------------------------------------
	G$putchar0$0$0 ==.
	C$BSH.c$431$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:431: void putchar0(BYTE bChar)
;	-----------------------------------------
;	 function putchar0
;	-----------------------------------------
_putchar0:
	mov	r2,dpl
	C$BSH.c$434$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:434: bPage = SFRPAGE;
	mov	r3,_SFRPAGE
	C$BSH.c$435$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:435: SFRPAGE = 0x00;                                // Active page
	mov	_SFRPAGE,#0x00
	C$BSH.c$436$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:436: SBUF0 = bChar;                                 // Transmit data
	mov	_SBUF0,r2
	C$BSH.c$437$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:437: while(!TI0);                                   // Wait for last character to be transmited, TI0 set to 1 after data has been transmitted
00101$:
	C$BSH.c$438$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:438: TI0 = 0;                                       // Clear TI0 Flag
	jbc	_TI0,00108$
	sjmp	00101$
00108$:
	C$BSH.c$439$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:439: SFRPAGE = bPage;
	mov	_SFRPAGE,r3
	C$BSH.c$440$1$1 ==.
	XG$putchar0$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Warm_Reset'
;------------------------------------------------------------
;------------------------------------------------------------
	G$Warm_Reset$0$0 ==.
	C$BSH.c$444$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:444: void Warm_Reset(void)
;	-----------------------------------------
;	 function Warm_Reset
;	-----------------------------------------
_Warm_Reset:
	C$BSH.c$446$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:446: PCA0_Init();
	lcall	_PCA0_Init
	C$BSH.c$447$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:447: Timer_Init();
	lcall	_Timer_Init
	C$BSH.c$448$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:448: UART_Init();
	lcall	_UART_Init
	C$BSH.c$449$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:449: SPI_Init();  
	lcall	_SPI_Init
	C$BSH.c$450$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:450: ADC_Init();
	lcall	_ADC_Init
	C$BSH.c$451$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:451: Port_IO_Init();
	lcall	_Port_IO_Init
	C$BSH.c$452$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:452: Oscillator_Init();
	lcall	_Oscillator_Init
	C$BSH.c$453$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:453: Interrupts_Init();
	C$BSH.c$454$1$1 ==.
	XG$Warm_Reset$0$0 ==.
	ljmp	_Interrupts_Init
;------------------------------------------------------------
;Allocation info for local variables in function 'PCA0_Init'
;------------------------------------------------------------
;------------------------------------------------------------
	G$PCA0_Init$0$0 ==.
	C$BSH.c$457$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:457: void PCA0_Init(void)
;	-----------------------------------------
;	 function PCA0_Init
;	-----------------------------------------
_PCA0_Init:
	C$BSH.c$459$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:459: PCA0CN    = 0x40;
	mov	_PCA0CN,#0x40
	C$BSH.c$460$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:460: PCA0MD    &= ~0x40;
	anl	_PCA0MD,#0xBF
	C$BSH.c$461$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:461: PCA0MD    = 0x0C;
	mov	_PCA0MD,#0x0C
	C$BSH.c$462$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:462: PCA0CPM0  = 0x42;
	mov	_PCA0CPM0,#0x42
	C$BSH.c$463$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:463: SFRPAGE   = CONFIG_PAGE;
	mov	_SFRPAGE,#0x0F
	C$BSH.c$464$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:464: PCA0PWM   = 0x03;
	mov	_PCA0PWM,#0x03
	C$BSH.c$465$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:465: SFRPAGE   = ACTIVE_PAGE;
	mov	_SFRPAGE,#0x00
	C$BSH.c$466$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:466: SFRPAGE   = CONFIG_PAGE;
	mov	_SFRPAGE,#0x0F
	C$BSH.c$467$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:467: PCA0PWM   |= 0x80;           // ARSEL = 1
	orl	_PCA0PWM,#0x80
	C$BSH.c$468$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:468: SFRPAGE   = ACTIVE_PAGE;
	mov	_SFRPAGE,#0x00
	C$BSH.c$469$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:469: PCA0CPL0  = 0xCC;            // 15% 
	mov	_PCA0CPL0,#0xCC
	C$BSH.c$470$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:470: PCA0CPH0  = 0x06;
	mov	_PCA0CPH0,#0x06
	C$BSH.c$471$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:471: SFRPAGE   = CONFIG_PAGE;
	mov	_SFRPAGE,#0x0F
	C$BSH.c$472$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:472: PCA0PWM   &= ~0x80;          // ARSEL = 0
	anl	_PCA0PWM,#0x7F
	C$BSH.c$473$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:473: SFRPAGE   = ACTIVE_PAGE;
	mov	_SFRPAGE,#0x00
	C$BSH.c$474$1$1 ==.
	XG$PCA0_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer_Init'
;------------------------------------------------------------
;------------------------------------------------------------
	G$Timer_Init$0$0 ==.
	C$BSH.c$477$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:477: void Timer_Init(void)
;	-----------------------------------------
;	 function Timer_Init
;	-----------------------------------------
_Timer_Init:
	C$BSH.c$479$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:479: TCON      = 0x51;
	mov	_TCON,#0x51
	C$BSH.c$480$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:480: TMOD      = 0x11;
	mov	_TMOD,#0x11
	C$BSH.c$481$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:481: CKCON     = 0x0C;
	mov	_CKCON,#0x0C
	C$BSH.c$482$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:482: TL0       = 0x7F;
	mov	_TL0,#0x7F
	C$BSH.c$483$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:483: TH0       = 0x44;
	mov	_TH0,#0x44
	C$BSH.c$484$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:484: SFRPAGE   = ACTIVE2_PAGE;
	mov	_SFRPAGE,#0x10
	C$BSH.c$485$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:485: TMR4CN    = 0x04;
	mov	_TMR4CN,#0x04
	C$BSH.c$486$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:486: TMR4CF    = 0x08;
	mov	_TMR4CF,#0x08
	C$BSH.c$487$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:487: TMR4CAPL  = 0xE8;
	mov	_TMR4CAPL,#0xE8
	C$BSH.c$488$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:488: TMR4CAPH  = 0xFF;
	mov	_TMR4CAPH,#0xFF
	C$BSH.c$489$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:489: TMR4L     = 0xE8;
	mov	_TMR4L,#0xE8
	C$BSH.c$490$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:490: TMR4H     = 0xFF;
	mov	_TMR4H,#0xFF
	C$BSH.c$491$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:491: SFRPAGE   = ACTIVE_PAGE;
	mov	_SFRPAGE,#0x00
	C$BSH.c$492$1$1 ==.
	XG$Timer_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_Init'
;------------------------------------------------------------
;------------------------------------------------------------
	G$UART_Init$0$0 ==.
	C$BSH.c$495$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:495: void UART_Init(void)
;	-----------------------------------------
;	 function UART_Init
;	-----------------------------------------
_UART_Init:
	C$BSH.c$497$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:497: SCON0   = 0x10;
	mov	_SCON0,#0x10
	C$BSH.c$498$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:498: SFRPAGE = CONFIG_PAGE;
	mov	_SFRPAGE,#0x0F
	C$BSH.c$499$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:499: SBRLL0  = 0x3C;
	mov	_SBRLL0,#0x3C
	C$BSH.c$500$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:500: SBRLH0  = 0xF6;
	mov	_SBRLH0,#0xF6
	C$BSH.c$501$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:501: SBCON0  = 0x43;
	mov	_SBCON0,#0x43
	C$BSH.c$502$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:502: SFRPAGE   = ACTIVE_PAGE;
	mov	_SFRPAGE,#0x00
	C$BSH.c$503$1$1 ==.
	XG$UART_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SPI_Init'
;------------------------------------------------------------
;------------------------------------------------------------
	G$SPI_Init$0$0 ==.
	C$BSH.c$506$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:506: void SPI_Init(void)
;	-----------------------------------------
;	 function SPI_Init
;	-----------------------------------------
_SPI_Init:
	C$BSH.c$508$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:508: SFRPAGE   = ACTIVE_PAGE;
	mov	_SFRPAGE,#0x00
	C$BSH.c$509$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:509: SPI0CFG   = 0x40;
	mov	_SPI0CFG,#0x40
	C$BSH.c$510$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:510: SPI0CN    = 0x01;
	mov	_SPI0CN,#0x01
	C$BSH.c$511$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:511: SPI0CKR   = 0xEF;
	mov	_SPI0CKR,#0xEF
	C$BSH.c$512$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:512: SFRPAGE   = ACTIVE_PAGE;
	mov	_SFRPAGE,#0x00
	C$BSH.c$513$1$1 ==.
	XG$SPI_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ADC_Init'
;------------------------------------------------------------
;------------------------------------------------------------
	G$ADC_Init$0$0 ==.
	C$BSH.c$516$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:516: void ADC_Init(void)
;	-----------------------------------------
;	 function ADC_Init
;	-----------------------------------------
_ADC_Init:
	C$BSH.c$518$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:518: ADC0MX  = 0x13;
	mov	_ADC0MX,#0x13
	C$BSH.c$519$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:519: ADC0CN  = 0x80;
	mov	_ADC0CN,#0x80
	C$BSH.c$520$1$1 ==.
	XG$ADC_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Port_IO_Init'
;------------------------------------------------------------
;------------------------------------------------------------
	G$Port_IO_Init$0$0 ==.
	C$BSH.c$524$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:524: void Port_IO_Init(void)
;	-----------------------------------------
;	 function Port_IO_Init
;	-----------------------------------------
_Port_IO_Init:
	C$BSH.c$571$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:571: SFRPAGE   = CONFIG_PAGE;
	mov	_SFRPAGE,#0x0F
	C$BSH.c$572$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:572: P0MDIN    = 0xFE;
	mov	_P0MDIN,#0xFE
	C$BSH.c$573$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:573: P2MDIN    = 0x01;
	mov	_P2MDIN,#0x01
	C$BSH.c$574$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:574: P0MDOUT   = 0x5A;
	mov	_P0MDOUT,#0x5A
	C$BSH.c$575$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:575: P1MDOUT   = 0x0E;
	mov	_P1MDOUT,#0x0E
	C$BSH.c$576$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:576: P3MDOUT   = 0x05;
	mov	_P3MDOUT,#0x05
	C$BSH.c$577$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:577: P0SKIP    = 0x01;
	mov	_P0SKIP,#0x01
	C$BSH.c$578$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:578: P1SKIP    = 0xFF;
	mov	_P1SKIP,#0xFF
	C$BSH.c$579$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:579: P2SKIP    = 0xFF;
	mov	_P2SKIP,#0xFF
	C$BSH.c$580$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:580: XBR0      = 0x07;
	mov	_XBR0,#0x07
	C$BSH.c$581$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:581: XBR1      = 0x04;
	mov	_XBR1,#0x04
	C$BSH.c$582$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:582: XBR2      = 0x40;
	mov	_XBR2,#0x40
	C$BSH.c$583$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:583: SFRPAGE   = ACTIVE_PAGE;
	mov	_SFRPAGE,#0x00
	C$BSH.c$584$1$1 ==.
	XG$Port_IO_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Oscillator_Init'
;------------------------------------------------------------
;i                         Allocated to registers r2 r3 
;------------------------------------------------------------
	G$Oscillator_Init$0$0 ==.
	C$BSH.c$596$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:596: void Oscillator_Init(void)
;	-----------------------------------------
;	 function Oscillator_Init
;	-----------------------------------------
_Oscillator_Init:
	C$BSH.c$600$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:600: SFRPAGE = CONFIG_PAGE;
	mov	_SFRPAGE,#0x0F
	C$BSH.c$601$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:601: OSCICN = 0x87;                            // Set internal osc. divider to 1
	mov	_OSCICN,#0x87
	C$BSH.c$602$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:602: CLKMUL = 0x00;                            // Reset the Clock Multiplier
	mov	_CLKMUL,#0x00
	C$BSH.c$603$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:603: CLKMUL |= 0x80;                           // Enable the Clock Multiplier
	orl	_CLKMUL,#0x80
	C$BSH.c$604$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:604: for(i = 0; i < 120; i++);                 // Need to delay (5 us) 120 clock cycles
	mov	r2,#0x78
	mov	r3,#0x00
00106$:
	dec	r2
	cjne	r2,#0xff,00114$
	dec	r3
00114$:
	mov	a,r2
	orl	a,r3
	jnz	00106$
	C$BSH.c$605$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:605: CLKMUL |= 0xC0;                           // Initialize the Clock Multiplier
	orl	_CLKMUL,#0xC0
	C$BSH.c$606$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:606: while(!(CLKMUL & 0x20));                  // Wait for PLL
00101$:
	mov	a,_CLKMUL
	jnb	acc.5,00101$
	C$BSH.c$607$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:607: FLSCL = 0x10;                             // Set Flash read timing
	mov	_FLSCL,#0x10
	C$BSH.c$608$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:608: CLKSEL = 0x02;                            // Switch system clock to multiplier
	mov	_CLKSEL,#0x02
	C$BSH.c$609$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:609: SFRPAGE = ACTIVE_PAGE;
	mov	_SFRPAGE,#0x00
	C$BSH.c$610$1$1 ==.
	XG$Oscillator_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Interrupts_Init'
;------------------------------------------------------------
;------------------------------------------------------------
	G$Interrupts_Init$0$0 ==.
	C$BSH.c$613$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:613: void Interrupts_Init(void)
;	-----------------------------------------
;	 function Interrupts_Init
;	-----------------------------------------
_Interrupts_Init:
	C$BSH.c$615$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:615: SFRPAGE   = CONFIG_PAGE;
	mov	_SFRPAGE,#0x0F
	C$BSH.c$616$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:616: IT01CF    = 0x0F;
	mov	_IT01CF,#0x0F
	C$BSH.c$617$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:617: SFRPAGE   = ACTIVE_PAGE;
	mov	_SFRPAGE,#0x00
	C$BSH.c$618$1$1 ==.
;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:618: IE = 0x92;
	mov	_IE,#0x92
	C$BSH.c$619$1$1 ==.
	XG$Interrupts_Init$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
