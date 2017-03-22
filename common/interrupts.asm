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

%define  INT_VIDEO  0x10  ; interrupt vector for interrupt call

%define  INT_VIDEO_FUNC_00h  0x00  ; Set Video Mode
%define  INT_VIDEO_FUNC_01h  0x01  ; Set Cursor Shape
%define  INT_VIDEO_FUNC_02h  0x02  ; Set Cursor Position
%define  INT_VIDEO_FUNC_03h  0x03  ; Get Cursor Position And Shape
%define  INT_VIDEO_FUNC_04h  0x04  ; Get Light Pen Position
%define  INT_VIDEO_FUNC_05h  0x05  ; Set Display Page
%define  INT_VIDEO_FUNC_06h  0x06  ; Clear/Scroll Screen Up
%define  INT_VIDEO_FUNC_07h  0x07  ; Clear/Scroll Screen Down
%define  INT_VIDEO_FUNC_08h  0x08  ; Read Character and Attribute at Cursor
%define  INT_VIDEO_FUNC_09h  0x09  ; Write Character and Attribute at Cursor
%define  INT_VIDEO_FUNC_0Ah  0x0A  ; Write Character at Cursor
%define  INT_VIDEO_FUNC_0Bh  0x0B  ; Set Border Color
%define  INT_VIDEO_FUNC_0Ch  0x0C  ; Write Graphics Pixel
%define  INT_VIDEO_FUNC_0Dh  0x0D  ; Read Graphics Pixel
%define  INT_VIDEO_FUNC_0Eh  0x0E  ; Write Character in TTY Mode
%define  INT_VIDEO_FUNC_0Fh  0x0F  ; Get Video Mode
%define  INT_VIDEO_FUNC_10h  0x10  ; Set Palette Registers (EGA, VGA, SVGA)
%define  INT_VIDEO_FUNC_11h  0x11  ; Character Generator (EGA, VGA, SVGA)
%define  INT_VIDEO_FUNC_12h  0x12  ; Alternate Select Functions (EGA, VGA, SVGA)
%define  INT_VIDEO_FUNC_13h  0x13  ; Write String
%define  INT_VIDEO_FUNC_1Ah  0x1A  ; Get or Set Display Combination Code (VGA, SVGA)
%define  INT_VIDEO_FUNC_1Bh  0x1B  ; Get Functionality Information (VGA, SVGA)
%define  INT_VIDEO_FUNC_1Ch  0x1C  ; Save or Restore Video State (VGA, SVGA)
%define  INT_VIDEO_FUNC_4Fh  0x4F  ; VESA BIOS Extension Functions (SVGA)

; ========================================
; interrupt vector 11h
; ========================================

; Returns equipment list

%define  INT_EQP_LIST  0x11  ; interrupt vector for interrupt call

; ========================================
; interrupt vector 12h
; ========================================

; Return conventional memory size

%define  INT_CONV_MEM  0x12  ; interrupt vector for interrupt call

; ========================================
; interrupt vector 13h - Low Level Disk Services
; ========================================

%define  INT_DISK  0x13  ; interrupt vector for interrupt call

%define  INT_DISK_FUNC_00h  0x00  ; Reset Disk Drives
%define  INT_DISK_FUNC_01h  0x01  ; Check Drive Status
%define  INT_DISK_FUNC_02h  0x02  ; Read Sectors
%define  INT_DISK_FUNC_03h  0x03  ; Write Sectors
%define  INT_DISK_FUNC_04h  0x04  ; Verify Sectors
%define  INT_DISK_FUNC_05h  0x05  ; Format Track
%define  INT_DISK_FUNC_08h  0x08  ; Get Drive Parameters
%define  INT_DISK_FUNC_09h  0x09  ; Init Fixed Drive Parameters
%define  INT_DISK_FUNC_0Ch  0x0C  ; Seek To Specified Track
%define  INT_DISK_FUNC_0Dh  0x0D  ; Reset Fixed Disk Controller
%define  INT_DISK_FUNC_15h  0x15  ; Get Drive Type
%define  INT_DISK_FUNC_16h  0x16  ; Get Floppy Drive Media Change Status
%define  INT_DISK_FUNC_17h  0x17  ; Set Disk Type
%define  INT_DISK_FUNC_18h  0x18  ; Set Floppy Drive Media Type
%define  INT_DISK_FUNC_41h  0x41  ; Extended Disk Drive (EDD) Installation Check
%define  INT_DISK_FUNC_42h  0x42  ; Extended Read Sectors
%define  INT_DISK_FUNC_43h  0x43  ; Extended Write Sectors
%define  INT_DISK_FUNC_44h  0x44  ; Extended Verify Sectors
%define  INT_DISK_FUNC_45h  0x45  ; Lock/Unlock Drive
%define  INT_DISK_FUNC_46h  0x46  ; Eject Media
%define  INT_DISK_FUNC_47h  0x47  ; Extended Seek
%define  INT_DISK_FUNC_48h  0x48  ; Extended Get Drive Parameters
%define  INT_DISK_FUNC_49h  0x49  ; Extended Get Media Change Status
%define  INT_DISK_FUNC_4Eh  0x4E  ; Extended Set Hardware Configuration

; ========================================
; interrupt vector 14h - Serial port services
; ========================================

%define  INT_SERIAL  0x14  ; interrupt vector for interrupt call

%define  INT_SERIAL_FUNC_INIT           0x00  ; Serial Port Initialization
%define  INT_SERIAL_FUNC_TRANSMIT_CHAR  0x01  ; Transmit Character
%define  INT_SERIAL_FUNC_RECEIVE_CHAR   0x02  ; Receive Character
%define  INT_SERIAL_FUNC_STATUS         0x03  ; Status

; ========================================
; interrupt vector 15h - Miscellaneous system services
; ========================================

%define  INT_MISC  0x15  ; interrupt vector for interrupt call

%define  INT_MISC_FUNC_00h  0x00  ; Turn on cassette drive motor
%define  INT_MISC_FUNC_01h  0x01  ; Turn off cassette drive motor
%define  INT_MISC_FUNC_02h  0x02  ; Read data blocks from cassette
%define  INT_MISC_FUNC_03h  0x03  ; Write data blocks to cassette
%define  INT_MISC_FUNC_4Fh  0x4F  ; Keyboard Intercept
%define  INT_MISC_FUNC_83h  0x83  ; Event Wait
%define  INT_MISC_FUNC_84h  0x84  ; Read Joystick
%define  INT_MISC_FUNC_85h  0x85  ; Sysreq Key Callout
%define  INT_MISC_FUNC_86h  0x86  ; Wait
%define  INT_MISC_FUNC_87h  0x87  ; Move Block
%define  INT_MISC_FUNC_88h  0x88  ; Get Extended Memory Size
%define  INT_MISC_FUNC_89h  0x89  ; Switch to Protected Mode
%define  INT_MISC_FUNC_C0h  0xC0  ; Get System Parameters
%define  INT_MISC_FUNC_C1h  0xC1  ; Get Extended BIOS Data Area Segment
%define  INT_MISC_FUNC_C2h  0xC2  ; Pointing Device Functions
%define  INT_MISC_FUNC_C3h  0xC3  ; Watchdog Timer Functions - PS/2 systems only
%define  INT_MISC_FUNC_C4h  0xC4  ; Programmable Option Select - MCA bus PS/2 systems only
%define  INT_MISC_FUNC_D8h  0xD8  ; EISA System Functions - EISA bus systems only
%define  INT_MISC_FUNC_E8h  0xE8  ; AL=01h , Get Extended Memory Size (Newer function, since 1994). Gives results for memory size above 64 Mb.
%define  INT_MISC_FUNC_E8h  0xE8  ; AL=20h , Query System Address Map. The information returned from E820 supersedes what is returned from the older AX=E801h and AH=88h interfaces.

; ========================================
; interrupt vector 16h - Keyboard services
; ========================================

%define  INT_KEYBOARD  0x16  ; interrupt vector for interrupt call

%define  INT_KEYBOARD_FUNC_00h  0x00  ; Read Character
%define  INT_KEYBOARD_FUNC_01h  0x01  ; Read Input Status
%define  INT_KEYBOARD_FUNC_02h  0x02  ; Read Keyboard Shift Status
%define  INT_KEYBOARD_FUNC_05h  0x05  ; Store Keystroke in Keyboard Buffer
%define  INT_KEYBOARD_FUNC_10h  0x10  ; Read Character Extended
%define  INT_KEYBOARD_FUNC_11h  0x11  ; Read Input Status Extended
%define  INT_KEYBOARD_FUNC_12h  0x12  ; Read Keyboard Shift Status Extended

; ========================================
; interrupt vector 17h - Printer services
; ========================================

%define  INT_PRINTER  0x17  ; interrupt vector for interrupt call

%define  INT_PRINTER_FUNC_PRINT_CHAR    0x00  ; Print Character to Printer
%define  INT_PRINTER_FUNC_INIT          0x01  ; Initialize Printer
%define  INT_PRINTER_FUNC_CHECK_STATUS  0x02  ; Check Printer Status

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

%define  INT_RTC  0x1A  ; interrupt vector for interrupt call

%define  INT_RTC_FUNC_READ         0x00  ; Read RTC
%define  INT_RTC_FUNC_SET          0x01  ; Set RTC
%define  INT_RTC_FUNC_READ_TIME    0x02  ; Read RTC Time
%define  INT_RTC_FUNC_SET_TIME     0x03  ; Set RTC Time
%define  INT_RTC_FUNC_READ_DATE    0x04  ; Read RTC Date
%define  INT_RTC_FUNC_SET_DATE     0x05  ; Set RTC Date
%define  INT_RTC_FUNC_SET_ALARM    0x06  ; Set RTC Alarm
%define  INT_RTC_FUNC_RESET_ALARM  0x07  ; Reset RTC Alarm

; ========================================
; interrupt vector 1Ah - PCI Services - implemented by BIOSes supporting PCI 2.0 or later
; ========================================

%define  INT_PCI  0x1A  ; interrupt vector for interrupt call

%define  INT_PCI_FUNC_B101h  0xB101  ; PCI Installation Check
%define  INT_PCI_FUNC_B102h  0xB102  ; Find PCI Device
%define  INT_PCI_FUNC_B103h  0xB103  ; Find PCI Class Code
%define  INT_PCI_FUNC_B106h  0xB106  ; PCI Bus-Specific Operations
%define  INT_PCI_FUNC_B108h  0xB108  ; Read Configuration Byte
%define  INT_PCI_FUNC_B109h  0xB109  ; Read Configuration Word
%define  INT_PCI_FUNC_B10Ah  0xB10A  ; Read Configuration Dword
%define  INT_PCI_FUNC_B10Bh  0xB10B  ; Write Configuration Byte
%define  INT_PCI_FUNC_B10Ch  0xB10C  ; Write Configuration Word
%define  INT_PCI_FUNC_B10Dh  0xB10D  ; Write Configuration Dword
%define  INT_PCI_FUNC_B10Eh  0xB10E  ; Get IRQ Routine Information
%define  INT_PCI_FUNC_B10Fh  0xB10F  ; Set PCI IRQ

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
