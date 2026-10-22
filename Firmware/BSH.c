/////////////////////////////////////
//  Generated Initialization File  //
/////////////////////////////////////

#include "compiler_defs.h"
#include "C8051F580_defs.h"

// ***************************************************
// This must be added or main will never be reached if
// XRAM variable count is too high.
// ***************************************************
// This must be added or main will never be reached if
// XRAM variable count is too high.
unsigned char _sdcc_external_startup(void)
{
  PCA0MD &= ~0x40;                          // disable watchdog
  return 0;                                 // default value
}                                           // _sdcc_external_startup()
// ***************************************************


typedef unsigned char BYTE;

SBIT(LED, 0xB0, 0x02); 
SBIT(DAC1_SEL, 0x90, 0x01); 



#define TIMER0_INT_ENABLE   IE |= 0x02
#define TIMER0_INT_DISABLE  IE &= ~0x02;\
                            IE &= ~0x02;

#define UART0_INT_ENABLE    IE |= 0x10
#define UART0_INT_DISABLE   IE &= ~0x10;\
                            IE &= ~0x10;

#define INT0_INT_ENABLE     IE |= 0x01;
#define INT0_INT_DISABLE    IE &= ~0x01;\
                            IE &= ~0x01;


#define RISING    1
#define FALLING   0

#define VOLTS     0x13
#define AMPS      0x12 

//#define DAC1_SEL    NSSMD0


void Oscillator_Init(void);
void Port_IO_Init(void);
void Warm_Reset(void);
void UART_Init(void);
void Timer_Init(void);
void Interrupts_Init(void);
void PCA0_Init(void);
void putchar0(BYTE bChar);
void Adjust_Power(unsigned int uiVolts);
void SPI_Init(void);
unsigned int Read_ADC(BYTE bChannel);
void ADC_Init(void);

volatile unsigned int gvuiLEDTimer;
volatile unsigned int gvuiDelayTimer;
volatile char gvcState;
volatile BYTE gbIntState;
volatile unsigned int gvuiTotalCount;
volatile unsigned int gvuiDutyCount;



void Timer0_ISR(void) __interrupt 1
{
  if(gvuiLEDTimer == 0)
  {
    LED = !LED;
	gvuiLEDTimer = 500;
  }
  if(gvuiLEDTimer)
    --gvuiLEDTimer;
  if(gvuiDelayTimer)
    --gvuiDelayTimer;

  TCON &= ~0x20;
}


void UART0_ISR(void) __interrupt 4
{
  __data char cData;

  if(RI0)
  {
    RI0 = 0;                                     // Clear interrupt flag
    if(SCON0 & 0x80)
      SCON0 &= ~0x80;
    cData = SBUF0;                               // Get character from buffer
	if((cData >= '0') && (cData <= '9')) 
	  gvcState = cData - 0x30;
    else
	  gvcState = cData;
  }
  if(TI0)                                        // BYTE of data has been transmitted 
    TI0 = 0;                                     // Clear interrupt flag
}


void INT0_ISR(void) __interrupt 0
{
  if(gbIntState == FALLING)                      // Caught a falling edge
  {

    gvuiDutyCount = (unsigned int)TH1;
    gvuiDutyCount <<= 8;
    gvuiDutyCount += (unsigned int)TL1;
    gbIntState = RISING;                         // Look for a rising edge
    SFRPAGE   = CONFIG_PAGE;
    IT01CF    = 0x0F;
    SFRPAGE   = ACTIVE_PAGE;
  }
 
 
  else                                           // Caught a rising edge
  {
    gvuiTotalCount = (unsigned int)TH1;          // Read in Timer high byte
	gvuiTotalCount <<= 8;                        // Bit shift
	gvuiTotalCount += (unsigned int)TL1;         // Read in Timer low byte
	TL1 = 0;                                     // Reset Timer low byte
	TH1 = 0;                                     // Reset Timer high byte
    gbIntState = FALLING;                        // Look for a falling edge
    SFRPAGE   = CONFIG_PAGE;
    IT01CF    = 0x07;
    SFRPAGE   = ACTIVE_PAGE;
  }

  TCON &= ~0x02;
}





void main()
{
  unsigned int uiADC_Count;
  float fTemp;
  BYTE bArray[14] = {""};
  BYTE i;
  unsigned int uiPeriod;
  unsigned int uiDuty;

  gvuiLEDTimer = 0;
  gvuiDelayTimer = 0;
  gvcState = 0;\
  gbIntState = RISING;
  gvuiTotalCount = 48000;

  Warm_Reset();
  Adjust_Power(0);                              // Output at 12.00 V
  INT0_INT_ENABLE;
  do
  {
    // Read voltage
	uiADC_Count = Read_ADC(VOLTS);
    fTemp = (float)uiADC_Count;
	fTemp *= 2.5;
	fTemp /= 4095;
	fTemp *= 1000;
	uiADC_Count = (unsigned int)fTemp;
	bArray[3] = (uiADC_Count % 10) + 0x30;
	uiADC_Count /= 10;
	bArray[2] = (uiADC_Count % 10) + 0x30;
	uiADC_Count /= 10;
	bArray[1] = (uiADC_Count % 10) + 0x30;
	uiADC_Count /= 10;
	bArray[0] = (uiADC_Count % 10) + 0x30;
	

	// Read current (mA)
	uiADC_Count = Read_ADC(AMPS);
    fTemp = (float)uiADC_Count;
	fTemp *= 2.5;
	fTemp /= 4095;
	fTemp *= 100;
	uiADC_Count = (unsigned int)fTemp;
	bArray[7] = (uiADC_Count % 10) + 0x30;
	uiADC_Count /= 10;
	bArray[6] = (uiADC_Count % 10) + 0x30;
	uiADC_Count /= 10;
	bArray[5] = (uiADC_Count % 10) + 0x30;
	uiADC_Count /= 10;
	bArray[4] = (uiADC_Count % 10) + 0x30;
    if(bArray[4] == 0x30)
	{
	  bArray[4] = ' ';
	  if(bArray[5] == 0x30)
	  {
	    bArray[5] = ' ';
		if(bArray[6] == 0x30)
		  bArray[6] = ' ';
	  }  
    }

    INT0_INT_DISABLE;
    uiPeriod = gvuiTotalCount;
	uiDuty = gvuiDutyCount;
    INT0_INT_ENABLE;

	// Compute Duty
	fTemp = (float)uiDuty;
	fTemp = fTemp / (float)uiPeriod;
	fTemp *= 100;
	uiDuty = (unsigned int)fTemp;
	bArray[9] = (uiDuty % 10) + 0x30;
	uiDuty /= 10;
    bArray[8] = (uiDuty % 10) + 0x30;
	if(bArray[8] == 0x30)
	  bArray[8] = ' ';


	// Place Frequency
    fTemp = (float)uiPeriod;
	fTemp = 48000000 / fTemp;
	fTemp += 0.5;
	uiPeriod = (unsigned int)fTemp;
	bArray[13] = (uiPeriod % 10) + 0x30;
	uiPeriod /= 10;
    bArray[12] = (uiPeriod % 10) + 0x30;
	uiPeriod /= 10;
	bArray[11] = (uiPeriod % 10) + 0x30;
	uiPeriod /= 10;
    bArray[10] = (uiPeriod % 10) + 0x30;
    if(bArray[10] == 0x30)
	  bArray[10] = ' ';


    switch(gvcState)
	{
	  case 0:                                                 // 150 F
        SFRPAGE   = CONFIG_PAGE;
        PCA0PWM   |= 0x80;           // ARSEL = 1
		SFRPAGE   = ACTIVE_PAGE;
        PCA0CPL0  = 0xCC;            // 15% 
        PCA0CPH0  = 0x06;
        SFRPAGE   = CONFIG_PAGE;
        PCA0PWM   &= ~0x80;          // ARSEL = 0
        SFRPAGE   = ACTIVE_PAGE;
	    gvcState = 10;
		break;
	  case 1:                                                 // 200 F
        SFRPAGE   = CONFIG_PAGE;
        PCA0PWM   |= 0x80;           // ARSEL = 1
        SFRPAGE   = ACTIVE_PAGE;
        PCA0CPL0  = 0xFF;            // 25% 
        PCA0CPH0  = 0x05;
        SFRPAGE   = CONFIG_PAGE;
        PCA0PWM   &= ~0x80;          // ARSEL = 0
        SFRPAGE   = ACTIVE_PAGE;
	    gvcState = 10;
	    break;
	  case 2:                                                 // 250 F
        SFRPAGE   = CONFIG_PAGE;
        PCA0PWM   |= 0x80;           // ARSEL = 1
        SFRPAGE   = ACTIVE_PAGE;
        PCA0CPL0  = 0x32;            // 35% 
        PCA0CPH0  = 0x05;
        SFRPAGE   = CONFIG_PAGE;
        PCA0PWM   &= ~0x80;          // ARSEL = 0
        SFRPAGE   = ACTIVE_PAGE;
	    gvcState = 10;
	    break;
	  case 3:                                                 // 300 F
        SFRPAGE   = CONFIG_PAGE;
        PCA0PWM   |= 0x80;           // ARSEL = 1
        SFRPAGE   = ACTIVE_PAGE;
        PCA0CPL0  = 0x35;            // 45% 
        PCA0CPH0  = 0x04;
        SFRPAGE   = CONFIG_PAGE;
        PCA0PWM   &= ~0x80;          // ARSEL = 0
        SFRPAGE   = ACTIVE_PAGE;
	    gvcState = 10;
	    break;
	  case 4:                                                 // 350 F
        SFRPAGE   = CONFIG_PAGE;
        PCA0PWM   |= 0x80;           // ARSEL = 1
        SFRPAGE   = ACTIVE_PAGE;
        PCA0CPL0  = 0x99;            // 55% 
        PCA0CPH0  = 0x03;
        SFRPAGE   = CONFIG_PAGE;
        PCA0PWM   &= ~0x80;          // ARSEL = 0
        SFRPAGE   = ACTIVE_PAGE;
	    gvcState = 10;
	    break;
	  case 5:                                                 // 400 F
        SFRPAGE   = CONFIG_PAGE;
        PCA0PWM   |= 0x80;           // ARSEL = 1
        SFRPAGE   = ACTIVE_PAGE;
        PCA0CPL0  = 0xCC;            // 65% 
        PCA0CPH0  = 0x02;
        SFRPAGE   = CONFIG_PAGE;
        PCA0PWM   &= ~0x80;          // ARSEL = 0
        SFRPAGE   = ACTIVE_PAGE;
	    gvcState = 10;
	    break;
	  case 6:                                                 // 450 F
        SFRPAGE   = CONFIG_PAGE;
        PCA0PWM   |= 0x80;           // ARSEL = 1
        SFRPAGE   = ACTIVE_PAGE;
        PCA0CPL0  = 0xFF;            // 75% 
        PCA0CPH0  = 0x01;
        SFRPAGE   = CONFIG_PAGE;
        PCA0PWM   &= ~0x80;          // ARSEL = 0
        SFRPAGE   = ACTIVE_PAGE;
	    gvcState = 10;
	    break;
	  case 7:                                                 // 500 F
        SFRPAGE   = CONFIG_PAGE;
        PCA0PWM   |= 0x80;           // ARSEL = 1
        SFRPAGE   = ACTIVE_PAGE;
        PCA0CPL0  = 0x32;            // 85% 
        PCA0CPH0  = 0x01;
        SFRPAGE   = CONFIG_PAGE;
        PCA0PWM   &= ~0x80;          // ARSEL = 0
        SFRPAGE   = ACTIVE_PAGE;
	    gvcState = 10;
	    break;
	  case 8:                                                 // Clean F
        SFRPAGE   = CONFIG_PAGE;
        PCA0PWM   |= 0x80;           // ARSEL = 1
        SFRPAGE   = ACTIVE_PAGE;
        PCA0CPL0  = 0x65;            // 95% 
        PCA0CPH0  = 0x00;
        SFRPAGE   = CONFIG_PAGE;
        PCA0PWM   &= ~0x80;          // ARSEL = 0
        SFRPAGE   = ACTIVE_PAGE;
	    gvcState = 10;
	    break;
      case 9:
	    UART0_INT_DISABLE;

        putchar0('$');
		for(i = 0; i < 14; i++)
          putchar0(bArray[i]);
        putchar0('*');
	    gvcState = 10;

	    UART0_INT_ENABLE;
	    break;

      case 'A':
	    Adjust_Power(39924);                              // Output at 12.00 V
	    break;
      case 'B':
	    Adjust_Power(0);                                  // Output at 0 V
	    break;

      default:
	    break;
	}

  }while(1);
}


unsigned int Read_ADC(BYTE bChannel)
{
  unsigned int j = 0;
  unsigned int uiSum = 0;

  for(j = 0; j < 16; j++)                    // Sample 16 times
  {
    ADC0CN &= ~0x20;                         // Clear interrupt flag
    ADC0MX = bChannel;
	NOP();
	NOP();
	NOP();
	NOP();
	NOP();
	NOP();
	NOP();
	NOP();
	NOP();
	NOP();
    ADC0CN |= 0x10;
    while((ADC0CN & 0x20) == 0x00);          // Wait for conversion to complete
    ADC0CN &= ~0x20;                         // Clear interrupt flag
    uiSum += ADC0;
  }
  uiSum /= 16; 
  return(uiSum);
}




void Adjust_Power(unsigned int uiVolts)
{
  __data BYTE bPage;

  bPage = SFRPAGE;
  SFRPAGE = ACTIVE_PAGE;
  SPI0CFG = 0x40;                                          // Clock low in idle state
  NOP();
  NOP();
  DAC1_SEL = 0;
  NOP();
  NOP();
  SPI0DAT = (BYTE)(uiVolts >> 8);
  while(!SPIF);                                          // Step1.3: Wait for end of transfer
  SPIF = 0;                                              // Step1.4: Clear the SPI intr. flag
  SPI0DAT = (BYTE)(uiVolts);
  while(!SPIF);                                            // Step1.3: Wait for end of transfer
  SPIF = 0;                                                // Step1.4: Clear the SPI intr. flag
  DAC1_SEL = 1;
  SFRPAGE = bPage;       
}


//-------------------------------------------------------------------
// putchar0 (GOOD)
//-------------------------------------------------------------------
//
// Return Value : None
// Parameters   : BYTE
//
// This routine places a character in the software buffer.
//-------------------------------------------------------------------
//#pragma save
//#pragma nooverlay
void putchar0(BYTE bChar)
{
  BYTE bPage;
  bPage = SFRPAGE;
  SFRPAGE = 0x00;                                // Active page
  SBUF0 = bChar;                                 // Transmit data
  while(!TI0);                                   // Wait for last character to be transmited, TI0 set to 1 after data has been transmitted
  TI0 = 0;                                       // Clear TI0 Flag
  SFRPAGE = bPage;
}
//#pragma restore


void Warm_Reset(void)
{
  PCA0_Init();
  Timer_Init();
  UART_Init();
  SPI_Init();  
  ADC_Init();
  Port_IO_Init();
  Oscillator_Init();
  Interrupts_Init();
}


void PCA0_Init(void)
{
  PCA0CN    = 0x40;
  PCA0MD    &= ~0x40;
  PCA0MD    = 0x0C;
  PCA0CPM0  = 0x42;
  SFRPAGE   = CONFIG_PAGE;
  PCA0PWM   = 0x03;
  SFRPAGE   = ACTIVE_PAGE;
  SFRPAGE   = CONFIG_PAGE;
  PCA0PWM   |= 0x80;           // ARSEL = 1
  SFRPAGE   = ACTIVE_PAGE;
  PCA0CPL0  = 0xCC;            // 15% 
  PCA0CPH0  = 0x06;
  SFRPAGE   = CONFIG_PAGE;
  PCA0PWM   &= ~0x80;          // ARSEL = 0
  SFRPAGE   = ACTIVE_PAGE;
}


void Timer_Init(void)
{
  TCON      = 0x51;
  TMOD      = 0x11;
  CKCON     = 0x0C;
  TL0       = 0x7F;
  TH0       = 0x44;
  SFRPAGE   = ACTIVE2_PAGE;
  TMR4CN    = 0x04;
  TMR4CF    = 0x08;
  TMR4CAPL  = 0xE8;
  TMR4CAPH  = 0xFF;
  TMR4L     = 0xE8;
  TMR4H     = 0xFF;
  SFRPAGE   = ACTIVE_PAGE;
}


void UART_Init(void)
{
  SCON0   = 0x10;
  SFRPAGE = CONFIG_PAGE;
  SBRLL0  = 0x3C;
  SBRLH0  = 0xF6;
  SBCON0  = 0x43;
  SFRPAGE   = ACTIVE_PAGE;
}


void SPI_Init(void)
{
  SFRPAGE   = ACTIVE_PAGE;
  SPI0CFG   = 0x40;
  SPI0CN    = 0x01;
  SPI0CKR   = 0xEF;
  SFRPAGE   = ACTIVE_PAGE;
}


void ADC_Init(void)
{
  ADC0MX  = 0x13;
  ADC0CN  = 0x80;
}



void Port_IO_Init(void)
{
    // P0.0  -  Skipped,     Open-Drain, Analog
    // P0.1  -  SCK  (SPI0), Push-Pull,  Digital
    // P0.2  -  MISO (SPI0), Open-Drain, Digital
    // P0.3  -  MOSI (SPI0), Push-Pull,  Digital
    // P0.4  -  UART_TX (UART0), Push-Pull,  Digital
    // P0.5  -  UART_RX (UART0), Open-Drain, Digital
    // P0.6  -  CAN_TX (CAN0), Push-Pull,  Digital
    // P0.7  -  CAN_RX (CAN0), Open-Drain, Digital

    // P1.0  -  Skipped,     Open-Drain, Digital
    // P1.1  -  Skipped,     Push-Pull,  Digital
    // P1.2  -  Skipped,     Push-Pull,  Digital
    // P1.3  -  Skipped,     Push-Pull,  Digital
    // P1.4  -  Skipped,     Open-Drain, Digital
    // P1.5  -  Skipped,     Open-Drain, Digital
    // P1.6  -  Skipped,     Open-Drain, Digital
    // P1.7  -  Skipped,     Open-Drain, Digital

    // P2.0  -  Skipped,     Open-Drain, Digital
    // P2.1  -  Skipped,     Open-Drain, Analog
    // P2.2  -  Skipped,     Open-Drain, Analog
    // P2.3  -  Skipped,     Open-Drain, Analog
    // P2.4  -  Skipped,     Open-Drain, Analog
    // P2.5  -  Skipped,     Open-Drain, Analog
    // P2.6  -  Skipped,     Open-Drain, Analog
    // P2.7  -  Skipped,     Open-Drain, Analog

    // P3.0  -  CEX0 (PCA0), Push-Pull,  Digital
    // P3.1  -  Unassigned,  Open-Drain, Digital
    // P3.2  -  Unassigned,  Push-Pull,  Digital
    // P3.3  -  Unassigned,  Open-Drain, Digital
    // P3.4  -  Unassigned,  Open-Drain, Digital
    // P3.5  -  Unassigned,  Open-Drain, Digital
    // P3.6  -  Unassigned,  Open-Drain, Digital
    // P3.7  -  Unassigned,  Open-Drain, Digital

    // P4.0  -  Unassigned,  Open-Drain, Digital [Fixed]
    // P4.1  -  Unassigned,  Open-Drain, Digital [Fixed]
    // P4.2  -  Unassigned,  Open-Drain, Digital [Fixed]
    // P4.3  -  Unassigned,  Open-Drain, Digital [Fixed]
    // P4.4  -  Unassigned,  Open-Drain, Digital [Fixed]
    // P4.5  -  Unassigned,  Open-Drain, Digital [Fixed]
    // P4.6  -  Unassigned,  Open-Drain, Digital [Fixed]
    // P4.7  -  Unassigned,  Open-Drain, Digital [Fixed]

    SFRPAGE   = CONFIG_PAGE;
    P0MDIN    = 0xFE;
    P2MDIN    = 0x01;
    P0MDOUT   = 0x5A;
    P1MDOUT   = 0x0E;
    P3MDOUT   = 0x05;
    P0SKIP    = 0x01;
    P1SKIP    = 0xFF;
    P2SKIP    = 0xFF;
    XBR0      = 0x07;
    XBR1      = 0x04;
    XBR2      = 0x40;
    SFRPAGE   = ACTIVE_PAGE;
}


//-------------------------------------------------------------------
// Oscillator Init (48 Mhz)
//-------------------------------------------------------------------
//
// Return Value : None
// Parameters   : None
//
// This routine switches the internal RC Osc to 48 Mhz.
//-------------------------------------------------------------------
void Oscillator_Init(void)
{
  int i = 0;                                
  
  SFRPAGE = CONFIG_PAGE;
  OSCICN = 0x87;                            // Set internal osc. divider to 1
  CLKMUL = 0x00;                            // Reset the Clock Multiplier
  CLKMUL |= 0x80;                           // Enable the Clock Multiplier
  for(i = 0; i < 120; i++);                 // Need to delay (5 us) 120 clock cycles
  CLKMUL |= 0xC0;                           // Initialize the Clock Multiplier
  while(!(CLKMUL & 0x20));                  // Wait for PLL
  FLSCL = 0x10;                             // Set Flash read timing
  CLKSEL = 0x02;                            // Switch system clock to multiplier
  SFRPAGE = ACTIVE_PAGE;
}


void Interrupts_Init(void)
{
  SFRPAGE   = CONFIG_PAGE;
  IT01CF    = 0x0F;
  SFRPAGE   = ACTIVE_PAGE;
  IE = 0x92;
}





