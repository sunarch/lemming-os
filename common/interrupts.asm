; assembler: NASM - Netwide Assembler

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

%define  INT_VIDEO_FUNC_00h  00h  ; Set Video Mode
%define  INT_VIDEO_FUNC_01h  01h  ; Set Cursor Shape
%define  INT_VIDEO_FUNC_02h  02h  ; Set Cursor Position
%define  INT_VIDEO_FUNC_03h  03h  ; Get Cursor Position And Shape
%define  INT_VIDEO_FUNC_04h  04h  ; Get Light Pen Position
%define  INT_VIDEO_FUNC_05h  05h  ; Set Display Page
%define  INT_VIDEO_FUNC_06h  06h  ; Clear/Scroll Screen Up
%define  INT_VIDEO_FUNC_07h  07h  ; Clear/Scroll Screen Down
%define  INT_VIDEO_FUNC_08h  08h  ; Read Character and Attribute at Cursor
%define  INT_VIDEO_FUNC_09h  09h  ; Write Character and Attribute at Cursor
%define  INT_VIDEO_FUNC_0Ah  0Ah  ; Write Character at Cursor
%define  INT_VIDEO_FUNC_0Bh  0Bh  ; Set Border Color
%define  INT_VIDEO_FUNC_0Ch  0Ch  ; Write Graphics Pixel
%define  INT_VIDEO_FUNC_0Dh  0Dh  ; Read Graphics Pixel
%define  INT_VIDEO_FUNC_0Eh  0Eh  ; Write Character in TTY Mode
%define  INT_VIDEO_FUNC_0Fh  0Fh  ; Get Video Mode
%define  INT_VIDEO_FUNC_10h  10h  ; Set Palette Registers (EGA, VGA, SVGA)
%define  INT_VIDEO_FUNC_11h  11h  ; Character Generator (EGA, VGA, SVGA)
%define  INT_VIDEO_FUNC_12h  12h  ; Alternate Select Functions (EGA, VGA, SVGA)
%define  INT_VIDEO_FUNC_13h  13h  ; Write String
%define  INT_VIDEO_FUNC_1Ah  1Ah  ; Get or Set Display Combination Code (VGA, SVGA)
%define  INT_VIDEO_FUNC_1Bh  1Bh  ; Get Functionality Information (VGA, SVGA)
%define  INT_VIDEO_FUNC_1Ch  1Ch  ; Save or Restore Video State (VGA, SVGA)
%define  INT_VIDEO_FUNC_4Fh  4Fh  ; VESA BIOS Extension Functions (SVGA)

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

%define  INT_DISK_FUNC_00h  00h  ; Reset Disk Drives
%define  INT_DISK_FUNC_01h  01h  ; Check Drive Status
%define  INT_DISK_FUNC_02h  02h  ; Read Sectors
%define  INT_DISK_FUNC_03h  03h  ; Write Sectors
%define  INT_DISK_FUNC_04h  04h  ; Verify Sectors
%define  INT_DISK_FUNC_05h  05h  ; Format Track
%define  INT_DISK_FUNC_08h  08h  ; Get Drive Parameters
%define  INT_DISK_FUNC_09h  09h  ; Init Fixed Drive Parameters
%define  INT_DISK_FUNC_0Ch  0Ch  ; Seek To Specified Track
%define  INT_DISK_FUNC_0Dh  0Dh  ; Reset Fixed Disk Controller
%define  INT_DISK_FUNC_15h  15h  ; Get Drive Type
%define  INT_DISK_FUNC_16h  16h  ; Get Floppy Drive Media Change Status
%define  INT_DISK_FUNC_17h  17h  ; Set Disk Type
%define  INT_DISK_FUNC_18h  18h  ; Set Floppy Drive Media Type
%define  INT_DISK_FUNC_41h  41h  ; Extended Disk Drive (EDD) Installation Check
%define  INT_DISK_FUNC_42h  42h  ; Extended Read Sectors
%define  INT_DISK_FUNC_43h  43h  ; Extended Write Sectors
%define  INT_DISK_FUNC_44h  44h  ; Extended Verify Sectors
%define  INT_DISK_FUNC_45h  45h  ; Lock/Unlock Drive
%define  INT_DISK_FUNC_46h  46h  ; Eject Media
%define  INT_DISK_FUNC_47h  47h  ; Extended Seek
%define  INT_DISK_FUNC_48h  48h  ; Extended Get Drive Parameters
%define  INT_DISK_FUNC_49h  49h  ; Extended Get Media Change Status
%define  INT_DISK_FUNC_4Eh  4Eh  ; Extended Set Hardware Configuration

; ========================================
; interrupt vector 14h - Serial port services
; ========================================

%define  INT_SERIAL  14h  ; interrupt vector for interrupt call

%define  INT_SERIAL_FUNC_INIT           00h  ; Serial Port Initialization
%define  INT_SERIAL_FUNC_TRANSMIT_CHAR  01h  ; Transmit Character
%define  INT_SERIAL_FUNC_RECEIVE_CHAR   02h  ; Receive Character
%define  INT_SERIAL_FUNC_STATUS         03h  ; Status

; ========================================
; interrupt vector 15h - Miscellaneous system services
; ========================================

%define  INT_MISC  15h  ; interrupt vector for interrupt call

%define  INT_MISC_FUNC_00h  00h  ; Turn on cassette drive motor
%define  INT_MISC_FUNC_01h  01h  ; Turn off cassette drive motor
%define  INT_MISC_FUNC_02h  02h  ; Read data blocks from cassette
%define  INT_MISC_FUNC_03h  03h  ; Write data blocks to cassette
%define  INT_MISC_FUNC_4Fh  4Fh  ; Keyboard Intercept
%define  INT_MISC_FUNC_83h  83h  ; Event Wait
%define  INT_MISC_FUNC_84h  84h  ; Read Joystick
%define  INT_MISC_FUNC_85h  85h  ; Sysreq Key Callout
%define  INT_MISC_FUNC_86h  86h  ; Wait
%define  INT_MISC_FUNC_87h  87h  ; Move Block
%define  INT_MISC_FUNC_88h  88h  ; Get Extended Memory Size
%define  INT_MISC_FUNC_89h  89h  ; Switch to Protected Mode
%define  INT_MISC_FUNC_C0h  0C0h  ; Get System Parameters
%define  INT_MISC_FUNC_C1h  0C1h  ; Get Extended BIOS Data Area Segment
%define  INT_MISC_FUNC_C2h  0C2h  ; Pointing Device Functions
%define  INT_MISC_FUNC_C3h  0C3h  ; Watchdog Timer Functions - PS/2 systems only
%define  INT_MISC_FUNC_C4h  0C4h  ; Programmable Option Select - MCA bus PS/2 systems only
%define  INT_MISC_FUNC_D8h  0D8h  ; EISA System Functions - EISA bus systems only
%define  INT_MISC_FUNC_E8h  0E8h  ; AL=01h , Get Extended Memory Size (Newer function, since 1994). Gives results for memory size above 64 Mb.
%define  INT_MISC_FUNC_E8h  0E8h  ; AL=20h , Query System Address Map. The information returned from E820 supersedes what is returned from the older AX=E801h and AH=88h interfaces.

; ========================================
; interrupt vector 16h - Keyboard services
; ========================================

%define  INT_KEYBOARD  16h  ; interrupt vector for interrupt call

%define  INT_KEYBOARD_FUNC_00h  00h  ; Read Character
%define  INT_KEYBOARD_FUNC_01h  01h  ; Read Input Status
%define  INT_KEYBOARD_FUNC_02h  02h  ; Read Keyboard Shift Status
%define  INT_KEYBOARD_FUNC_05h  05h  ; Store Keystroke in Keyboard Buffer
%define  INT_KEYBOARD_FUNC_10h  10h  ; Read Character Extended
%define  INT_KEYBOARD_FUNC_11h  11h  ; Read Input Status Extended
%define  INT_KEYBOARD_FUNC_12h  12h  ; Read Keyboard Shift Status Extended

; ========================================
; interrupt vector 17h - Printer services
; ========================================

%define  INT_PRINTER  17h  ; interrupt vector for interrupt call

%define  INT_PRINTER_FUNC_PRINT_CHAR    00h  ; Print Character to Printer
%define  INT_PRINTER_FUNC_INIT          01h  ; Initialize Printer
%define  INT_PRINTER_FUNC_CHECK_STATUS  02h  ; Check Printer Status

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

%define  INT_RTC_FUNC_READ         00h  ; Read RTC
%define  INT_RTC_FUNC_SET          01h  ; Set RTC
%define  INT_RTC_FUNC_READ_TIME    02h  ; Read RTC Time
%define  INT_RTC_FUNC_SET_TIME     03h  ; Set RTC Time
%define  INT_RTC_FUNC_READ_DATE    04h  ; Read RTC Date
%define  INT_RTC_FUNC_SET_DATE     05h  ; Set RTC Date
%define  INT_RTC_FUNC_SET_ALARM    06h  ; Set RTC Alarm
%define  INT_RTC_FUNC_RESET_ALARM  07h  ; Reset RTC Alarm

; ========================================
; interrupt vector 1Ah - PCI Services - implemented by BIOSes supporting PCI 2.0 or later
; ========================================

%define  INT_PCI  1Ah  ; interrupt vector for interrupt call

%define  INT_PCI_FUNC_B101h  0B101h  ; PCI Installation Check
%define  INT_PCI_FUNC_B102h  0B102h  ; Find PCI Device
%define  INT_PCI_FUNC_B103h  0B103h  ; Find PCI Class Code
%define  INT_PCI_FUNC_B106h  0B106h  ; PCI Bus-Specific Operations
%define  INT_PCI_FUNC_B108h  0B108h  ; Read Configuration Byte
%define  INT_PCI_FUNC_B109h  0B109h  ; Read Configuration Word
%define  INT_PCI_FUNC_B10Ah  0B10Ah  ; Read Configuration Dword
%define  INT_PCI_FUNC_B10Bh  0B10Bh  ; Write Configuration Byte
%define  INT_PCI_FUNC_B10Ch  0B10Ch  ; Write Configuration Word
%define  INT_PCI_FUNC_B10Dh  0B10Dh  ; Write Configuration Dword
%define  INT_PCI_FUNC_B10Eh  0B10Eh  ; Get IRQ Routine Information
%define  INT_PCI_FUNC_B10Fh  0B10Fh  ; Set PCI IRQ

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
