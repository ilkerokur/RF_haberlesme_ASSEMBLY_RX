
; PICBASIC PRO(TM) Compiler 2.60, (c) 1998, 2009 microEngineering Labs, Inc. All Rights Reserved. 
_USED			EQU	1

	INCLUDE	"C:\PBP\16F628A.INC"


; Define statements.
; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00015	DEFINE OSC 4
#define		OSC		 4

RAM_START       		EQU	00020h
RAM_END         		EQU	0014Fh
RAM_BANKS       		EQU	00003h
BANK0_START     		EQU	00020h
BANK0_END       		EQU	0007Fh
BANK1_START     		EQU	000A0h
BANK1_END       		EQU	000EFh
BANK2_START     		EQU	00120h
BANK2_END       		EQU	0014Fh
EEPROM_START    		EQU	02100h
EEPROM_END      		EQU	0217Fh

; C:\PBP\PBPPIC14.RAM      	00012	A00020	R0      VAR     WORD BANK0 SYSTEM       ' System Register
R0              		EQU	RAM_START + 000h
; C:\PBP\PBPPIC14.RAM      	00013	A00022	R1      VAR     WORD BANK0 SYSTEM       ' System Register
R1              		EQU	RAM_START + 002h
; C:\PBP\PBPPIC14.RAM      	00014	A00024	R2      VAR     WORD BANK0 SYSTEM       ' System Register
R2              		EQU	RAM_START + 004h
; C:\PBP\PBPPIC14.RAM      	00015	A00026	R3      VAR     WORD BANK0 SYSTEM       ' System Register
R3              		EQU	RAM_START + 006h
; C:\PBP\PBPPIC14.RAM      	00016	A00028	R4      VAR     WORD BANK0 SYSTEM       ' System Register
R4              		EQU	RAM_START + 008h
; C:\PBP\PBPPIC14.RAM      	00017	A0002A	R5      VAR     WORD BANK0 SYSTEM       ' System Register
R5              		EQU	RAM_START + 00Ah
; C:\PBP\PBPPIC14.RAM      	00018	A0002C	R6      VAR     WORD BANK0 SYSTEM       ' System Register
R6              		EQU	RAM_START + 00Ch
; C:\PBP\PBPPIC14.RAM      	00019	A0002E	R7      VAR     WORD BANK0 SYSTEM       ' System Register
R7              		EQU	RAM_START + 00Eh
; C:\PBP\PBPPIC14.RAM      	00020	A00030	R8      VAR     WORD BANK0 SYSTEM       ' System Register
R8              		EQU	RAM_START + 010h
; C:\PBP\PBPPIC14.RAM      	00026	A00032	FLAGS   VAR     BYTE BANK0 SYSTEM       ' Static flags
FLAGS           		EQU	RAM_START + 012h
; C:\PBP\PBPPIC14.RAM      	00025	A00033	GOP     VAR     BYTE BANK0 SYSTEM       ' Gen Op Parameter
GOP             		EQU	RAM_START + 013h
; C:\PBP\PBPPIC14.RAM      	00022	A00034	RM1     VAR     BYTE BANK0 SYSTEM       ' Pin 1 Mask
RM1             		EQU	RAM_START + 014h
; C:\PBP\PBPPIC14.RAM      	00024	A00035	RM2     VAR     BYTE BANK0 SYSTEM       ' Pin 2 Mask
RM2             		EQU	RAM_START + 015h
; C:\PBP\PBPPIC14.RAM      	00021	A00036	RR1     VAR     BYTE BANK0 SYSTEM       ' Pin 1 Register
RR1             		EQU	RAM_START + 016h
; C:\PBP\PBPPIC14.RAM      	00023	A00037	RR2     VAR     BYTE BANK0 SYSTEM       ' Pin 2 Register
RR2             		EQU	RAM_START + 017h
; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00021	A00038	RX VAR BYTE
_RX              		EQU	RAM_START + 018h
; C:\PBP\16F628A.BAS       	00020	PORTL   VAR     PORTB
_PORTL           		EQU	 PORTB
; C:\PBP\16F628A.BAS       	00021	PORTH   VAR     PORTA
_PORTH           		EQU	 PORTA
; C:\PBP\16F628A.BAS       	00022	TRISL   VAR     TRISB
_TRISL           		EQU	 TRISB
; C:\PBP\16F628A.BAS       	00023	TRISH   VAR     TRISA
_TRISH           		EQU	 TRISA
#define _PORTA??0        	 PORTA, 000h
#define _PORTB??0        	 PORTB, 000h
#define _PORTB??1        	 PORTB, 001h
#define _PORTB??2        	 PORTB, 002h
#define _PORTB??3        	 PORTB, 003h
#define _PORTB??4        	 PORTB, 004h
#define _PORTB??5        	 PORTB, 005h
#define _PORTB??6        	 PORTB, 006h

; Constants.
_T2400           		EQU	00000h
_T1200           		EQU	00001h
_T9600           		EQU	00002h
_T300            		EQU	00003h
_N2400           		EQU	00004h
_N1200           		EQU	00005h
_N9600           		EQU	00006h
_N300            		EQU	00007h
_OT2400          		EQU	00008h
_OT1200          		EQU	00009h
_OT9600          		EQU	0000Ah
_OT300           		EQU	0000Bh
_ON2400          		EQU	0000Ch
_ON1200          		EQU	0000Dh
_ON9600          		EQU	0000Eh
_ON300           		EQU	0000Fh
_MSBPRE          		EQU	00000h
_LSBPRE          		EQU	00001h
_MSBPOST         		EQU	00002h
_LSBPOST         		EQU	00003h
_LSBFIRST        		EQU	00000h
_MSBFIRST        		EQU	00001h
_CLS             		EQU	00000h
_HOME            		EQU	00001h
_BELL            		EQU	00007h
_BKSP            		EQU	00008h
_TAB             		EQU	00009h
_CR              		EQU	0000Dh
_UnitOn          		EQU	00012h
_UnitOff         		EQU	0001Ah
_UnitsOff        		EQU	0001Ch
_LightsOn        		EQU	00014h
_LightsOff       		EQU	00010h
_Dim             		EQU	0001Eh
_Bright          		EQU	00016h
	INCLUDE	"RX.MAC"
	INCLUDE	"C:\PBP\PBPPIC14.LIB"


; C:\PBP\16F628A.BAS       	00012	BANK0   $0020, $007F
; C:\PBP\16F628A.BAS       	00013	BANK1   $00A0, $00EF
; C:\PBP\16F628A.BAS       	00014	BANK2   $0120, $014F
; C:\PBP\16F628A.BAS       	00015	EEPROM  $2100, $217F
; C:\PBP\16F628A.BAS       	00016	LIBRARY "PBPPIC14"

; C:\PBP\16F628A.BAS       	00018	        include "PIC14EXT.BAS"

; C:\PBP\16F628A.BAS       	00025	        include "PBPPIC14.RAM"

; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00012	@__CONFIG _MCLRE_OFF & _XT_OSC & _WDT_ON & _PWRTE_ON & _CP_OFF & _LVP_OFF

	ASM?
__CONFIG _MCLRE_OFF & _XT_OSC & _WDT_ON & _PWRTE_ON & _CP_OFF & _LVP_OFF

	ENDASM?


; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00013	CMCON=7
	MOVE?CB	007h, CMCON

; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00014	INCLUDE "modedefs.bas"
; C:\PBP\MODEDEFS.BAS      	00014	Symbol T2400  = 0       ' Driven True
; C:\PBP\MODEDEFS.BAS      	00015	Symbol T1200  = 1       ' Driven True
; C:\PBP\MODEDEFS.BAS      	00016	Symbol T9600  = 2       ' Driven True
; C:\PBP\MODEDEFS.BAS      	00017	Symbol T300   = 3       ' Driven True
; C:\PBP\MODEDEFS.BAS      	00019	Symbol N2400  = 4       ' Driven Inverted
; C:\PBP\MODEDEFS.BAS      	00020	Symbol N1200  = 5       ' Driven Inverted
; C:\PBP\MODEDEFS.BAS      	00021	Symbol N9600  = 6       ' Driven Inverted
; C:\PBP\MODEDEFS.BAS      	00022	Symbol N300   = 7       ' Driven Inverted
; C:\PBP\MODEDEFS.BAS      	00024	Symbol OT2400 = 8       ' Open True
; C:\PBP\MODEDEFS.BAS      	00025	Symbol OT1200 = 9       ' Open True
; C:\PBP\MODEDEFS.BAS      	00026	Symbol OT9600 = 10      ' Open True
; C:\PBP\MODEDEFS.BAS      	00027	Symbol OT300  = 11      ' Open True
; C:\PBP\MODEDEFS.BAS      	00029	Symbol ON2400 = 12      ' Open Inverted
; C:\PBP\MODEDEFS.BAS      	00030	Symbol ON1200 = 13      ' Open Inverted
; C:\PBP\MODEDEFS.BAS      	00031	Symbol ON9600 = 14      ' Open Inverted
; C:\PBP\MODEDEFS.BAS      	00032	Symbol ON300  = 15      ' Open Inverted
; C:\PBP\MODEDEFS.BAS      	00036	Symbol MSBPRE = 0       ' MSB first, sample before clock
; C:\PBP\MODEDEFS.BAS      	00037	Symbol LSBPRE = 1       ' LSB first, sample before clock
; C:\PBP\MODEDEFS.BAS      	00038	Symbol MSBPOST = 2      ' MSB first, sample after clock
; C:\PBP\MODEDEFS.BAS      	00039	Symbol LSBPOST = 3      ' LSB first, sample after clock
; C:\PBP\MODEDEFS.BAS      	00042	Symbol LSBFIRST = 0     ' LSB first
; C:\PBP\MODEDEFS.BAS      	00043	Symbol MSBFIRST = 1     ' MSB first
; C:\PBP\MODEDEFS.BAS      	00047	Symbol CLS = 0
; C:\PBP\MODEDEFS.BAS      	00048	Symbol HOME = 1
; C:\PBP\MODEDEFS.BAS      	00049	Symbol BELL = 7
; C:\PBP\MODEDEFS.BAS      	00050	Symbol BKSP = 8
; C:\PBP\MODEDEFS.BAS      	00051	Symbol TAB = 9
; C:\PBP\MODEDEFS.BAS      	00052	Symbol CR = 13
; C:\PBP\MODEDEFS.BAS      	00056	Symbol UnitOn = %10010
; C:\PBP\MODEDEFS.BAS      	00057	Symbol UnitOff = %11010
; C:\PBP\MODEDEFS.BAS      	00058	Symbol UnitsOff = %11100
; C:\PBP\MODEDEFS.BAS      	00059	Symbol LightsOn = %10100
; C:\PBP\MODEDEFS.BAS      	00060	Symbol LightsOff = %10000
; C:\PBP\MODEDEFS.BAS      	00061	Symbol Dim = %11110
; C:\PBP\MODEDEFS.BAS      	00062	Symbol Bright = %10110
; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00015	DEFINE OSC 4

; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00017	TRISA=1
	MOVE?CB	001h, TRISA

; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00018	TRISB=0
	MOVE?CB	000h, TRISB

; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00019	PORTA=0
	MOVE?CB	000h, PORTA

; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00020	PORTB=0
	MOVE?CB	000h, PORTB

; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00023	BASLA

	LABEL?L	_BASLA	

; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00024	RX=0
	MOVE?CB	000h, _RX

; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00025	SERIN PORTA.0,T2400,["X"],RX
	SERPIN?T	_PORTA??0
	SERMODE?C	_T2400

	LABEL?L	L00001	
	SERINQ?CL	058h, L00001
	SERIN?B	_RX

; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00027	SELECT CASE RX

; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00031	CASE 8           '* geri
	CMPNE?BCL	_RX, 008h, L00004

; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00033	LOW PORTB.0
	LOW?T	_PORTB??0

; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00034	HIGH PORTB.1 
	HIGH?T	_PORTB??1

; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00035	LOW PORTB.2
	LOW?T	_PORTB??2

; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00036	HIGH PORTB.3
	HIGH?T	_PORTB??3

; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00038	CASE 7              '* sag
	GOTO?L	L00003
	LABEL?L	L00004	
	CMPNE?BCL	_RX, 007h, L00005

; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00040	HIGH PORTB.0
	HIGH?T	_PORTB??0

; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00041	LOW PORTB.1
	LOW?T	_PORTB??1

; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00042	LOW PORTB.2
	LOW?T	_PORTB??2

; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00043	HIGH PORTB.3
	HIGH?T	_PORTB??3

; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00045	CASE 6
	GOTO?L	L00003
	LABEL?L	L00005	
	CMPNE?BCL	_RX, 006h, L00006

; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00047	LOW PORTB.0
	LOW?T	_PORTB??0

; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00048	HIGH PORTB.1
	HIGH?T	_PORTB??1

; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00049	HIGH PORTB.2
	HIGH?T	_PORTB??2

; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00050	LOW PORTB.3
	LOW?T	_PORTB??3

; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00052	CASE 5         '* �LER�
	GOTO?L	L00003
	LABEL?L	L00006	
	CMPNE?BCL	_RX, 005h, L00007

; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00054	HIGH PORTB.0
	HIGH?T	_PORTB??0

; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00055	LOW PORTB.1 
	LOW?T	_PORTB??1

; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00056	HIGH PORTB.2
	HIGH?T	_PORTB??2

; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00057	LOW PORTB.3
	LOW?T	_PORTB??3

; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00059	CASE 4 
	GOTO?L	L00003
	LABEL?L	L00007	
	CMPNE?BCL	_RX, 004h, L00008

; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00061	HIGH PORTB.4
	HIGH?T	_PORTB??4

; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00062	LOW PORTB.5
	LOW?T	_PORTB??5

; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00064	CASE 3
	GOTO?L	L00003
	LABEL?L	L00008	
	CMPNE?BCL	_RX, 003h, L00009

; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00066	LOW PORTB.4
	LOW?T	_PORTB??4

; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00067	HIGH PORTB.5
	HIGH?T	_PORTB??5

; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00069	CASE 2
	GOTO?L	L00003
	LABEL?L	L00009	
	CMPNE?BCL	_RX, 002h, L00010

; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00071	HIGH PORTB.6
	HIGH?T	_PORTB??6

; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00073	case ELSE
	GOTO?L	L00003
	LABEL?L	L00010	

; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00074	LOW PORTB.0
	LOW?T	_PORTB??0

; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00075	LOW PORTB.1 
	LOW?T	_PORTB??1

; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00076	LOW PORTB.2
	LOW?T	_PORTB??2

; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00077	LOW PORTB.3
	LOW?T	_PORTB??3

; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00078	LOW PORTB.4
	LOW?T	_PORTB??4

; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00079	LOW PORTB.5
	LOW?T	_PORTB??5

; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00080	LOW PORTB.6
	LOW?T	_PORTB??6

; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00082	END SELECT
	LABEL?L	L00003	

; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00084	GOTO BASLA
	GOTO?L	_BASLA

; C:\USERS\ASUS\DESKTOP\TASARIM\RX.PBP	00085	END
	END?	

	END
