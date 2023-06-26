<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html lang="en">


<jsp:include page="head.jsp"></jsp:include>


  <body>
  <!-- Pre-loader start -->
  
  <jsp:include page="theme-loader.jsp"></jsp:include>
  
  <!-- Pre-loader end -->
  <div id="pcoded" class="pcoded">
      <div class="pcoded-overlay-box"></div>
      <div class="pcoded-container navbar-wrapper">
          
          <jsp:include page="navbar.jsp"></jsp:include>

          <div class="pcoded-main-container">
              <div class="pcoded-wrapper">
                  
                  <jsp:include page="navbarmainmenu.jsp"></jsp:include>
                  
                  <div class="pcoded-content">
                      <!-- Page-header start -->
                      
                      <jsp:include page="page-header.jsp"></jsp:include>
                      
                      <!-- Page-header end -->
                        <div class="pcoded-inner-content">
                            <!-- Main-body start -->
                            <div class="main-body">
                                <div class="page-wrapper">
                                    <!-- Page-body start -->
                                    <div class="page-body">
                                        <div class="row">
                                             <pre style="font-size: 11px;">
                                             
                                             
                                              <h1>Placas e Chipset</h1>
//
// RAMPS 1.3 / 1.4 - ATmega1280, ATmega2560
//

#define BOARD_RAMPS_OLD               (env:mega2560 env:mega1280)  // MEGA/RAMPS up to 1.2

#define BOARD_RAMPS_13_EFB            (env:mega2560 env:mega1280)  // (Power outputs: Hotend, Fan, Bed)
#define BOARD_RAMPS_13_EEB            (env:mega2560 env:mega1280)  // RAMPS 1.3 (Power outputs: Hotend0, Hotend1, Bed)
#define BOARD_RAMPS_13_EFF            (env:mega2560 env:mega1280)  // RAMPS 1.3 (Power outputs: Hotend, Fan0, Fan1)
#define BOARD_RAMPS_13_EEF            (env:mega2560 env:mega1280)  // RAMPS 1.3 (Power outputs: Hotend0, Hotend1, Fan)
#define BOARD_RAMPS_13_SF             (env:mega2560 env:mega1280)  // RAMPS 1.3 (Power outputs: Spindle, Controller Fan)

#define BOARD_RAMPS_14_EFB            (env:mega2560 env:mega1280)  // RAMPS 1.4 (Power outputs: Hotend, Fan, Bed)
#define BOARD_RAMPS_14_EEB            (env:mega2560 env:mega1280)  // RAMPS 1.4 (Power outputs: Hotend0, Hotend1, Bed)
#define BOARD_RAMPS_14_EFF            (env:mega2560 env:mega1280)  // RAMPS 1.4 (Power outputs: Hotend, Fan0, Fan1)
#define BOARD_RAMPS_14_EEF            (env:mega2560 env:mega1280)  // RAMPS 1.4 (Power outputs: Hotend0, Hotend1, Fan)
#define BOARD_RAMPS_14_SF             (env:mega2560 env:mega1280)  // RAMPS 1.4 (Power outputs: Spindle, Controller Fan)

#define BOARD_RAMPS_PLUS_EFB          (env:mega2560 env:mega1280)  // RAMPS Plus 3DYMY (Power outputs: Hotend, Fan, Bed)
#define BOARD_RAMPS_PLUS_EEB          (env:mega2560 env:mega1280)  // RAMPS Plus 3DYMY (Power outputs: Hotend0, Hotend1, Bed)
#define BOARD_RAMPS_PLUS_EFF          (env:mega2560 env:mega1280)  // RAMPS Plus 3DYMY (Power outputs: Hotend, Fan0, Fan1)
#define BOARD_RAMPS_PLUS_EEF          (env:mega2560 env:mega1280)  // RAMPS Plus 3DYMY (Power outputs: Hotend0, Hotend1, Fan)
#define BOARD_RAMPS_PLUS_SF           (env:mega2560 env:mega1280)  // RAMPS Plus 3DYMY (Power outputs: Spindle, Controller Fan)

//
// RAMPS Derivatives - ATmega1280, ATmega2560
//

#define BOARD_3DRAG                   (env:mega2560 env:mega1280)  // 3Drag Controller
#define BOARD_K8200                   (env:mega2560 env:mega1280)  // Velleman K8200 Controller (derived from 3Drag Controller)
#define BOARD_K8400                   (env:mega2560 env:mega1280)  // Velleman K8400 Controller (derived from 3Drag Controller)
#define BOARD_K8600                   (env:mega2560 env:mega1280)  // Velleman K8600 Controller (Vertex Nano)
#define BOARD_K8800                   (env:mega2560 env:mega1280)  // Velleman K8800 Controller (Vertex Delta)
#define BOARD_BAM_DICE                (env:mega2560 env:mega1280)  // 2PrintBeta BAM&amp;DICE with STK drivers
#define BOARD_BAM_DICE_DUE            (env:mega2560 env:mega1280)  // 2PrintBeta BAM&amp;DICE Due with STK drivers
#define BOARD_MKS_BASE                (env:mega2560)  // MKS BASE v1.0
#define BOARD_MKS_BASE_14             (env:mega2560)  // MKS BASE v1.4 with Allegro A4982 stepper drivers
#define BOARD_MKS_BASE_15             (env:mega2560)  // MKS BASE v1.5 with Allegro A4982 stepper drivers
#define BOARD_MKS_BASE_16             (env:mega2560)  // MKS BASE v1.6 with Allegro A4982 stepper drivers
#define BOARD_MKS_BASE_HEROIC         (env:mega2560)  // MKS BASE 1.0 with Heroic HR4982 stepper drivers
#define BOARD_MKS_GEN_13              (env:mega2560 env:mega1280)  // MKS GEN v1.3 or 1.4
#define BOARD_MKS_GEN_L               (env:mega2560 env:mega1280)  // MKS GEN L
#define BOARD_KFB_2                   (env:mega2560)  // BigTreeTech or BIQU KFB2.0
#define BOARD_ZRIB_V20                (env:mega2560 env:mega1280)  // zrib V2.0 (Chinese RAMPS replica)
#define BOARD_ZRIB_V52                (env:mega2560 env:mega1280)  // zrib V5.2 (Chinese RAMPS replica)
#define BOARD_FELIX2                  (env:mega2560 env:mega1280)  // Felix 2.0+ Electronics Board (RAMPS like)
#define BOARD_RIGIDBOARD              (env:mega2560 env:mega1280)  // Invent-A-Part RigidBoard
#define BOARD_RIGIDBOARD_V2           (env:mega2560 env:mega1280)  // Invent-A-Part RigidBoard V2
#define BOARD_SAINSMART_2IN1          (env:mega2560 env:mega1280)  // Sainsmart 2-in-1 board
#define BOARD_ULTIMAKER               (env:mega2560 env:mega1280)  // Ultimaker
#define BOARD_ULTIMAKER_OLD           (env:mega2560 env:mega1280)  // Ultimaker (Older electronics. Pre 1.5.4. This is rare)
#define BOARD_AZTEEG_X3               (env:mega2560)  // Azteeg X3
#define BOARD_AZTEEG_X3_PRO           (env:mega2560)  // Azteeg X3 Pro
#define BOARD_ULTIMAIN_2              (env:mega2560ext)  // Ultimainboard 2.x (Uses TEMP_SENSOR 20)
#define BOARD_RUMBA                   (env:mega2560)  // Rumba
#define BOARD_RUMBA_RAISE3D           (env:mega2560)  // Raise3D N series Rumba derivative
#define BOARD_RL200                   (env:mega2560)  // Rapide Lite 200 (v1, low-cost RUMBA clone with drv)
#define BOARD_FORMBOT_TREX2PLUS       (env:mega2560)  // Formbot T-Rex 2 Plus
#define BOARD_FORMBOT_TREX3           (env:mega2560)  // Formbot T-Rex 3
#define BOARD_FORMBOT_RAPTOR          (env:mega2560)  // Formbot Raptor
#define BOARD_FORMBOT_RAPTOR2         (env:mega2560)  // Formbot Raptor 2
#define BOARD_BQ_ZUM_MEGA_3D          (env:mega2560ext)  // bq ZUM Mega 3D
#define BOARD_MAKEBOARD_MINI          (env:mega2560)  // MakeBoard Mini v2.1.2 by MicroMake
#define BOARD_TRIGORILLA_13           (env:mega2560)  // TriGorilla Anycubic version 1.3-based on RAMPS EFB
#define BOARD_TRIGORILLA_14           (env:mega2560)  //   ... Ver 1.4
#define BOARD_TRIGORILLA_14_11        (env:mega2560)  //   ... Rev 1.1 (new servo pin order)
#define BOARD_RAMPS_ENDER_4           (env:mega2560)  // Creality: Ender-4, CR-8
#define BOARD_RAMPS_CREALITY          (env:mega2560)  // Creality: CR10S, CR20, CR-X
#define BOARD_DAGOMA_F5               (env:mega2560)  // Dagoma F5
#define BOARD_FYSETC_F6_13            (env:FYSETC_F6)  // FYSETC F6 1.3
#define BOARD_FYSETC_F6_14            (env:FYSETC_F6)  // FYSETC F6 1.4
#define BOARD_DUPLICATOR_I3_PLUS      (env:mega2560)  // Wanhao Duplicator i3 Plus
#define BOARD_VORON                   (env:mega2560)  // VORON Design
#define BOARD_TRONXY_V3_1_0           (env:mega2560)  // Tronxy TRONXY-V3-1.0
#define BOARD_Z_BOLT_X_SERIES         (env:mega2560)  // Z-Bolt X Series
#define BOARD_TT_OSCAR                (env:mega2560)  // TT OSCAR
#define BOARD_OVERLORD                (env:mega2560)  // Overlord/Overlord Pro
#define BOARD_HJC2560C_REV1           (env:mega2560)  // ADIMLab Gantry v1
#define BOARD_HJC2560C_REV2           (env:mega2560)  // ADIMLab Gantry v2
#define BOARD_TANGO                   (env:mega2560)  // BIQU Tango V1
#define BOARD_MKS_GEN_L_V2            (env:mega2560)  // MKS GEN L V2
#define BOARD_MKS_GEN_L_V21           (env:mega2560)  // MKS GEN L V2.1
#define BOARD_COPYMASTER_3D           (env:mega2560)  // Copymaster 3D
#define BOARD_ORTUR_4                 (env:mega2560)  // Ortur 4
#define BOARD_TENLOG_D3_HERO          (env:mega2560)  // Tenlog D3 Hero IDEX printer
#define BOARD_RAMPS_S_12_EEFB         (env:mega2560)  // Ramps S 1.2 by Sakul.cz (Power outputs: Hotend0, Hotend1, Fan, Bed)
#define BOARD_RAMPS_S_12_EEEB         (env:mega2560)  // Ramps S 1.2 by Sakul.cz (Power outputs: Hotend0, Hotend1, Hotend2, Bed)
#define BOARD_RAMPS_S_12_EFFB         (env:mega2560)  // Ramps S 1.2 by Sakul.cz (Power outputs: Hotend, Fan0, Fan1, Bed)
#define BOARD_LONGER3D_LK1_PRO        (env:mega2560)  // Longer LK1 PRO / Alfawise U20 Pro (PRO version)
#define BOARD_LONGER3D_LKx_PRO        (env:mega2560)  // Longer LKx PRO / Alfawise Uxx Pro (PRO version)

//
// RAMBo and derivatives
//

#define BOARD_RAMBO                   (env:rambo)  // Rambo
#define BOARD_MINIRAMBO               (env:rambo)  // Mini-Rambo
#define BOARD_MINIRAMBO_10A           (env:rambo)  // Mini-Rambo 1.0a
#define BOARD_EINSY_RAMBO             (env:rambo)  // Einsy Rambo
#define BOARD_EINSY_RETRO             (env:rambo)  // Einsy Retro
#define BOARD_SCOOVO_X9H              (env:rambo)  // abee Scoovo X9H
#define BOARD_RAMBO_THINKERV2         (env:rambo)  // ThinkerV2

//
// Other ATmega1280, ATmega2560
//

#define BOARD_CNCONTROLS_11           (env:mega2560 env:mega1280)  // Cartesio CN Controls V11
#define BOARD_CNCONTROLS_12           (env:mega2560 env:mega1280)  // Cartesio CN Controls V12
#define BOARD_CNCONTROLS_15           (env:mega2560 env:mega1280)  // Cartesio CN Controls V15
#define BOARD_CHEAPTRONIC             (env:mega2560)  // Cheaptronic v1.0
#define BOARD_CHEAPTRONIC_V2          (env:mega2560)  // Cheaptronic v2.0
#define BOARD_MIGHTYBOARD_REVE        (env:mega2560ext env:mega1280 env:MightyBoard1280 env:MightyBoard2560)  // Makerbot Mightyboard Revision E
#define BOARD_MEGATRONICS             (env:mega2560)  // Megatronics
#define BOARD_MEGATRONICS_2           (env:mega2560)  // Megatronics v2.0
#define BOARD_MEGATRONICS_3           (env:mega2560)  // Megatronics v3.0
#define BOARD_MEGATRONICS_31          (env:mega2560)  // Megatronics v3.1
#define BOARD_MEGATRONICS_32          (env:mega2560)  // Megatronics v3.2
#define BOARD_ELEFU_3                 (env:mega2560)  // Elefu Ra Board (v3)
#define BOARD_LEAPFROG                (env:mega2560 env:mega1280)  // Leapfrog
#define BOARD_MEGACONTROLLER          (env:mega2560)  // Mega controller
#define BOARD_GT2560_REV_A            (env:mega2560 env:mega1280)  // Geeetech GT2560 Rev A
#define BOARD_GT2560_REV_A_PLUS       (env:mega2560 env:mega1280)  // Geeetech GT2560 Rev A+ (with auto level probe)
#define BOARD_GT2560_REV_B            (env:mega2560)  // Geeetech GT2560 Rev B
#define BOARD_GT2560_V3               (env:mega2560)  // Geeetech GT2560 Rev B for A10(M/D)
#define BOARD_GT2560_V4               (env:mega2560)  // Geeetech GT2560 Rev B for A10(M/D)
#define BOARD_GT2560_V3_MC2           (env:mega2560)  // Geeetech GT2560 Rev B for Mecreator2
#define BOARD_GT2560_V3_A20           (env:mega2560)  // Geeetech GT2560 Rev B for A20(M/D)
#define BOARD_EINSTART_S              (env:mega2560ext env:mega1280)  // Einstart retrofit
#define BOARD_WANHAO_ONEPLUS          (env:mega2560)  // Wanhao 0ne+ i3 Mini
#define BOARD_LEAPFROG_XEED2015       (env:mega2560)  // Leapfrog Xeed 2015
#define BOARD_PICA_REVB               (env:mega2560)  // PICA Shield (original version)
#define BOARD_PICA                    (env:mega2560)  // PICA Shield (rev C or later)
#define BOARD_INTAMSYS40              (env:mega2560)  // Intamsys 4.0 (Funmat HT)
#define BOARD_MALYAN_M180             (env:mega2560)  // Malyan M180 Mainboard Version 2 (no display function, direct gcode only)

//
// ATmega1281, ATmega2561
//

#define BOARD_MINITRONICS             (env:mega1280)  // Minitronics v1.0/1.1
#define BOARD_SILVER_GATE             (env:mega2560)  // Silvergate v1.0

//
// Sanguinololu and Derivatives - ATmega644P, ATmega1284P
//

#define BOARD_SANGUINOLOLU_11         (env:sanguino1284p_optimized env:sanguino1284p env:sanguino644p)  // Sanguinololu &lt; 1.2
#define BOARD_SANGUINOLOLU_12         (env:sanguino1284p_optimized env:sanguino1284p env:sanguino644p)  // Sanguinololu 1.2 and above
#define BOARD_MELZI                   (env:sanguino1284p_optimized env:sanguino1284p env:sanguino644p)  // Melzi
#define BOARD_MELZI_V2                (env:sanguino1284p_optimized env:sanguino1284p env:sanguino644p)  // Melzi V2
#define BOARD_MELZI_MAKR3D            (env:sanguino1284p_optimized env:sanguino1284p env:sanguino644p)  // Melzi with ATmega1284 (MaKr3d version)
#define BOARD_MELZI_CREALITY          (env:melzi_optiboot_optimized env:melzi_optiboot env:melzi_optimized env:melzi)  // Melzi Creality3D (for CR-10 etc)
#define BOARD_MELZI_MALYAN            (env:sanguino1284p_optimized env:sanguino1284p env:sanguino644p)  // Melzi Malyan M150
#define BOARD_MELZI_TRONXY            (env:sanguino1284p_optimized env:sanguino1284p env:sanguino644p)  // Tronxy X5S
#define BOARD_STB_11                  (env:sanguino1284p_optimized env:sanguino1284p env:sanguino644p)  // STB V1.1
#define BOARD_AZTEEG_X1               (env:sanguino1284p_optimized env:sanguino1284p env:sanguino644p)  // Azteeg X1
#define BOARD_ANET_10                 (env:sanguino1284p_optimized env:sanguino1284p env:sanguino644p)  // Anet 1.0 (Melzi clone)
#define BOARD_ZMIB_V2                 (env:sanguino1284p_optimized env:sanguino1284p env:sanguino644p)  // ZoneStar ZMIB V2

//
// Other ATmega644P, ATmega644, ATmega1284P
//

#define BOARD_GEN3_MONOLITHIC         (env:sanguino644p)  // Gen3 Monolithic Electronics
#define BOARD_GEN3_PLUS               (env:sanguino1284p_optimized env:sanguino1284p env:sanguino644p)  // Gen3+
#define BOARD_GEN6                    (env:sanguino1284p_optimized env:sanguino1284p env:sanguino644p)  // Gen6
#define BOARD_GEN6_DELUXE             (env:sanguino1284p_optimized env:sanguino1284p env:sanguino644p)  // Gen6 deluxe
#define BOARD_GEN7_CUSTOM             (env:sanguino1284p_optimized env:sanguino1284p env:sanguino644p)  // Gen7 custom (Alfons3 Version)
#define BOARD_GEN7_12                 (env:sanguino1284p_optimized env:sanguino1284p env:sanguino644p)  // Gen7 v1.1, v1.2
#define BOARD_GEN7_13                 (env:sanguino1284p_optimized env:sanguino1284p env:sanguino644p)  // Gen7 v1.3
#define BOARD_GEN7_14                 (env:sanguino1284p_optimized env:sanguino1284p env:sanguino644p)  // Gen7 v1.4
#define BOARD_OMCA_A                  (env:sanguino644p)  // Alpha OMCA
#define BOARD_OMCA                    (env:sanguino644p)  // Final OMCA
#define BOARD_SETHI                   (env:sanguino1284p_optimized env:sanguino1284p env:sanguino644p)  // Sethi 3D_1

//
// Teensyduino - AT90USB1286, AT90USB1286P
//

#define BOARD_TEENSYLU                (env:at90usb1286_cdc)  // Teensylu
#define BOARD_PRINTRBOARD             (env:at90usb1286_dfu)  // Printrboard (AT90USB1286)
#define BOARD_PRINTRBOARD_REVF        (env:at90usb1286_dfu)  // Printrboard Revision F (AT90USB1286)
#define BOARD_BRAINWAVE               (env:at90usb1286_cdc)  // Brainwave (AT90USB646)
#define BOARD_BRAINWAVE_PRO           (env:at90usb1286_cdc)  // Brainwave Pro (AT90USB1286)
#define BOARD_SAV_MKI                 (env:at90usb1286_cdc)  // SAV Mk-I (AT90USB1286)
#define BOARD_TEENSY2                 (env:teensy20)  // Teensy++2.0 (AT90USB1286)
#define BOARD_5DPRINT                 (env:at90usb1286_dfu)  // 5DPrint D8 Driver Board

//
// LPC1768 ARM Cortex M3
//

#define BOARD_RAMPS_14_RE_ARM_EFB     (env:LPC1768)  // Re-ARM with RAMPS 1.4 (Power outputs: Hotend, Fan, Bed)
#define BOARD_RAMPS_14_RE_ARM_EEB     (env:LPC1768)  // Re-ARM with RAMPS 1.4 (Power outputs: Hotend0, Hotend1, Bed)
#define BOARD_RAMPS_14_RE_ARM_EFF     (env:LPC1768)  // Re-ARM with RAMPS 1.4 (Power outputs: Hotend, Fan0, Fan1)
#define BOARD_RAMPS_14_RE_ARM_EEF     (env:LPC1768)  // Re-ARM with RAMPS 1.4 (Power outputs: Hotend0, Hotend1, Fan)
#define BOARD_RAMPS_14_RE_ARM_SF      (env:LPC1768)  // Re-ARM with RAMPS 1.4 (Power outputs: Spindle, Controller Fan)
#define BOARD_MKS_SBASE               (env:LPC1768)  // MKS-Sbase (Power outputs: Hotend0, Hotend1, Bed, Fan)
#define BOARD_AZSMZ_MINI              (env:LPC1768)  // AZSMZ Mini
#define BOARD_BIQU_BQ111_A4           (env:LPC1768)  // BIQU BQ111-A4 (Power outputs: Hotend, Fan, Bed)
#define BOARD_SELENA_COMPACT          (env:LPC1768)  // Selena Compact (Power outputs: Hotend0, Hotend1, Bed0, Bed1, Fan0, Fan1)
#define BOARD_BIQU_B300_V1_0          (env:LPC1768)  // BIQU B300_V1.0 (Power outputs: Hotend0, Fan, Bed, SPI Driver)
#define BOARD_MKS_SGEN_L              (env:LPC1768)  // MKS-SGen-L (Power outputs: Hotend0, Hotend1, Bed, Fan)
#define BOARD_GMARSH_X6_REV1          (env:LPC1768)  // GMARSH X6, revision 1 prototype
#define BOARD_BTT_SKR_V1_1            (env:LPC1768)  // BigTreeTech SKR v1.1 (Power outputs: Hotend0, Hotend1, Fan, Bed)
#define BOARD_BTT_SKR_V1_3            (env:LPC1768)  // BigTreeTech SKR v1.3 (Power outputs: Hotend0, Hotend1, Fan, Bed)
#define BOARD_BTT_SKR_V1_4            (env:LPC1768)  // BigTreeTech SKR v1.4 (Power outputs: Hotend0, Hotend1, Fan, Bed)

//
// LPC1769 ARM Cortex M3
//

#define BOARD_MKS_SGEN                (env:LPC1769)  // MKS-SGen (Power outputs: Hotend0, Hotend1, Bed, Fan)
#define BOARD_AZTEEG_X5_GT            (env:LPC1769)  // Azteeg X5 GT (Power outputs: Hotend0, Hotend1, Bed, Fan)
#define BOARD_AZTEEG_X5_MINI          (env:LPC1769)  // Azteeg X5 Mini (Power outputs: Hotend0, Bed, Fan)
#define BOARD_AZTEEG_X5_MINI_WIFI     (env:LPC1769)  // Azteeg X5 Mini Wifi (Power outputs: Hotend0, Bed, Fan)
#define BOARD_COHESION3D_REMIX        (env:LPC1769)  // Cohesion3D ReMix
#define BOARD_COHESION3D_MINI         (env:LPC1769)  // Cohesion3D Mini
#define BOARD_SMOOTHIEBOARD           (env:LPC1769)  // Smoothieboard
#define BOARD_TH3D_EZBOARD            (env:LPC1769)  // TH3D EZBoard v1.0
#define BOARD_BTT_SKR_V1_4_TURBO      (env:LPC1769)  // BigTreeTech SKR v1.4 TURBO (Power outputs: Hotend0, Hotend1, Fan, Bed)
#define BOARD_MKS_SGEN_L_V2           (env:LPC1769)  // MKS SGEN_L V2 (Power outputs: Hotend0, Hotend1, Bed, Fan)
#define BOARD_BTT_SKR_E3_TURBO        (env:LPC1769)  // BigTreeTech SKR E3 Turbo (Power outputs: Hotend0, Hotend1, Bed, Fan0, Fan1)
#define BOARD_FLY_CDY                 (env:LPC1769)  // FLYmaker FLY CDY (Power outputs: Hotend0, Hotend1, Hotend2, Bed, Fan0, Fan1, Fan2)

//
// SAM3X8E ARM Cortex M3
//

#define BOARD_DUE3DOM                 (env:DUE env:DUE_USB env:DUE_debug)  // DUE3DOM for Arduino DUE
#define BOARD_DUE3DOM_MINI            (env:DUE env:DUE_USB env:DUE_debug)  // DUE3DOM MINI for Arduino DUE
#define BOARD_RADDS                   (env:DUE env:DUE_USB env:DUE_debug)  // RADDS
#define BOARD_RAMPS_FD_V1             (env:DUE env:DUE_USB env:DUE_debug)  // RAMPS-FD v1
#define BOARD_RAMPS_FD_V2             (env:DUE env:DUE_USB env:DUE_debug)  // RAMPS-FD v2
#define BOARD_RAMPS_SMART_EFB         (env:DUE env:DUE_USB env:DUE_debug)  // RAMPS-SMART (Power outputs: Hotend, Fan, Bed)
#define BOARD_RAMPS_SMART_EEB         (env:DUE env:DUE_USB env:DUE_debug)  // RAMPS-SMART (Power outputs: Hotend0, Hotend1, Bed)
#define BOARD_RAMPS_SMART_EFF         (env:DUE env:DUE_USB env:DUE_debug)  // RAMPS-SMART (Power outputs: Hotend, Fan0, Fan1)
#define BOARD_RAMPS_SMART_EEF         (env:DUE env:DUE_USB env:DUE_debug)  // RAMPS-SMART (Power outputs: Hotend0, Hotend1, Fan)
#define BOARD_RAMPS_SMART_SF          (env:DUE env:DUE_USB env:DUE_debug)  // RAMPS-SMART (Power outputs: Spindle, Controller Fan)
#define BOARD_RAMPS_DUO_EFB           (env:DUE env:DUE_USB env:DUE_debug)  // RAMPS Duo (Power outputs: Hotend, Fan, Bed)
#define BOARD_RAMPS_DUO_EEB           (env:DUE env:DUE_USB env:DUE_debug)  // RAMPS Duo (Power outputs: Hotend0, Hotend1, Bed)
#define BOARD_RAMPS_DUO_EFF           (env:DUE env:DUE_USB env:DUE_debug)  // RAMPS Duo (Power outputs: Hotend, Fan0, Fan1)
#define BOARD_RAMPS_DUO_EEF           (env:DUE env:DUE_USB env:DUE_debug)  // RAMPS Duo (Power outputs: Hotend0, Hotend1, Fan)
#define BOARD_RAMPS_DUO_SF            (env:DUE env:DUE_USB env:DUE_debug)  // RAMPS Duo (Power outputs: Spindle, Controller Fan)
#define BOARD_RAMPS4DUE_EFB           (env:DUE env:DUE_USB env:DUE_debug)  // RAMPS4DUE (Power outputs: Hotend, Fan, Bed)
#define BOARD_RAMPS4DUE_EEB           (env:DUE env:DUE_USB env:DUE_debug)  // RAMPS4DUE (Power outputs: Hotend0, Hotend1, Bed)
#define BOARD_RAMPS4DUE_EFF           (env:DUE env:DUE_USB env:DUE_debug)  // RAMPS4DUE (Power outputs: Hotend, Fan0, Fan1)
#define BOARD_RAMPS4DUE_EEF           (env:DUE env:DUE_USB env:DUE_debug)  // RAMPS4DUE (Power outputs: Hotend0, Hotend1, Fan)
#define BOARD_RAMPS4DUE_SF            (env:DUE env:DUE_USB env:DUE_debug)  // RAMPS4DUE (Power outputs: Spindle, Controller Fan)
#define BOARD_RURAMPS4D_11            (env:DUE env:DUE_USB env:DUE_debug)  // RuRAMPS4Duo v1.1 (Power outputs: Hotend0, Hotend1, Hotend2, Fan0, Fan1, Bed)
#define BOARD_RURAMPS4D_13            (env:DUE env:DUE_USB env:DUE_debug)  // RuRAMPS4Duo v1.3 (Power outputs: Hotend0, Hotend1, Hotend2, Fan0, Fan1, Bed)
#define BOARD_ULTRATRONICS_PRO        (env:DUE env:DUE_debug)  // ReprapWorld Ultratronics Pro V1.0
#define BOARD_ARCHIM1                 (env:DUE_archim env:DUE_archim_debug)  // UltiMachine Archim1 (with DRV8825 drivers)
#define BOARD_ARCHIM2                 (env:DUE_archim env:DUE_archim_debug)  // UltiMachine Archim2 (with TMC2130 drivers)
#define BOARD_ALLIGATOR               (env:DUE env:DUE_debug)  // Alligator Board R2
#define BOARD_CNCONTROLS_15D          (env:DUE env:DUE_USB)  // Cartesio CN Controls V15 on DUE
#define BOARD_KRATOS32                (env:DUE env:DUE_USB)  // K.3D Kratos32 (Arduino Due Shield)

//
// SAM3X8C ARM Cortex M3
//

#define BOARD_PRINTRBOARD_G2          (env:DUE_USB)  // PRINTRBOARD G2
#define BOARD_ADSK                    (env:DUE env:DUE_debug)  // Arduino DUE Shield Kit (ADSK)

//
// STM32 ARM Cortex-M3
//

#define BOARD_MALYAN_M200_V2          (env:STM32F070RB_malyan env:STM32F070CB_malyan)  // STM32F070CB controller
#define BOARD_MALYAN_M300             (env:malyan_M300)  // STM32F070-based delta
#define BOARD_STM32F103RE             (env:STM32F103RE env:STM32F103RE_maple)  // STM32F103RE Libmaple-based STM32F1 controller
#define BOARD_MALYAN_M200             (env:STM32F103CB_malyan env:STM32F103CB_malyan_maple)  // STM32C8T6 Libmaple-based STM32F1 controller
#define BOARD_STM3R_MINI              (env:STM32F103VE env:STM32F103RE_maple)  // STM32F103RE Libmaple-based STM32F1 controller
#define BOARD_GTM32_PRO_VB            (env:STM32F103VE env:STM32F103RE_maple)  // STM32F103VET6 controller
#define BOARD_GTM32_MINI              (env:STM32F103VE env:STM32F103RE_maple)  // STM32F103VET6 controller
#define BOARD_GTM32_MINI_A30          (env:STM32F103VE env:STM32F103RE_maple)  // STM32F103VET6 controller
#define BOARD_GTM32_REV_B             (env:STM32F103VE env:STM32F103RE_maple)  // STM32F103VET6 controller
#define BOARD_MORPHEUS                (env:STM32F103VE env:STM32F103RE_maple)  // STM32F103C8 / STM32F103CB  Libmaple-based STM32F1 controller
#define BOARD_CHITU3D                 (env:STM32F103VE env:STM32F103RE_maple)  // Chitu3D (STM32F103RET6)
#define BOARD_MKS_ROBIN               (env:mks_robin env:mks_robin_maple)  // MKS Robin (STM32F103ZET6)
#define BOARD_MKS_ROBIN_MINI          ( env:mks_robin_mini)  // MKS Robin Mini (STM32F103VET6)
#define BOARD_MKS_ROBIN_NANO          (env:mks_robin_nano35 env:mks_robin_nano35_maple)  // MKS Robin Nano (STM32F103VET6)
#define BOARD_MKS_ROBIN_NANO_V2       (env:mks_robin_nano35 env:mks_robin_nano35_maple)  // MKS Robin Nano V2 (STM32F103VET6)
#define BOARD_MKS_ROBIN_LITE          (env:mks_robin_lite)  // MKS Robin Lite/Lite2 (STM32F103RCT6)
#define BOARD_MKS_ROBIN_LITE3         (env:mks_robin_lite3)  // MKS Robin Lite3 (STM32F103RCT6)
#define BOARD_MKS_ROBIN_PRO           (env:mks_robin_pro)  // MKS Robin Pro (STM32F103ZET6)
#define BOARD_MKS_ROBIN_E3            (env:mks_robin_e3 env:mks_robin_e3_maple)  // MKS Robin E3 (STM32F103RCT6)
#define BOARD_MKS_ROBIN_E3_V1_1       (env:mks_robin_e3)  // MKS Robin E3 V1.1 (STM32F103RCT6)
#define BOARD_MKS_ROBIN_E3D           (env:mks_robin_e3)  // MKS Robin E3D (STM32F103RCT6)
#define BOARD_MKS_ROBIN_E3D_V1_1      (env:mks_robin_e3)  // MKS Robin E3D V1.1 (STM32F103RCT6)
#define BOARD_MKS_ROBIN_E3P           (env:mks_robin_e3p)  // MKS Robin E3p (STM32F103VET6)
#define BOARD_BTT_SKR_MINI_V1_1       (env:STM32F103RC_btt env:STM32F103RC_btt_USB env:STM32F103RC_btt_maple env:STM32F103RC_btt_USB_maple)  // BigTreeTech SKR Mini v1.1 (STM32F103RC)
#define BOARD_BTT_SKR_MINI_E3_V1_0    (env:STM32F103RC_btt env:STM32F103RC_btt_USB env:STM32F103RC_btt_maple env:STM32F103RC_btt_USB_maple)  // BigTreeTech SKR Mini E3 (STM32F103RC)
#define BOARD_BTT_SKR_MINI_E3_V1_2    (env:STM32F103RC_btt env:STM32F103RC_btt_USB env:STM32F103RC_btt_maple env:STM32F103RC_btt_USB_maple)  // BigTreeTech SKR Mini E3 V1.2 (STM32F103RC)
#define BOARD_BTT_SKR_MINI_E3_V2_0    (env:STM32F103RC_btt env:STM32F103RC_btt_USB env:STM32F103RE_btt env:STM32F103RE_btt_USB env:STM32F103RC_btt_maple env:STM32F103RC_btt_USB_maple env:STM32F103RE_btt_maple env:STM32F103RE_btt_USB_maple)  // BigTreeTech SKR Mini E3 V2.0 (STM32F103RC / STM32F103RE)
#define BOARD_BTT_SKR_MINI_MZ_V1_0    (env:STM32F103RC_btt env:STM32F103RC_btt_USB env:STM32F103RC_btt_maple env:STM32F103RC_btt_USB_maple)  // BigTreeTech SKR Mini MZ V1.0 (STM32F103RC)
#define BOARD_BTT_SKR_E3_DIP          (env:STM32F103RC_btt env:STM32F103RC_btt_USB env:STM32F103RE_btt env:STM32F103RE_btt_USB env:STM32F103RC_btt_maple env:STM32F103RC_btt_USB_maple env:STM32F103RE_btt_maple env:STM32F103RE_btt_USB_maple)  // BigTreeTech SKR E3 DIP V1.0 (STM32F103RC / STM32F103RE)
#define BOARD_BTT_SKR_CR6             (env:STM32F103RC_btt env:STM32F103RC_btt_USB env:STM32F103RC_btt_maple env:STM32F103RC_btt_USB_maple)  // BigTreeTech SKR CR6 v1.0 (STM32F103RE)
#define BOARD_JGAURORA_A5S_A1         (env:jgaurora_a5s_a1)  // JGAurora A5S A1 (STM32F103ZET6)
#define BOARD_FYSETC_AIO_II           (env:STM32F103RC_fysetc)  // FYSETC AIO_II
#define BOARD_FYSETC_CHEETAH          (env:STM32F103RC_fysetc)  // FYSETC Cheetah
#define BOARD_FYSETC_CHEETAH_V12      (env:STM32F103RC_fysetc)  // FYSETC Cheetah V1.2
#define BOARD_LONGER3D_LK             (env:STM32F103VE_longer)  // Alfawise U20/U20+/U30 (Longer3D LK1/2) / STM32F103VET6
#define BOARD_CCROBOT_MEEB_3DP        (env:STM32F103RC_meeb)  // ccrobot-online.com MEEB_3DP (STM32F103RC)
#define BOARD_CHITU3D_V5              (env:chitu_f103 env:chitu_v5_gpio_init)  // Chitu3D TronXY X5SA V5 Board
#define BOARD_CHITU3D_V6              (env:chitu_f103)  // Chitu3D TronXY X5SA V6 Board
#define BOARD_CREALITY_V4             (env:STM32F103RET6_creality env:STM32F103RET6_creality_maple)  // Creality v4.x (STM32F103RE)
#define BOARD_CREALITY_V427           (env:STM32F103RET6_creality env:STM32F103RET6_creality_maple)  // Creality v4.2.7 (STM32F103RE)
#define BOARD_CREALITY_V4210          (env:STM32F103RET6_creality env:STM32F103RET6_creality_maple)  // Creality v4.2.10 (STM32F103RE) as found in the CR-30
#define BOARD_CREALITY_V431           (env:STM32F103RET6_creality env:STM32F103RET6_creality_maple)  // Creality v4.3.1 (STM32F103RE)
#define BOARD_CREALITY_V452           (env:STM32F103RET6_creality env:STM32F103RET6_creality_maple)  // Creality v4.5.2 (STM32F103RE)
#define BOARD_CREALITY_V453           (env:STM32F103RET6_creality env:STM32F103RET6_creality_maple)  // Creality v4.5.3 (STM32F103RE)
#define BOARD_TRIGORILLA_PRO          (env:trigorilla_pro)  // Trigorilla Pro (STM32F103ZET6)
#define BOARD_FLY_MINI                (env:FLY_MINI env:FLY_MINI_maple)  // FLYmaker FLY MINI (STM32F103RCT6)
#define BOARD_FLSUN_HISPEED           (env:flsun_hispeedv1)  // FLSUN HiSpeedV1 (STM32F103VET6)
#define BOARD_BEAST                   (env:STM32F103VE env:STM32F103RE_maple)  // STM32F103RET6 Libmaple-based controller
#define BOARD_MINGDA_MPX_ARM_MINI     (env:mingda_mpx_arm_mini)  // STM32F103ZET6 Mingda MD-16
#define BOARD_GTM32_PRO_VD            (env:STM32F103VE env:STM32F103RE_maple)  // STM32F103VET6 controller

//
// ARM Cortex-M4F
//

#define BOARD_TEENSY31_32             (env:teensy31)  // Teensy3.1 and Teensy3.2
#define BOARD_TEENSY35_36             (env:teensy35 env:teensy36)  // Teensy3.5 and Teensy3.6

//
// STM32 ARM Cortex-M4F
//

#define BOARD_ARMED                   (env:ARMED)  // Arm'ed STM32F4-based controller
#define BOARD_RUMBA32_V1_0            (env:rumba32)  // RUMBA32 STM32F446VET6 based controller from Aus3D
#define BOARD_RUMBA32_V1_1            (env:rumba32)  // RUMBA32 STM32F446VET6 based controller from Aus3D
#define BOARD_RUMBA32_MKS             (env:rumba32)  // RUMBA32 STM32F446VET6 based controller from Makerbase
#define BOARD_BLACK_STM32F407VE       (env:STM32F407VE_black)  // BLACK_STM32F407VE
#define BOARD_BLACK_STM32F407ZE       (env:STM32F407VE_black)  // BLACK_STM32F407ZE
#define BOARD_STEVAL_3DP001V1         (env:STM32F401VE_STEVAL)  // STEVAL-3DP001V1 3D PRINTER BOARD
#define BOARD_BTT_SKR_PRO_V1_1        (env:BIGTREE_SKR_PRO env:BIGTREE_SKR_PRO_usb_flash_drive)  // BigTreeTech SKR Pro v1.1 (STM32F407ZGT6)
#define BOARD_BTT_SKR_PRO_V1_2        (env:BIGTREE_SKR_PRO env:BIGTREE_SKR_PRO_usb_flash_drive)  // BigTreeTech SKR Pro v1.2 (STM32F407ZGT6)
#define BOARD_BTT_BTT002_V1_0         (env:BIGTREE_BTT002)  // BigTreeTech BTT002 v1.0 (STM32F407VGT6)
#define BOARD_BTT_E3_RRF              (env:BIGTREE_E3_RRF)  // BigTreeTech E3 RRF (STM32F407VGT6)
#define BOARD_BTT_SKR_V2_0_REV_A      (env:BIGTREE_SKR_2 env:BIGTREE_SKR_2_USB)  // BigTreeTech SKR v2.0 Rev A (STM32F407VGT6)
#define BOARD_BTT_SKR_V2_0_REV_B      (env:BIGTREE_SKR_2 env:BIGTREE_SKR_2_USB)  // BigTreeTech SKR v2.0 Rev B (STM32F407VGT6)
#define BOARD_BTT_GTR_V1_0            (env:BIGTREE_GTR_V1_0 env:BIGTREE_GTR_V1_0_usb_flash_drive)  // BigTreeTech GTR v1.0 (STM32F407IGT)
#define BOARD_BTT_OCTOPUS_V1_0        (env:BIGTREE_OCTOPUS_V1 env:BIGTREE_OCTOPUS_V1_USB)  // BigTreeTech Octopus v1.0 (STM32F446ZET6)
#define BOARD_BTT_OCTOPUS_V1_1        (env:BIGTREE_OCTOPUS_V1 env:BIGTREE_OCTOPUS_V1_USB)  // BigTreeTech Octopus v1.1 (STM32F446ZET6)
#define BOARD_LERDGE_K                (env:LERDGEK env:LERDGEK_usb_flash_drive)  // Lerdge K (STM32F407ZG)
#define BOARD_LERDGE_S                (env:LERDGEK env:LERDGEK_usb_flash_drive)  // Lerdge S (STM32F407VE)
#define BOARD_LERDGE_X                (env:LERDGEK env:LERDGEK_usb_flash_drive)  // Lerdge X (STM32F407VE)
#define BOARD_VAKE403D                (env:)  // VAkE 403D (STM32F446VET6)
#define BOARD_FYSETC_S6               (env:FYSETC_S6 env:FYSETC_S6_8000)  // FYSETC S6 (STM32F446VET6)
#define BOARD_FYSETC_S6_V2_0          (env:FYSETC_S6 env:FYSETC_S6_8000)  // FYSETC S6 v2.0 (STM32F446VET6)
#define BOARD_FYSETC_SPIDER           (env:FYSETC_S6 env:FYSETC_S6_8000)  // FYSETC Spider (STM32F446VET6)
#define BOARD_FLYF407ZG               (env:FLYF407ZG)  // FLYmaker FLYF407ZG (STM32F407ZG)
#define BOARD_MKS_ROBIN2              (env:MKS_ROBIN2)  // MKS_ROBIN2 (STM32F407ZE)
#define BOARD_MKS_ROBIN_PRO_V2        (env:mks_robin_pro2)  // MKS Robin Pro V2 (STM32F407VE)
#define BOARD_MKS_ROBIN_NANO_V3       (env:mks_robin_nano_v3 env:mks_robin_nano_v3_usb_flash_drive env:mks_robin_nano_v3_usb_flash_drive_msc)  // MKS Robin Nano V3 (STM32F407VG)
#define BOARD_ANET_ET4                (env:Anet_ET4_OpenBLT)  // ANET ET4 V1.x (STM32F407VGT6)
#define BOARD_ANET_ET4P               (env:Anet_ET4_OpenBLT)  // ANET ET4P V1.x (STM32F407VGT6)
#define BOARD_FYSETC_CHEETAH_V20      (env:FYSETC_CHEETAH_V20)  // FYSETC Cheetah V2.0


//
// ARM Cortex M7
//

#define BOARD_REMRAM_V1               (env:REMRAM_V1)  // RemRam v1
#define BOARD_TEENSY41                (env:teensy41)  // Teensy 4.1
#define BOARD_T41U5XBB                (env:teensy41)  // T41U5XBB Teensy 4.1 breakout board
#define BOARD_NUCLEO_F767ZI           (env:NUCLEO_F767ZI)  // ST NUCLEO-F767ZI Dev Board
#define BOARD_BTT_SKR_SE_BX           (env:BTT_SKR_SE_BX)  // BigTreeTech SKR SE BX (STM32H743II)

//
// Espressif ESP32 WiFi
//

#define BOARD_ESPRESSIF_ESP32         (env:esp32)  // Generic ESP32
#define BOARD_MRR_ESPA                (env:esp32)  // MRR ESPA based on ESP32 (native pins only)
#define BOARD_MRR_ESPE                (env:esp32)  // MRR ESPE based on ESP32 (with I2S stepper stream)
#define BOARD_E4D_BOX                 (env:esp32)  // E4d@BOX
#define BOARD_FYSETC_E4               (env:FYSETC_E4)  // FYSETC E4

//
// SAMD51 ARM Cortex M4
//

#define BOARD_AGCM4_RAMPS_144         (env:SAMD51_grandcentral_m4)  // RAMPS 1.4.4

//
// Custom board
//

#define BOARD_CUSTOM                  (env:custom)  // Custom pins definition for development and/or rare boards

//
// Simulations
//

#define BOARD_LINUX_RAMPS             (env:linux_native)





</pre>
                                        </div>
                                    </div>
                                    <!-- Page-body end -->
                                </div>
                                <div id="styleSelector"> </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
   
   
<jsp:include page="javascripfile.jsp"></jsp:include>
</body>

</html>
    