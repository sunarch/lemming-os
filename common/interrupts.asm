
; BIOS interrupts - preprocessor definitions

; function code is always to be loaded into AH

; ========================================
; interrupt vector 05h
; ========================================

; Executed when Shift-Print screen is pressed, as well as when the BOUND instruction detects a bound failure.

; ========================================
; interrupt vector 10h - Video services
; ========================================

%define  INT_VIDEO  10h  ; interrupt vector for interrupt call

;00h     Set Video Mode
;01h     Set Cursor Shape
;02h     Set Cursor Position
;03h     Get Cursor Position And Shape
;04h     Get Light Pen Position
;05h     Set Display Page
;06h     Clear/Scroll Screen Up
;07h     Clear/Scroll Screen Down
;08h     Read Character and Attribute at Cursor
;09h     Write Character and Attribute at Cursor
;0Ah     Write Character at Cursor
;0Bh     Set Border Color
;0Ch     Write Graphics Pixel
;0Dh     Read Graphics Pixel
;0Eh     Write Character in TTY Mode
;0Fh     Get Video Mode
;10h     Set Palette Registers (EGA, VGA, SVGA)
;11h     Character Generator (EGA, VGA, SVGA)
;12h     Alternate Select Functions (EGA, VGA, SVGA)
;13h     Write String
;1Ah     Get or Set Display Combination Code (VGA, SVGA)
;1Bh     Get Functionality Information (VGA, SVGA)
;1Ch     Save or Restore Video State (VGA, SVGA)
;4Fh     VESA BIOS Extension Functions (SVGA)

; ========================================
; interrupt vector 11h
; ========================================

; Returns equipment list

%define  INT_EQP_LIST  11h  ; interrupt vector for interrupt call

; ========================================
; interrupt vector 12h
; ========================================

; Return conventional memory size

%define  INT_CONV_MEM  12h  ; interrupt vector for interrupt call

; ========================================
; interrupt vector 13h - Low Level Disk Services
; ========================================

%define  INT_DISK  13h  ; interrupt vector for interrupt call

;00h     Reset Disk Drives
;01h     Check Drive Status
;02h     Read Sectors
;03h     Write Sectors
;04h     Verify Sectors
;05h     Format Track
;08h     Get Drive Parameters
;09h     Init Fixed Drive Parameters
;0Ch     Seek To Specified Track
;0Dh     Reset Fixed Disk Controller
;15h     Get Drive Type
;16h     Get Floppy Drive Media Change Status
;17h     Set Disk Type
;18h     Set Floppy Drive Media Type
;41h     Extended Disk Drive (EDD) Installation Check
;42h     Extended Read Sectors
;43h     Extended Write Sectors
;44h     Extended Verify Sectors
;45h     Lock/Unlock Drive
;46h     Eject Media
;47h     Extended Seek
;48h     Extended Get Drive Parameters
;49h     Extended Get Media Change Status
;4Eh     Extended Set Hardware Configuration

; ========================================
; interrupt vector 14h - Serial port services
; ========================================

%define  INT_SERIAL  14h  ; interrupt vector for interrupt call

;00h     Serial Port Initialization
;01h     Transmit Character
;02h     Receive Character
;03h     Status

; ========================================
; interrupt vector 15h - Miscellaneous system services
; ========================================

%define  INT_MISC  15h  ; interrupt vector for interrupt call

;00h         Turn on cassette drive motor
;01h         Turn off cassette drive motor
;02h         Read data blocks from cassette
;03h         Write data blocks to cassette
;4Fh         Keyboard Intercept
;83h         Event Wait
;84h         Read Joystick
;85h         Sysreq Key Callout
;86h         Wait
;87h         Move Block
;88h         Get Extended Memory Size
;89h         Switch to Protected Mode
;C0h         Get System Parameters
;C1h         Get Extended BIOS Data Area Segment
;C2h         Pointing Device Functions
;C3h         Watchdog Timer Functions - PS/2 systems only
;C4h         Programmable Option Select - MCA bus PS/2 systems only
;D8h         EISA System Functions - EISA bus systems only
;E8h     01h     Get Extended Memory Size (Newer function, since 1994). Gives results for memory size above 64 Mb.
;E8h     20h     Query System Address Map. The information returned from E820 supersedes what is returned from the older AX=E801h and AH=88h interfaces.

; ========================================
; interrupt vector 16h - Keyboard services
; ========================================

%define  INT_KEYBOARD  16h  ; interrupt vector for interrupt call

;00h     Read Character
;01h     Read Input Status
;02h     Read Keyboard Shift Status
;05h     Store Keystroke in Keyboard Buffer
;10h     Read Character Extended
;11h     Read Input Status Extended
;12h     Read Keyboard Shift Status Extended

; ========================================
; interrupt vector 17h - Printer services
; ========================================

%define  INT_PRINTER  17h  ; interrupt vector for interrupt call

;00h     Print Character to Printer
;01h     Initialize Printer
;02h     Check Printer Status

; ========================================
; interrupt vector 18h
; ========================================

; Execute Cassette BASIC: Very early true IBM computers contain Microsoft Cassette BASIC in the ROM, to be started by this routine in the event of a failure to boot from disk (called by the BIOS). On virtually all clones and later models in the PC line from IBM, which lack BASIC in ROM, this interrupt typically displays a message such as "No ROM BASIC" and halts.

; ========================================
; interrupt vector 19h
; ========================================

; After POST this interrupt is used by BIOS to load the operating system. A program can call this interrupt to reboot the computer (but must ensure that hardware interrupts or DMA operations will not cause the system to hang or crash during either the reinitialization of the system by BIOS or the boot process).

; ========================================
; interrupt vector 1Ah - Real Time Clock Services
; ========================================

%define  INT_RTC  1Ah  ; interrupt vector for interrupt call

;00h     Read RTC
;01h     Set RTC
;02h     Read RTC Time
;03h     Set RTC Time
;04h     Read RTC Date
;05h     Set RTC Date
;06h     Set RTC Alarm
;07h     Reset RTC Alarm

; ========================================
; interrupt vector 1Ah - PCI Services - implemented by BIOSes supporting PCI 2.0 or later
; ========================================

%define  INT_PCI  1Ah  ; interrupt vector for interrupt call

;B101h   PCI Installation Check
;B102h   Find PCI Device
;B103h   Find PCI Class Code
;B106h   PCI Bus-Specific Operations
;B108h   Read Configuration Byte
;B109h   Read Configuration Word
;B10Ah   Read Configuration Dword
;B10Bh   Write Configuration Byte
;B10Ch   Write Configuration Word
;B10Dh   Write Configuration Dword
;B10Eh   Get IRQ Routine Information
;B10Fh   Set PCI IRQ


; ========================================
; interrupt vector 1Bh
; ========================================

; Ctrl-Break handler - called by INT 09 when Ctrl-Break has been pressed

; ========================================
; interrupt vector 1Ch
; ========================================

; Timer tick handler - called by INT 08

; ========================================
; interrupt vector 1Dh
; ========================================

 ; Not to be called; simply a pointer to the VPT (Video Parameter Table), which contains data on video modes

; ========================================
; interrupt vector 1Eh
; ========================================

; Not to be called; simply a pointer to the DPT (Diskette Parameter Table), containing a variety of information concerning the diskette drives

; ========================================
; interrupt vector 1Fh
; ========================================

; Not to be called; simply a pointer to the VGCT (Video Graphics Character Table), which contains the data for ASCII characters 80h to FFh

; ========================================
; interrupt vector 41h
; ========================================

; Address pointer: FDPT = Fixed Disk Parameter Table (1st hard drive)

; ========================================
; interrupt vector 46h
; ========================================

; Address pointer: FDPT = Fixed Disk Parameter Table (2nd hard drive)

; ========================================
; interrupt vector 4Ah
; ========================================

; Called by RTC for alarm
