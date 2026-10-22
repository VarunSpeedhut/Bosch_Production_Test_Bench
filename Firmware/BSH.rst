                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
                              4 ; This file was generated Thu Jun 05 12:41:07 2014
                              5 ;--------------------------------------------------------
                              6 	.module BSH
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _INT0_ISR
                             14 	.globl _UART0_ISR
                             15 	.globl _Timer0_ISR
                             16 	.globl __sdcc_external_startup
                             17 	.globl _DAC1_SEL
                             18 	.globl _LED
                             19 	.globl _SPIEN
                             20 	.globl _TXBMT
                             21 	.globl _NSSMD0
                             22 	.globl _NSSMD1
                             23 	.globl _RXOVRN
                             24 	.globl _MODF
                             25 	.globl _WCOL
                             26 	.globl _SPIF
                             27 	.globl _AD0CM0
                             28 	.globl _AD0CM1
                             29 	.globl _AD0LJST
                             30 	.globl _AD0WINT
                             31 	.globl _AD0BUSY
                             32 	.globl _AD0INT
                             33 	.globl _BURSTEN
                             34 	.globl _AD0EN
                             35 	.globl _CCF6
                             36 	.globl _CCF7
                             37 	.globl _CCF8
                             38 	.globl _CCF9
                             39 	.globl _CCF10
                             40 	.globl _CCF11
                             41 	.globl _CR1
                             42 	.globl _CF1
                             43 	.globl _CCF0
                             44 	.globl _CCF1
                             45 	.globl _CCF2
                             46 	.globl _CCF3
                             47 	.globl _CCF4
                             48 	.globl _CCF5
                             49 	.globl _CR
                             50 	.globl _CF
                             51 	.globl _P
                             52 	.globl _F1
                             53 	.globl _OV
                             54 	.globl _RS0
                             55 	.globl _RS1
                             56 	.globl _F0
                             57 	.globl _AC
                             58 	.globl _CY
                             59 	.globl _CPRL4
                             60 	.globl _CT4
                             61 	.globl _TR4
                             62 	.globl _EXE4
                             63 	.globl _EXF4
                             64 	.globl _TF4
                             65 	.globl _T2XCLK
                             66 	.globl _T2RCLK
                             67 	.globl _TR2
                             68 	.globl _T2SPLIT
                             69 	.globl _TF2CEN
                             70 	.globl _TF2LEN
                             71 	.globl _TF2L
                             72 	.globl _TF2H
                             73 	.globl _SI
                             74 	.globl _ACK
                             75 	.globl _ARBLOST
                             76 	.globl _ACKRQ
                             77 	.globl _STO
                             78 	.globl _STA
                             79 	.globl _TXMODE
                             80 	.globl _MASTER
                             81 	.globl _PX0
                             82 	.globl _PT0
                             83 	.globl _PX1
                             84 	.globl _PT1
                             85 	.globl _PS
                             86 	.globl _PS0
                             87 	.globl _PT2
                             88 	.globl _PSPI0
                             89 	.globl _EX0
                             90 	.globl _ET0
                             91 	.globl _EX1
                             92 	.globl _ET1
                             93 	.globl _ES0
                             94 	.globl _ET2
                             95 	.globl _ESPI0
                             96 	.globl _EA
                             97 	.globl _RI1
                             98 	.globl _TI1
                             99 	.globl _RB81
                            100 	.globl _TB81
                            101 	.globl _REN1
                            102 	.globl _MCE1
                            103 	.globl _S1MODE
                            104 	.globl _RI0
                            105 	.globl _TI0
                            106 	.globl _RBX0
                            107 	.globl _TBX0
                            108 	.globl _REN0
                            109 	.globl _THRE0
                            110 	.globl _PERR0
                            111 	.globl _OVR0
                            112 	.globl _IT0
                            113 	.globl _IE0
                            114 	.globl _IT1
                            115 	.globl _IE1
                            116 	.globl _TR0
                            117 	.globl _TF0
                            118 	.globl _TR1
                            119 	.globl _TF1
                            120 	.globl __XPAGE
                            121 	.globl _CAN0IF2DB2
                            122 	.globl _CAN0IF2DB1
                            123 	.globl _CAN0IF2DA2
                            124 	.globl _CAN0IF2DA1
                            125 	.globl _CAN0IF2MC
                            126 	.globl _CAN0IF2A2
                            127 	.globl _CAN0IF2A1
                            128 	.globl _CAN0IF2M2
                            129 	.globl _CAN0IF2M1
                            130 	.globl _CAN0IF2CM
                            131 	.globl _CAN0IF2CR
                            132 	.globl _CAN0IF1DB2
                            133 	.globl _CAN0IF1DB1
                            134 	.globl _CAN0IF1DA2
                            135 	.globl _CAN0IF1DA1
                            136 	.globl _CAN0IF1MC
                            137 	.globl _CAN0IF1A2
                            138 	.globl _CAN0IF1A1
                            139 	.globl _CAN0IF1M2
                            140 	.globl _CAN0IF1M1
                            141 	.globl _CAN0IF1CM
                            142 	.globl _CAN0IF1CR
                            143 	.globl _CAN0MV2
                            144 	.globl _CAN0MV1
                            145 	.globl _CAN0IP2
                            146 	.globl _CAN0IP1
                            147 	.globl _CAN0ND2
                            148 	.globl _CAN0ND1
                            149 	.globl _CAN0TR2
                            150 	.globl _CAN0TR1
                            151 	.globl _CAN0IID
                            152 	.globl _CAN0BT
                            153 	.globl _CAN0ERR
                            154 	.globl _PCA1CP10
                            155 	.globl _PCA0CP4
                            156 	.globl _PCA1CP6
                            157 	.globl _PCA0CP0
                            158 	.globl _PCA1
                            159 	.globl _PCA0
                            160 	.globl _PCA1CP9
                            161 	.globl _PCA0CP3
                            162 	.globl _PCA1CP8
                            163 	.globl _PCA0CP2
                            164 	.globl _PCA1CP7
                            165 	.globl _PCA0CP1
                            166 	.globl _PCA1CP11
                            167 	.globl _PCA0CP5
                            168 	.globl _TMR4
                            169 	.globl _TMR2
                            170 	.globl _TMR4CAP
                            171 	.globl _TMR2RL
                            172 	.globl _ADC0LT
                            173 	.globl _ADC0GT
                            174 	.globl _ADC0
                            175 	.globl _SBRL0
                            176 	.globl _TMR5
                            177 	.globl _TMR3
                            178 	.globl _TMR5CAP
                            179 	.globl _TMR3RL
                            180 	.globl _DP
                            181 	.globl _CAN0IF2DB2H
                            182 	.globl _CAN0IF2DB2L
                            183 	.globl _CAN0IF2DB1H
                            184 	.globl _CAN0IF2DB1L
                            185 	.globl _CAN0IF2DA2H
                            186 	.globl _CAN0IF2DA2L
                            187 	.globl _CAN0IF2DA1H
                            188 	.globl _CAN0IF2DA1L
                            189 	.globl _CAN0IF2A2H
                            190 	.globl _CAN0IF2A2L
                            191 	.globl _CAN0IF2A1H
                            192 	.globl _CAN0IF2A1L
                            193 	.globl _CAN0IF2M2H
                            194 	.globl _CAN0IF2M2L
                            195 	.globl _CAN0IF2M1H
                            196 	.globl _CAN0IF2M1L
                            197 	.globl _CAN0IF2CMH
                            198 	.globl _CAN0IF2CML
                            199 	.globl _CAN0IF2CRH
                            200 	.globl _CAN0IF2CRL
                            201 	.globl _CAN0IF1DB2H
                            202 	.globl _CAN0IF1DB2L
                            203 	.globl _CAN0IF1DB1H
                            204 	.globl _CAN0IF1DB1L
                            205 	.globl _CAN0IF1DA2H
                            206 	.globl _CAN0IF1DA2L
                            207 	.globl _CAN0IF1DA1H
                            208 	.globl _CAN0IF1DA1L
                            209 	.globl _CAN0IF1MCH
                            210 	.globl _CAN0IF1MCL
                            211 	.globl _CAN0IF2MCH
                            212 	.globl _CAN0IF2MCL
                            213 	.globl _CAN0IF1A2H
                            214 	.globl _CAN0IF1A2L
                            215 	.globl _CAN0IF1A1H
                            216 	.globl _CAN0IF1A1L
                            217 	.globl _CAN0IF1M2H
                            218 	.globl _CAN0IF1M2L
                            219 	.globl _CAN0IF1M1H
                            220 	.globl _CAN0IF1M1L
                            221 	.globl _CAN0IF1CMH
                            222 	.globl _CAN0IF1CML
                            223 	.globl _CAN0CN
                            224 	.globl _CAN0IF1CRH
                            225 	.globl _CAN0IF1CRL
                            226 	.globl _CAN0MV2H
                            227 	.globl _CAN0MV2L
                            228 	.globl _CAN0MV1H
                            229 	.globl _CAN0MV1L
                            230 	.globl _CAN0IP2H
                            231 	.globl _CAN0IP2L
                            232 	.globl _CAN0IP1H
                            233 	.globl _CAN0IP1L
                            234 	.globl _CAN0ND2H
                            235 	.globl _CAN0ND2L
                            236 	.globl _CAN0ND1H
                            237 	.globl _CAN0ND1L
                            238 	.globl _CAN0TR2H
                            239 	.globl _CAN0TR2L
                            240 	.globl _CAN0TR1H
                            241 	.globl _CAN0TR1L
                            242 	.globl _CAN0BRPE
                            243 	.globl _CAN0TST
                            244 	.globl _CAN0IIDH
                            245 	.globl _CAN0IIDL
                            246 	.globl _CAN0BTH
                            247 	.globl _CAN0BTL
                            248 	.globl _CAN0ERRH
                            249 	.globl _CAN0ERRL
                            250 	.globl _CAN0STAT
                            251 	.globl _CAN0CFG
                            252 	.globl _VDM0CN
                            253 	.globl _PCA1CPH10
                            254 	.globl _PCA0CPH4
                            255 	.globl _PCA1CPL10
                            256 	.globl _PCA0CPL4
                            257 	.globl _SN3
                            258 	.globl _PCA1CPH6
                            259 	.globl _PCA0CPH0
                            260 	.globl _SN2
                            261 	.globl _PCA1CPL6
                            262 	.globl _PCA0CPL0
                            263 	.globl _SN1
                            264 	.globl _PCA1H
                            265 	.globl _PCA0H
                            266 	.globl _SN0
                            267 	.globl _PCA1L
                            268 	.globl _PCA0L
                            269 	.globl _SPI0CN
                            270 	.globl _EIP2
                            271 	.globl _EIP1
                            272 	.globl _PSBANK
                            273 	.globl _P3MDIN
                            274 	.globl _P1MASK
                            275 	.globl _P2MDIN
                            276 	.globl _P1MAT
                            277 	.globl _P1MDIN
                            278 	.globl _P0MASK
                            279 	.globl _P0MDIN
                            280 	.globl _P0MAT
                            281 	.globl _B
                            282 	.globl _RSTSRC
                            283 	.globl _PCA1CPH3
                            284 	.globl _PCA0CPH3
                            285 	.globl _PCA1CPL3
                            286 	.globl _PCA0CPL3
                            287 	.globl _PCA1CPH2
                            288 	.globl _PCA0CPH2
                            289 	.globl _PCA1CPL2
                            290 	.globl _PCA0CPL2
                            291 	.globl _PCA1CPH1
                            292 	.globl _PCA0CPH1
                            293 	.globl _PCA1CPL1
                            294 	.globl _PCA0CPL1
                            295 	.globl _ADC0CN
                            296 	.globl _EIE2
                            297 	.globl _EIE1
                            298 	.globl _IT01CF
                            299 	.globl _CCH0CN
                            300 	.globl _XBR1
                            301 	.globl _XBR0
                            302 	.globl _ACC
                            303 	.globl _PCA1CPM11
                            304 	.globl _PCA0CPM5
                            305 	.globl _PCA1CPM10
                            306 	.globl _PCA0CPM4
                            307 	.globl _PCA1CPM9
                            308 	.globl _PCA0CPM3
                            309 	.globl _PCA1CPM8
                            310 	.globl _PCA0CPM2
                            311 	.globl _PCA1CPM7
                            312 	.globl _PCA0CPM1
                            313 	.globl _PCA1PWM
                            314 	.globl _PCA1CPM6
                            315 	.globl _PCA0CPM0
                            316 	.globl _PCA0PWM
                            317 	.globl _PCA1MD
                            318 	.globl _PCA0MD
                            319 	.globl _PCA1CN
                            320 	.globl _PCA0CN
                            321 	.globl _P3SKIP
                            322 	.globl _P2SKIP
                            323 	.globl _P1SKIP
                            324 	.globl _P0SKIP
                            325 	.globl _LIN0ADR
                            326 	.globl _LIN0DAT
                            327 	.globl _REF0CN
                            328 	.globl _PSW
                            329 	.globl _PCA1CPH11
                            330 	.globl _PCA0CPH5
                            331 	.globl _PCA1CPL11
                            332 	.globl _PCA0CPL5
                            333 	.globl _TMR4H
                            334 	.globl _TMR2H
                            335 	.globl _TMR4L
                            336 	.globl _TMR2L
                            337 	.globl _TMR4CAPH
                            338 	.globl _TMR2RLH
                            339 	.globl _TMR4CAPL
                            340 	.globl _TMR2RLL
                            341 	.globl _TMR4CF
                            342 	.globl _LIN0CF
                            343 	.globl _REG0CN
                            344 	.globl _TMR4CN
                            345 	.globl _TMR2CN
                            346 	.globl _XBR2
                            347 	.globl _XBR3
                            348 	.globl _ADC0LTH
                            349 	.globl _ADC0LTL
                            350 	.globl _ADC0GTH
                            351 	.globl _ADC0GTL
                            352 	.globl _SMB0DAT
                            353 	.globl _SMB0CF
                            354 	.globl _SMB0CN
                            355 	.globl _ADC0H
                            356 	.globl _ADC0L
                            357 	.globl _ADC0CF
                            358 	.globl _ADC0MX
                            359 	.globl _SMB0ADM
                            360 	.globl _ADC0TK
                            361 	.globl _SMB0ADR
                            362 	.globl _IP
                            363 	.globl _FLKEY
                            364 	.globl _FLSCL
                            365 	.globl _P4
                            366 	.globl _EMI0CF
                            367 	.globl _P2MASK
                            368 	.globl _P2MAT
                            369 	.globl _P3
                            370 	.globl _P4MDOUT
                            371 	.globl _P3MASK
                            372 	.globl _P3MDOUT
                            373 	.globl _P3MAT
                            374 	.globl _SBRLH0
                            375 	.globl _SBRLL0
                            376 	.globl _SBCON0
                            377 	.globl _EMI0TC
                            378 	.globl _EMI0CN
                            379 	.globl _SMOD0
                            380 	.globl _IE
                            381 	.globl _SFRPAGE
                            382 	.globl _P2MDOUT
                            383 	.globl _P1MDOUT
                            384 	.globl _P0MDOUT
                            385 	.globl _SPI0DAT
                            386 	.globl _OSCICRS
                            387 	.globl _SPI0CKR
                            388 	.globl _OSCICN
                            389 	.globl _SPI0CFG
                            390 	.globl _P2
                            391 	.globl _OSCXCN
                            392 	.globl _CPT1MX
                            393 	.globl _OSCIFIN
                            394 	.globl _CPT1MD
                            395 	.globl _CPT1CN
                            396 	.globl _CPT2MX
                            397 	.globl _CPT0MX
                            398 	.globl _CPT2MD
                            399 	.globl _CPT0MD
                            400 	.globl _CPT2CN
                            401 	.globl _CPT0CN
                            402 	.globl _SBUF1
                            403 	.globl _SBUF0
                            404 	.globl _SCON1
                            405 	.globl _SCON0
                            406 	.globl _CLKMUL
                            407 	.globl _TMR5CF
                            408 	.globl _TMR5H
                            409 	.globl _TMR3H
                            410 	.globl _TMR5L
                            411 	.globl _TMR3L
                            412 	.globl _TMR5CAPH
                            413 	.globl _TMR3RLH
                            414 	.globl _TMR5CAPL
                            415 	.globl _TMR3RLL
                            416 	.globl _TMR5CN
                            417 	.globl _TMR3CN
                            418 	.globl _P1
                            419 	.globl _CLKSEL
                            420 	.globl _PSCTL
                            421 	.globl _CKCON
                            422 	.globl _TH1
                            423 	.globl _TH0
                            424 	.globl _TL1
                            425 	.globl _TL0
                            426 	.globl _TMOD
                            427 	.globl _TCON
                            428 	.globl _PCON
                            429 	.globl _SFRLAST
                            430 	.globl _SFRNEXT
                            431 	.globl _SFR0CN
                            432 	.globl _DPH
                            433 	.globl _DPL
                            434 	.globl _SP
                            435 	.globl _P0
                            436 	.globl _gvuiDutyCount
                            437 	.globl _gvuiTotalCount
                            438 	.globl _gbIntState
                            439 	.globl _gvcState
                            440 	.globl _gvuiDelayTimer
                            441 	.globl _gvuiLEDTimer
                            442 	.globl _Read_ADC
                            443 	.globl _Adjust_Power
                            444 	.globl _putchar0
                            445 	.globl _Warm_Reset
                            446 	.globl _PCA0_Init
                            447 	.globl _Timer_Init
                            448 	.globl _UART_Init
                            449 	.globl _SPI_Init
                            450 	.globl _ADC_Init
                            451 	.globl _Port_IO_Init
                            452 	.globl _Oscillator_Init
                            453 	.globl _Interrupts_Init
                            454 ;--------------------------------------------------------
                            455 ; special function registers
                            456 ;--------------------------------------------------------
                            457 	.area RSEG    (ABS,DATA)
   0000                     458 	.org 0x0000
                    0080    459 G$P0$0$0 == 0x0080
                    0080    460 _P0	=	0x0080
                    0081    461 G$SP$0$0 == 0x0081
                    0081    462 _SP	=	0x0081
                    0082    463 G$DPL$0$0 == 0x0082
                    0082    464 _DPL	=	0x0082
                    0083    465 G$DPH$0$0 == 0x0083
                    0083    466 _DPH	=	0x0083
                    0084    467 G$SFR0CN$0$0 == 0x0084
                    0084    468 _SFR0CN	=	0x0084
                    0085    469 G$SFRNEXT$0$0 == 0x0085
                    0085    470 _SFRNEXT	=	0x0085
                    0086    471 G$SFRLAST$0$0 == 0x0086
                    0086    472 _SFRLAST	=	0x0086
                    0087    473 G$PCON$0$0 == 0x0087
                    0087    474 _PCON	=	0x0087
                    0088    475 G$TCON$0$0 == 0x0088
                    0088    476 _TCON	=	0x0088
                    0089    477 G$TMOD$0$0 == 0x0089
                    0089    478 _TMOD	=	0x0089
                    008A    479 G$TL0$0$0 == 0x008a
                    008A    480 _TL0	=	0x008a
                    008B    481 G$TL1$0$0 == 0x008b
                    008B    482 _TL1	=	0x008b
                    008C    483 G$TH0$0$0 == 0x008c
                    008C    484 _TH0	=	0x008c
                    008D    485 G$TH1$0$0 == 0x008d
                    008D    486 _TH1	=	0x008d
                    008E    487 G$CKCON$0$0 == 0x008e
                    008E    488 _CKCON	=	0x008e
                    008F    489 G$PSCTL$0$0 == 0x008f
                    008F    490 _PSCTL	=	0x008f
                    008F    491 G$CLKSEL$0$0 == 0x008f
                    008F    492 _CLKSEL	=	0x008f
                    0090    493 G$P1$0$0 == 0x0090
                    0090    494 _P1	=	0x0090
                    0091    495 G$TMR3CN$0$0 == 0x0091
                    0091    496 _TMR3CN	=	0x0091
                    0091    497 G$TMR5CN$0$0 == 0x0091
                    0091    498 _TMR5CN	=	0x0091
                    0092    499 G$TMR3RLL$0$0 == 0x0092
                    0092    500 _TMR3RLL	=	0x0092
                    0092    501 G$TMR5CAPL$0$0 == 0x0092
                    0092    502 _TMR5CAPL	=	0x0092
                    0093    503 G$TMR3RLH$0$0 == 0x0093
                    0093    504 _TMR3RLH	=	0x0093
                    0093    505 G$TMR5CAPH$0$0 == 0x0093
                    0093    506 _TMR5CAPH	=	0x0093
                    0094    507 G$TMR3L$0$0 == 0x0094
                    0094    508 _TMR3L	=	0x0094
                    0094    509 G$TMR5L$0$0 == 0x0094
                    0094    510 _TMR5L	=	0x0094
                    0095    511 G$TMR3H$0$0 == 0x0095
                    0095    512 _TMR3H	=	0x0095
                    0095    513 G$TMR5H$0$0 == 0x0095
                    0095    514 _TMR5H	=	0x0095
                    0096    515 G$TMR5CF$0$0 == 0x0096
                    0096    516 _TMR5CF	=	0x0096
                    0097    517 G$CLKMUL$0$0 == 0x0097
                    0097    518 _CLKMUL	=	0x0097
                    0098    519 G$SCON0$0$0 == 0x0098
                    0098    520 _SCON0	=	0x0098
                    0098    521 G$SCON1$0$0 == 0x0098
                    0098    522 _SCON1	=	0x0098
                    0099    523 G$SBUF0$0$0 == 0x0099
                    0099    524 _SBUF0	=	0x0099
                    0099    525 G$SBUF1$0$0 == 0x0099
                    0099    526 _SBUF1	=	0x0099
                    009A    527 G$CPT0CN$0$0 == 0x009a
                    009A    528 _CPT0CN	=	0x009a
                    009A    529 G$CPT2CN$0$0 == 0x009a
                    009A    530 _CPT2CN	=	0x009a
                    009B    531 G$CPT0MD$0$0 == 0x009b
                    009B    532 _CPT0MD	=	0x009b
                    009B    533 G$CPT2MD$0$0 == 0x009b
                    009B    534 _CPT2MD	=	0x009b
                    009C    535 G$CPT0MX$0$0 == 0x009c
                    009C    536 _CPT0MX	=	0x009c
                    009C    537 G$CPT2MX$0$0 == 0x009c
                    009C    538 _CPT2MX	=	0x009c
                    009D    539 G$CPT1CN$0$0 == 0x009d
                    009D    540 _CPT1CN	=	0x009d
                    009E    541 G$CPT1MD$0$0 == 0x009e
                    009E    542 _CPT1MD	=	0x009e
                    009E    543 G$OSCIFIN$0$0 == 0x009e
                    009E    544 _OSCIFIN	=	0x009e
                    009F    545 G$CPT1MX$0$0 == 0x009f
                    009F    546 _CPT1MX	=	0x009f
                    009F    547 G$OSCXCN$0$0 == 0x009f
                    009F    548 _OSCXCN	=	0x009f
                    00A0    549 G$P2$0$0 == 0x00a0
                    00A0    550 _P2	=	0x00a0
                    00A1    551 G$SPI0CFG$0$0 == 0x00a1
                    00A1    552 _SPI0CFG	=	0x00a1
                    00A1    553 G$OSCICN$0$0 == 0x00a1
                    00A1    554 _OSCICN	=	0x00a1
                    00A2    555 G$SPI0CKR$0$0 == 0x00a2
                    00A2    556 _SPI0CKR	=	0x00a2
                    00A2    557 G$OSCICRS$0$0 == 0x00a2
                    00A2    558 _OSCICRS	=	0x00a2
                    00A3    559 G$SPI0DAT$0$0 == 0x00a3
                    00A3    560 _SPI0DAT	=	0x00a3
                    00A4    561 G$P0MDOUT$0$0 == 0x00a4
                    00A4    562 _P0MDOUT	=	0x00a4
                    00A5    563 G$P1MDOUT$0$0 == 0x00a5
                    00A5    564 _P1MDOUT	=	0x00a5
                    00A6    565 G$P2MDOUT$0$0 == 0x00a6
                    00A6    566 _P2MDOUT	=	0x00a6
                    00A7    567 G$SFRPAGE$0$0 == 0x00a7
                    00A7    568 _SFRPAGE	=	0x00a7
                    00A8    569 G$IE$0$0 == 0x00a8
                    00A8    570 _IE	=	0x00a8
                    00A9    571 G$SMOD0$0$0 == 0x00a9
                    00A9    572 _SMOD0	=	0x00a9
                    00AA    573 G$EMI0CN$0$0 == 0x00aa
                    00AA    574 _EMI0CN	=	0x00aa
                    00AA    575 G$EMI0TC$0$0 == 0x00aa
                    00AA    576 _EMI0TC	=	0x00aa
                    00AB    577 G$SBCON0$0$0 == 0x00ab
                    00AB    578 _SBCON0	=	0x00ab
                    00AC    579 G$SBRLL0$0$0 == 0x00ac
                    00AC    580 _SBRLL0	=	0x00ac
                    00AD    581 G$SBRLH0$0$0 == 0x00ad
                    00AD    582 _SBRLH0	=	0x00ad
                    00AE    583 G$P3MAT$0$0 == 0x00ae
                    00AE    584 _P3MAT	=	0x00ae
                    00AE    585 G$P3MDOUT$0$0 == 0x00ae
                    00AE    586 _P3MDOUT	=	0x00ae
                    00AF    587 G$P3MASK$0$0 == 0x00af
                    00AF    588 _P3MASK	=	0x00af
                    00AF    589 G$P4MDOUT$0$0 == 0x00af
                    00AF    590 _P4MDOUT	=	0x00af
                    00B0    591 G$P3$0$0 == 0x00b0
                    00B0    592 _P3	=	0x00b0
                    00B1    593 G$P2MAT$0$0 == 0x00b1
                    00B1    594 _P2MAT	=	0x00b1
                    00B2    595 G$P2MASK$0$0 == 0x00b2
                    00B2    596 _P2MASK	=	0x00b2
                    00B2    597 G$EMI0CF$0$0 == 0x00b2
                    00B2    598 _EMI0CF	=	0x00b2
                    00B5    599 G$P4$0$0 == 0x00b5
                    00B5    600 _P4	=	0x00b5
                    00B6    601 G$FLSCL$0$0 == 0x00b6
                    00B6    602 _FLSCL	=	0x00b6
                    00B7    603 G$FLKEY$0$0 == 0x00b7
                    00B7    604 _FLKEY	=	0x00b7
                    00B8    605 G$IP$0$0 == 0x00b8
                    00B8    606 _IP	=	0x00b8
                    00B9    607 G$SMB0ADR$0$0 == 0x00b9
                    00B9    608 _SMB0ADR	=	0x00b9
                    00BA    609 G$ADC0TK$0$0 == 0x00ba
                    00BA    610 _ADC0TK	=	0x00ba
                    00BA    611 G$SMB0ADM$0$0 == 0x00ba
                    00BA    612 _SMB0ADM	=	0x00ba
                    00BB    613 G$ADC0MX$0$0 == 0x00bb
                    00BB    614 _ADC0MX	=	0x00bb
                    00BC    615 G$ADC0CF$0$0 == 0x00bc
                    00BC    616 _ADC0CF	=	0x00bc
                    00BD    617 G$ADC0L$0$0 == 0x00bd
                    00BD    618 _ADC0L	=	0x00bd
                    00BE    619 G$ADC0H$0$0 == 0x00be
                    00BE    620 _ADC0H	=	0x00be
                    00C0    621 G$SMB0CN$0$0 == 0x00c0
                    00C0    622 _SMB0CN	=	0x00c0
                    00C1    623 G$SMB0CF$0$0 == 0x00c1
                    00C1    624 _SMB0CF	=	0x00c1
                    00C2    625 G$SMB0DAT$0$0 == 0x00c2
                    00C2    626 _SMB0DAT	=	0x00c2
                    00C3    627 G$ADC0GTL$0$0 == 0x00c3
                    00C3    628 _ADC0GTL	=	0x00c3
                    00C4    629 G$ADC0GTH$0$0 == 0x00c4
                    00C4    630 _ADC0GTH	=	0x00c4
                    00C5    631 G$ADC0LTL$0$0 == 0x00c5
                    00C5    632 _ADC0LTL	=	0x00c5
                    00C6    633 G$ADC0LTH$0$0 == 0x00c6
                    00C6    634 _ADC0LTH	=	0x00c6
                    00C6    635 G$XBR3$0$0 == 0x00c6
                    00C6    636 _XBR3	=	0x00c6
                    00C7    637 G$XBR2$0$0 == 0x00c7
                    00C7    638 _XBR2	=	0x00c7
                    00C8    639 G$TMR2CN$0$0 == 0x00c8
                    00C8    640 _TMR2CN	=	0x00c8
                    00C8    641 G$TMR4CN$0$0 == 0x00c8
                    00C8    642 _TMR4CN	=	0x00c8
                    00C9    643 G$REG0CN$0$0 == 0x00c9
                    00C9    644 _REG0CN	=	0x00c9
                    00C9    645 G$LIN0CF$0$0 == 0x00c9
                    00C9    646 _LIN0CF	=	0x00c9
                    00C9    647 G$TMR4CF$0$0 == 0x00c9
                    00C9    648 _TMR4CF	=	0x00c9
                    00CA    649 G$TMR2RLL$0$0 == 0x00ca
                    00CA    650 _TMR2RLL	=	0x00ca
                    00CA    651 G$TMR4CAPL$0$0 == 0x00ca
                    00CA    652 _TMR4CAPL	=	0x00ca
                    00CB    653 G$TMR2RLH$0$0 == 0x00cb
                    00CB    654 _TMR2RLH	=	0x00cb
                    00CB    655 G$TMR4CAPH$0$0 == 0x00cb
                    00CB    656 _TMR4CAPH	=	0x00cb
                    00CC    657 G$TMR2L$0$0 == 0x00cc
                    00CC    658 _TMR2L	=	0x00cc
                    00CC    659 G$TMR4L$0$0 == 0x00cc
                    00CC    660 _TMR4L	=	0x00cc
                    00CD    661 G$TMR2H$0$0 == 0x00cd
                    00CD    662 _TMR2H	=	0x00cd
                    00CD    663 G$TMR4H$0$0 == 0x00cd
                    00CD    664 _TMR4H	=	0x00cd
                    00CE    665 G$PCA0CPL5$0$0 == 0x00ce
                    00CE    666 _PCA0CPL5	=	0x00ce
                    00CE    667 G$PCA1CPL11$0$0 == 0x00ce
                    00CE    668 _PCA1CPL11	=	0x00ce
                    00CF    669 G$PCA0CPH5$0$0 == 0x00cf
                    00CF    670 _PCA0CPH5	=	0x00cf
                    00CF    671 G$PCA1CPH11$0$0 == 0x00cf
                    00CF    672 _PCA1CPH11	=	0x00cf
                    00D0    673 G$PSW$0$0 == 0x00d0
                    00D0    674 _PSW	=	0x00d0
                    00D1    675 G$REF0CN$0$0 == 0x00d1
                    00D1    676 _REF0CN	=	0x00d1
                    00D2    677 G$LIN0DAT$0$0 == 0x00d2
                    00D2    678 _LIN0DAT	=	0x00d2
                    00D3    679 G$LIN0ADR$0$0 == 0x00d3
                    00D3    680 _LIN0ADR	=	0x00d3
                    00D4    681 G$P0SKIP$0$0 == 0x00d4
                    00D4    682 _P0SKIP	=	0x00d4
                    00D5    683 G$P1SKIP$0$0 == 0x00d5
                    00D5    684 _P1SKIP	=	0x00d5
                    00D6    685 G$P2SKIP$0$0 == 0x00d6
                    00D6    686 _P2SKIP	=	0x00d6
                    00D7    687 G$P3SKIP$0$0 == 0x00d7
                    00D7    688 _P3SKIP	=	0x00d7
                    00D8    689 G$PCA0CN$0$0 == 0x00d8
                    00D8    690 _PCA0CN	=	0x00d8
                    00D8    691 G$PCA1CN$0$0 == 0x00d8
                    00D8    692 _PCA1CN	=	0x00d8
                    00D9    693 G$PCA0MD$0$0 == 0x00d9
                    00D9    694 _PCA0MD	=	0x00d9
                    00D9    695 G$PCA1MD$0$0 == 0x00d9
                    00D9    696 _PCA1MD	=	0x00d9
                    00D9    697 G$PCA0PWM$0$0 == 0x00d9
                    00D9    698 _PCA0PWM	=	0x00d9
                    00DA    699 G$PCA0CPM0$0$0 == 0x00da
                    00DA    700 _PCA0CPM0	=	0x00da
                    00DA    701 G$PCA1CPM6$0$0 == 0x00da
                    00DA    702 _PCA1CPM6	=	0x00da
                    00DA    703 G$PCA1PWM$0$0 == 0x00da
                    00DA    704 _PCA1PWM	=	0x00da
                    00DB    705 G$PCA0CPM1$0$0 == 0x00db
                    00DB    706 _PCA0CPM1	=	0x00db
                    00DB    707 G$PCA1CPM7$0$0 == 0x00db
                    00DB    708 _PCA1CPM7	=	0x00db
                    00DC    709 G$PCA0CPM2$0$0 == 0x00dc
                    00DC    710 _PCA0CPM2	=	0x00dc
                    00DC    711 G$PCA1CPM8$0$0 == 0x00dc
                    00DC    712 _PCA1CPM8	=	0x00dc
                    00DD    713 G$PCA0CPM3$0$0 == 0x00dd
                    00DD    714 _PCA0CPM3	=	0x00dd
                    00DD    715 G$PCA1CPM9$0$0 == 0x00dd
                    00DD    716 _PCA1CPM9	=	0x00dd
                    00DE    717 G$PCA0CPM4$0$0 == 0x00de
                    00DE    718 _PCA0CPM4	=	0x00de
                    00DE    719 G$PCA1CPM10$0$0 == 0x00de
                    00DE    720 _PCA1CPM10	=	0x00de
                    00DF    721 G$PCA0CPM5$0$0 == 0x00df
                    00DF    722 _PCA0CPM5	=	0x00df
                    00DF    723 G$PCA1CPM11$0$0 == 0x00df
                    00DF    724 _PCA1CPM11	=	0x00df
                    00E0    725 G$ACC$0$0 == 0x00e0
                    00E0    726 _ACC	=	0x00e0
                    00E1    727 G$XBR0$0$0 == 0x00e1
                    00E1    728 _XBR0	=	0x00e1
                    00E2    729 G$XBR1$0$0 == 0x00e2
                    00E2    730 _XBR1	=	0x00e2
                    00E3    731 G$CCH0CN$0$0 == 0x00e3
                    00E3    732 _CCH0CN	=	0x00e3
                    00E4    733 G$IT01CF$0$0 == 0x00e4
                    00E4    734 _IT01CF	=	0x00e4
                    00E6    735 G$EIE1$0$0 == 0x00e6
                    00E6    736 _EIE1	=	0x00e6
                    00E7    737 G$EIE2$0$0 == 0x00e7
                    00E7    738 _EIE2	=	0x00e7
                    00E8    739 G$ADC0CN$0$0 == 0x00e8
                    00E8    740 _ADC0CN	=	0x00e8
                    00E9    741 G$PCA0CPL1$0$0 == 0x00e9
                    00E9    742 _PCA0CPL1	=	0x00e9
                    00E9    743 G$PCA1CPL1$0$0 == 0x00e9
                    00E9    744 _PCA1CPL1	=	0x00e9
                    00EA    745 G$PCA0CPH1$0$0 == 0x00ea
                    00EA    746 _PCA0CPH1	=	0x00ea
                    00EA    747 G$PCA1CPH1$0$0 == 0x00ea
                    00EA    748 _PCA1CPH1	=	0x00ea
                    00EB    749 G$PCA0CPL2$0$0 == 0x00eb
                    00EB    750 _PCA0CPL2	=	0x00eb
                    00EB    751 G$PCA1CPL2$0$0 == 0x00eb
                    00EB    752 _PCA1CPL2	=	0x00eb
                    00EC    753 G$PCA0CPH2$0$0 == 0x00ec
                    00EC    754 _PCA0CPH2	=	0x00ec
                    00EC    755 G$PCA1CPH2$0$0 == 0x00ec
                    00EC    756 _PCA1CPH2	=	0x00ec
                    00ED    757 G$PCA0CPL3$0$0 == 0x00ed
                    00ED    758 _PCA0CPL3	=	0x00ed
                    00ED    759 G$PCA1CPL3$0$0 == 0x00ed
                    00ED    760 _PCA1CPL3	=	0x00ed
                    00EE    761 G$PCA0CPH3$0$0 == 0x00ee
                    00EE    762 _PCA0CPH3	=	0x00ee
                    00EE    763 G$PCA1CPH3$0$0 == 0x00ee
                    00EE    764 _PCA1CPH3	=	0x00ee
                    00EF    765 G$RSTSRC$0$0 == 0x00ef
                    00EF    766 _RSTSRC	=	0x00ef
                    00F0    767 G$B$0$0 == 0x00f0
                    00F0    768 _B	=	0x00f0
                    00F1    769 G$P0MAT$0$0 == 0x00f1
                    00F1    770 _P0MAT	=	0x00f1
                    00F1    771 G$P0MDIN$0$0 == 0x00f1
                    00F1    772 _P0MDIN	=	0x00f1
                    00F2    773 G$P0MASK$0$0 == 0x00f2
                    00F2    774 _P0MASK	=	0x00f2
                    00F2    775 G$P1MDIN$0$0 == 0x00f2
                    00F2    776 _P1MDIN	=	0x00f2
                    00F3    777 G$P1MAT$0$0 == 0x00f3
                    00F3    778 _P1MAT	=	0x00f3
                    00F3    779 G$P2MDIN$0$0 == 0x00f3
                    00F3    780 _P2MDIN	=	0x00f3
                    00F4    781 G$P1MASK$0$0 == 0x00f4
                    00F4    782 _P1MASK	=	0x00f4
                    00F4    783 G$P3MDIN$0$0 == 0x00f4
                    00F4    784 _P3MDIN	=	0x00f4
                    00F5    785 G$PSBANK$0$0 == 0x00f5
                    00F5    786 _PSBANK	=	0x00f5
                    00F6    787 G$EIP1$0$0 == 0x00f6
                    00F6    788 _EIP1	=	0x00f6
                    00F7    789 G$EIP2$0$0 == 0x00f7
                    00F7    790 _EIP2	=	0x00f7
                    00F8    791 G$SPI0CN$0$0 == 0x00f8
                    00F8    792 _SPI0CN	=	0x00f8
                    00F9    793 G$PCA0L$0$0 == 0x00f9
                    00F9    794 _PCA0L	=	0x00f9
                    00F9    795 G$PCA1L$0$0 == 0x00f9
                    00F9    796 _PCA1L	=	0x00f9
                    00F9    797 G$SN0$0$0 == 0x00f9
                    00F9    798 _SN0	=	0x00f9
                    00FA    799 G$PCA0H$0$0 == 0x00fa
                    00FA    800 _PCA0H	=	0x00fa
                    00FA    801 G$PCA1H$0$0 == 0x00fa
                    00FA    802 _PCA1H	=	0x00fa
                    00FA    803 G$SN1$0$0 == 0x00fa
                    00FA    804 _SN1	=	0x00fa
                    00FB    805 G$PCA0CPL0$0$0 == 0x00fb
                    00FB    806 _PCA0CPL0	=	0x00fb
                    00FB    807 G$PCA1CPL6$0$0 == 0x00fb
                    00FB    808 _PCA1CPL6	=	0x00fb
                    00FB    809 G$SN2$0$0 == 0x00fb
                    00FB    810 _SN2	=	0x00fb
                    00FC    811 G$PCA0CPH0$0$0 == 0x00fc
                    00FC    812 _PCA0CPH0	=	0x00fc
                    00FC    813 G$PCA1CPH6$0$0 == 0x00fc
                    00FC    814 _PCA1CPH6	=	0x00fc
                    00FC    815 G$SN3$0$0 == 0x00fc
                    00FC    816 _SN3	=	0x00fc
                    00FD    817 G$PCA0CPL4$0$0 == 0x00fd
                    00FD    818 _PCA0CPL4	=	0x00fd
                    00FD    819 G$PCA1CPL10$0$0 == 0x00fd
                    00FD    820 _PCA1CPL10	=	0x00fd
                    00FE    821 G$PCA0CPH4$0$0 == 0x00fe
                    00FE    822 _PCA0CPH4	=	0x00fe
                    00FE    823 G$PCA1CPH10$0$0 == 0x00fe
                    00FE    824 _PCA1CPH10	=	0x00fe
                    00FF    825 G$VDM0CN$0$0 == 0x00ff
                    00FF    826 _VDM0CN	=	0x00ff
                    0092    827 G$CAN0CFG$0$0 == 0x0092
                    0092    828 _CAN0CFG	=	0x0092
                    0094    829 G$CAN0STAT$0$0 == 0x0094
                    0094    830 _CAN0STAT	=	0x0094
                    0096    831 G$CAN0ERRL$0$0 == 0x0096
                    0096    832 _CAN0ERRL	=	0x0096
                    0097    833 G$CAN0ERRH$0$0 == 0x0097
                    0097    834 _CAN0ERRH	=	0x0097
                    009A    835 G$CAN0BTL$0$0 == 0x009a
                    009A    836 _CAN0BTL	=	0x009a
                    009B    837 G$CAN0BTH$0$0 == 0x009b
                    009B    838 _CAN0BTH	=	0x009b
                    009C    839 G$CAN0IIDL$0$0 == 0x009c
                    009C    840 _CAN0IIDL	=	0x009c
                    009D    841 G$CAN0IIDH$0$0 == 0x009d
                    009D    842 _CAN0IIDH	=	0x009d
                    009E    843 G$CAN0TST$0$0 == 0x009e
                    009E    844 _CAN0TST	=	0x009e
                    00A1    845 G$CAN0BRPE$0$0 == 0x00a1
                    00A1    846 _CAN0BRPE	=	0x00a1
                    00A2    847 G$CAN0TR1L$0$0 == 0x00a2
                    00A2    848 _CAN0TR1L	=	0x00a2
                    00A3    849 G$CAN0TR1H$0$0 == 0x00a3
                    00A3    850 _CAN0TR1H	=	0x00a3
                    00A4    851 G$CAN0TR2L$0$0 == 0x00a4
                    00A4    852 _CAN0TR2L	=	0x00a4
                    00A5    853 G$CAN0TR2H$0$0 == 0x00a5
                    00A5    854 _CAN0TR2H	=	0x00a5
                    00AA    855 G$CAN0ND1L$0$0 == 0x00aa
                    00AA    856 _CAN0ND1L	=	0x00aa
                    00AB    857 G$CAN0ND1H$0$0 == 0x00ab
                    00AB    858 _CAN0ND1H	=	0x00ab
                    00AC    859 G$CAN0ND2L$0$0 == 0x00ac
                    00AC    860 _CAN0ND2L	=	0x00ac
                    00AD    861 G$CAN0ND2H$0$0 == 0x00ad
                    00AD    862 _CAN0ND2H	=	0x00ad
                    00AE    863 G$CAN0IP1L$0$0 == 0x00ae
                    00AE    864 _CAN0IP1L	=	0x00ae
                    00AF    865 G$CAN0IP1H$0$0 == 0x00af
                    00AF    866 _CAN0IP1H	=	0x00af
                    00B2    867 G$CAN0IP2L$0$0 == 0x00b2
                    00B2    868 _CAN0IP2L	=	0x00b2
                    00B3    869 G$CAN0IP2H$0$0 == 0x00b3
                    00B3    870 _CAN0IP2H	=	0x00b3
                    00BA    871 G$CAN0MV1L$0$0 == 0x00ba
                    00BA    872 _CAN0MV1L	=	0x00ba
                    00BB    873 G$CAN0MV1H$0$0 == 0x00bb
                    00BB    874 _CAN0MV1H	=	0x00bb
                    00BC    875 G$CAN0MV2L$0$0 == 0x00bc
                    00BC    876 _CAN0MV2L	=	0x00bc
                    00BD    877 G$CAN0MV2H$0$0 == 0x00bd
                    00BD    878 _CAN0MV2H	=	0x00bd
                    00BE    879 G$CAN0IF1CRL$0$0 == 0x00be
                    00BE    880 _CAN0IF1CRL	=	0x00be
                    00BF    881 G$CAN0IF1CRH$0$0 == 0x00bf
                    00BF    882 _CAN0IF1CRH	=	0x00bf
                    00C0    883 G$CAN0CN$0$0 == 0x00c0
                    00C0    884 _CAN0CN	=	0x00c0
                    00C2    885 G$CAN0IF1CML$0$0 == 0x00c2
                    00C2    886 _CAN0IF1CML	=	0x00c2
                    00C3    887 G$CAN0IF1CMH$0$0 == 0x00c3
                    00C3    888 _CAN0IF1CMH	=	0x00c3
                    00C4    889 G$CAN0IF1M1L$0$0 == 0x00c4
                    00C4    890 _CAN0IF1M1L	=	0x00c4
                    00C5    891 G$CAN0IF1M1H$0$0 == 0x00c5
                    00C5    892 _CAN0IF1M1H	=	0x00c5
                    00C6    893 G$CAN0IF1M2L$0$0 == 0x00c6
                    00C6    894 _CAN0IF1M2L	=	0x00c6
                    00C7    895 G$CAN0IF1M2H$0$0 == 0x00c7
                    00C7    896 _CAN0IF1M2H	=	0x00c7
                    00CA    897 G$CAN0IF1A1L$0$0 == 0x00ca
                    00CA    898 _CAN0IF1A1L	=	0x00ca
                    00CB    899 G$CAN0IF1A1H$0$0 == 0x00cb
                    00CB    900 _CAN0IF1A1H	=	0x00cb
                    00CC    901 G$CAN0IF1A2L$0$0 == 0x00cc
                    00CC    902 _CAN0IF1A2L	=	0x00cc
                    00CD    903 G$CAN0IF1A2H$0$0 == 0x00cd
                    00CD    904 _CAN0IF1A2H	=	0x00cd
                    00CE    905 G$CAN0IF2MCL$0$0 == 0x00ce
                    00CE    906 _CAN0IF2MCL	=	0x00ce
                    00CF    907 G$CAN0IF2MCH$0$0 == 0x00cf
                    00CF    908 _CAN0IF2MCH	=	0x00cf
                    00D2    909 G$CAN0IF1MCL$0$0 == 0x00d2
                    00D2    910 _CAN0IF1MCL	=	0x00d2
                    00D3    911 G$CAN0IF1MCH$0$0 == 0x00d3
                    00D3    912 _CAN0IF1MCH	=	0x00d3
                    00D4    913 G$CAN0IF1DA1L$0$0 == 0x00d4
                    00D4    914 _CAN0IF1DA1L	=	0x00d4
                    00D5    915 G$CAN0IF1DA1H$0$0 == 0x00d5
                    00D5    916 _CAN0IF1DA1H	=	0x00d5
                    00D6    917 G$CAN0IF1DA2L$0$0 == 0x00d6
                    00D6    918 _CAN0IF1DA2L	=	0x00d6
                    00D7    919 G$CAN0IF1DA2H$0$0 == 0x00d7
                    00D7    920 _CAN0IF1DA2H	=	0x00d7
                    00DA    921 G$CAN0IF1DB1L$0$0 == 0x00da
                    00DA    922 _CAN0IF1DB1L	=	0x00da
                    00DB    923 G$CAN0IF1DB1H$0$0 == 0x00db
                    00DB    924 _CAN0IF1DB1H	=	0x00db
                    00DC    925 G$CAN0IF1DB2L$0$0 == 0x00dc
                    00DC    926 _CAN0IF1DB2L	=	0x00dc
                    00DD    927 G$CAN0IF1DB2H$0$0 == 0x00dd
                    00DD    928 _CAN0IF1DB2H	=	0x00dd
                    00DE    929 G$CAN0IF2CRL$0$0 == 0x00de
                    00DE    930 _CAN0IF2CRL	=	0x00de
                    00DF    931 G$CAN0IF2CRH$0$0 == 0x00df
                    00DF    932 _CAN0IF2CRH	=	0x00df
                    00E2    933 G$CAN0IF2CML$0$0 == 0x00e2
                    00E2    934 _CAN0IF2CML	=	0x00e2
                    00E3    935 G$CAN0IF2CMH$0$0 == 0x00e3
                    00E3    936 _CAN0IF2CMH	=	0x00e3
                    00EA    937 G$CAN0IF2M1L$0$0 == 0x00ea
                    00EA    938 _CAN0IF2M1L	=	0x00ea
                    00EB    939 G$CAN0IF2M1H$0$0 == 0x00eb
                    00EB    940 _CAN0IF2M1H	=	0x00eb
                    00EC    941 G$CAN0IF2M2L$0$0 == 0x00ec
                    00EC    942 _CAN0IF2M2L	=	0x00ec
                    00ED    943 G$CAN0IF2M2H$0$0 == 0x00ed
                    00ED    944 _CAN0IF2M2H	=	0x00ed
                    00EE    945 G$CAN0IF2A1L$0$0 == 0x00ee
                    00EE    946 _CAN0IF2A1L	=	0x00ee
                    00EF    947 G$CAN0IF2A1H$0$0 == 0x00ef
                    00EF    948 _CAN0IF2A1H	=	0x00ef
                    00F2    949 G$CAN0IF2A2L$0$0 == 0x00f2
                    00F2    950 _CAN0IF2A2L	=	0x00f2
                    00F3    951 G$CAN0IF2A2H$0$0 == 0x00f3
                    00F3    952 _CAN0IF2A2H	=	0x00f3
                    00F6    953 G$CAN0IF2DA1L$0$0 == 0x00f6
                    00F6    954 _CAN0IF2DA1L	=	0x00f6
                    00F7    955 G$CAN0IF2DA1H$0$0 == 0x00f7
                    00F7    956 _CAN0IF2DA1H	=	0x00f7
                    00FA    957 G$CAN0IF2DA2L$0$0 == 0x00fa
                    00FA    958 _CAN0IF2DA2L	=	0x00fa
                    00FB    959 G$CAN0IF2DA2H$0$0 == 0x00fb
                    00FB    960 _CAN0IF2DA2H	=	0x00fb
                    00FC    961 G$CAN0IF2DB1L$0$0 == 0x00fc
                    00FC    962 _CAN0IF2DB1L	=	0x00fc
                    00FD    963 G$CAN0IF2DB1H$0$0 == 0x00fd
                    00FD    964 _CAN0IF2DB1H	=	0x00fd
                    00FE    965 G$CAN0IF2DB2L$0$0 == 0x00fe
                    00FE    966 _CAN0IF2DB2L	=	0x00fe
                    00FF    967 G$CAN0IF2DB2H$0$0 == 0x00ff
                    00FF    968 _CAN0IF2DB2H	=	0x00ff
                    8382    969 G$DP$0$0 == 0x8382
                    8382    970 _DP	=	0x8382
                    9392    971 G$TMR3RL$0$0 == 0x9392
                    9392    972 _TMR3RL	=	0x9392
                    9392    973 G$TMR5CAP$0$0 == 0x9392
                    9392    974 _TMR5CAP	=	0x9392
                    9594    975 G$TMR3$0$0 == 0x9594
                    9594    976 _TMR3	=	0x9594
                    9594    977 G$TMR5$0$0 == 0x9594
                    9594    978 _TMR5	=	0x9594
                    ADAC    979 G$SBRL0$0$0 == 0xadac
                    ADAC    980 _SBRL0	=	0xadac
                    BEBD    981 G$ADC0$0$0 == 0xbebd
                    BEBD    982 _ADC0	=	0xbebd
                    C4C3    983 G$ADC0GT$0$0 == 0xc4c3
                    C4C3    984 _ADC0GT	=	0xc4c3
                    C6C5    985 G$ADC0LT$0$0 == 0xc6c5
                    C6C5    986 _ADC0LT	=	0xc6c5
                    CBCA    987 G$TMR2RL$0$0 == 0xcbca
                    CBCA    988 _TMR2RL	=	0xcbca
                    CBCA    989 G$TMR4CAP$0$0 == 0xcbca
                    CBCA    990 _TMR4CAP	=	0xcbca
                    CDCC    991 G$TMR2$0$0 == 0xcdcc
                    CDCC    992 _TMR2	=	0xcdcc
                    CDCC    993 G$TMR4$0$0 == 0xcdcc
                    CDCC    994 _TMR4	=	0xcdcc
                    CFCE    995 G$PCA0CP5$0$0 == 0xcfce
                    CFCE    996 _PCA0CP5	=	0xcfce
                    CFCE    997 G$PCA1CP11$0$0 == 0xcfce
                    CFCE    998 _PCA1CP11	=	0xcfce
                    EAE9    999 G$PCA0CP1$0$0 == 0xeae9
                    EAE9   1000 _PCA0CP1	=	0xeae9
                    EAE9   1001 G$PCA1CP7$0$0 == 0xeae9
                    EAE9   1002 _PCA1CP7	=	0xeae9
                    ECEB   1003 G$PCA0CP2$0$0 == 0xeceb
                    ECEB   1004 _PCA0CP2	=	0xeceb
                    ECEB   1005 G$PCA1CP8$0$0 == 0xeceb
                    ECEB   1006 _PCA1CP8	=	0xeceb
                    EEED   1007 G$PCA0CP3$0$0 == 0xeeed
                    EEED   1008 _PCA0CP3	=	0xeeed
                    EEED   1009 G$PCA1CP9$0$0 == 0xeeed
                    EEED   1010 _PCA1CP9	=	0xeeed
                    FAF9   1011 G$PCA0$0$0 == 0xfaf9
                    FAF9   1012 _PCA0	=	0xfaf9
                    FAF9   1013 G$PCA1$0$0 == 0xfaf9
                    FAF9   1014 _PCA1	=	0xfaf9
                    FCFB   1015 G$PCA0CP0$0$0 == 0xfcfb
                    FCFB   1016 _PCA0CP0	=	0xfcfb
                    FCFB   1017 G$PCA1CP6$0$0 == 0xfcfb
                    FCFB   1018 _PCA1CP6	=	0xfcfb
                    FEFD   1019 G$PCA0CP4$0$0 == 0xfefd
                    FEFD   1020 _PCA0CP4	=	0xfefd
                    FEFD   1021 G$PCA1CP10$0$0 == 0xfefd
                    FEFD   1022 _PCA1CP10	=	0xfefd
                    9796   1023 G$CAN0ERR$0$0 == 0x9796
                    9796   1024 _CAN0ERR	=	0x9796
                    9B9A   1025 G$CAN0BT$0$0 == 0x9b9a
                    9B9A   1026 _CAN0BT	=	0x9b9a
                    9D9C   1027 G$CAN0IID$0$0 == 0x9d9c
                    9D9C   1028 _CAN0IID	=	0x9d9c
                    A3A2   1029 G$CAN0TR1$0$0 == 0xa3a2
                    A3A2   1030 _CAN0TR1	=	0xa3a2
                    A5A4   1031 G$CAN0TR2$0$0 == 0xa5a4
                    A5A4   1032 _CAN0TR2	=	0xa5a4
                    ABAA   1033 G$CAN0ND1$0$0 == 0xabaa
                    ABAA   1034 _CAN0ND1	=	0xabaa
                    ADAC   1035 G$CAN0ND2$0$0 == 0xadac
                    ADAC   1036 _CAN0ND2	=	0xadac
                    AFAE   1037 G$CAN0IP1$0$0 == 0xafae
                    AFAE   1038 _CAN0IP1	=	0xafae
                    B3B2   1039 G$CAN0IP2$0$0 == 0xb3b2
                    B3B2   1040 _CAN0IP2	=	0xb3b2
                    BBBA   1041 G$CAN0MV1$0$0 == 0xbbba
                    BBBA   1042 _CAN0MV1	=	0xbbba
                    BDBC   1043 G$CAN0MV2$0$0 == 0xbdbc
                    BDBC   1044 _CAN0MV2	=	0xbdbc
                    BFBE   1045 G$CAN0IF1CR$0$0 == 0xbfbe
                    BFBE   1046 _CAN0IF1CR	=	0xbfbe
                    C3C2   1047 G$CAN0IF1CM$0$0 == 0xc3c2
                    C3C2   1048 _CAN0IF1CM	=	0xc3c2
                    C5C4   1049 G$CAN0IF1M1$0$0 == 0xc5c4
                    C5C4   1050 _CAN0IF1M1	=	0xc5c4
                    C7C6   1051 G$CAN0IF1M2$0$0 == 0xc7c6
                    C7C6   1052 _CAN0IF1M2	=	0xc7c6
                    CBCA   1053 G$CAN0IF1A1$0$0 == 0xcbca
                    CBCA   1054 _CAN0IF1A1	=	0xcbca
                    CDCC   1055 G$CAN0IF1A2$0$0 == 0xcdcc
                    CDCC   1056 _CAN0IF1A2	=	0xcdcc
                    D3D2   1057 G$CAN0IF1MC$0$0 == 0xd3d2
                    D3D2   1058 _CAN0IF1MC	=	0xd3d2
                    D5D4   1059 G$CAN0IF1DA1$0$0 == 0xd5d4
                    D5D4   1060 _CAN0IF1DA1	=	0xd5d4
                    D7D6   1061 G$CAN0IF1DA2$0$0 == 0xd7d6
                    D7D6   1062 _CAN0IF1DA2	=	0xd7d6
                    DBDA   1063 G$CAN0IF1DB1$0$0 == 0xdbda
                    DBDA   1064 _CAN0IF1DB1	=	0xdbda
                    DDDC   1065 G$CAN0IF1DB2$0$0 == 0xdddc
                    DDDC   1066 _CAN0IF1DB2	=	0xdddc
                    DFDE   1067 G$CAN0IF2CR$0$0 == 0xdfde
                    DFDE   1068 _CAN0IF2CR	=	0xdfde
                    E3E2   1069 G$CAN0IF2CM$0$0 == 0xe3e2
                    E3E2   1070 _CAN0IF2CM	=	0xe3e2
                    EBEA   1071 G$CAN0IF2M1$0$0 == 0xebea
                    EBEA   1072 _CAN0IF2M1	=	0xebea
                    EDEC   1073 G$CAN0IF2M2$0$0 == 0xedec
                    EDEC   1074 _CAN0IF2M2	=	0xedec
                    EFEE   1075 G$CAN0IF2A1$0$0 == 0xefee
                    EFEE   1076 _CAN0IF2A1	=	0xefee
                    F3F2   1077 G$CAN0IF2A2$0$0 == 0xf3f2
                    F3F2   1078 _CAN0IF2A2	=	0xf3f2
                    CFCE   1079 G$CAN0IF2MC$0$0 == 0xcfce
                    CFCE   1080 _CAN0IF2MC	=	0xcfce
                    F7F6   1081 G$CAN0IF2DA1$0$0 == 0xf7f6
                    F7F6   1082 _CAN0IF2DA1	=	0xf7f6
                    FBFA   1083 G$CAN0IF2DA2$0$0 == 0xfbfa
                    FBFA   1084 _CAN0IF2DA2	=	0xfbfa
                    FDFC   1085 G$CAN0IF2DB1$0$0 == 0xfdfc
                    FDFC   1086 _CAN0IF2DB1	=	0xfdfc
                    FFFE   1087 G$CAN0IF2DB2$0$0 == 0xfffe
                    FFFE   1088 _CAN0IF2DB2	=	0xfffe
                    00AA   1089 G$_XPAGE$0$0 == 0x00aa
                    00AA   1090 __XPAGE	=	0x00aa
                           1091 ;--------------------------------------------------------
                           1092 ; special function bits
                           1093 ;--------------------------------------------------------
                           1094 	.area RSEG    (ABS,DATA)
   0000                    1095 	.org 0x0000
                    008F   1096 G$TF1$0$0 == 0x008f
                    008F   1097 _TF1	=	0x008f
                    008E   1098 G$TR1$0$0 == 0x008e
                    008E   1099 _TR1	=	0x008e
                    008D   1100 G$TF0$0$0 == 0x008d
                    008D   1101 _TF0	=	0x008d
                    008C   1102 G$TR0$0$0 == 0x008c
                    008C   1103 _TR0	=	0x008c
                    008B   1104 G$IE1$0$0 == 0x008b
                    008B   1105 _IE1	=	0x008b
                    008A   1106 G$IT1$0$0 == 0x008a
                    008A   1107 _IT1	=	0x008a
                    0089   1108 G$IE0$0$0 == 0x0089
                    0089   1109 _IE0	=	0x0089
                    0088   1110 G$IT0$0$0 == 0x0088
                    0088   1111 _IT0	=	0x0088
                    009F   1112 G$OVR0$0$0 == 0x009f
                    009F   1113 _OVR0	=	0x009f
                    009E   1114 G$PERR0$0$0 == 0x009e
                    009E   1115 _PERR0	=	0x009e
                    009D   1116 G$THRE0$0$0 == 0x009d
                    009D   1117 _THRE0	=	0x009d
                    009C   1118 G$REN0$0$0 == 0x009c
                    009C   1119 _REN0	=	0x009c
                    009B   1120 G$TBX0$0$0 == 0x009b
                    009B   1121 _TBX0	=	0x009b
                    009A   1122 G$RBX0$0$0 == 0x009a
                    009A   1123 _RBX0	=	0x009a
                    0099   1124 G$TI0$0$0 == 0x0099
                    0099   1125 _TI0	=	0x0099
                    0098   1126 G$RI0$0$0 == 0x0098
                    0098   1127 _RI0	=	0x0098
                    009F   1128 G$S1MODE$0$0 == 0x009f
                    009F   1129 _S1MODE	=	0x009f
                    009D   1130 G$MCE1$0$0 == 0x009d
                    009D   1131 _MCE1	=	0x009d
                    009C   1132 G$REN1$0$0 == 0x009c
                    009C   1133 _REN1	=	0x009c
                    009B   1134 G$TB81$0$0 == 0x009b
                    009B   1135 _TB81	=	0x009b
                    009A   1136 G$RB81$0$0 == 0x009a
                    009A   1137 _RB81	=	0x009a
                    0099   1138 G$TI1$0$0 == 0x0099
                    0099   1139 _TI1	=	0x0099
                    0098   1140 G$RI1$0$0 == 0x0098
                    0098   1141 _RI1	=	0x0098
                    00AF   1142 G$EA$0$0 == 0x00af
                    00AF   1143 _EA	=	0x00af
                    00AE   1144 G$ESPI0$0$0 == 0x00ae
                    00AE   1145 _ESPI0	=	0x00ae
                    00AD   1146 G$ET2$0$0 == 0x00ad
                    00AD   1147 _ET2	=	0x00ad
                    00AC   1148 G$ES0$0$0 == 0x00ac
                    00AC   1149 _ES0	=	0x00ac
                    00AB   1150 G$ET1$0$0 == 0x00ab
                    00AB   1151 _ET1	=	0x00ab
                    00AA   1152 G$EX1$0$0 == 0x00aa
                    00AA   1153 _EX1	=	0x00aa
                    00A9   1154 G$ET0$0$0 == 0x00a9
                    00A9   1155 _ET0	=	0x00a9
                    00A8   1156 G$EX0$0$0 == 0x00a8
                    00A8   1157 _EX0	=	0x00a8
                    00BE   1158 G$PSPI0$0$0 == 0x00be
                    00BE   1159 _PSPI0	=	0x00be
                    00BD   1160 G$PT2$0$0 == 0x00bd
                    00BD   1161 _PT2	=	0x00bd
                    00BC   1162 G$PS0$0$0 == 0x00bc
                    00BC   1163 _PS0	=	0x00bc
                    00BC   1164 G$PS$0$0 == 0x00bc
                    00BC   1165 _PS	=	0x00bc
                    00BB   1166 G$PT1$0$0 == 0x00bb
                    00BB   1167 _PT1	=	0x00bb
                    00BA   1168 G$PX1$0$0 == 0x00ba
                    00BA   1169 _PX1	=	0x00ba
                    00B9   1170 G$PT0$0$0 == 0x00b9
                    00B9   1171 _PT0	=	0x00b9
                    00B8   1172 G$PX0$0$0 == 0x00b8
                    00B8   1173 _PX0	=	0x00b8
                    00C7   1174 G$MASTER$0$0 == 0x00c7
                    00C7   1175 _MASTER	=	0x00c7
                    00C6   1176 G$TXMODE$0$0 == 0x00c6
                    00C6   1177 _TXMODE	=	0x00c6
                    00C5   1178 G$STA$0$0 == 0x00c5
                    00C5   1179 _STA	=	0x00c5
                    00C4   1180 G$STO$0$0 == 0x00c4
                    00C4   1181 _STO	=	0x00c4
                    00C3   1182 G$ACKRQ$0$0 == 0x00c3
                    00C3   1183 _ACKRQ	=	0x00c3
                    00C2   1184 G$ARBLOST$0$0 == 0x00c2
                    00C2   1185 _ARBLOST	=	0x00c2
                    00C1   1186 G$ACK$0$0 == 0x00c1
                    00C1   1187 _ACK	=	0x00c1
                    00C0   1188 G$SI$0$0 == 0x00c0
                    00C0   1189 _SI	=	0x00c0
                    00CF   1190 G$TF2H$0$0 == 0x00cf
                    00CF   1191 _TF2H	=	0x00cf
                    00CE   1192 G$TF2L$0$0 == 0x00ce
                    00CE   1193 _TF2L	=	0x00ce
                    00CD   1194 G$TF2LEN$0$0 == 0x00cd
                    00CD   1195 _TF2LEN	=	0x00cd
                    00CC   1196 G$TF2CEN$0$0 == 0x00cc
                    00CC   1197 _TF2CEN	=	0x00cc
                    00CB   1198 G$T2SPLIT$0$0 == 0x00cb
                    00CB   1199 _T2SPLIT	=	0x00cb
                    00CA   1200 G$TR2$0$0 == 0x00ca
                    00CA   1201 _TR2	=	0x00ca
                    00C9   1202 G$T2RCLK$0$0 == 0x00c9
                    00C9   1203 _T2RCLK	=	0x00c9
                    00C8   1204 G$T2XCLK$0$0 == 0x00c8
                    00C8   1205 _T2XCLK	=	0x00c8
                    00CF   1206 G$TF4$0$0 == 0x00cf
                    00CF   1207 _TF4	=	0x00cf
                    00CE   1208 G$EXF4$0$0 == 0x00ce
                    00CE   1209 _EXF4	=	0x00ce
                    00CB   1210 G$EXE4$0$0 == 0x00cb
                    00CB   1211 _EXE4	=	0x00cb
                    00CA   1212 G$TR4$0$0 == 0x00ca
                    00CA   1213 _TR4	=	0x00ca
                    00C9   1214 G$CT4$0$0 == 0x00c9
                    00C9   1215 _CT4	=	0x00c9
                    00C8   1216 G$CPRL4$0$0 == 0x00c8
                    00C8   1217 _CPRL4	=	0x00c8
                    00D7   1218 G$CY$0$0 == 0x00d7
                    00D7   1219 _CY	=	0x00d7
                    00D6   1220 G$AC$0$0 == 0x00d6
                    00D6   1221 _AC	=	0x00d6
                    00D5   1222 G$F0$0$0 == 0x00d5
                    00D5   1223 _F0	=	0x00d5
                    00D4   1224 G$RS1$0$0 == 0x00d4
                    00D4   1225 _RS1	=	0x00d4
                    00D3   1226 G$RS0$0$0 == 0x00d3
                    00D3   1227 _RS0	=	0x00d3
                    00D2   1228 G$OV$0$0 == 0x00d2
                    00D2   1229 _OV	=	0x00d2
                    00D1   1230 G$F1$0$0 == 0x00d1
                    00D1   1231 _F1	=	0x00d1
                    00D0   1232 G$P$0$0 == 0x00d0
                    00D0   1233 _P	=	0x00d0
                    00DF   1234 G$CF$0$0 == 0x00df
                    00DF   1235 _CF	=	0x00df
                    00DE   1236 G$CR$0$0 == 0x00de
                    00DE   1237 _CR	=	0x00de
                    00DD   1238 G$CCF5$0$0 == 0x00dd
                    00DD   1239 _CCF5	=	0x00dd
                    00DC   1240 G$CCF4$0$0 == 0x00dc
                    00DC   1241 _CCF4	=	0x00dc
                    00DB   1242 G$CCF3$0$0 == 0x00db
                    00DB   1243 _CCF3	=	0x00db
                    00DA   1244 G$CCF2$0$0 == 0x00da
                    00DA   1245 _CCF2	=	0x00da
                    00D9   1246 G$CCF1$0$0 == 0x00d9
                    00D9   1247 _CCF1	=	0x00d9
                    00D8   1248 G$CCF0$0$0 == 0x00d8
                    00D8   1249 _CCF0	=	0x00d8
                    00DF   1250 G$CF1$0$0 == 0x00df
                    00DF   1251 _CF1	=	0x00df
                    00DE   1252 G$CR1$0$0 == 0x00de
                    00DE   1253 _CR1	=	0x00de
                    00DD   1254 G$CCF11$0$0 == 0x00dd
                    00DD   1255 _CCF11	=	0x00dd
                    00DC   1256 G$CCF10$0$0 == 0x00dc
                    00DC   1257 _CCF10	=	0x00dc
                    00DB   1258 G$CCF9$0$0 == 0x00db
                    00DB   1259 _CCF9	=	0x00db
                    00DA   1260 G$CCF8$0$0 == 0x00da
                    00DA   1261 _CCF8	=	0x00da
                    00D9   1262 G$CCF7$0$0 == 0x00d9
                    00D9   1263 _CCF7	=	0x00d9
                    00D8   1264 G$CCF6$0$0 == 0x00d8
                    00D8   1265 _CCF6	=	0x00d8
                    00EF   1266 G$AD0EN$0$0 == 0x00ef
                    00EF   1267 _AD0EN	=	0x00ef
                    00EE   1268 G$BURSTEN$0$0 == 0x00ee
                    00EE   1269 _BURSTEN	=	0x00ee
                    00ED   1270 G$AD0INT$0$0 == 0x00ed
                    00ED   1271 _AD0INT	=	0x00ed
                    00EC   1272 G$AD0BUSY$0$0 == 0x00ec
                    00EC   1273 _AD0BUSY	=	0x00ec
                    00EB   1274 G$AD0WINT$0$0 == 0x00eb
                    00EB   1275 _AD0WINT	=	0x00eb
                    00EA   1276 G$AD0LJST$0$0 == 0x00ea
                    00EA   1277 _AD0LJST	=	0x00ea
                    00E9   1278 G$AD0CM1$0$0 == 0x00e9
                    00E9   1279 _AD0CM1	=	0x00e9
                    00E8   1280 G$AD0CM0$0$0 == 0x00e8
                    00E8   1281 _AD0CM0	=	0x00e8
                    00FF   1282 G$SPIF$0$0 == 0x00ff
                    00FF   1283 _SPIF	=	0x00ff
                    00FE   1284 G$WCOL$0$0 == 0x00fe
                    00FE   1285 _WCOL	=	0x00fe
                    00FD   1286 G$MODF$0$0 == 0x00fd
                    00FD   1287 _MODF	=	0x00fd
                    00FC   1288 G$RXOVRN$0$0 == 0x00fc
                    00FC   1289 _RXOVRN	=	0x00fc
                    00FB   1290 G$NSSMD1$0$0 == 0x00fb
                    00FB   1291 _NSSMD1	=	0x00fb
                    00FA   1292 G$NSSMD0$0$0 == 0x00fa
                    00FA   1293 _NSSMD0	=	0x00fa
                    00F9   1294 G$TXBMT$0$0 == 0x00f9
                    00F9   1295 _TXBMT	=	0x00f9
                    00F8   1296 G$SPIEN$0$0 == 0x00f8
                    00F8   1297 _SPIEN	=	0x00f8
                    00B2   1298 G$LED$0$0 == 0x00b2
                    00B2   1299 _LED	=	0x00b2
                    0091   1300 G$DAC1_SEL$0$0 == 0x0091
                    0091   1301 _DAC1_SEL	=	0x0091
                           1302 ;--------------------------------------------------------
                           1303 ; overlayable register banks
                           1304 ;--------------------------------------------------------
                           1305 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                    1306 	.ds 8
                           1307 ;--------------------------------------------------------
                           1308 ; internal ram data
                           1309 ;--------------------------------------------------------
                           1310 	.area DSEG    (DATA)
                    0000   1311 G$gvuiLEDTimer$0$0==.
   0008                    1312 _gvuiLEDTimer::
   0008                    1313 	.ds 2
                    0002   1314 G$gvuiDelayTimer$0$0==.
   000A                    1315 _gvuiDelayTimer::
   000A                    1316 	.ds 2
                    0004   1317 G$gvcState$0$0==.
   000C                    1318 _gvcState::
   000C                    1319 	.ds 1
                    0005   1320 G$gbIntState$0$0==.
   000D                    1321 _gbIntState::
   000D                    1322 	.ds 1
                    0006   1323 G$gvuiTotalCount$0$0==.
   000E                    1324 _gvuiTotalCount::
   000E                    1325 	.ds 2
                    0008   1326 G$gvuiDutyCount$0$0==.
   0010                    1327 _gvuiDutyCount::
   0010                    1328 	.ds 2
                    000A   1329 Lmain$uiADC_Count$1$1==.
   0012                    1330 _main_uiADC_Count_1_1:
   0012                    1331 	.ds 2
                    000C   1332 Lmain$fTemp$1$1==.
   0014                    1333 _main_fTemp_1_1:
   0014                    1334 	.ds 4
                    0010   1335 Lmain$bArray$1$1==.
   0018                    1336 _main_bArray_1_1:
   0018                    1337 	.ds 14
                    001E   1338 Lmain$uiPeriod$1$1==.
   0026                    1339 _main_uiPeriod_1_1:
   0026                    1340 	.ds 2
                    0020   1341 Lmain$uiDuty$1$1==.
   0028                    1342 _main_uiDuty_1_1:
   0028                    1343 	.ds 2
                           1344 ;--------------------------------------------------------
                           1345 ; overlayable items in internal ram 
                           1346 ;--------------------------------------------------------
                           1347 	.area	OSEG    (OVR,DATA)
                           1348 	.area	OSEG    (OVR,DATA)
                           1349 	.area	OSEG    (OVR,DATA)
                           1350 	.area	OSEG    (OVR,DATA)
                           1351 ;--------------------------------------------------------
                           1352 ; Stack segment in internal ram 
                           1353 ;--------------------------------------------------------
                           1354 	.area	SSEG	(DATA)
   002C                    1355 __start__stack:
   002C                    1356 	.ds	1
                           1357 
                           1358 ;--------------------------------------------------------
                           1359 ; indirectly addressable internal ram data
                           1360 ;--------------------------------------------------------
                           1361 	.area ISEG    (DATA)
                           1362 ;--------------------------------------------------------
                           1363 ; absolute internal ram data
                           1364 ;--------------------------------------------------------
                           1365 	.area IABS    (ABS,DATA)
                           1366 	.area IABS    (ABS,DATA)
                           1367 ;--------------------------------------------------------
                           1368 ; bit data
                           1369 ;--------------------------------------------------------
                           1370 	.area BSEG    (BIT)
                           1371 ;--------------------------------------------------------
                           1372 ; paged external ram data
                           1373 ;--------------------------------------------------------
                           1374 	.area PSEG    (PAG,XDATA)
                           1375 ;--------------------------------------------------------
                           1376 ; external ram data
                           1377 ;--------------------------------------------------------
                           1378 	.area XSEG    (XDATA)
                           1379 ;--------------------------------------------------------
                           1380 ; absolute external ram data
                           1381 ;--------------------------------------------------------
                           1382 	.area XABS    (ABS,XDATA)
                           1383 ;--------------------------------------------------------
                           1384 ; external initialized ram data
                           1385 ;--------------------------------------------------------
                           1386 	.area XISEG   (XDATA)
                           1387 	.area HOME    (CODE)
                           1388 	.area GSINIT0 (CODE)
                           1389 	.area GSINIT1 (CODE)
                           1390 	.area GSINIT2 (CODE)
                           1391 	.area GSINIT3 (CODE)
                           1392 	.area GSINIT4 (CODE)
                           1393 	.area GSINIT5 (CODE)
                           1394 	.area GSINIT  (CODE)
                           1395 	.area GSFINAL (CODE)
                           1396 	.area CSEG    (CODE)
                           1397 ;--------------------------------------------------------
                           1398 ; interrupt vector 
                           1399 ;--------------------------------------------------------
                           1400 	.area HOME    (CODE)
   0000                    1401 __interrupt_vect:
   0000 02 00 2B           1402 	ljmp	__sdcc_gsinit_startup
   0003 02 01 0D           1403 	ljmp	_INT0_ISR
   0006                    1404 	.ds	5
   000B 02 00 8E           1405 	ljmp	_Timer0_ISR
   000E                    1406 	.ds	5
   0013 32                 1407 	reti
   0014                    1408 	.ds	7
   001B 32                 1409 	reti
   001C                    1410 	.ds	7
   0023 02 00 C9           1411 	ljmp	_UART0_ISR
                           1412 ;--------------------------------------------------------
                           1413 ; global & static initialisations
                           1414 ;--------------------------------------------------------
                           1415 	.area HOME    (CODE)
                           1416 	.area GSINIT  (CODE)
                           1417 	.area GSFINAL (CODE)
                           1418 	.area GSINIT  (CODE)
                           1419 	.globl __sdcc_gsinit_startup
                           1420 	.globl __sdcc_program_startup
                           1421 	.globl __start__stack
                           1422 	.globl __mcs51_genXINIT
                           1423 	.globl __mcs51_genXRAMCLEAR
                           1424 	.globl __mcs51_genRAMCLEAR
                           1425 	.area GSFINAL (CODE)
   0084 02 00 26           1426 	ljmp	__sdcc_program_startup
                           1427 ;--------------------------------------------------------
                           1428 ; Home
                           1429 ;--------------------------------------------------------
                           1430 	.area HOME    (CODE)
                           1431 	.area HOME    (CODE)
   0026                    1432 __sdcc_program_startup:
   0026 12 01 7B           1433 	lcall	_main
                           1434 ;	return from main will lock up
   0029 80 FE              1435 	sjmp .
                           1436 ;--------------------------------------------------------
                           1437 ; code
                           1438 ;--------------------------------------------------------
                           1439 	.area CSEG    (CODE)
                           1440 ;------------------------------------------------------------
                           1441 ;Allocation info for local variables in function '_sdcc_external_startup'
                           1442 ;------------------------------------------------------------
                           1443 ;------------------------------------------------------------
                    0000   1444 	G$_sdcc_external_startup$0$0 ==.
                    0000   1445 	C$BSH.c$14$0$0 ==.
                           1446 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:14: unsigned char _sdcc_external_startup(void)
                           1447 ;	-----------------------------------------
                           1448 ;	 function _sdcc_external_startup
                           1449 ;	-----------------------------------------
   0087                    1450 __sdcc_external_startup:
                    0002   1451 	ar2 = 0x02
                    0003   1452 	ar3 = 0x03
                    0004   1453 	ar4 = 0x04
                    0005   1454 	ar5 = 0x05
                    0006   1455 	ar6 = 0x06
                    0007   1456 	ar7 = 0x07
                    0000   1457 	ar0 = 0x00
                    0001   1458 	ar1 = 0x01
                    0000   1459 	C$BSH.c$16$1$1 ==.
                           1460 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:16: PCA0MD &= ~0x40;                          // disable watchdog
   0087 53 D9 BF           1461 	anl	_PCA0MD,#0xBF
                    0003   1462 	C$BSH.c$17$1$1 ==.
                           1463 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:17: return 0;                                 // default value
   008A 75 82 00           1464 	mov	dpl,#0x00
                    0006   1465 	C$BSH.c$18$1$1 ==.
                    0006   1466 	XG$_sdcc_external_startup$0$0 ==.
   008D 22                 1467 	ret
                           1468 ;------------------------------------------------------------
                           1469 ;Allocation info for local variables in function 'Timer0_ISR'
                           1470 ;------------------------------------------------------------
                           1471 ;------------------------------------------------------------
                    0007   1472 	G$Timer0_ISR$0$0 ==.
                    0007   1473 	C$BSH.c$73$1$1 ==.
                           1474 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:73: void Timer0_ISR(void) __interrupt 1
                           1475 ;	-----------------------------------------
                           1476 ;	 function Timer0_ISR
                           1477 ;	-----------------------------------------
   008E                    1478 _Timer0_ISR:
   008E C0 E0              1479 	push	acc
   0090 C0 D0              1480 	push	psw
   0092 75 D0 00           1481 	mov	psw,#0x00
                    000E   1482 	C$BSH.c$75$1$1 ==.
                           1483 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:75: if(gvuiLEDTimer == 0)
   0095 E5 08              1484 	mov	a,_gvuiLEDTimer
   0097 45 09              1485 	orl	a,(_gvuiLEDTimer + 1)
   0099 70 08              1486 	jnz	00102$
                    0014   1487 	C$BSH.c$77$2$2 ==.
                           1488 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:77: LED = !LED;
   009B B2 B2              1489 	cpl	_LED
                    0016   1490 	C$BSH.c$78$2$2 ==.
                           1491 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:78: gvuiLEDTimer = 500;
   009D 75 08 F4           1492 	mov	_gvuiLEDTimer,#0xF4
   00A0 75 09 01           1493 	mov	(_gvuiLEDTimer + 1),#0x01
   00A3                    1494 00102$:
                    001C   1495 	C$BSH.c$80$1$1 ==.
                           1496 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:80: if(gvuiLEDTimer)
   00A3 E5 08              1497 	mov	a,_gvuiLEDTimer
   00A5 45 09              1498 	orl	a,(_gvuiLEDTimer + 1)
   00A7 60 09              1499 	jz	00104$
                    0022   1500 	C$BSH.c$81$1$1 ==.
                           1501 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:81: --gvuiLEDTimer;
   00A9 15 08              1502 	dec	_gvuiLEDTimer
   00AB 74 FF              1503 	mov	a,#0xff
   00AD B5 08 02           1504 	cjne	a,_gvuiLEDTimer,00114$
   00B0 15 09              1505 	dec	(_gvuiLEDTimer + 1)
   00B2                    1506 00114$:
   00B2                    1507 00104$:
                    002B   1508 	C$BSH.c$82$1$1 ==.
                           1509 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:82: if(gvuiDelayTimer)
   00B2 E5 0A              1510 	mov	a,_gvuiDelayTimer
   00B4 45 0B              1511 	orl	a,(_gvuiDelayTimer + 1)
   00B6 60 09              1512 	jz	00106$
                    0031   1513 	C$BSH.c$83$1$1 ==.
                           1514 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:83: --gvuiDelayTimer;
   00B8 15 0A              1515 	dec	_gvuiDelayTimer
   00BA 74 FF              1516 	mov	a,#0xff
   00BC B5 0A 02           1517 	cjne	a,_gvuiDelayTimer,00116$
   00BF 15 0B              1518 	dec	(_gvuiDelayTimer + 1)
   00C1                    1519 00116$:
   00C1                    1520 00106$:
                    003A   1521 	C$BSH.c$85$1$1 ==.
                           1522 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:85: TCON &= ~0x20;
   00C1 53 88 DF           1523 	anl	_TCON,#0xDF
   00C4 D0 D0              1524 	pop	psw
   00C6 D0 E0              1525 	pop	acc
                    0041   1526 	C$BSH.c$86$1$1 ==.
                    0041   1527 	XG$Timer0_ISR$0$0 ==.
   00C8 32                 1528 	reti
                           1529 ;	eliminated unneeded push/pop dpl
                           1530 ;	eliminated unneeded push/pop dph
                           1531 ;	eliminated unneeded push/pop b
                           1532 ;------------------------------------------------------------
                           1533 ;Allocation info for local variables in function 'UART0_ISR'
                           1534 ;------------------------------------------------------------
                           1535 ;cData                     Allocated to registers r2 
                           1536 ;------------------------------------------------------------
                    0042   1537 	G$UART0_ISR$0$0 ==.
                    0042   1538 	C$BSH.c$89$1$1 ==.
                           1539 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:89: void UART0_ISR(void) __interrupt 4
                           1540 ;	-----------------------------------------
                           1541 ;	 function UART0_ISR
                           1542 ;	-----------------------------------------
   00C9                    1543 _UART0_ISR:
   00C9 C0 E0              1544 	push	acc
   00CB C0 F0              1545 	push	b
   00CD C0 02              1546 	push	ar2
   00CF C0 D0              1547 	push	psw
   00D1 75 D0 00           1548 	mov	psw,#0x00
                    004D   1549 	C$BSH.c$93$1$1 ==.
                           1550 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:93: if(RI0)
                    004D   1551 	C$BSH.c$95$2$2 ==.
                           1552 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:95: RI0 = 0;                                     // Clear interrupt flag
   00D4 10 98 02           1553 	jbc	_RI0,00118$
   00D7 80 26              1554 	sjmp	00108$
   00D9                    1555 00118$:
                    0052   1556 	C$BSH.c$96$2$2 ==.
                           1557 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:96: if(SCON0 & 0x80)
   00D9 E5 98              1558 	mov	a,_SCON0
   00DB 30 E7 03           1559 	jnb	acc.7,00102$
                    0057   1560 	C$BSH.c$97$2$2 ==.
                           1561 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:97: SCON0 &= ~0x80;
   00DE 53 98 7F           1562 	anl	_SCON0,#0x7F
   00E1                    1563 00102$:
                    005A   1564 	C$BSH.c$98$2$2 ==.
                           1565 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:98: cData = SBUF0;                               // Get character from buffer
   00E1 AA 99              1566 	mov	r2,_SBUF0
                    005C   1567 	C$BSH.c$99$2$2 ==.
                           1568 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:99: if((cData >= '0') && (cData <= '9')) 
   00E3 C3                 1569 	clr	c
   00E4 EA                 1570 	mov	a,r2
   00E5 64 80              1571 	xrl	a,#0x80
   00E7 94 B0              1572 	subb	a,#0xb0
   00E9 40 12              1573 	jc	00104$
   00EB 74 B9              1574 	mov	a,#(0x39 ^ 0x80)
   00ED 8A F0              1575 	mov	b,r2
   00EF 63 F0 80           1576 	xrl	b,#0x80
   00F2 95 F0              1577 	subb	a,b
   00F4 40 07              1578 	jc	00104$
                    006F   1579 	C$BSH.c$100$2$2 ==.
                           1580 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:100: gvcState = cData - 0x30;
   00F6 EA                 1581 	mov	a,r2
   00F7 24 D0              1582 	add	a,#0xd0
   00F9 F5 0C              1583 	mov	_gvcState,a
   00FB 80 02              1584 	sjmp	00108$
   00FD                    1585 00104$:
                    0076   1586 	C$BSH.c$102$2$2 ==.
                           1587 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:102: gvcState = cData;
   00FD 8A 0C              1588 	mov	_gvcState,r2
   00FF                    1589 00108$:
                    0078   1590 	C$BSH.c$104$1$1 ==.
                           1591 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:104: if(TI0)                                        // BYTE of data has been transmitted 
                    0078   1592 	C$BSH.c$105$1$1 ==.
                           1593 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:105: TI0 = 0;                                     // Clear interrupt flag
   00FF 10 99 02           1594 	jbc	_TI0,00122$
   0102 80 00              1595 	sjmp	00111$
   0104                    1596 00122$:
   0104                    1597 00111$:
   0104 D0 D0              1598 	pop	psw
   0106 D0 02              1599 	pop	ar2
   0108 D0 F0              1600 	pop	b
   010A D0 E0              1601 	pop	acc
                    0085   1602 	C$BSH.c$106$1$1 ==.
                    0085   1603 	XG$UART0_ISR$0$0 ==.
   010C 32                 1604 	reti
                           1605 ;	eliminated unneeded push/pop dpl
                           1606 ;	eliminated unneeded push/pop dph
                           1607 ;------------------------------------------------------------
                           1608 ;Allocation info for local variables in function 'INT0_ISR'
                           1609 ;------------------------------------------------------------
                           1610 ;------------------------------------------------------------
                    0086   1611 	G$INT0_ISR$0$0 ==.
                    0086   1612 	C$BSH.c$109$1$1 ==.
                           1613 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:109: void INT0_ISR(void) __interrupt 0
                           1614 ;	-----------------------------------------
                           1615 ;	 function INT0_ISR
                           1616 ;	-----------------------------------------
   010D                    1617 _INT0_ISR:
   010D C0 E0              1618 	push	acc
   010F C0 02              1619 	push	ar2
   0111 C0 03              1620 	push	ar3
   0113 C0 D0              1621 	push	psw
   0115 75 D0 00           1622 	mov	psw,#0x00
                    0091   1623 	C$BSH.c$111$1$1 ==.
                           1624 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:111: if(gbIntState == FALLING)                      // Caught a falling edge
   0118 E5 0D              1625 	mov	a,_gbIntState
                    0093   1626 	C$BSH.c$114$2$2 ==.
                           1627 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:114: gvuiDutyCount = (unsigned int)TH1;
   011A 70 27              1628 	jnz	00102$
   011C 85 8D 10           1629 	mov	_gvuiDutyCount,_TH1
   011F F5 11              1630 	mov	(_gvuiDutyCount + 1),a
                    009A   1631 	C$BSH.c$115$2$2 ==.
                           1632 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:115: gvuiDutyCount <<= 8;
   0121 85 10 11           1633 	mov	(_gvuiDutyCount + 1),_gvuiDutyCount
   0124 75 10 00           1634 	mov	_gvuiDutyCount,#0x00
                    00A0   1635 	C$BSH.c$116$2$2 ==.
                           1636 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:116: gvuiDutyCount += (unsigned int)TL1;
   0127 AA 8B              1637 	mov	r2,_TL1
   0129 7B 00              1638 	mov	r3,#0x00
   012B EA                 1639 	mov	a,r2
   012C 25 10              1640 	add	a,_gvuiDutyCount
   012E F5 10              1641 	mov	_gvuiDutyCount,a
   0130 EB                 1642 	mov	a,r3
   0131 35 11              1643 	addc	a,(_gvuiDutyCount + 1)
   0133 F5 11              1644 	mov	(_gvuiDutyCount + 1),a
                    00AE   1645 	C$BSH.c$117$2$2 ==.
                           1646 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:117: gbIntState = RISING;                         // Look for a rising edge
   0135 75 0D 01           1647 	mov	_gbIntState,#0x01
                    00B1   1648 	C$BSH.c$118$2$2 ==.
                           1649 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:118: SFRPAGE   = CONFIG_PAGE;
   0138 75 A7 0F           1650 	mov	_SFRPAGE,#0x0F
                    00B4   1651 	C$BSH.c$119$2$2 ==.
                           1652 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:119: IT01CF    = 0x0F;
   013B 75 E4 0F           1653 	mov	_IT01CF,#0x0F
                    00B7   1654 	C$BSH.c$120$2$2 ==.
                           1655 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:120: SFRPAGE   = ACTIVE_PAGE;
   013E 75 A7 00           1656 	mov	_SFRPAGE,#0x00
   0141 80 2C              1657 	sjmp	00103$
   0143                    1658 00102$:
                    00BC   1659 	C$BSH.c$126$2$3 ==.
                           1660 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:126: gvuiTotalCount = (unsigned int)TH1;          // Read in Timer high byte
   0143 85 8D 0E           1661 	mov	_gvuiTotalCount,_TH1
   0146 75 0F 00           1662 	mov	(_gvuiTotalCount + 1),#0x00
                    00C2   1663 	C$BSH.c$127$2$3 ==.
                           1664 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:127: gvuiTotalCount <<= 8;                        // Bit shift
   0149 85 0E 0F           1665 	mov	(_gvuiTotalCount + 1),_gvuiTotalCount
   014C 75 0E 00           1666 	mov	_gvuiTotalCount,#0x00
                    00C8   1667 	C$BSH.c$128$2$3 ==.
                           1668 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:128: gvuiTotalCount += (unsigned int)TL1;         // Read in Timer low byte
   014F AA 8B              1669 	mov	r2,_TL1
   0151 7B 00              1670 	mov	r3,#0x00
   0153 EA                 1671 	mov	a,r2
   0154 25 0E              1672 	add	a,_gvuiTotalCount
   0156 F5 0E              1673 	mov	_gvuiTotalCount,a
   0158 EB                 1674 	mov	a,r3
   0159 35 0F              1675 	addc	a,(_gvuiTotalCount + 1)
   015B F5 0F              1676 	mov	(_gvuiTotalCount + 1),a
                    00D6   1677 	C$BSH.c$129$2$3 ==.
                           1678 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:129: TL1 = 0;                                     // Reset Timer low byte
   015D 75 8B 00           1679 	mov	_TL1,#0x00
                    00D9   1680 	C$BSH.c$130$2$3 ==.
                           1681 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:130: TH1 = 0;                                     // Reset Timer high byte
   0160 75 8D 00           1682 	mov	_TH1,#0x00
                    00DC   1683 	C$BSH.c$131$2$3 ==.
                           1684 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:131: gbIntState = FALLING;                        // Look for a falling edge
   0163 75 0D 00           1685 	mov	_gbIntState,#0x00
                    00DF   1686 	C$BSH.c$132$2$3 ==.
                           1687 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:132: SFRPAGE   = CONFIG_PAGE;
   0166 75 A7 0F           1688 	mov	_SFRPAGE,#0x0F
                    00E2   1689 	C$BSH.c$133$2$3 ==.
                           1690 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:133: IT01CF    = 0x07;
   0169 75 E4 07           1691 	mov	_IT01CF,#0x07
                    00E5   1692 	C$BSH.c$134$2$3 ==.
                           1693 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:134: SFRPAGE   = ACTIVE_PAGE;
   016C 75 A7 00           1694 	mov	_SFRPAGE,#0x00
   016F                    1695 00103$:
                    00E8   1696 	C$BSH.c$137$1$1 ==.
                           1697 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:137: TCON &= ~0x02;
   016F 53 88 FD           1698 	anl	_TCON,#0xFD
   0172 D0 D0              1699 	pop	psw
   0174 D0 03              1700 	pop	ar3
   0176 D0 02              1701 	pop	ar2
   0178 D0 E0              1702 	pop	acc
                    00F3   1703 	C$BSH.c$138$1$1 ==.
                    00F3   1704 	XG$INT0_ISR$0$0 ==.
   017A 32                 1705 	reti
                           1706 ;	eliminated unneeded push/pop dpl
                           1707 ;	eliminated unneeded push/pop dph
                           1708 ;	eliminated unneeded push/pop b
                           1709 ;------------------------------------------------------------
                           1710 ;Allocation info for local variables in function 'main'
                           1711 ;------------------------------------------------------------
                           1712 ;uiADC_Count               Allocated with name '_main_uiADC_Count_1_1'
                           1713 ;fTemp                     Allocated with name '_main_fTemp_1_1'
                           1714 ;bArray                    Allocated with name '_main_bArray_1_1'
                           1715 ;i                         Allocated to registers r2 
                           1716 ;uiPeriod                  Allocated with name '_main_uiPeriod_1_1'
                           1717 ;uiDuty                    Allocated with name '_main_uiDuty_1_1'
                           1718 ;------------------------------------------------------------
                    00F4   1719 	G$main$0$0 ==.
                    00F4   1720 	C$BSH.c$144$1$1 ==.
                           1721 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:144: void main()
                           1722 ;	-----------------------------------------
                           1723 ;	 function main
                           1724 ;	-----------------------------------------
   017B                    1725 _main:
                    00F4   1726 	C$BSH.c$148$1$1 ==.
                           1727 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:148: BYTE bArray[14] = {""};
                    00F4   1728 	C$BSH.c$153$1$1 ==.
                           1729 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:153: gvuiLEDTimer = 0;
                    00F4   1730 	C$BSH.c$154$1$1 ==.
                           1731 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:154: gvuiDelayTimer = 0;
                    00F4   1732 	C$BSH.c$155$1$1 ==.
                           1733 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:155: gvcState = 0;\
   017B E4                 1734 	clr a
   017C F5 18              1735 	mov _main_bArray_1_1,a
   017E F5 08              1736 	mov _gvuiLEDTimer,a
   0180 F5 09              1737 	mov (_gvuiLEDTimer + 1),a
   0182 F5 0A              1738 	mov _gvuiDelayTimer,a
   0184 F5 0B              1739 	mov (_gvuiDelayTimer + 1),a
   0186 F5 0C              1740 	mov _gvcState,a
   0188 75 0D 01           1741 	mov	_gbIntState,#0x01
                    0104   1742 	C$BSH.c$157$1$1 ==.
                           1743 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:157: gvuiTotalCount = 48000;
   018B 75 0E 80           1744 	mov	_gvuiTotalCount,#0x80
   018E 75 0F BB           1745 	mov	(_gvuiTotalCount + 1),#0xBB
                    010A   1746 	C$BSH.c$159$1$1 ==.
                           1747 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:159: Warm_Reset();
   0191 12 07 F6           1748 	lcall	_Warm_Reset
                    010D   1749 	C$BSH.c$160$1$1 ==.
                           1750 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:160: Adjust_Power(0);                              // Output at 12.00 V
   0194 90 00 00           1751 	mov	dptr,#0x0000
   0197 12 07 C0           1752 	lcall	_Adjust_Power
                    0113   1753 	C$BSH.c$161$1$1 ==.
                           1754 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:161: INT0_INT_ENABLE;
   019A 43 A8 01           1755 	orl	_IE,#0x01
                    0116   1756 	C$BSH.c$162$1$1 ==.
                           1757 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:162: do
   019D                    1758 00125$:
                    0116   1759 	C$BSH.c$165$2$2 ==.
                           1760 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:165: uiADC_Count = Read_ADC(VOLTS);
   019D 75 82 13           1761 	mov	dpl,#0x13
   01A0 12 07 72           1762 	lcall	_Read_ADC
                    011C   1763 	C$BSH.c$166$1$1 ==.
                           1764 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:166: fTemp = (float)uiADC_Count;
   01A3 85 82 12           1765 	mov	_main_uiADC_Count_1_1,dpl
   01A6 85 83 13           1766 	mov	(_main_uiADC_Count_1_1 + 1),dph
   01A9 85 13 83           1767 	mov	dph,(_main_uiADC_Count_1_1 + 1)
   01AC 12 0A B7           1768 	lcall	___uint2fs
   01AF 85 82 14           1769 	mov	_main_fTemp_1_1,dpl
   01B2 85 83 15           1770 	mov	(_main_fTemp_1_1 + 1),dph
   01B5 85 F0 16           1771 	mov	(_main_fTemp_1_1 + 2),b
   01B8 F5 17              1772 	mov	(_main_fTemp_1_1 + 3),a
                    0133   1773 	C$BSH.c$167$1$1 ==.
                           1774 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:167: fTemp *= 2.5;
   01BA C0 14              1775 	push	_main_fTemp_1_1
   01BC C0 15              1776 	push	(_main_fTemp_1_1 + 1)
   01BE C0 16              1777 	push	(_main_fTemp_1_1 + 2)
   01C0 C0 17              1778 	push	(_main_fTemp_1_1 + 3)
   01C2 90 00 00           1779 	mov	dptr,#0x0000
   01C5 75 F0 20           1780 	mov	b,#0x20
   01C8 74 40              1781 	mov	a,#0x40
   01CA 12 09 17           1782 	lcall	___fsmul
   01CD 85 82 14           1783 	mov	_main_fTemp_1_1,dpl
   01D0 85 83 15           1784 	mov	(_main_fTemp_1_1 + 1),dph
   01D3 85 F0 16           1785 	mov	(_main_fTemp_1_1 + 2),b
   01D6 F5 17              1786 	mov	(_main_fTemp_1_1 + 3),a
   01D8 E5 81              1787 	mov	a,sp
   01DA 24 FC              1788 	add	a,#0xfc
   01DC F5 81              1789 	mov	sp,a
                    0157   1790 	C$BSH.c$168$1$1 ==.
                           1791 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:168: fTemp /= 4095;
   01DE E4                 1792 	clr	a
   01DF C0 E0              1793 	push	acc
   01E1 74 F0              1794 	mov	a,#0xF0
   01E3 C0 E0              1795 	push	acc
   01E5 74 7F              1796 	mov	a,#0x7F
   01E7 C0 E0              1797 	push	acc
   01E9 74 45              1798 	mov	a,#0x45
   01EB C0 E0              1799 	push	acc
   01ED 85 14 82           1800 	mov	dpl,_main_fTemp_1_1
   01F0 85 15 83           1801 	mov	dph,(_main_fTemp_1_1 + 1)
   01F3 85 16 F0           1802 	mov	b,(_main_fTemp_1_1 + 2)
   01F6 E5 17              1803 	mov	a,(_main_fTemp_1_1 + 3)
   01F8 12 0B 37           1804 	lcall	___fsdiv
   01FB 85 82 14           1805 	mov	_main_fTemp_1_1,dpl
   01FE 85 83 15           1806 	mov	(_main_fTemp_1_1 + 1),dph
   0201 85 F0 16           1807 	mov	(_main_fTemp_1_1 + 2),b
   0204 F5 17              1808 	mov	(_main_fTemp_1_1 + 3),a
   0206 E5 81              1809 	mov	a,sp
   0208 24 FC              1810 	add	a,#0xfc
   020A F5 81              1811 	mov	sp,a
                    0185   1812 	C$BSH.c$169$1$1 ==.
                           1813 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:169: fTemp *= 1000;
   020C C0 14              1814 	push	_main_fTemp_1_1
   020E C0 15              1815 	push	(_main_fTemp_1_1 + 1)
   0210 C0 16              1816 	push	(_main_fTemp_1_1 + 2)
   0212 C0 17              1817 	push	(_main_fTemp_1_1 + 3)
   0214 90 00 00           1818 	mov	dptr,#0x0000
   0217 75 F0 7A           1819 	mov	b,#0x7A
   021A 74 44              1820 	mov	a,#0x44
   021C 12 09 17           1821 	lcall	___fsmul
   021F 85 82 14           1822 	mov	_main_fTemp_1_1,dpl
   0222 85 83 15           1823 	mov	(_main_fTemp_1_1 + 1),dph
   0225 85 F0 16           1824 	mov	(_main_fTemp_1_1 + 2),b
   0228 F5 17              1825 	mov	(_main_fTemp_1_1 + 3),a
   022A E5 81              1826 	mov	a,sp
   022C 24 FC              1827 	add	a,#0xfc
   022E F5 81              1828 	mov	sp,a
                    01A9   1829 	C$BSH.c$170$1$1 ==.
                           1830 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:170: uiADC_Count = (unsigned int)fTemp;
   0230 85 14 82           1831 	mov	dpl,_main_fTemp_1_1
   0233 85 15 83           1832 	mov	dph,(_main_fTemp_1_1 + 1)
   0236 85 16 F0           1833 	mov	b,(_main_fTemp_1_1 + 2)
   0239 E5 17              1834 	mov	a,(_main_fTemp_1_1 + 3)
   023B 12 0A C3           1835 	lcall	___fs2uint
                    01B7   1836 	C$BSH.c$171$2$2 ==.
                           1837 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:171: bArray[3] = (uiADC_Count % 10) + 0x30;
   023E 85 82 12           1838 	mov	_main_uiADC_Count_1_1,dpl
   0241 85 83 13           1839 	mov	(_main_uiADC_Count_1_1 + 1),dph
   0244 75 2A 0A           1840 	mov	__moduint_PARM_2,#0x0A
   0247 75 2B 00           1841 	mov	(__moduint_PARM_2 + 1),#0x00
   024A 12 0A 11           1842 	lcall	__moduint
   024D AA 82              1843 	mov	r2,dpl
   024F 74 30              1844 	mov	a,#0x30
   0251 2A                 1845 	add	a,r2
   0252 F5 1B              1846 	mov	(_main_bArray_1_1 + 0x0003),a
                    01CD   1847 	C$BSH.c$172$1$1 ==.
                           1848 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:172: uiADC_Count /= 10;
   0254 75 2A 0A           1849 	mov	__divuint_PARM_2,#0x0A
   0257 75 2B 00           1850 	mov	(__divuint_PARM_2 + 1),#0x00
   025A 85 12 82           1851 	mov	dpl,_main_uiADC_Count_1_1
   025D 85 13 83           1852 	mov	dph,(_main_uiADC_Count_1_1 + 1)
   0260 12 08 EE           1853 	lcall	__divuint
                    01DC   1854 	C$BSH.c$173$2$2 ==.
                           1855 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:173: bArray[2] = (uiADC_Count % 10) + 0x30;
   0263 85 82 12           1856 	mov	_main_uiADC_Count_1_1,dpl
   0266 85 83 13           1857 	mov	(_main_uiADC_Count_1_1 + 1),dph
   0269 75 2A 0A           1858 	mov	__moduint_PARM_2,#0x0A
   026C 75 2B 00           1859 	mov	(__moduint_PARM_2 + 1),#0x00
   026F 12 0A 11           1860 	lcall	__moduint
   0272 AA 82              1861 	mov	r2,dpl
   0274 74 30              1862 	mov	a,#0x30
   0276 2A                 1863 	add	a,r2
   0277 F5 1A              1864 	mov	(_main_bArray_1_1 + 0x0002),a
                    01F2   1865 	C$BSH.c$174$1$1 ==.
                           1866 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:174: uiADC_Count /= 10;
   0279 75 2A 0A           1867 	mov	__divuint_PARM_2,#0x0A
   027C 75 2B 00           1868 	mov	(__divuint_PARM_2 + 1),#0x00
   027F 85 12 82           1869 	mov	dpl,_main_uiADC_Count_1_1
   0282 85 13 83           1870 	mov	dph,(_main_uiADC_Count_1_1 + 1)
   0285 12 08 EE           1871 	lcall	__divuint
                    0201   1872 	C$BSH.c$175$2$2 ==.
                           1873 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:175: bArray[1] = (uiADC_Count % 10) + 0x30;
   0288 85 82 12           1874 	mov	_main_uiADC_Count_1_1,dpl
   028B 85 83 13           1875 	mov	(_main_uiADC_Count_1_1 + 1),dph
   028E 75 2A 0A           1876 	mov	__moduint_PARM_2,#0x0A
   0291 75 2B 00           1877 	mov	(__moduint_PARM_2 + 1),#0x00
   0294 12 0A 11           1878 	lcall	__moduint
   0297 AA 82              1879 	mov	r2,dpl
   0299 74 30              1880 	mov	a,#0x30
   029B 2A                 1881 	add	a,r2
   029C F5 19              1882 	mov	(_main_bArray_1_1 + 0x0001),a
                    0217   1883 	C$BSH.c$176$1$1 ==.
                           1884 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:176: uiADC_Count /= 10;
   029E 75 2A 0A           1885 	mov	__divuint_PARM_2,#0x0A
   02A1 75 2B 00           1886 	mov	(__divuint_PARM_2 + 1),#0x00
   02A4 85 12 82           1887 	mov	dpl,_main_uiADC_Count_1_1
   02A7 85 13 83           1888 	mov	dph,(_main_uiADC_Count_1_1 + 1)
   02AA 12 08 EE           1889 	lcall	__divuint
                    0226   1890 	C$BSH.c$177$1$1 ==.
                           1891 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:177: bArray[0] = (uiADC_Count % 10) + 0x30;
   02AD 85 82 12           1892 	mov	_main_uiADC_Count_1_1,dpl
   02B0 85 83 13           1893 	mov	(_main_uiADC_Count_1_1 + 1),dph
   02B3 75 2A 0A           1894 	mov	__moduint_PARM_2,#0x0A
   02B6 75 2B 00           1895 	mov	(__moduint_PARM_2 + 1),#0x00
   02B9 12 0A 11           1896 	lcall	__moduint
   02BC AA 82              1897 	mov	r2,dpl
   02BE 74 30              1898 	mov	a,#0x30
   02C0 2A                 1899 	add	a,r2
   02C1 F5 18              1900 	mov	_main_bArray_1_1,a
                    023C   1901 	C$BSH.c$181$2$2 ==.
                           1902 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:181: uiADC_Count = Read_ADC(AMPS);
   02C3 75 82 12           1903 	mov	dpl,#0x12
   02C6 12 07 72           1904 	lcall	_Read_ADC
                    0242   1905 	C$BSH.c$182$1$1 ==.
                           1906 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:182: fTemp = (float)uiADC_Count;
   02C9 85 82 12           1907 	mov	_main_uiADC_Count_1_1,dpl
   02CC 85 83 13           1908 	mov	(_main_uiADC_Count_1_1 + 1),dph
   02CF 85 13 83           1909 	mov	dph,(_main_uiADC_Count_1_1 + 1)
   02D2 12 0A B7           1910 	lcall	___uint2fs
   02D5 85 82 14           1911 	mov	_main_fTemp_1_1,dpl
   02D8 85 83 15           1912 	mov	(_main_fTemp_1_1 + 1),dph
   02DB 85 F0 16           1913 	mov	(_main_fTemp_1_1 + 2),b
   02DE F5 17              1914 	mov	(_main_fTemp_1_1 + 3),a
                    0259   1915 	C$BSH.c$183$1$1 ==.
                           1916 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:183: fTemp *= 2.5;
   02E0 C0 14              1917 	push	_main_fTemp_1_1
   02E2 C0 15              1918 	push	(_main_fTemp_1_1 + 1)
   02E4 C0 16              1919 	push	(_main_fTemp_1_1 + 2)
   02E6 C0 17              1920 	push	(_main_fTemp_1_1 + 3)
   02E8 90 00 00           1921 	mov	dptr,#0x0000
   02EB 75 F0 20           1922 	mov	b,#0x20
   02EE 74 40              1923 	mov	a,#0x40
   02F0 12 09 17           1924 	lcall	___fsmul
   02F3 85 82 14           1925 	mov	_main_fTemp_1_1,dpl
   02F6 85 83 15           1926 	mov	(_main_fTemp_1_1 + 1),dph
   02F9 85 F0 16           1927 	mov	(_main_fTemp_1_1 + 2),b
   02FC F5 17              1928 	mov	(_main_fTemp_1_1 + 3),a
   02FE E5 81              1929 	mov	a,sp
   0300 24 FC              1930 	add	a,#0xfc
   0302 F5 81              1931 	mov	sp,a
                    027D   1932 	C$BSH.c$184$1$1 ==.
                           1933 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:184: fTemp /= 4095;
   0304 E4                 1934 	clr	a
   0305 C0 E0              1935 	push	acc
   0307 74 F0              1936 	mov	a,#0xF0
   0309 C0 E0              1937 	push	acc
   030B 74 7F              1938 	mov	a,#0x7F
   030D C0 E0              1939 	push	acc
   030F 74 45              1940 	mov	a,#0x45
   0311 C0 E0              1941 	push	acc
   0313 85 14 82           1942 	mov	dpl,_main_fTemp_1_1
   0316 85 15 83           1943 	mov	dph,(_main_fTemp_1_1 + 1)
   0319 85 16 F0           1944 	mov	b,(_main_fTemp_1_1 + 2)
   031C E5 17              1945 	mov	a,(_main_fTemp_1_1 + 3)
   031E 12 0B 37           1946 	lcall	___fsdiv
   0321 85 82 14           1947 	mov	_main_fTemp_1_1,dpl
   0324 85 83 15           1948 	mov	(_main_fTemp_1_1 + 1),dph
   0327 85 F0 16           1949 	mov	(_main_fTemp_1_1 + 2),b
   032A F5 17              1950 	mov	(_main_fTemp_1_1 + 3),a
   032C E5 81              1951 	mov	a,sp
   032E 24 FC              1952 	add	a,#0xfc
   0330 F5 81              1953 	mov	sp,a
                    02AB   1954 	C$BSH.c$185$1$1 ==.
                           1955 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:185: fTemp *= 100;
   0332 C0 14              1956 	push	_main_fTemp_1_1
   0334 C0 15              1957 	push	(_main_fTemp_1_1 + 1)
   0336 C0 16              1958 	push	(_main_fTemp_1_1 + 2)
   0338 C0 17              1959 	push	(_main_fTemp_1_1 + 3)
   033A 90 00 00           1960 	mov	dptr,#0x0000
   033D 75 F0 C8           1961 	mov	b,#0xC8
   0340 74 42              1962 	mov	a,#0x42
   0342 12 09 17           1963 	lcall	___fsmul
   0345 85 82 14           1964 	mov	_main_fTemp_1_1,dpl
   0348 85 83 15           1965 	mov	(_main_fTemp_1_1 + 1),dph
   034B 85 F0 16           1966 	mov	(_main_fTemp_1_1 + 2),b
   034E F5 17              1967 	mov	(_main_fTemp_1_1 + 3),a
   0350 E5 81              1968 	mov	a,sp
   0352 24 FC              1969 	add	a,#0xfc
   0354 F5 81              1970 	mov	sp,a
                    02CF   1971 	C$BSH.c$186$1$1 ==.
                           1972 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:186: uiADC_Count = (unsigned int)fTemp;
   0356 85 14 82           1973 	mov	dpl,_main_fTemp_1_1
   0359 85 15 83           1974 	mov	dph,(_main_fTemp_1_1 + 1)
   035C 85 16 F0           1975 	mov	b,(_main_fTemp_1_1 + 2)
   035F E5 17              1976 	mov	a,(_main_fTemp_1_1 + 3)
   0361 12 0A C3           1977 	lcall	___fs2uint
                    02DD   1978 	C$BSH.c$187$2$2 ==.
                           1979 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:187: bArray[7] = (uiADC_Count % 10) + 0x30;
   0364 85 82 12           1980 	mov	_main_uiADC_Count_1_1,dpl
   0367 85 83 13           1981 	mov	(_main_uiADC_Count_1_1 + 1),dph
   036A 75 2A 0A           1982 	mov	__moduint_PARM_2,#0x0A
   036D 75 2B 00           1983 	mov	(__moduint_PARM_2 + 1),#0x00
   0370 12 0A 11           1984 	lcall	__moduint
   0373 AA 82              1985 	mov	r2,dpl
   0375 74 30              1986 	mov	a,#0x30
   0377 2A                 1987 	add	a,r2
   0378 F5 1F              1988 	mov	(_main_bArray_1_1 + 0x0007),a
                    02F3   1989 	C$BSH.c$188$1$1 ==.
                           1990 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:188: uiADC_Count /= 10;
   037A 75 2A 0A           1991 	mov	__divuint_PARM_2,#0x0A
   037D 75 2B 00           1992 	mov	(__divuint_PARM_2 + 1),#0x00
   0380 85 12 82           1993 	mov	dpl,_main_uiADC_Count_1_1
   0383 85 13 83           1994 	mov	dph,(_main_uiADC_Count_1_1 + 1)
   0386 12 08 EE           1995 	lcall	__divuint
                    0302   1996 	C$BSH.c$189$2$2 ==.
                           1997 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:189: bArray[6] = (uiADC_Count % 10) + 0x30;
   0389 85 82 12           1998 	mov	_main_uiADC_Count_1_1,dpl
   038C 85 83 13           1999 	mov	(_main_uiADC_Count_1_1 + 1),dph
   038F 75 2A 0A           2000 	mov	__moduint_PARM_2,#0x0A
   0392 75 2B 00           2001 	mov	(__moduint_PARM_2 + 1),#0x00
   0395 12 0A 11           2002 	lcall	__moduint
   0398 AA 82              2003 	mov	r2,dpl
   039A 74 30              2004 	mov	a,#0x30
   039C 2A                 2005 	add	a,r2
   039D F5 1E              2006 	mov	(_main_bArray_1_1 + 0x0006),a
                    0318   2007 	C$BSH.c$190$1$1 ==.
                           2008 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:190: uiADC_Count /= 10;
   039F 75 2A 0A           2009 	mov	__divuint_PARM_2,#0x0A
   03A2 75 2B 00           2010 	mov	(__divuint_PARM_2 + 1),#0x00
   03A5 85 12 82           2011 	mov	dpl,_main_uiADC_Count_1_1
   03A8 85 13 83           2012 	mov	dph,(_main_uiADC_Count_1_1 + 1)
   03AB 12 08 EE           2013 	lcall	__divuint
                    0327   2014 	C$BSH.c$191$2$2 ==.
                           2015 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:191: bArray[5] = (uiADC_Count % 10) + 0x30;
   03AE 85 82 12           2016 	mov	_main_uiADC_Count_1_1,dpl
   03B1 85 83 13           2017 	mov	(_main_uiADC_Count_1_1 + 1),dph
   03B4 75 2A 0A           2018 	mov	__moduint_PARM_2,#0x0A
   03B7 75 2B 00           2019 	mov	(__moduint_PARM_2 + 1),#0x00
   03BA 12 0A 11           2020 	lcall	__moduint
   03BD AA 82              2021 	mov	r2,dpl
   03BF 74 30              2022 	mov	a,#0x30
   03C1 2A                 2023 	add	a,r2
   03C2 F5 1D              2024 	mov	(_main_bArray_1_1 + 0x0005),a
                    033D   2025 	C$BSH.c$192$1$1 ==.
                           2026 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:192: uiADC_Count /= 10;
   03C4 75 2A 0A           2027 	mov	__divuint_PARM_2,#0x0A
   03C7 75 2B 00           2028 	mov	(__divuint_PARM_2 + 1),#0x00
   03CA 85 12 82           2029 	mov	dpl,_main_uiADC_Count_1_1
   03CD 85 13 83           2030 	mov	dph,(_main_uiADC_Count_1_1 + 1)
   03D0 12 08 EE           2031 	lcall	__divuint
                    034C   2032 	C$BSH.c$193$2$2 ==.
                           2033 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:193: bArray[4] = (uiADC_Count % 10) + 0x30;
   03D3 85 82 12           2034 	mov	_main_uiADC_Count_1_1,dpl
   03D6 85 83 13           2035 	mov	(_main_uiADC_Count_1_1 + 1),dph
   03D9 75 2A 0A           2036 	mov	__moduint_PARM_2,#0x0A
   03DC 75 2B 00           2037 	mov	(__moduint_PARM_2 + 1),#0x00
   03DF 12 0A 11           2038 	lcall	__moduint
   03E2 AA 82              2039 	mov	r2,dpl
   03E4 AB 83              2040 	mov	r3,dph
   03E6 74 30              2041 	mov	a,#0x30
   03E8 2A                 2042 	add	a,r2
   03E9 FA                 2043 	mov	r2,a
   03EA 8A 1C              2044 	mov	(_main_bArray_1_1 + 0x0004),r2
                    0365   2045 	C$BSH.c$194$2$2 ==.
                           2046 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:194: if(bArray[4] == 0x30)
   03EC BA 30 13           2047 	cjne	r2,#0x30,00106$
                    0368   2048 	C$BSH.c$196$3$3 ==.
                           2049 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:196: bArray[4] = ' ';
   03EF 75 1C 20           2050 	mov	(_main_bArray_1_1 + 0x0004),#0x20
                    036B   2051 	C$BSH.c$197$3$3 ==.
                           2052 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:197: if(bArray[5] == 0x30)
   03F2 74 30              2053 	mov	a,#0x30
   03F4 B5 1D 0B           2054 	cjne	a,(_main_bArray_1_1 + 0x0005),00106$
                    0370   2055 	C$BSH.c$199$4$4 ==.
                           2056 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:199: bArray[5] = ' ';
   03F7 75 1D 20           2057 	mov	(_main_bArray_1_1 + 0x0005),#0x20
                    0373   2058 	C$BSH.c$200$4$4 ==.
                           2059 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:200: if(bArray[6] == 0x30)
   03FA 74 30              2060 	mov	a,#0x30
   03FC B5 1E 03           2061 	cjne	a,(_main_bArray_1_1 + 0x0006),00106$
                    0378   2062 	C$BSH.c$201$4$4 ==.
                           2063 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:201: bArray[6] = ' ';
   03FF 75 1E 20           2064 	mov	(_main_bArray_1_1 + 0x0006),#0x20
   0402                    2065 00106$:
                    037B   2066 	C$BSH.c$205$2$2 ==.
                           2067 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:205: INT0_INT_DISABLE;
   0402 53 A8 FE           2068 	anl	_IE,#0xFE
   0405 53 A8 FE           2069 	anl	_IE,#0xFE
                    0381   2070 	C$BSH.c$206$2$2 ==.
                           2071 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:206: uiPeriod = gvuiTotalCount;
   0408 85 0E 26           2072 	mov	_main_uiPeriod_1_1,_gvuiTotalCount
   040B 85 0F 27           2073 	mov	(_main_uiPeriod_1_1 + 1),(_gvuiTotalCount + 1)
                    0387   2074 	C$BSH.c$207$2$2 ==.
                           2075 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:207: uiDuty = gvuiDutyCount;
   040E 85 10 28           2076 	mov	_main_uiDuty_1_1,_gvuiDutyCount
   0411 85 11 29           2077 	mov	(_main_uiDuty_1_1 + 1),(_gvuiDutyCount + 1)
                    038D   2078 	C$BSH.c$208$2$2 ==.
                           2079 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:208: INT0_INT_ENABLE;
   0414 43 A8 01           2080 	orl	_IE,#0x01
                    0390   2081 	C$BSH.c$211$1$1 ==.
                           2082 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:211: fTemp = (float)uiDuty;
   0417 85 28 82           2083 	mov	dpl,_main_uiDuty_1_1
   041A 85 29 83           2084 	mov	dph,(_main_uiDuty_1_1 + 1)
   041D 12 0A B7           2085 	lcall	___uint2fs
   0420 85 82 14           2086 	mov	_main_fTemp_1_1,dpl
   0423 85 83 15           2087 	mov	(_main_fTemp_1_1 + 1),dph
   0426 85 F0 16           2088 	mov	(_main_fTemp_1_1 + 2),b
   0429 F5 17              2089 	mov	(_main_fTemp_1_1 + 3),a
                    03A4   2090 	C$BSH.c$212$1$1 ==.
                           2091 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:212: fTemp = fTemp / (float)uiPeriod;
   042B 85 26 82           2092 	mov	dpl,_main_uiPeriod_1_1
   042E 85 27 83           2093 	mov	dph,(_main_uiPeriod_1_1 + 1)
   0431 12 0A B7           2094 	lcall	___uint2fs
   0434 AA 82              2095 	mov	r2,dpl
   0436 AB 83              2096 	mov	r3,dph
   0438 AC F0              2097 	mov	r4,b
   043A FD                 2098 	mov	r5,a
   043B C0 02              2099 	push	ar2
   043D C0 03              2100 	push	ar3
   043F C0 04              2101 	push	ar4
   0441 C0 05              2102 	push	ar5
   0443 85 14 82           2103 	mov	dpl,_main_fTemp_1_1
   0446 85 15 83           2104 	mov	dph,(_main_fTemp_1_1 + 1)
   0449 85 16 F0           2105 	mov	b,(_main_fTemp_1_1 + 2)
   044C E5 17              2106 	mov	a,(_main_fTemp_1_1 + 3)
   044E 12 0B 37           2107 	lcall	___fsdiv
   0451 85 82 14           2108 	mov	_main_fTemp_1_1,dpl
   0454 85 83 15           2109 	mov	(_main_fTemp_1_1 + 1),dph
   0457 85 F0 16           2110 	mov	(_main_fTemp_1_1 + 2),b
   045A F5 17              2111 	mov	(_main_fTemp_1_1 + 3),a
   045C E5 81              2112 	mov	a,sp
   045E 24 FC              2113 	add	a,#0xfc
   0460 F5 81              2114 	mov	sp,a
                    03DB   2115 	C$BSH.c$213$1$1 ==.
                           2116 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:213: fTemp *= 100;
   0462 C0 14              2117 	push	_main_fTemp_1_1
   0464 C0 15              2118 	push	(_main_fTemp_1_1 + 1)
   0466 C0 16              2119 	push	(_main_fTemp_1_1 + 2)
   0468 C0 17              2120 	push	(_main_fTemp_1_1 + 3)
   046A 90 00 00           2121 	mov	dptr,#0x0000
   046D 75 F0 C8           2122 	mov	b,#0xC8
   0470 74 42              2123 	mov	a,#0x42
   0472 12 09 17           2124 	lcall	___fsmul
   0475 85 82 14           2125 	mov	_main_fTemp_1_1,dpl
   0478 85 83 15           2126 	mov	(_main_fTemp_1_1 + 1),dph
   047B 85 F0 16           2127 	mov	(_main_fTemp_1_1 + 2),b
   047E F5 17              2128 	mov	(_main_fTemp_1_1 + 3),a
   0480 E5 81              2129 	mov	a,sp
   0482 24 FC              2130 	add	a,#0xfc
   0484 F5 81              2131 	mov	sp,a
                    03FF   2132 	C$BSH.c$214$1$1 ==.
                           2133 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:214: uiDuty = (unsigned int)fTemp;
   0486 85 14 82           2134 	mov	dpl,_main_fTemp_1_1
   0489 85 15 83           2135 	mov	dph,(_main_fTemp_1_1 + 1)
   048C 85 16 F0           2136 	mov	b,(_main_fTemp_1_1 + 2)
   048F E5 17              2137 	mov	a,(_main_fTemp_1_1 + 3)
   0491 12 0A C3           2138 	lcall	___fs2uint
                    040D   2139 	C$BSH.c$215$2$2 ==.
                           2140 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:215: bArray[9] = (uiDuty % 10) + 0x30;
   0494 85 82 28           2141 	mov	_main_uiDuty_1_1,dpl
   0497 85 83 29           2142 	mov	(_main_uiDuty_1_1 + 1),dph
   049A 75 2A 0A           2143 	mov	__moduint_PARM_2,#0x0A
   049D 75 2B 00           2144 	mov	(__moduint_PARM_2 + 1),#0x00
   04A0 12 0A 11           2145 	lcall	__moduint
   04A3 AA 82              2146 	mov	r2,dpl
   04A5 74 30              2147 	mov	a,#0x30
   04A7 2A                 2148 	add	a,r2
   04A8 F5 21              2149 	mov	(_main_bArray_1_1 + 0x0009),a
                    0423   2150 	C$BSH.c$216$1$1 ==.
                           2151 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:216: uiDuty /= 10;
   04AA 75 2A 0A           2152 	mov	__divuint_PARM_2,#0x0A
   04AD 75 2B 00           2153 	mov	(__divuint_PARM_2 + 1),#0x00
   04B0 85 28 82           2154 	mov	dpl,_main_uiDuty_1_1
   04B3 85 29 83           2155 	mov	dph,(_main_uiDuty_1_1 + 1)
   04B6 12 08 EE           2156 	lcall	__divuint
                    0432   2157 	C$BSH.c$217$2$2 ==.
                           2158 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:217: bArray[8] = (uiDuty % 10) + 0x30;
   04B9 85 82 28           2159 	mov	_main_uiDuty_1_1,dpl
   04BC 85 83 29           2160 	mov	(_main_uiDuty_1_1 + 1),dph
   04BF 75 2A 0A           2161 	mov	__moduint_PARM_2,#0x0A
   04C2 75 2B 00           2162 	mov	(__moduint_PARM_2 + 1),#0x00
   04C5 12 0A 11           2163 	lcall	__moduint
   04C8 AA 82              2164 	mov	r2,dpl
   04CA AB 83              2165 	mov	r3,dph
   04CC 74 30              2166 	mov	a,#0x30
   04CE 2A                 2167 	add	a,r2
   04CF FA                 2168 	mov	r2,a
   04D0 8A 20              2169 	mov	(_main_bArray_1_1 + 0x0008),r2
                    044B   2170 	C$BSH.c$218$2$2 ==.
                           2171 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:218: if(bArray[8] == 0x30)
   04D2 BA 30 03           2172 	cjne	r2,#0x30,00108$
                    044E   2173 	C$BSH.c$219$2$2 ==.
                           2174 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:219: bArray[8] = ' ';
   04D5 75 20 20           2175 	mov	(_main_bArray_1_1 + 0x0008),#0x20
   04D8                    2176 00108$:
                    0451   2177 	C$BSH.c$223$1$1 ==.
                           2178 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:223: fTemp = (float)uiPeriod;
   04D8 85 26 82           2179 	mov	dpl,_main_uiPeriod_1_1
   04DB 85 27 83           2180 	mov	dph,(_main_uiPeriod_1_1 + 1)
   04DE 12 0A B7           2181 	lcall	___uint2fs
   04E1 85 82 14           2182 	mov	_main_fTemp_1_1,dpl
   04E4 85 83 15           2183 	mov	(_main_fTemp_1_1 + 1),dph
   04E7 85 F0 16           2184 	mov	(_main_fTemp_1_1 + 2),b
   04EA F5 17              2185 	mov	(_main_fTemp_1_1 + 3),a
                    0465   2186 	C$BSH.c$224$1$1 ==.
                           2187 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:224: fTemp = 48000000 / fTemp;
   04EC C0 14              2188 	push	_main_fTemp_1_1
   04EE C0 15              2189 	push	(_main_fTemp_1_1 + 1)
   04F0 C0 16              2190 	push	(_main_fTemp_1_1 + 2)
   04F2 C0 17              2191 	push	(_main_fTemp_1_1 + 3)
   04F4 90 1B 00           2192 	mov	dptr,#0x1B00
   04F7 75 F0 37           2193 	mov	b,#0x37
   04FA 74 4C              2194 	mov	a,#0x4C
   04FC 12 0B 37           2195 	lcall	___fsdiv
   04FF 85 82 14           2196 	mov	_main_fTemp_1_1,dpl
   0502 85 83 15           2197 	mov	(_main_fTemp_1_1 + 1),dph
   0505 85 F0 16           2198 	mov	(_main_fTemp_1_1 + 2),b
   0508 F5 17              2199 	mov	(_main_fTemp_1_1 + 3),a
   050A E5 81              2200 	mov	a,sp
   050C 24 FC              2201 	add	a,#0xfc
   050E F5 81              2202 	mov	sp,a
                    0489   2203 	C$BSH.c$225$1$1 ==.
                           2204 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:225: fTemp += 0.5;
   0510 E4                 2205 	clr	a
   0511 C0 E0              2206 	push	acc
   0513 C0 E0              2207 	push	acc
   0515 C0 E0              2208 	push	acc
   0517 74 3F              2209 	mov	a,#0x3F
   0519 C0 E0              2210 	push	acc
   051B 85 14 82           2211 	mov	dpl,_main_fTemp_1_1
   051E 85 15 83           2212 	mov	dph,(_main_fTemp_1_1 + 1)
   0521 85 16 F0           2213 	mov	b,(_main_fTemp_1_1 + 2)
   0524 E5 17              2214 	mov	a,(_main_fTemp_1_1 + 3)
   0526 12 0A 5E           2215 	lcall	___fsadd
   0529 85 82 14           2216 	mov	_main_fTemp_1_1,dpl
   052C 85 83 15           2217 	mov	(_main_fTemp_1_1 + 1),dph
   052F 85 F0 16           2218 	mov	(_main_fTemp_1_1 + 2),b
   0532 F5 17              2219 	mov	(_main_fTemp_1_1 + 3),a
   0534 E5 81              2220 	mov	a,sp
   0536 24 FC              2221 	add	a,#0xfc
   0538 F5 81              2222 	mov	sp,a
                    04B3   2223 	C$BSH.c$226$1$1 ==.
                           2224 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:226: uiPeriod = (unsigned int)fTemp;
   053A 85 14 82           2225 	mov	dpl,_main_fTemp_1_1
   053D 85 15 83           2226 	mov	dph,(_main_fTemp_1_1 + 1)
   0540 85 16 F0           2227 	mov	b,(_main_fTemp_1_1 + 2)
   0543 E5 17              2228 	mov	a,(_main_fTemp_1_1 + 3)
   0545 12 0A C3           2229 	lcall	___fs2uint
                    04C1   2230 	C$BSH.c$227$2$2 ==.
                           2231 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:227: bArray[13] = (uiPeriod % 10) + 0x30;
   0548 85 82 26           2232 	mov	_main_uiPeriod_1_1,dpl
   054B 85 83 27           2233 	mov	(_main_uiPeriod_1_1 + 1),dph
   054E 75 2A 0A           2234 	mov	__moduint_PARM_2,#0x0A
   0551 75 2B 00           2235 	mov	(__moduint_PARM_2 + 1),#0x00
   0554 12 0A 11           2236 	lcall	__moduint
   0557 AA 82              2237 	mov	r2,dpl
   0559 74 30              2238 	mov	a,#0x30
   055B 2A                 2239 	add	a,r2
   055C F5 25              2240 	mov	(_main_bArray_1_1 + 0x000d),a
                    04D7   2241 	C$BSH.c$228$1$1 ==.
                           2242 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:228: uiPeriod /= 10;
   055E 75 2A 0A           2243 	mov	__divuint_PARM_2,#0x0A
   0561 75 2B 00           2244 	mov	(__divuint_PARM_2 + 1),#0x00
   0564 85 26 82           2245 	mov	dpl,_main_uiPeriod_1_1
   0567 85 27 83           2246 	mov	dph,(_main_uiPeriod_1_1 + 1)
   056A 12 08 EE           2247 	lcall	__divuint
                    04E6   2248 	C$BSH.c$229$2$2 ==.
                           2249 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:229: bArray[12] = (uiPeriod % 10) + 0x30;
   056D 85 82 26           2250 	mov	_main_uiPeriod_1_1,dpl
   0570 85 83 27           2251 	mov	(_main_uiPeriod_1_1 + 1),dph
   0573 75 2A 0A           2252 	mov	__moduint_PARM_2,#0x0A
   0576 75 2B 00           2253 	mov	(__moduint_PARM_2 + 1),#0x00
   0579 12 0A 11           2254 	lcall	__moduint
   057C AA 82              2255 	mov	r2,dpl
   057E 74 30              2256 	mov	a,#0x30
   0580 2A                 2257 	add	a,r2
   0581 F5 24              2258 	mov	(_main_bArray_1_1 + 0x000c),a
                    04FC   2259 	C$BSH.c$230$1$1 ==.
                           2260 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:230: uiPeriod /= 10;
   0583 75 2A 0A           2261 	mov	__divuint_PARM_2,#0x0A
   0586 75 2B 00           2262 	mov	(__divuint_PARM_2 + 1),#0x00
   0589 85 26 82           2263 	mov	dpl,_main_uiPeriod_1_1
   058C 85 27 83           2264 	mov	dph,(_main_uiPeriod_1_1 + 1)
   058F 12 08 EE           2265 	lcall	__divuint
                    050B   2266 	C$BSH.c$231$2$2 ==.
                           2267 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:231: bArray[11] = (uiPeriod % 10) + 0x30;
   0592 85 82 26           2268 	mov	_main_uiPeriod_1_1,dpl
   0595 85 83 27           2269 	mov	(_main_uiPeriod_1_1 + 1),dph
   0598 75 2A 0A           2270 	mov	__moduint_PARM_2,#0x0A
   059B 75 2B 00           2271 	mov	(__moduint_PARM_2 + 1),#0x00
   059E 12 0A 11           2272 	lcall	__moduint
   05A1 AA 82              2273 	mov	r2,dpl
   05A3 74 30              2274 	mov	a,#0x30
   05A5 2A                 2275 	add	a,r2
   05A6 F5 23              2276 	mov	(_main_bArray_1_1 + 0x000b),a
                    0521   2277 	C$BSH.c$232$1$1 ==.
                           2278 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:232: uiPeriod /= 10;
   05A8 75 2A 0A           2279 	mov	__divuint_PARM_2,#0x0A
   05AB 75 2B 00           2280 	mov	(__divuint_PARM_2 + 1),#0x00
   05AE 85 26 82           2281 	mov	dpl,_main_uiPeriod_1_1
   05B1 85 27 83           2282 	mov	dph,(_main_uiPeriod_1_1 + 1)
   05B4 12 08 EE           2283 	lcall	__divuint
                    0530   2284 	C$BSH.c$233$2$2 ==.
                           2285 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:233: bArray[10] = (uiPeriod % 10) + 0x30;
   05B7 85 82 26           2286 	mov	_main_uiPeriod_1_1,dpl
   05BA 85 83 27           2287 	mov	(_main_uiPeriod_1_1 + 1),dph
   05BD 75 2A 0A           2288 	mov	__moduint_PARM_2,#0x0A
   05C0 75 2B 00           2289 	mov	(__moduint_PARM_2 + 1),#0x00
   05C3 12 0A 11           2290 	lcall	__moduint
   05C6 AA 82              2291 	mov	r2,dpl
   05C8 AB 83              2292 	mov	r3,dph
   05CA 74 30              2293 	mov	a,#0x30
   05CC 2A                 2294 	add	a,r2
   05CD FA                 2295 	mov	r2,a
   05CE 8A 22              2296 	mov	(_main_bArray_1_1 + 0x000a),r2
                    0549   2297 	C$BSH.c$234$2$2 ==.
                           2298 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:234: if(bArray[10] == 0x30)
   05D0 BA 30 03           2299 	cjne	r2,#0x30,00110$
                    054C   2300 	C$BSH.c$235$2$2 ==.
                           2301 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:235: bArray[10] = ' ';
   05D3 75 22 20           2302 	mov	(_main_bArray_1_1 + 0x000a),#0x20
   05D6                    2303 00110$:
                    054F   2304 	C$BSH.c$238$2$2 ==.
                           2305 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:238: switch(gvcState)
   05D6 AA 0C              2306 	mov	r2,_gvcState
   05D8 BA 00 02           2307 	cjne	r2,#0x00,00165$
   05DB 80 43              2308 	sjmp	00111$
   05DD                    2309 00165$:
   05DD BA 01 02           2310 	cjne	r2,#0x01,00166$
   05E0 80 5C              2311 	sjmp	00112$
   05E2                    2312 00166$:
   05E2 BA 02 02           2313 	cjne	r2,#0x02,00167$
   05E5 80 75              2314 	sjmp	00113$
   05E7                    2315 00167$:
   05E7 BA 03 03           2316 	cjne	r2,#0x03,00168$
   05EA 02 06 7A           2317 	ljmp	00114$
   05ED                    2318 00168$:
   05ED BA 04 03           2319 	cjne	r2,#0x04,00169$
   05F0 02 06 98           2320 	ljmp	00115$
   05F3                    2321 00169$:
   05F3 BA 05 03           2322 	cjne	r2,#0x05,00170$
   05F6 02 06 B6           2323 	ljmp	00116$
   05F9                    2324 00170$:
   05F9 BA 06 03           2325 	cjne	r2,#0x06,00171$
   05FC 02 06 D4           2326 	ljmp	00117$
   05FF                    2327 00171$:
   05FF BA 07 03           2328 	cjne	r2,#0x07,00172$
   0602 02 06 F2           2329 	ljmp	00118$
   0605                    2330 00172$:
   0605 BA 08 03           2331 	cjne	r2,#0x08,00173$
   0608 02 07 10           2332 	ljmp	00119$
   060B                    2333 00173$:
   060B BA 09 03           2334 	cjne	r2,#0x09,00174$
   060E 02 07 2E           2335 	ljmp	00120$
   0611                    2336 00174$:
   0611 BA 41 03           2337 	cjne	r2,#0x41,00175$
   0614 02 07 60           2338 	ljmp	00121$
   0617                    2339 00175$:
   0617 BA 42 03           2340 	cjne	r2,#0x42,00176$
   061A 02 07 69           2341 	ljmp	00122$
   061D                    2342 00176$:
   061D 02 01 9D           2343 	ljmp	00125$
                    0599   2344 	C$BSH.c$240$3$5 ==.
                           2345 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:240: case 0:                                                 // 150 F
   0620                    2346 00111$:
                    0599   2347 	C$BSH.c$241$3$5 ==.
                           2348 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:241: SFRPAGE   = CONFIG_PAGE;
   0620 75 A7 0F           2349 	mov	_SFRPAGE,#0x0F
                    059C   2350 	C$BSH.c$242$3$5 ==.
                           2351 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:242: PCA0PWM   |= 0x80;           // ARSEL = 1
   0623 43 D9 80           2352 	orl	_PCA0PWM,#0x80
                    059F   2353 	C$BSH.c$243$3$5 ==.
                           2354 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:243: SFRPAGE   = ACTIVE_PAGE;
   0626 75 A7 00           2355 	mov	_SFRPAGE,#0x00
                    05A2   2356 	C$BSH.c$244$3$5 ==.
                           2357 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:244: PCA0CPL0  = 0xCC;            // 15% 
   0629 75 FB CC           2358 	mov	_PCA0CPL0,#0xCC
                    05A5   2359 	C$BSH.c$245$3$5 ==.
                           2360 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:245: PCA0CPH0  = 0x06;
   062C 75 FC 06           2361 	mov	_PCA0CPH0,#0x06
                    05A8   2362 	C$BSH.c$246$3$5 ==.
                           2363 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:246: SFRPAGE   = CONFIG_PAGE;
   062F 75 A7 0F           2364 	mov	_SFRPAGE,#0x0F
                    05AB   2365 	C$BSH.c$247$3$5 ==.
                           2366 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:247: PCA0PWM   &= ~0x80;          // ARSEL = 0
   0632 53 D9 7F           2367 	anl	_PCA0PWM,#0x7F
                    05AE   2368 	C$BSH.c$248$3$5 ==.
                           2369 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:248: SFRPAGE   = ACTIVE_PAGE;
   0635 75 A7 00           2370 	mov	_SFRPAGE,#0x00
                    05B1   2371 	C$BSH.c$249$3$5 ==.
                           2372 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:249: gvcState = 10;
   0638 75 0C 0A           2373 	mov	_gvcState,#0x0A
                    05B4   2374 	C$BSH.c$250$3$5 ==.
                           2375 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:250: break;
   063B 02 01 9D           2376 	ljmp	00125$
                    05B7   2377 	C$BSH.c$251$3$5 ==.
                           2378 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:251: case 1:                                                 // 200 F
   063E                    2379 00112$:
                    05B7   2380 	C$BSH.c$252$3$5 ==.
                           2381 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:252: SFRPAGE   = CONFIG_PAGE;
   063E 75 A7 0F           2382 	mov	_SFRPAGE,#0x0F
                    05BA   2383 	C$BSH.c$253$3$5 ==.
                           2384 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:253: PCA0PWM   |= 0x80;           // ARSEL = 1
   0641 43 D9 80           2385 	orl	_PCA0PWM,#0x80
                    05BD   2386 	C$BSH.c$254$3$5 ==.
                           2387 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:254: SFRPAGE   = ACTIVE_PAGE;
   0644 75 A7 00           2388 	mov	_SFRPAGE,#0x00
                    05C0   2389 	C$BSH.c$255$3$5 ==.
                           2390 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:255: PCA0CPL0  = 0xFF;            // 25% 
   0647 75 FB FF           2391 	mov	_PCA0CPL0,#0xFF
                    05C3   2392 	C$BSH.c$256$3$5 ==.
                           2393 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:256: PCA0CPH0  = 0x05;
   064A 75 FC 05           2394 	mov	_PCA0CPH0,#0x05
                    05C6   2395 	C$BSH.c$257$3$5 ==.
                           2396 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:257: SFRPAGE   = CONFIG_PAGE;
   064D 75 A7 0F           2397 	mov	_SFRPAGE,#0x0F
                    05C9   2398 	C$BSH.c$258$3$5 ==.
                           2399 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:258: PCA0PWM   &= ~0x80;          // ARSEL = 0
   0650 53 D9 7F           2400 	anl	_PCA0PWM,#0x7F
                    05CC   2401 	C$BSH.c$259$3$5 ==.
                           2402 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:259: SFRPAGE   = ACTIVE_PAGE;
   0653 75 A7 00           2403 	mov	_SFRPAGE,#0x00
                    05CF   2404 	C$BSH.c$260$3$5 ==.
                           2405 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:260: gvcState = 10;
   0656 75 0C 0A           2406 	mov	_gvcState,#0x0A
                    05D2   2407 	C$BSH.c$261$3$5 ==.
                           2408 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:261: break;
   0659 02 01 9D           2409 	ljmp	00125$
                    05D5   2410 	C$BSH.c$262$3$5 ==.
                           2411 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:262: case 2:                                                 // 250 F
   065C                    2412 00113$:
                    05D5   2413 	C$BSH.c$263$3$5 ==.
                           2414 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:263: SFRPAGE   = CONFIG_PAGE;
   065C 75 A7 0F           2415 	mov	_SFRPAGE,#0x0F
                    05D8   2416 	C$BSH.c$264$3$5 ==.
                           2417 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:264: PCA0PWM   |= 0x80;           // ARSEL = 1
   065F 43 D9 80           2418 	orl	_PCA0PWM,#0x80
                    05DB   2419 	C$BSH.c$265$3$5 ==.
                           2420 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:265: SFRPAGE   = ACTIVE_PAGE;
   0662 75 A7 00           2421 	mov	_SFRPAGE,#0x00
                    05DE   2422 	C$BSH.c$266$3$5 ==.
                           2423 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:266: PCA0CPL0  = 0x32;            // 35% 
   0665 75 FB 32           2424 	mov	_PCA0CPL0,#0x32
                    05E1   2425 	C$BSH.c$267$3$5 ==.
                           2426 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:267: PCA0CPH0  = 0x05;
   0668 75 FC 05           2427 	mov	_PCA0CPH0,#0x05
                    05E4   2428 	C$BSH.c$268$3$5 ==.
                           2429 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:268: SFRPAGE   = CONFIG_PAGE;
   066B 75 A7 0F           2430 	mov	_SFRPAGE,#0x0F
                    05E7   2431 	C$BSH.c$269$3$5 ==.
                           2432 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:269: PCA0PWM   &= ~0x80;          // ARSEL = 0
   066E 53 D9 7F           2433 	anl	_PCA0PWM,#0x7F
                    05EA   2434 	C$BSH.c$270$3$5 ==.
                           2435 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:270: SFRPAGE   = ACTIVE_PAGE;
   0671 75 A7 00           2436 	mov	_SFRPAGE,#0x00
                    05ED   2437 	C$BSH.c$271$3$5 ==.
                           2438 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:271: gvcState = 10;
   0674 75 0C 0A           2439 	mov	_gvcState,#0x0A
                    05F0   2440 	C$BSH.c$272$3$5 ==.
                           2441 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:272: break;
   0677 02 01 9D           2442 	ljmp	00125$
                    05F3   2443 	C$BSH.c$273$3$5 ==.
                           2444 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:273: case 3:                                                 // 300 F
   067A                    2445 00114$:
                    05F3   2446 	C$BSH.c$274$3$5 ==.
                           2447 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:274: SFRPAGE   = CONFIG_PAGE;
   067A 75 A7 0F           2448 	mov	_SFRPAGE,#0x0F
                    05F6   2449 	C$BSH.c$275$3$5 ==.
                           2450 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:275: PCA0PWM   |= 0x80;           // ARSEL = 1
   067D 43 D9 80           2451 	orl	_PCA0PWM,#0x80
                    05F9   2452 	C$BSH.c$276$3$5 ==.
                           2453 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:276: SFRPAGE   = ACTIVE_PAGE;
   0680 75 A7 00           2454 	mov	_SFRPAGE,#0x00
                    05FC   2455 	C$BSH.c$277$3$5 ==.
                           2456 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:277: PCA0CPL0  = 0x35;            // 45% 
   0683 75 FB 35           2457 	mov	_PCA0CPL0,#0x35
                    05FF   2458 	C$BSH.c$278$3$5 ==.
                           2459 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:278: PCA0CPH0  = 0x04;
   0686 75 FC 04           2460 	mov	_PCA0CPH0,#0x04
                    0602   2461 	C$BSH.c$279$3$5 ==.
                           2462 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:279: SFRPAGE   = CONFIG_PAGE;
   0689 75 A7 0F           2463 	mov	_SFRPAGE,#0x0F
                    0605   2464 	C$BSH.c$280$3$5 ==.
                           2465 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:280: PCA0PWM   &= ~0x80;          // ARSEL = 0
   068C 53 D9 7F           2466 	anl	_PCA0PWM,#0x7F
                    0608   2467 	C$BSH.c$281$3$5 ==.
                           2468 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:281: SFRPAGE   = ACTIVE_PAGE;
   068F 75 A7 00           2469 	mov	_SFRPAGE,#0x00
                    060B   2470 	C$BSH.c$282$3$5 ==.
                           2471 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:282: gvcState = 10;
   0692 75 0C 0A           2472 	mov	_gvcState,#0x0A
                    060E   2473 	C$BSH.c$283$3$5 ==.
                           2474 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:283: break;
   0695 02 01 9D           2475 	ljmp	00125$
                    0611   2476 	C$BSH.c$284$3$5 ==.
                           2477 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:284: case 4:                                                 // 350 F
   0698                    2478 00115$:
                    0611   2479 	C$BSH.c$285$3$5 ==.
                           2480 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:285: SFRPAGE   = CONFIG_PAGE;
   0698 75 A7 0F           2481 	mov	_SFRPAGE,#0x0F
                    0614   2482 	C$BSH.c$286$3$5 ==.
                           2483 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:286: PCA0PWM   |= 0x80;           // ARSEL = 1
   069B 43 D9 80           2484 	orl	_PCA0PWM,#0x80
                    0617   2485 	C$BSH.c$287$3$5 ==.
                           2486 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:287: SFRPAGE   = ACTIVE_PAGE;
   069E 75 A7 00           2487 	mov	_SFRPAGE,#0x00
                    061A   2488 	C$BSH.c$288$3$5 ==.
                           2489 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:288: PCA0CPL0  = 0x99;            // 55% 
   06A1 75 FB 99           2490 	mov	_PCA0CPL0,#0x99
                    061D   2491 	C$BSH.c$289$3$5 ==.
                           2492 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:289: PCA0CPH0  = 0x03;
   06A4 75 FC 03           2493 	mov	_PCA0CPH0,#0x03
                    0620   2494 	C$BSH.c$290$3$5 ==.
                           2495 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:290: SFRPAGE   = CONFIG_PAGE;
   06A7 75 A7 0F           2496 	mov	_SFRPAGE,#0x0F
                    0623   2497 	C$BSH.c$291$3$5 ==.
                           2498 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:291: PCA0PWM   &= ~0x80;          // ARSEL = 0
   06AA 53 D9 7F           2499 	anl	_PCA0PWM,#0x7F
                    0626   2500 	C$BSH.c$292$3$5 ==.
                           2501 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:292: SFRPAGE   = ACTIVE_PAGE;
   06AD 75 A7 00           2502 	mov	_SFRPAGE,#0x00
                    0629   2503 	C$BSH.c$293$3$5 ==.
                           2504 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:293: gvcState = 10;
   06B0 75 0C 0A           2505 	mov	_gvcState,#0x0A
                    062C   2506 	C$BSH.c$294$3$5 ==.
                           2507 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:294: break;
   06B3 02 01 9D           2508 	ljmp	00125$
                    062F   2509 	C$BSH.c$295$3$5 ==.
                           2510 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:295: case 5:                                                 // 400 F
   06B6                    2511 00116$:
                    062F   2512 	C$BSH.c$296$3$5 ==.
                           2513 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:296: SFRPAGE   = CONFIG_PAGE;
   06B6 75 A7 0F           2514 	mov	_SFRPAGE,#0x0F
                    0632   2515 	C$BSH.c$297$3$5 ==.
                           2516 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:297: PCA0PWM   |= 0x80;           // ARSEL = 1
   06B9 43 D9 80           2517 	orl	_PCA0PWM,#0x80
                    0635   2518 	C$BSH.c$298$3$5 ==.
                           2519 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:298: SFRPAGE   = ACTIVE_PAGE;
   06BC 75 A7 00           2520 	mov	_SFRPAGE,#0x00
                    0638   2521 	C$BSH.c$299$3$5 ==.
                           2522 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:299: PCA0CPL0  = 0xCC;            // 65% 
   06BF 75 FB CC           2523 	mov	_PCA0CPL0,#0xCC
                    063B   2524 	C$BSH.c$300$3$5 ==.
                           2525 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:300: PCA0CPH0  = 0x02;
   06C2 75 FC 02           2526 	mov	_PCA0CPH0,#0x02
                    063E   2527 	C$BSH.c$301$3$5 ==.
                           2528 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:301: SFRPAGE   = CONFIG_PAGE;
   06C5 75 A7 0F           2529 	mov	_SFRPAGE,#0x0F
                    0641   2530 	C$BSH.c$302$3$5 ==.
                           2531 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:302: PCA0PWM   &= ~0x80;          // ARSEL = 0
   06C8 53 D9 7F           2532 	anl	_PCA0PWM,#0x7F
                    0644   2533 	C$BSH.c$303$3$5 ==.
                           2534 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:303: SFRPAGE   = ACTIVE_PAGE;
   06CB 75 A7 00           2535 	mov	_SFRPAGE,#0x00
                    0647   2536 	C$BSH.c$304$3$5 ==.
                           2537 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:304: gvcState = 10;
   06CE 75 0C 0A           2538 	mov	_gvcState,#0x0A
                    064A   2539 	C$BSH.c$305$3$5 ==.
                           2540 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:305: break;
   06D1 02 01 9D           2541 	ljmp	00125$
                    064D   2542 	C$BSH.c$306$3$5 ==.
                           2543 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:306: case 6:                                                 // 450 F
   06D4                    2544 00117$:
                    064D   2545 	C$BSH.c$307$3$5 ==.
                           2546 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:307: SFRPAGE   = CONFIG_PAGE;
   06D4 75 A7 0F           2547 	mov	_SFRPAGE,#0x0F
                    0650   2548 	C$BSH.c$308$3$5 ==.
                           2549 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:308: PCA0PWM   |= 0x80;           // ARSEL = 1
   06D7 43 D9 80           2550 	orl	_PCA0PWM,#0x80
                    0653   2551 	C$BSH.c$309$3$5 ==.
                           2552 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:309: SFRPAGE   = ACTIVE_PAGE;
   06DA 75 A7 00           2553 	mov	_SFRPAGE,#0x00
                    0656   2554 	C$BSH.c$310$3$5 ==.
                           2555 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:310: PCA0CPL0  = 0xFF;            // 75% 
   06DD 75 FB FF           2556 	mov	_PCA0CPL0,#0xFF
                    0659   2557 	C$BSH.c$311$3$5 ==.
                           2558 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:311: PCA0CPH0  = 0x01;
   06E0 75 FC 01           2559 	mov	_PCA0CPH0,#0x01
                    065C   2560 	C$BSH.c$312$3$5 ==.
                           2561 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:312: SFRPAGE   = CONFIG_PAGE;
   06E3 75 A7 0F           2562 	mov	_SFRPAGE,#0x0F
                    065F   2563 	C$BSH.c$313$3$5 ==.
                           2564 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:313: PCA0PWM   &= ~0x80;          // ARSEL = 0
   06E6 53 D9 7F           2565 	anl	_PCA0PWM,#0x7F
                    0662   2566 	C$BSH.c$314$3$5 ==.
                           2567 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:314: SFRPAGE   = ACTIVE_PAGE;
   06E9 75 A7 00           2568 	mov	_SFRPAGE,#0x00
                    0665   2569 	C$BSH.c$315$3$5 ==.
                           2570 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:315: gvcState = 10;
   06EC 75 0C 0A           2571 	mov	_gvcState,#0x0A
                    0668   2572 	C$BSH.c$316$3$5 ==.
                           2573 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:316: break;
   06EF 02 01 9D           2574 	ljmp	00125$
                    066B   2575 	C$BSH.c$317$3$5 ==.
                           2576 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:317: case 7:                                                 // 500 F
   06F2                    2577 00118$:
                    066B   2578 	C$BSH.c$318$3$5 ==.
                           2579 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:318: SFRPAGE   = CONFIG_PAGE;
   06F2 75 A7 0F           2580 	mov	_SFRPAGE,#0x0F
                    066E   2581 	C$BSH.c$319$3$5 ==.
                           2582 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:319: PCA0PWM   |= 0x80;           // ARSEL = 1
   06F5 43 D9 80           2583 	orl	_PCA0PWM,#0x80
                    0671   2584 	C$BSH.c$320$3$5 ==.
                           2585 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:320: SFRPAGE   = ACTIVE_PAGE;
   06F8 75 A7 00           2586 	mov	_SFRPAGE,#0x00
                    0674   2587 	C$BSH.c$321$3$5 ==.
                           2588 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:321: PCA0CPL0  = 0x32;            // 85% 
   06FB 75 FB 32           2589 	mov	_PCA0CPL0,#0x32
                    0677   2590 	C$BSH.c$322$3$5 ==.
                           2591 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:322: PCA0CPH0  = 0x01;
   06FE 75 FC 01           2592 	mov	_PCA0CPH0,#0x01
                    067A   2593 	C$BSH.c$323$3$5 ==.
                           2594 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:323: SFRPAGE   = CONFIG_PAGE;
   0701 75 A7 0F           2595 	mov	_SFRPAGE,#0x0F
                    067D   2596 	C$BSH.c$324$3$5 ==.
                           2597 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:324: PCA0PWM   &= ~0x80;          // ARSEL = 0
   0704 53 D9 7F           2598 	anl	_PCA0PWM,#0x7F
                    0680   2599 	C$BSH.c$325$3$5 ==.
                           2600 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:325: SFRPAGE   = ACTIVE_PAGE;
   0707 75 A7 00           2601 	mov	_SFRPAGE,#0x00
                    0683   2602 	C$BSH.c$326$3$5 ==.
                           2603 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:326: gvcState = 10;
   070A 75 0C 0A           2604 	mov	_gvcState,#0x0A
                    0686   2605 	C$BSH.c$327$3$5 ==.
                           2606 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:327: break;
   070D 02 01 9D           2607 	ljmp	00125$
                    0689   2608 	C$BSH.c$328$3$5 ==.
                           2609 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:328: case 8:                                                 // Clean F
   0710                    2610 00119$:
                    0689   2611 	C$BSH.c$329$3$5 ==.
                           2612 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:329: SFRPAGE   = CONFIG_PAGE;
   0710 75 A7 0F           2613 	mov	_SFRPAGE,#0x0F
                    068C   2614 	C$BSH.c$330$3$5 ==.
                           2615 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:330: PCA0PWM   |= 0x80;           // ARSEL = 1
   0713 43 D9 80           2616 	orl	_PCA0PWM,#0x80
                    068F   2617 	C$BSH.c$331$3$5 ==.
                           2618 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:331: SFRPAGE   = ACTIVE_PAGE;
   0716 75 A7 00           2619 	mov	_SFRPAGE,#0x00
                    0692   2620 	C$BSH.c$332$3$5 ==.
                           2621 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:332: PCA0CPL0  = 0x65;            // 95% 
   0719 75 FB 65           2622 	mov	_PCA0CPL0,#0x65
                    0695   2623 	C$BSH.c$333$3$5 ==.
                           2624 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:333: PCA0CPH0  = 0x00;
   071C 75 FC 00           2625 	mov	_PCA0CPH0,#0x00
                    0698   2626 	C$BSH.c$334$3$5 ==.
                           2627 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:334: SFRPAGE   = CONFIG_PAGE;
   071F 75 A7 0F           2628 	mov	_SFRPAGE,#0x0F
                    069B   2629 	C$BSH.c$335$3$5 ==.
                           2630 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:335: PCA0PWM   &= ~0x80;          // ARSEL = 0
   0722 53 D9 7F           2631 	anl	_PCA0PWM,#0x7F
                    069E   2632 	C$BSH.c$336$3$5 ==.
                           2633 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:336: SFRPAGE   = ACTIVE_PAGE;
   0725 75 A7 00           2634 	mov	_SFRPAGE,#0x00
                    06A1   2635 	C$BSH.c$337$3$5 ==.
                           2636 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:337: gvcState = 10;
   0728 75 0C 0A           2637 	mov	_gvcState,#0x0A
                    06A4   2638 	C$BSH.c$338$3$5 ==.
                           2639 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:338: break;
   072B 02 01 9D           2640 	ljmp	00125$
                    06A7   2641 	C$BSH.c$339$3$5 ==.
                           2642 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:339: case 9:
   072E                    2643 00120$:
                    06A7   2644 	C$BSH.c$340$3$5 ==.
                           2645 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:340: UART0_INT_DISABLE;
   072E 53 A8 EF           2646 	anl	_IE,#0xEF
   0731 53 A8 EF           2647 	anl	_IE,#0xEF
                    06AD   2648 	C$BSH.c$342$3$5 ==.
                           2649 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:342: putchar0('$');
   0734 75 82 24           2650 	mov	dpl,#0x24
   0737 12 07 E5           2651 	lcall	_putchar0
                    06B3   2652 	C$BSH.c$343$1$1 ==.
                           2653 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:343: for(i = 0; i < 14; i++)
   073A 7A 00              2654 	mov	r2,#0x00
   073C                    2655 00128$:
   073C BA 0E 00           2656 	cjne	r2,#0x0E,00177$
   073F                    2657 00177$:
   073F 50 10              2658 	jnc	00131$
                    06BA   2659 	C$BSH.c$344$3$5 ==.
                           2660 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:344: putchar0(bArray[i]);
   0741 EA                 2661 	mov	a,r2
   0742 24 18              2662 	add	a,#_main_bArray_1_1
   0744 F8                 2663 	mov	r0,a
   0745 86 82              2664 	mov	dpl,@r0
   0747 C0 02              2665 	push	ar2
   0749 12 07 E5           2666 	lcall	_putchar0
   074C D0 02              2667 	pop	ar2
                    06C7   2668 	C$BSH.c$343$3$5 ==.
                           2669 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:343: for(i = 0; i < 14; i++)
   074E 0A                 2670 	inc	r2
   074F 80 EB              2671 	sjmp	00128$
   0751                    2672 00131$:
                    06CA   2673 	C$BSH.c$345$3$5 ==.
                           2674 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:345: putchar0('*');
   0751 75 82 2A           2675 	mov	dpl,#0x2A
   0754 12 07 E5           2676 	lcall	_putchar0
                    06D0   2677 	C$BSH.c$346$3$5 ==.
                           2678 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:346: gvcState = 10;
   0757 75 0C 0A           2679 	mov	_gvcState,#0x0A
                    06D3   2680 	C$BSH.c$348$3$5 ==.
                           2681 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:348: UART0_INT_ENABLE;
   075A 43 A8 10           2682 	orl	_IE,#0x10
                    06D6   2683 	C$BSH.c$349$3$5 ==.
                           2684 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:349: break;
   075D 02 01 9D           2685 	ljmp	00125$
                    06D9   2686 	C$BSH.c$351$3$5 ==.
                           2687 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:351: case 'A':
   0760                    2688 00121$:
                    06D9   2689 	C$BSH.c$352$3$5 ==.
                           2690 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:352: Adjust_Power(39924);                              // Output at 12.00 V
   0760 90 9B F4           2691 	mov	dptr,#0x9BF4
   0763 12 07 C0           2692 	lcall	_Adjust_Power
                    06DF   2693 	C$BSH.c$353$3$5 ==.
                           2694 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:353: break;
   0766 02 01 9D           2695 	ljmp	00125$
                    06E2   2696 	C$BSH.c$354$3$5 ==.
                           2697 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:354: case 'B':
   0769                    2698 00122$:
                    06E2   2699 	C$BSH.c$355$3$5 ==.
                           2700 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:355: Adjust_Power(0);                                  // Output at 0 V
   0769 90 00 00           2701 	mov	dptr,#0x0000
   076C 12 07 C0           2702 	lcall	_Adjust_Power
                    06E8   2703 	C$BSH.c$356$3$5 ==.
                           2704 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:356: break;
                    06E8   2705 	C$BSH.c$362$1$1 ==.
                           2706 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:362: }while(1);
                    06E8   2707 	C$BSH.c$363$1$1 ==.
                    06E8   2708 	XG$main$0$0 ==.
   076F 02 01 9D           2709 	ljmp	00125$
                           2710 ;------------------------------------------------------------
                           2711 ;Allocation info for local variables in function 'Read_ADC'
                           2712 ;------------------------------------------------------------
                           2713 ;bChannel                  Allocated to registers r2 
                           2714 ;j                         Allocated to registers r5 r6 
                           2715 ;uiSum                     Allocated to registers r3 r4 
                           2716 ;------------------------------------------------------------
                    06EB   2717 	G$Read_ADC$0$0 ==.
                    06EB   2718 	C$BSH.c$366$1$1 ==.
                           2719 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:366: unsigned int Read_ADC(BYTE bChannel)
                           2720 ;	-----------------------------------------
                           2721 ;	 function Read_ADC
                           2722 ;	-----------------------------------------
   0772                    2723 _Read_ADC:
   0772 AA 82              2724 	mov	r2,dpl
                    06ED   2725 	C$BSH.c$369$1$1 ==.
                           2726 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:369: unsigned int uiSum = 0;
   0774 7B 00              2727 	mov	r3,#0x00
   0776 7C 00              2728 	mov	r4,#0x00
                    06F1   2729 	C$BSH.c$371$1$1 ==.
                           2730 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:371: for(j = 0; j < 16; j++)                    // Sample 16 times
   0778 7D 00              2731 	mov	r5,#0x00
   077A 7E 00              2732 	mov	r6,#0x00
   077C                    2733 00104$:
   077C C3                 2734 	clr	c
   077D ED                 2735 	mov	a,r5
   077E 94 10              2736 	subb	a,#0x10
   0780 EE                 2737 	mov	a,r6
   0781 94 00              2738 	subb	a,#0x00
   0783 50 29              2739 	jnc	00107$
                    06FE   2740 	C$BSH.c$373$2$2 ==.
                           2741 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:373: ADC0CN &= ~0x20;                         // Clear interrupt flag
   0785 53 E8 DF           2742 	anl	_ADC0CN,#0xDF
                    0701   2743 	C$BSH.c$374$2$2 ==.
                           2744 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:374: ADC0MX = bChannel;
   0788 8A BB              2745 	mov	_ADC0MX,r2
                    0703   2746 	C$BSH.c$375$2$2 ==.
                           2747 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:375: NOP();
   078A 00                 2748 	 NOP 
                    0704   2749 	C$BSH.c$376$2$2 ==.
                           2750 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:376: NOP();
   078B 00                 2751 	 NOP 
                    0705   2752 	C$BSH.c$377$2$2 ==.
                           2753 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:377: NOP();
   078C 00                 2754 	 NOP 
                    0706   2755 	C$BSH.c$378$2$2 ==.
                           2756 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:378: NOP();
   078D 00                 2757 	 NOP 
                    0707   2758 	C$BSH.c$379$2$2 ==.
                           2759 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:379: NOP();
   078E 00                 2760 	 NOP 
                    0708   2761 	C$BSH.c$380$2$2 ==.
                           2762 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:380: NOP();
   078F 00                 2763 	 NOP 
                    0709   2764 	C$BSH.c$381$2$2 ==.
                           2765 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:381: NOP();
   0790 00                 2766 	 NOP 
                    070A   2767 	C$BSH.c$382$2$2 ==.
                           2768 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:382: NOP();
   0791 00                 2769 	 NOP 
                    070B   2770 	C$BSH.c$383$2$2 ==.
                           2771 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:383: NOP();
   0792 00                 2772 	 NOP 
                    070C   2773 	C$BSH.c$384$2$2 ==.
                           2774 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:384: NOP();
   0793 00                 2775 	 NOP 
                    070D   2776 	C$BSH.c$385$2$2 ==.
                           2777 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:385: ADC0CN |= 0x10;
   0794 43 E8 10           2778 	orl	_ADC0CN,#0x10
                    0710   2779 	C$BSH.c$386$2$2 ==.
                           2780 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:386: while((ADC0CN & 0x20) == 0x00);          // Wait for conversion to complete
   0797                    2781 00101$:
   0797 E5 E8              2782 	mov	a,_ADC0CN
   0799 30 E5 FB           2783 	jnb	acc.5,00101$
                    0715   2784 	C$BSH.c$387$2$2 ==.
                           2785 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:387: ADC0CN &= ~0x20;                         // Clear interrupt flag
   079C 53 E8 DF           2786 	anl	_ADC0CN,#0xDF
                    0718   2787 	C$BSH.c$388$2$2 ==.
                           2788 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:388: uiSum += ADC0;
   079F E5 BD              2789 	mov	a,_ADC0
   07A1 2B                 2790 	add	a,r3
   07A2 FB                 2791 	mov	r3,a
   07A3 E5 BE              2792 	mov	a,(_ADC0 >> 8)
   07A5 3C                 2793 	addc	a,r4
   07A6 FC                 2794 	mov	r4,a
                    0720   2795 	C$BSH.c$371$1$1 ==.
                           2796 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:371: for(j = 0; j < 16; j++)                    // Sample 16 times
   07A7 0D                 2797 	inc	r5
   07A8 BD 00 D1           2798 	cjne	r5,#0x00,00104$
   07AB 0E                 2799 	inc	r6
   07AC 80 CE              2800 	sjmp	00104$
   07AE                    2801 00107$:
                    0727   2802 	C$BSH.c$390$1$1 ==.
                           2803 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:390: uiSum /= 16; 
   07AE EC                 2804 	mov	a,r4
   07AF C4                 2805 	swap	a
   07B0 CB                 2806 	xch	a,r3
   07B1 C4                 2807 	swap	a
   07B2 54 0F              2808 	anl	a,#0x0f
   07B4 6B                 2809 	xrl	a,r3
   07B5 CB                 2810 	xch	a,r3
   07B6 54 0F              2811 	anl	a,#0x0f
   07B8 CB                 2812 	xch	a,r3
   07B9 6B                 2813 	xrl	a,r3
   07BA CB                 2814 	xch	a,r3
                    0734   2815 	C$BSH.c$391$1$1 ==.
                           2816 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:391: return(uiSum);
                    0734   2817 	C$BSH.c$392$1$1 ==.
                    0734   2818 	XG$Read_ADC$0$0 ==.
   07BB 8B 82              2819 	mov	dpl,r3
   07BD F5 83              2820 	mov	dph,a
   07BF 22                 2821 	ret
                           2822 ;------------------------------------------------------------
                           2823 ;Allocation info for local variables in function 'Adjust_Power'
                           2824 ;------------------------------------------------------------
                           2825 ;uiVolts                   Allocated to registers r2 r3 
                           2826 ;bPage                     Allocated to registers r4 
                           2827 ;------------------------------------------------------------
                    0739   2828 	G$Adjust_Power$0$0 ==.
                    0739   2829 	C$BSH.c$397$1$1 ==.
                           2830 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:397: void Adjust_Power(unsigned int uiVolts)
                           2831 ;	-----------------------------------------
                           2832 ;	 function Adjust_Power
                           2833 ;	-----------------------------------------
   07C0                    2834 _Adjust_Power:
   07C0 AA 82              2835 	mov	r2,dpl
   07C2 AB 83              2836 	mov	r3,dph
                    073D   2837 	C$BSH.c$401$1$1 ==.
                           2838 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:401: bPage = SFRPAGE;
   07C4 AC A7              2839 	mov	r4,_SFRPAGE
                    073F   2840 	C$BSH.c$402$1$1 ==.
                           2841 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:402: SFRPAGE = ACTIVE_PAGE;
   07C6 75 A7 00           2842 	mov	_SFRPAGE,#0x00
                    0742   2843 	C$BSH.c$403$1$1 ==.
                           2844 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:403: SPI0CFG = 0x40;                                          // Clock low in idle state
   07C9 75 A1 40           2845 	mov	_SPI0CFG,#0x40
                    0745   2846 	C$BSH.c$404$1$1 ==.
                           2847 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:404: NOP();
   07CC 00                 2848 	 NOP 
                    0746   2849 	C$BSH.c$405$1$1 ==.
                           2850 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:405: NOP();
   07CD 00                 2851 	 NOP 
                    0747   2852 	C$BSH.c$406$1$1 ==.
                           2853 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:406: DAC1_SEL = 0;
   07CE C2 91              2854 	clr	_DAC1_SEL
                    0749   2855 	C$BSH.c$407$1$1 ==.
                           2856 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:407: NOP();
   07D0 00                 2857 	 NOP 
                    074A   2858 	C$BSH.c$408$1$1 ==.
                           2859 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:408: NOP();
   07D1 00                 2860 	 NOP 
                    074B   2861 	C$BSH.c$409$1$1 ==.
                           2862 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:409: SPI0DAT = (BYTE)(uiVolts >> 8);
   07D2 8B A3              2863 	mov	_SPI0DAT,r3
                    074D   2864 	C$BSH.c$410$1$1 ==.
                           2865 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:410: while(!SPIF);                                          // Step1.3: Wait for end of transfer
   07D4                    2866 00101$:
                    074D   2867 	C$BSH.c$411$1$1 ==.
                           2868 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:411: SPIF = 0;                                              // Step1.4: Clear the SPI intr. flag
   07D4 10 FF 02           2869 	jbc	_SPIF,00113$
   07D7 80 FB              2870 	sjmp	00101$
   07D9                    2871 00113$:
                    0752   2872 	C$BSH.c$412$1$1 ==.
                           2873 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:412: SPI0DAT = (BYTE)(uiVolts);
   07D9 8A A3              2874 	mov	_SPI0DAT,r2
                    0754   2875 	C$BSH.c$413$1$1 ==.
                           2876 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:413: while(!SPIF);                                            // Step1.3: Wait for end of transfer
   07DB                    2877 00104$:
                    0754   2878 	C$BSH.c$414$1$1 ==.
                           2879 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:414: SPIF = 0;                                                // Step1.4: Clear the SPI intr. flag
   07DB 10 FF 02           2880 	jbc	_SPIF,00114$
   07DE 80 FB              2881 	sjmp	00104$
   07E0                    2882 00114$:
                    0759   2883 	C$BSH.c$415$1$1 ==.
                           2884 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:415: DAC1_SEL = 1;
   07E0 D2 91              2885 	setb	_DAC1_SEL
                    075B   2886 	C$BSH.c$416$1$1 ==.
                           2887 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:416: SFRPAGE = bPage;       
   07E2 8C A7              2888 	mov	_SFRPAGE,r4
                    075D   2889 	C$BSH.c$417$1$1 ==.
                    075D   2890 	XG$Adjust_Power$0$0 ==.
   07E4 22                 2891 	ret
                           2892 ;------------------------------------------------------------
                           2893 ;Allocation info for local variables in function 'putchar0'
                           2894 ;------------------------------------------------------------
                           2895 ;bChar                     Allocated to registers r2 
                           2896 ;bPage                     Allocated to registers r3 
                           2897 ;------------------------------------------------------------
                    075E   2898 	G$putchar0$0$0 ==.
                    075E   2899 	C$BSH.c$431$1$1 ==.
                           2900 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:431: void putchar0(BYTE bChar)
                           2901 ;	-----------------------------------------
                           2902 ;	 function putchar0
                           2903 ;	-----------------------------------------
   07E5                    2904 _putchar0:
   07E5 AA 82              2905 	mov	r2,dpl
                    0760   2906 	C$BSH.c$434$1$1 ==.
                           2907 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:434: bPage = SFRPAGE;
   07E7 AB A7              2908 	mov	r3,_SFRPAGE
                    0762   2909 	C$BSH.c$435$1$1 ==.
                           2910 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:435: SFRPAGE = 0x00;                                // Active page
   07E9 75 A7 00           2911 	mov	_SFRPAGE,#0x00
                    0765   2912 	C$BSH.c$436$1$1 ==.
                           2913 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:436: SBUF0 = bChar;                                 // Transmit data
   07EC 8A 99              2914 	mov	_SBUF0,r2
                    0767   2915 	C$BSH.c$437$1$1 ==.
                           2916 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:437: while(!TI0);                                   // Wait for last character to be transmited, TI0 set to 1 after data has been transmitted
   07EE                    2917 00101$:
                    0767   2918 	C$BSH.c$438$1$1 ==.
                           2919 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:438: TI0 = 0;                                       // Clear TI0 Flag
   07EE 10 99 02           2920 	jbc	_TI0,00108$
   07F1 80 FB              2921 	sjmp	00101$
   07F3                    2922 00108$:
                    076C   2923 	C$BSH.c$439$1$1 ==.
                           2924 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:439: SFRPAGE = bPage;
   07F3 8B A7              2925 	mov	_SFRPAGE,r3
                    076E   2926 	C$BSH.c$440$1$1 ==.
                    076E   2927 	XG$putchar0$0$0 ==.
   07F5 22                 2928 	ret
                           2929 ;------------------------------------------------------------
                           2930 ;Allocation info for local variables in function 'Warm_Reset'
                           2931 ;------------------------------------------------------------
                           2932 ;------------------------------------------------------------
                    076F   2933 	G$Warm_Reset$0$0 ==.
                    076F   2934 	C$BSH.c$444$1$1 ==.
                           2935 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:444: void Warm_Reset(void)
                           2936 ;	-----------------------------------------
                           2937 ;	 function Warm_Reset
                           2938 ;	-----------------------------------------
   07F6                    2939 _Warm_Reset:
                    076F   2940 	C$BSH.c$446$1$1 ==.
                           2941 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:446: PCA0_Init();
   07F6 12 08 0E           2942 	lcall	_PCA0_Init
                    0772   2943 	C$BSH.c$447$1$1 ==.
                           2944 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:447: Timer_Init();
   07F9 12 08 3C           2945 	lcall	_Timer_Init
                    0775   2946 	C$BSH.c$448$1$1 ==.
                           2947 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:448: UART_Init();
   07FC 12 08 64           2948 	lcall	_UART_Init
                    0778   2949 	C$BSH.c$449$1$1 ==.
                           2950 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:449: SPI_Init();  
   07FF 12 08 77           2951 	lcall	_SPI_Init
                    077B   2952 	C$BSH.c$450$1$1 ==.
                           2953 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:450: ADC_Init();
   0802 12 08 87           2954 	lcall	_ADC_Init
                    077E   2955 	C$BSH.c$451$1$1 ==.
                           2956 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:451: Port_IO_Init();
   0805 12 08 8E           2957 	lcall	_Port_IO_Init
                    0781   2958 	C$BSH.c$452$1$1 ==.
                           2959 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:452: Oscillator_Init();
   0808 12 08 B6           2960 	lcall	_Oscillator_Init
                    0784   2961 	C$BSH.c$453$1$1 ==.
                           2962 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:453: Interrupts_Init();
                    0784   2963 	C$BSH.c$454$1$1 ==.
                    0784   2964 	XG$Warm_Reset$0$0 ==.
   080B 02 08 E1           2965 	ljmp	_Interrupts_Init
                           2966 ;------------------------------------------------------------
                           2967 ;Allocation info for local variables in function 'PCA0_Init'
                           2968 ;------------------------------------------------------------
                           2969 ;------------------------------------------------------------
                    0787   2970 	G$PCA0_Init$0$0 ==.
                    0787   2971 	C$BSH.c$457$1$1 ==.
                           2972 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:457: void PCA0_Init(void)
                           2973 ;	-----------------------------------------
                           2974 ;	 function PCA0_Init
                           2975 ;	-----------------------------------------
   080E                    2976 _PCA0_Init:
                    0787   2977 	C$BSH.c$459$1$1 ==.
                           2978 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:459: PCA0CN    = 0x40;
   080E 75 D8 40           2979 	mov	_PCA0CN,#0x40
                    078A   2980 	C$BSH.c$460$1$1 ==.
                           2981 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:460: PCA0MD    &= ~0x40;
   0811 53 D9 BF           2982 	anl	_PCA0MD,#0xBF
                    078D   2983 	C$BSH.c$461$1$1 ==.
                           2984 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:461: PCA0MD    = 0x0C;
   0814 75 D9 0C           2985 	mov	_PCA0MD,#0x0C
                    0790   2986 	C$BSH.c$462$1$1 ==.
                           2987 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:462: PCA0CPM0  = 0x42;
   0817 75 DA 42           2988 	mov	_PCA0CPM0,#0x42
                    0793   2989 	C$BSH.c$463$1$1 ==.
                           2990 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:463: SFRPAGE   = CONFIG_PAGE;
   081A 75 A7 0F           2991 	mov	_SFRPAGE,#0x0F
                    0796   2992 	C$BSH.c$464$1$1 ==.
                           2993 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:464: PCA0PWM   = 0x03;
   081D 75 D9 03           2994 	mov	_PCA0PWM,#0x03
                    0799   2995 	C$BSH.c$465$1$1 ==.
                           2996 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:465: SFRPAGE   = ACTIVE_PAGE;
   0820 75 A7 00           2997 	mov	_SFRPAGE,#0x00
                    079C   2998 	C$BSH.c$466$1$1 ==.
                           2999 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:466: SFRPAGE   = CONFIG_PAGE;
   0823 75 A7 0F           3000 	mov	_SFRPAGE,#0x0F
                    079F   3001 	C$BSH.c$467$1$1 ==.
                           3002 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:467: PCA0PWM   |= 0x80;           // ARSEL = 1
   0826 43 D9 80           3003 	orl	_PCA0PWM,#0x80
                    07A2   3004 	C$BSH.c$468$1$1 ==.
                           3005 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:468: SFRPAGE   = ACTIVE_PAGE;
   0829 75 A7 00           3006 	mov	_SFRPAGE,#0x00
                    07A5   3007 	C$BSH.c$469$1$1 ==.
                           3008 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:469: PCA0CPL0  = 0xCC;            // 15% 
   082C 75 FB CC           3009 	mov	_PCA0CPL0,#0xCC
                    07A8   3010 	C$BSH.c$470$1$1 ==.
                           3011 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:470: PCA0CPH0  = 0x06;
   082F 75 FC 06           3012 	mov	_PCA0CPH0,#0x06
                    07AB   3013 	C$BSH.c$471$1$1 ==.
                           3014 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:471: SFRPAGE   = CONFIG_PAGE;
   0832 75 A7 0F           3015 	mov	_SFRPAGE,#0x0F
                    07AE   3016 	C$BSH.c$472$1$1 ==.
                           3017 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:472: PCA0PWM   &= ~0x80;          // ARSEL = 0
   0835 53 D9 7F           3018 	anl	_PCA0PWM,#0x7F
                    07B1   3019 	C$BSH.c$473$1$1 ==.
                           3020 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:473: SFRPAGE   = ACTIVE_PAGE;
   0838 75 A7 00           3021 	mov	_SFRPAGE,#0x00
                    07B4   3022 	C$BSH.c$474$1$1 ==.
                    07B4   3023 	XG$PCA0_Init$0$0 ==.
   083B 22                 3024 	ret
                           3025 ;------------------------------------------------------------
                           3026 ;Allocation info for local variables in function 'Timer_Init'
                           3027 ;------------------------------------------------------------
                           3028 ;------------------------------------------------------------
                    07B5   3029 	G$Timer_Init$0$0 ==.
                    07B5   3030 	C$BSH.c$477$1$1 ==.
                           3031 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:477: void Timer_Init(void)
                           3032 ;	-----------------------------------------
                           3033 ;	 function Timer_Init
                           3034 ;	-----------------------------------------
   083C                    3035 _Timer_Init:
                    07B5   3036 	C$BSH.c$479$1$1 ==.
                           3037 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:479: TCON      = 0x51;
   083C 75 88 51           3038 	mov	_TCON,#0x51
                    07B8   3039 	C$BSH.c$480$1$1 ==.
                           3040 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:480: TMOD      = 0x11;
   083F 75 89 11           3041 	mov	_TMOD,#0x11
                    07BB   3042 	C$BSH.c$481$1$1 ==.
                           3043 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:481: CKCON     = 0x0C;
   0842 75 8E 0C           3044 	mov	_CKCON,#0x0C
                    07BE   3045 	C$BSH.c$482$1$1 ==.
                           3046 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:482: TL0       = 0x7F;
   0845 75 8A 7F           3047 	mov	_TL0,#0x7F
                    07C1   3048 	C$BSH.c$483$1$1 ==.
                           3049 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:483: TH0       = 0x44;
   0848 75 8C 44           3050 	mov	_TH0,#0x44
                    07C4   3051 	C$BSH.c$484$1$1 ==.
                           3052 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:484: SFRPAGE   = ACTIVE2_PAGE;
   084B 75 A7 10           3053 	mov	_SFRPAGE,#0x10
                    07C7   3054 	C$BSH.c$485$1$1 ==.
                           3055 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:485: TMR4CN    = 0x04;
   084E 75 C8 04           3056 	mov	_TMR4CN,#0x04
                    07CA   3057 	C$BSH.c$486$1$1 ==.
                           3058 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:486: TMR4CF    = 0x08;
   0851 75 C9 08           3059 	mov	_TMR4CF,#0x08
                    07CD   3060 	C$BSH.c$487$1$1 ==.
                           3061 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:487: TMR4CAPL  = 0xE8;
   0854 75 CA E8           3062 	mov	_TMR4CAPL,#0xE8
                    07D0   3063 	C$BSH.c$488$1$1 ==.
                           3064 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:488: TMR4CAPH  = 0xFF;
   0857 75 CB FF           3065 	mov	_TMR4CAPH,#0xFF
                    07D3   3066 	C$BSH.c$489$1$1 ==.
                           3067 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:489: TMR4L     = 0xE8;
   085A 75 CC E8           3068 	mov	_TMR4L,#0xE8
                    07D6   3069 	C$BSH.c$490$1$1 ==.
                           3070 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:490: TMR4H     = 0xFF;
   085D 75 CD FF           3071 	mov	_TMR4H,#0xFF
                    07D9   3072 	C$BSH.c$491$1$1 ==.
                           3073 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:491: SFRPAGE   = ACTIVE_PAGE;
   0860 75 A7 00           3074 	mov	_SFRPAGE,#0x00
                    07DC   3075 	C$BSH.c$492$1$1 ==.
                    07DC   3076 	XG$Timer_Init$0$0 ==.
   0863 22                 3077 	ret
                           3078 ;------------------------------------------------------------
                           3079 ;Allocation info for local variables in function 'UART_Init'
                           3080 ;------------------------------------------------------------
                           3081 ;------------------------------------------------------------
                    07DD   3082 	G$UART_Init$0$0 ==.
                    07DD   3083 	C$BSH.c$495$1$1 ==.
                           3084 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:495: void UART_Init(void)
                           3085 ;	-----------------------------------------
                           3086 ;	 function UART_Init
                           3087 ;	-----------------------------------------
   0864                    3088 _UART_Init:
                    07DD   3089 	C$BSH.c$497$1$1 ==.
                           3090 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:497: SCON0   = 0x10;
   0864 75 98 10           3091 	mov	_SCON0,#0x10
                    07E0   3092 	C$BSH.c$498$1$1 ==.
                           3093 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:498: SFRPAGE = CONFIG_PAGE;
   0867 75 A7 0F           3094 	mov	_SFRPAGE,#0x0F
                    07E3   3095 	C$BSH.c$499$1$1 ==.
                           3096 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:499: SBRLL0  = 0x3C;
   086A 75 AC 3C           3097 	mov	_SBRLL0,#0x3C
                    07E6   3098 	C$BSH.c$500$1$1 ==.
                           3099 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:500: SBRLH0  = 0xF6;
   086D 75 AD F6           3100 	mov	_SBRLH0,#0xF6
                    07E9   3101 	C$BSH.c$501$1$1 ==.
                           3102 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:501: SBCON0  = 0x43;
   0870 75 AB 43           3103 	mov	_SBCON0,#0x43
                    07EC   3104 	C$BSH.c$502$1$1 ==.
                           3105 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:502: SFRPAGE   = ACTIVE_PAGE;
   0873 75 A7 00           3106 	mov	_SFRPAGE,#0x00
                    07EF   3107 	C$BSH.c$503$1$1 ==.
                    07EF   3108 	XG$UART_Init$0$0 ==.
   0876 22                 3109 	ret
                           3110 ;------------------------------------------------------------
                           3111 ;Allocation info for local variables in function 'SPI_Init'
                           3112 ;------------------------------------------------------------
                           3113 ;------------------------------------------------------------
                    07F0   3114 	G$SPI_Init$0$0 ==.
                    07F0   3115 	C$BSH.c$506$1$1 ==.
                           3116 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:506: void SPI_Init(void)
                           3117 ;	-----------------------------------------
                           3118 ;	 function SPI_Init
                           3119 ;	-----------------------------------------
   0877                    3120 _SPI_Init:
                    07F0   3121 	C$BSH.c$508$1$1 ==.
                           3122 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:508: SFRPAGE   = ACTIVE_PAGE;
   0877 75 A7 00           3123 	mov	_SFRPAGE,#0x00
                    07F3   3124 	C$BSH.c$509$1$1 ==.
                           3125 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:509: SPI0CFG   = 0x40;
   087A 75 A1 40           3126 	mov	_SPI0CFG,#0x40
                    07F6   3127 	C$BSH.c$510$1$1 ==.
                           3128 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:510: SPI0CN    = 0x01;
   087D 75 F8 01           3129 	mov	_SPI0CN,#0x01
                    07F9   3130 	C$BSH.c$511$1$1 ==.
                           3131 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:511: SPI0CKR   = 0xEF;
   0880 75 A2 EF           3132 	mov	_SPI0CKR,#0xEF
                    07FC   3133 	C$BSH.c$512$1$1 ==.
                           3134 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:512: SFRPAGE   = ACTIVE_PAGE;
   0883 75 A7 00           3135 	mov	_SFRPAGE,#0x00
                    07FF   3136 	C$BSH.c$513$1$1 ==.
                    07FF   3137 	XG$SPI_Init$0$0 ==.
   0886 22                 3138 	ret
                           3139 ;------------------------------------------------------------
                           3140 ;Allocation info for local variables in function 'ADC_Init'
                           3141 ;------------------------------------------------------------
                           3142 ;------------------------------------------------------------
                    0800   3143 	G$ADC_Init$0$0 ==.
                    0800   3144 	C$BSH.c$516$1$1 ==.
                           3145 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:516: void ADC_Init(void)
                           3146 ;	-----------------------------------------
                           3147 ;	 function ADC_Init
                           3148 ;	-----------------------------------------
   0887                    3149 _ADC_Init:
                    0800   3150 	C$BSH.c$518$1$1 ==.
                           3151 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:518: ADC0MX  = 0x13;
   0887 75 BB 13           3152 	mov	_ADC0MX,#0x13
                    0803   3153 	C$BSH.c$519$1$1 ==.
                           3154 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:519: ADC0CN  = 0x80;
   088A 75 E8 80           3155 	mov	_ADC0CN,#0x80
                    0806   3156 	C$BSH.c$520$1$1 ==.
                    0806   3157 	XG$ADC_Init$0$0 ==.
   088D 22                 3158 	ret
                           3159 ;------------------------------------------------------------
                           3160 ;Allocation info for local variables in function 'Port_IO_Init'
                           3161 ;------------------------------------------------------------
                           3162 ;------------------------------------------------------------
                    0807   3163 	G$Port_IO_Init$0$0 ==.
                    0807   3164 	C$BSH.c$524$1$1 ==.
                           3165 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:524: void Port_IO_Init(void)
                           3166 ;	-----------------------------------------
                           3167 ;	 function Port_IO_Init
                           3168 ;	-----------------------------------------
   088E                    3169 _Port_IO_Init:
                    0807   3170 	C$BSH.c$571$1$1 ==.
                           3171 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:571: SFRPAGE   = CONFIG_PAGE;
   088E 75 A7 0F           3172 	mov	_SFRPAGE,#0x0F
                    080A   3173 	C$BSH.c$572$1$1 ==.
                           3174 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:572: P0MDIN    = 0xFE;
   0891 75 F1 FE           3175 	mov	_P0MDIN,#0xFE
                    080D   3176 	C$BSH.c$573$1$1 ==.
                           3177 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:573: P2MDIN    = 0x01;
   0894 75 F3 01           3178 	mov	_P2MDIN,#0x01
                    0810   3179 	C$BSH.c$574$1$1 ==.
                           3180 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:574: P0MDOUT   = 0x5A;
   0897 75 A4 5A           3181 	mov	_P0MDOUT,#0x5A
                    0813   3182 	C$BSH.c$575$1$1 ==.
                           3183 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:575: P1MDOUT   = 0x0E;
   089A 75 A5 0E           3184 	mov	_P1MDOUT,#0x0E
                    0816   3185 	C$BSH.c$576$1$1 ==.
                           3186 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:576: P3MDOUT   = 0x05;
   089D 75 AE 05           3187 	mov	_P3MDOUT,#0x05
                    0819   3188 	C$BSH.c$577$1$1 ==.
                           3189 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:577: P0SKIP    = 0x01;
   08A0 75 D4 01           3190 	mov	_P0SKIP,#0x01
                    081C   3191 	C$BSH.c$578$1$1 ==.
                           3192 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:578: P1SKIP    = 0xFF;
   08A3 75 D5 FF           3193 	mov	_P1SKIP,#0xFF
                    081F   3194 	C$BSH.c$579$1$1 ==.
                           3195 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:579: P2SKIP    = 0xFF;
   08A6 75 D6 FF           3196 	mov	_P2SKIP,#0xFF
                    0822   3197 	C$BSH.c$580$1$1 ==.
                           3198 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:580: XBR0      = 0x07;
   08A9 75 E1 07           3199 	mov	_XBR0,#0x07
                    0825   3200 	C$BSH.c$581$1$1 ==.
                           3201 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:581: XBR1      = 0x04;
   08AC 75 E2 04           3202 	mov	_XBR1,#0x04
                    0828   3203 	C$BSH.c$582$1$1 ==.
                           3204 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:582: XBR2      = 0x40;
   08AF 75 C7 40           3205 	mov	_XBR2,#0x40
                    082B   3206 	C$BSH.c$583$1$1 ==.
                           3207 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:583: SFRPAGE   = ACTIVE_PAGE;
   08B2 75 A7 00           3208 	mov	_SFRPAGE,#0x00
                    082E   3209 	C$BSH.c$584$1$1 ==.
                    082E   3210 	XG$Port_IO_Init$0$0 ==.
   08B5 22                 3211 	ret
                           3212 ;------------------------------------------------------------
                           3213 ;Allocation info for local variables in function 'Oscillator_Init'
                           3214 ;------------------------------------------------------------
                           3215 ;i                         Allocated to registers r2 r3 
                           3216 ;------------------------------------------------------------
                    082F   3217 	G$Oscillator_Init$0$0 ==.
                    082F   3218 	C$BSH.c$596$1$1 ==.
                           3219 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:596: void Oscillator_Init(void)
                           3220 ;	-----------------------------------------
                           3221 ;	 function Oscillator_Init
                           3222 ;	-----------------------------------------
   08B6                    3223 _Oscillator_Init:
                    082F   3224 	C$BSH.c$600$1$1 ==.
                           3225 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:600: SFRPAGE = CONFIG_PAGE;
   08B6 75 A7 0F           3226 	mov	_SFRPAGE,#0x0F
                    0832   3227 	C$BSH.c$601$1$1 ==.
                           3228 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:601: OSCICN = 0x87;                            // Set internal osc. divider to 1
   08B9 75 A1 87           3229 	mov	_OSCICN,#0x87
                    0835   3230 	C$BSH.c$602$1$1 ==.
                           3231 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:602: CLKMUL = 0x00;                            // Reset the Clock Multiplier
   08BC 75 97 00           3232 	mov	_CLKMUL,#0x00
                    0838   3233 	C$BSH.c$603$1$1 ==.
                           3234 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:603: CLKMUL |= 0x80;                           // Enable the Clock Multiplier
   08BF 43 97 80           3235 	orl	_CLKMUL,#0x80
                    083B   3236 	C$BSH.c$604$1$1 ==.
                           3237 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:604: for(i = 0; i < 120; i++);                 // Need to delay (5 us) 120 clock cycles
   08C2 7A 78              3238 	mov	r2,#0x78
   08C4 7B 00              3239 	mov	r3,#0x00
   08C6                    3240 00106$:
   08C6 1A                 3241 	dec	r2
   08C7 BA FF 01           3242 	cjne	r2,#0xff,00114$
   08CA 1B                 3243 	dec	r3
   08CB                    3244 00114$:
   08CB EA                 3245 	mov	a,r2
   08CC 4B                 3246 	orl	a,r3
   08CD 70 F7              3247 	jnz	00106$
                    0848   3248 	C$BSH.c$605$1$1 ==.
                           3249 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:605: CLKMUL |= 0xC0;                           // Initialize the Clock Multiplier
   08CF 43 97 C0           3250 	orl	_CLKMUL,#0xC0
                    084B   3251 	C$BSH.c$606$1$1 ==.
                           3252 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:606: while(!(CLKMUL & 0x20));                  // Wait for PLL
   08D2                    3253 00101$:
   08D2 E5 97              3254 	mov	a,_CLKMUL
   08D4 30 E5 FB           3255 	jnb	acc.5,00101$
                    0850   3256 	C$BSH.c$607$1$1 ==.
                           3257 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:607: FLSCL = 0x10;                             // Set Flash read timing
   08D7 75 B6 10           3258 	mov	_FLSCL,#0x10
                    0853   3259 	C$BSH.c$608$1$1 ==.
                           3260 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:608: CLKSEL = 0x02;                            // Switch system clock to multiplier
   08DA 75 8F 02           3261 	mov	_CLKSEL,#0x02
                    0856   3262 	C$BSH.c$609$1$1 ==.
                           3263 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:609: SFRPAGE = ACTIVE_PAGE;
   08DD 75 A7 00           3264 	mov	_SFRPAGE,#0x00
                    0859   3265 	C$BSH.c$610$1$1 ==.
                    0859   3266 	XG$Oscillator_Init$0$0 ==.
   08E0 22                 3267 	ret
                           3268 ;------------------------------------------------------------
                           3269 ;Allocation info for local variables in function 'Interrupts_Init'
                           3270 ;------------------------------------------------------------
                           3271 ;------------------------------------------------------------
                    085A   3272 	G$Interrupts_Init$0$0 ==.
                    085A   3273 	C$BSH.c$613$1$1 ==.
                           3274 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:613: void Interrupts_Init(void)
                           3275 ;	-----------------------------------------
                           3276 ;	 function Interrupts_Init
                           3277 ;	-----------------------------------------
   08E1                    3278 _Interrupts_Init:
                    085A   3279 	C$BSH.c$615$1$1 ==.
                           3280 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:615: SFRPAGE   = CONFIG_PAGE;
   08E1 75 A7 0F           3281 	mov	_SFRPAGE,#0x0F
                    085D   3282 	C$BSH.c$616$1$1 ==.
                           3283 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:616: IT01CF    = 0x0F;
   08E4 75 E4 0F           3284 	mov	_IT01CF,#0x0F
                    0860   3285 	C$BSH.c$617$1$1 ==.
                           3286 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:617: SFRPAGE   = ACTIVE_PAGE;
   08E7 75 A7 00           3287 	mov	_SFRPAGE,#0x00
                    0863   3288 	C$BSH.c$618$1$1 ==.
                           3289 ;	C:\Engineering\Test_Benches\BSH\Firmware\BSH.c:618: IE = 0x92;
   08EA 75 A8 92           3290 	mov	_IE,#0x92
                    0866   3291 	C$BSH.c$619$1$1 ==.
                    0866   3292 	XG$Interrupts_Init$0$0 ==.
   08ED 22                 3293 	ret
                           3294 	.area CSEG    (CODE)
                           3295 	.area CONST   (CODE)
                           3296 	.area XINIT   (CODE)
                           3297 	.area CABS    (ABS,CODE)
