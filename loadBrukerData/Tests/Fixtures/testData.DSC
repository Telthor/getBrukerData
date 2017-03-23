#DESC	1.2 * DESCRIPTOR INFORMATION ***********************
*
*	Dataset Type and Format:
*
DSRC	EXP
BSEQ	BIG
IKKF	CPLX
XTYP	IDX
YTYP	NODATA
ZTYP	NODATA
*
*	Item Formats:
*
IRFMT	D
IIFMT	D
*
*	Data Ranges and Resolutions:
*
XPTS	101
XMIN	1000.000000
XWID	30000000.000000
*
*	Documentational Text:
*
TITL	'T1_NoLas_8k_32-20dB_1sPC'
IRNAM	'Intensity'
IINAM	'Intensity'
XNAM	'Time'
IRUNI	''
IIUNI	''
XUNI	'ns'
*
************************************************************
*
#SPL	1.2 * STANDARD PARAMETER LAYER
*
OPER    xuser
DATE    02/27/17
TIME    17:40:36
CMNT    
SAMP    
SFOR    
STAG    C
EXPT    PLS
OXS1    TADC
AXS1    B0VL
AXS2    NONE
AXS3    
MWPW    6.047e-08
A1CT    0.32633
B0VL    0.32633
A1SW    0.006
MWFQ    9.727011e+09
AVGS    1
*
************************************************************
*
#DSL	1.0 * DEVICE SPECIFIC LAYER
*

.DVC     acqStart, 1.0


.DVC     cwBridge, 1.0

AcqFineTuning      Never
AcqScanFTuning     Off
AcqSliceFTuning    Off
BridgeCalib        100.0
Power              6.047e-05 mW
PowerAtten         60 dB
QValue             300

.DVC     endor, 1.0

EIEENDORFreq       14.9021800 MHz/3.5 kG
EIEIsotope         H1
EIERFSweepDir      Same
EIEStaticField     3480.000 G
EIEStaticRF        1.000 MHz
ENDORType          EIF
RF1Atten           60.000 dB
RF1FreqPos         1.000 MHz
RF1StartFreq       1.000 MHz
RF1SweepWidth      30.000 MHz
RF2Atten           60.000 dB
RF2FreqPos         1.000 MHz
RF2StartFreq       1.000 MHz
RF2SweepWidth      30.000 MHz
RFSrcMixing        Add
SumAtten           10.000 dB
SumAttenStart      6.000 dB
SumAttenWidth      74.000 dB

.DVC     fieldCtrl, 1.0

AllegroMode        False
CenterField        3263.30 G
Delay              0.0 s
FieldFlyback       On
FieldWait          Wait LED off
GFactor            2.000000
SetToSampleG       False
StaticFieldMon     3480.000 G
SweepDirection     Up
SweepWidth         60.0 G

.DVC     freqCounter, 1.0

FrequencyMon       9.727011 GHz
QMonitBridge       On

.DVC     ftBridge, 1.0

Attenuation        32.20 dB
VideoBW            200 MHz
VideoGain          33 dB

.DVC     ftEpr, 1.0

AutoTimeOut        True
AveragesPerScan    5
ELDORFreqStart     9.300000 GHz
ELDORFreqWidth     0.700000 GHz
FTAcqModeSlct      Run from PulseSPEL
PPExtTrg           False
PPExtTrgSlope      Rising
PlsSPELEXPSlct     Inversion Recovery
PlsSPELGlbTxt      \
;    \n\
; PulseSPEL general variables, definitions & convention\n\
;\n\
begin defs\n\
;                                                         Oct 2007, JJLM AMT\n\
; Variables    ; Comments:\n\
               ;\n\
p0   = 100      ; 90 pulse length\n\
p1   = 200      ; 180 pulse length  \n\
p2   = 4       ; 360 pulse length\n\
p10  = 30000   ; RF 90 pulse length\n\
p11  = 15000   ; RF 180pulse length\\n\
p22  = 200     ; Trigger pulse length\n\
d10  = 32000   ;\n\
               ;\n\
pg   = 400    ; Intergrator Gate Width 80\n\
               ;\n\
d0   = 400     ; data trigger offset time\n\
d1   = 2000     ; ESE tau for detection\n\
d2   = 1000     ; ESE tau for initiation\n\
               ;\n\
d3   = -16900  ; Position of RF coh-transfer wrt ESE echo\n\
d4   = 2240    ; Position of MW coh-transfer wrt RF\n\
               ;\n\
d5   = 100000  ; initial tau for nuclear echo\n\
d15  = 3200000 ; nuclear tau increment\n\
\n\
d12  = 1000000000 ; delay before tidying RF pulse\n\
d21  = 10000000 ; delay before tidying RF pulse\n\
\n\
d29  = 500       ; increment T1e inversion recovery tau\n\
d30  = 32      ; increment T2e electron spin echo tau\n\
d31  = 300000     ; increment theta for instantaneous diffusion\n\
\n\
\n\
d6   = 9000    ; nuclear echo detection offset\n\
d8   = 200     ; delay between MW transfer-back and RF\n\
d9   = 0       ; No flash\n\
               ;\n\
dx   = 40      ; t2 time scale starting value\n\
dy   = 0       ; t1 time scale starting value\n\
d18  = 5000    \n\
d19  = 0       \n\
               ;\n\
;df1  = 125220  ; Resonance RF 52435/65173\n\
df11 = 6       \n\
df1  = 91500   \n\
; df final is 94.5MHz - 3MHz wide, 6kHz pp = 500pts, 30us pulse = 5p per \n\
     \n\
               ;\n\
h    = 5      ; number of shots/loop                     ( counter: I )\n\
n    = 1      ; number of sweeps to accumulate           ( counter: K )\n\
s    = 10000   ; Sweep length (n. of data really taken)   ( counter: X )\n\
t    = 100     ; second time axsis sweep length           ( counter: Y )\n\
m    = 7       ; number of pi pulses in CPMG sequence\n\
a    = 1000     ; 30720 76800number of transient averages\n\
               \n\
srt  = 40000 * srtu ; shot repetition time, srtu = 1usec\n\
r    = 1       ;\n\
c    = 1       ;\n\
b    = 1       ;\n\
               ;\n\
w    = 800     ; Split point of sweeps (ns) ,i.e. pulse separatrion where\n\
               ; TWT gate pulse can be split.\n\
;\n\
end defs\n\
\n
PlsSPELLISTSlct    2-step
PlsSPELPhPrgEx     Normal
PlsSPELPrg         David/Basic.exp
PlsSPELPrgTxt      \
;\n\
;\n\
; Relaxation Experiments\n\
;\n\
;325\n\
begin defs		; dimension of data array [sx,sy]\n\
 dim s[500]		; 	for set-up\n\
 dim1 s[101]		; 	for fieldsweep\n\
 dim2 s[400]		; 	for echo decay\n\
 dim3 s[512,128]	; 	for echo decay vs. field\n\
 dim4 s[101]		; 	inversion recovery\n\
 dim5 s[1000]             ;       flash delay\n\
 dim6 s[2048,100]       ;       transient versus field\n\
 dim7 s[100]            ;       T2 decay using XYXY\n\
end defs\n\
;\n\
;\n\
begin lists "+x none" \n\
 ph1 +x \n\
 ph2 +x \n\
 asg1 +a \n\
 bsg1 +b \n\
end lists \n\
 \n\
begin lists1 "-x none" \n\
 ph1 -x \n\
 ph2 +x \n\
 asg1 -a \n\
 bsg1 -b \n\
end lists1 \n\
 \n\
begin lists2 "2-step" \n\
 ph1 +x -x \n\
 ph2 +x +x \n\
 asg1 +a -a \n\
 bsg1 +b -b \n\
end lists2 \n\
 \n\
begin lists3 "16-step" \n\
 ph1 +x -x +y -y  +x -x +y -y \n\
 ph2 +x -x +y -y  -x +x -y +y  +y -y -x +x  -y +y +x -x \n\
 asg1 +a -a +b -b  +a -a +b -b  -a +a -b +b  -a +a -b +b \n\
 bsg1 +b -b -a +a  +b -b -a +a  -b +b +a -a  -b +b +a -a \n\
end lists3 \n\
 \n\
\n\
 \n\
; \n\
; Standing Echo for 2-Pulse Set-Up \n\
; \n\
begin exp "2P ESE Setup" [TRANS QUAD ] \n\
	; QUAD detection of Transient \n\
 \n\
;d29=p29+1000 \n\
;d28=1200000 \n\
;p29=1000000 \n\
;rf2=df2 \n\
\n\
 for k=1 to n			; averaging loop \n\
  totscans(n)			; output of total number of scans \n\
    shot i=1 to a		; accumulation loop \n\
      d9			; DAF (Delay After Flash) \n\
      p0 [ph1]			; 1st pulse and phase program\n\
      p22 [u1]                  ; Trigger pulse \n\
      d1			; tau \n\
      p1 [ph2]			; 2nd pulse and phase program \n\
      d1			; tau \n\
      d0			; constant acquisition delay \n\
      dig [sg1]			; acquisition \n\
      ;d28			; laser delay \n\
      ;p29 [RF2]			; laser pulse \n\
      ;d29			; \n\
    next i			; end of accumulation loop \n\
 \n\
 scansdone(k)			; output of scans done \n\
 next k	\n\
end exp \n\
 \n\
; \n\
; 2-Pulse Field Sweep \n\
; \n\
begin exp1 "2P ESE Field Sweep" [INTG QUAD ] \n\
	; QUAD detection with Integration \n\
 \n\
rf2=df2 \n\
 \n\
 for k=1 to n			; averaging loop \n\
  totscans(n)			; output of total number of scans \n\
 \n\
  bsweep x=1 to sx		; field sweep loop \n\
    shot i=1 to h		; accumulation loop \n\
      d9			; DAF (Delay After Flash) \n\
      p0 [ph1]			; 1st pulse and phase program \n\
      p22 [u1]                  ; Trigger pulse\n\
      d1			; tau \n\
      p1 [ph2]			; 2nd pulse and phase program \n\
      d1			; tau \n\
      d0			; constant acquisition delay \n\
      acq [sg1]			; acquisition \n\
      d28			; laser delay \n\
      p29 [RF2]			; laser pulse \n\
      d29			; \n\
    next i			; end of accumulation loop \n\
 \n\
   next x			; end of field sweep loop \n\
 \n\
  scansdone(k)			; output of scans done \n\
 next k				; end of averaging loop \n\
 \n\
end exp1 \n\
 \n\
; \n\
; 2-Pulse Echo Decay \n\
; \n\
begin exp2 "2P ESE Decay" [INTG QUAD ] \n\
	; QUAD detection with Integration \n\
 \n\
 ;rf2=df2 \n\
 \n\
 d2=d1				; store starting tau value \n\
 \n\
 for k=1 to n			; averaging loop \n\
  totscans(n)			; output of total number of scans \n\
 \n\
  d1=d2				; recall starting tau value \n\
  dx=d1				; starting tau and assignment of x-axis \n\
  dx=dx+d1 \n\
 \n\
   sweep x=1 to sx		; tau sweep loop \n\
    shot i=1 to h		; accumulation loop \n\
      d9			; DAF (Delay After Flash) \n\
      p0 [ph1]			; 1st pulse and phase program \n\
      d1			; tau \n\
      p1 [ph2]			; 2nd pulse and phase program \n\
      d1			; tau \n\
      d0			; constant acquisition delay \n\
      acq [sg1]			; acquisition \n\
    next i     			; end of accumulation loop \n\
 \n\
    d1=d1+d30 \n\
    dx=dx+d30			; x-axis measured from first pulse \n\
    dx=dx+d30 \n\
   next x			; end of tau sweep loop \n\
 \n\
  scansdone(k)			; output of scans done \n\
 next k				; end of averaging loop \n\
 \n\
end exp2 \n\
 \n\
; \n\
; 2-Pulse Echo Decay versus Magnetic Field \n\
; \n\
begin exp3 "2P ESE Decay vs. B0" [INTG QUAD] \n\
	; QUAD detection with Integration \n\
 \n\
 d2=d1				; store starting tau value \n\
 \n\
 for k=1 to n			; averaging loop \n\
  totscans(n)			; output of total number of scans \n\
 \n\
  bsweep y=1 to sy		; field sweep loop \n\
  d1=d2				; recall starting tau value \n\
  dx=d1				; starting tau and assignment of x-axis \n\
 \n\
   sweep x=1 to sx		; tau sweep loop \n\
    shot i=1 to h		; accumulation loop \n\
      d9			; DAF (Delay After Flash) \n\
      p0 [ph1]			; 1st pulse and phase program \n\
      d1			; tau \n\
      p1 [ph2]			; 2nd pulse and phase program \n\
      d1			; tau \n\
      d0			; constant acquisition delay \n\
      acq [sg1]			; acquisition \n\
    next i			; end of accumulation loop \n\
 \n\
    d1=d1+d30 \n\
    dx=dx+d30			; x-axis defined from first pulse \n\
    dx=dx+d30			; \n\
   next x			; end of tau sweep loop \n\
 \n\
  next y			; end of field sweep loop \n\
 \n\
  scansdone(k)			; output of scans done \n\
 next k				; end of averaging loop \n\
 \n\
end exp3 \n\
 \n\
begin exp4 "Inversion Recovery" [INTG QUAD ] \n\
	; QUAD detection with Integration \n\
 \n\
 for k=1 to n			; averaging loop \n\
  totscans(n)			; output of total number of scans \n\
 \n\
  dx=d2				; starting delay time and assignment of x-axis \n\
  ;d0=1500			; for FID detection \n\
 \n\
   sweep x=1 to sx		; time sweep loop \n\
    shot i=1 to h		; accumulation loop \n\
      d9			; DAF (Delay After Flash) \n\
      p1 [ph2]			; inversion pulse \n\
      dx			; delay between inversion and detection \n\
      p0 [ph1]			; detection sequence pulse 1 \n\
      d1			; tau \n\
      p1 [+x]			; detection sequence pulse 2 \n\
      d1			; tau \n\
      d0			; constant acquisition delay \n\
      acq [sg1]			; acquisition \n\
    next i			; end of accumulation loop \n\
 \n\
    dx=dx+d31			; increment delay time \n\
   next x			; end of time sweep loop \n\
 \n\
  scansdone(k)			; output of scans done \n\
 next k				; end of averaging loop \n\
 \n\
end exp4 \n\
 \n\
begin exp5 "FlashDelay" [INTG QUAD EXT] \n\
	; QUAD detection with Integration \n\
 \n\
 for k=1 to n			; averaging loop \n\
  totscans(n)			; output of total number of scans \n\
 \n\
  dx=d2				; starting delay time and assignment of x-axis \n\
  ;d0=1500			; for FID detection \n\
 \n\
   sweep x=1 to sx		; time sweep loop \n\
    shot i=1 to h		; accumulation loop \n\
      d9			; DAF (Delay After Flash) \n\
      dx			; delay between inversion and detection \n\
      p0 [ph1]			; detection sequence pulse 1 \n\
      d1			; tau \n\
      p1 [ph2]			; detection sequence pulse 2 \n\
      d1			; tau \n\
      d0			; constant acquisition delay \n\
      acq [sg1]			; acquisition \n\
    next i			; end of accumulation loop \n\
 \n\
    dx=dx+d31			; increment delay time \n\
   next x			; end of time sweep loop \n\
 \n\
  scansdone(k)			; output of scans done \n\
 next k				; end of averaging loop \n\
 \n\
end exp5 \n\
 \n\
begin exp6 "Transients versus field" [TRANS QUAD] \n\
 d29=p29+1000 \n\
 d28=1200000 \n\
 p29=1000000 \n\
 rf2=df2 \n\
 bsweep y=1 to sy \n\
    shot i=1 to a		; accumulation loop \n\
      d9			; DAF (Delay After Flash) \n\
      p0 [ph1]			; 1st pulse and phase program \n\
      d1			; tau \n\
      p1 [ph2]			; 2nd pulse and phase program \n\
      d1			; tau \n\
      d0			; constant acquisition delay \n\
      d14 \n\
      dig [sg1]			; acquisition \n\
      d15 \n\
      d28			; laser delay \n\
      p29 [RF2]			; laser pulse \n\
      d29			; \n\
    next i			; end of accumulation loop \n\
  next y \n\
end exp6 \n\
 \n\
; \n\
begin exp7 "2P ESE Decay XYXY" [INTG QUAD] \n\
	; QUAD detection with Integration \n\
 \n\
 ;rf2=df2 \n\
 \n\
 d2=d1				; store starting tau value \n\
 d31=d30*8 \n\
 \n\
 for k=1 to n			; averaging loop \n\
  totscans(n)			; output of total number of scans \n\
 \n\
  d1=d2				; recall starting tau value \n\
  dx=d1				; starting tau and assignment of x-axis \n\
  dx=dx+d1 \n\
 \n\
   sweep x=1 to sx		; tau sweep loop \n\
    shot i=1 to h		; accumulation loop \n\
      d9			; DAF (Delay After Flash) \n\
      p0 [ph1]			; 1st pulse and phase program \n\
      d1			; tau \n\
      p1 [+x]			; 2nd pulse and phase program \n\
      d1			; tau \n\
      d1			; tau \n\
      p1 [+y]			; 2nd pulse and phase program \n\
      d1			; tau \n\
      d1			; tau \n\
      p1 [+x]			; 2nd pulse and phase program \n\
      d1			; tau \n\
      d1			; tau \n\
      p1 [+y]			; 2nd pulse and phase program \n\
      d1			; tau \n\
 \n\
      d0			; constant acquisition delay \n\
      acq [sg1]			; acquisition \n\
 \n\
      ;d28			; laser delay \n\
      ;p29 [RF2]			; laser pulse \n\
      ;d29			 \n\
    next i     			; end of accumulation loop \n\
 \n\
    d1=d1+d30 \n\
    dx=dx+d31			; x-axis measured from first pulse \n\
   next x			; end of tau sweep loop \n\
 \n\
  scansdone(k)			; output of scans done \n\
 next k				; end of averaging loop \n\
 \n\
end exp7 \n\
\n\
\n
Psd1               0,0,268,1268,3268,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,204,104,204,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,300000,300000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
Psd10              0,276,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
Psd11              0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
Psd12              0,276,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
Psd13              0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
Psd14              0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
Psd15              0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
Psd16              0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
Psd17              0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
Psd18              0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
Psd19              0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
Psd2               0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
Psd20              0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
Psd21              0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
Psd22              0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
Psd23              0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
Psd24              0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
Psd25              0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
Psd26              0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
Psd27              0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
Psd28              0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
Psd3               0,0,140,1140,3140,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,900,800,900,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,300000,300000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
Psd4               0,0,8,1008,3008,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,384,284,384,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,300000,300000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
Psd5               0,0,5400,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,400,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,300000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
Psd6               0,276,276,3276,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,200,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,300000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
Psd7               0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
Psd8               0,276,1276,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,300000,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
Psd9               0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
QuadDetect         True
RF1Prg             0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000
RF2Prg             0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000,0.000
ReplaceMode        Off
ShotRepTime        40800.00 us
ShotsPLoop         5
SptProgress        100 %
StochMode          False
SweepsPExp         1
TriggerTimeOut     32 s
XAxisQuant         Time
XSpecRes           101
YAxisQuant         Magnetic Field
YSpecRes           1

.DVC     recorder, 1.0

BaselineCorr       Off
NbScansAcc         1
NbScansDone        1
NbScansToDo        1
ReplaceMode        Off
SmoothMode         Auto
SmoothPoints       1

.DVC     routeTrg, 1.0


.DVC     sigChanSmall, 1.0


.DVC     transRec, 1.0


*
************************************************************
