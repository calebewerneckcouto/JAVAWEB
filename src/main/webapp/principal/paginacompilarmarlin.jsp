
                     
       <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

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
                    
                    <div>
                    <div>
                    <div>
                     
                    <div>
                    <div>
                    <div>
                    <div>
                   
                      <form action="<%=request.getContextPath()%>/ServletSubstituir" method="post">
                       
                        <br><br>
                        <h6><label for="novoValor">Selecione o Chipset:</label></h6>  
                        <a href="<%= request.getContextPath() %>/principal/marlin.jsp" style="color: crimson;" target="_new"> Consultar Chipset</a>
                        <select name="novoValor" id="novoValor" required>
                          <option selected="selected" value="">(Selecione o Chipset)</option>
                        
                                               <option value="Anet_ET4_OpenBLT">Anet_ET4_OpenBLT</option>
                                            <option value="ARMED">ARMED</option>
                                            <option value="at90usb1286_cdc">at90usb1286_cdc</option>
                                            <option value="at90usb1286_dfu">at90usb1286_dfu</option>
                                            <option value="BIGTREE_SKR_PRO">BIGTREE_SKR_PRO</option>
                                            <option value="BIGTREE_SKR_PRO_usb_flash_drive">BIGTREE_SKR_PRO_usb_flash_drive</option>
                                            <option value="BIGTREE_BTT002">BIGTREE_BTT002</option>
                                            <option value="BIGTREE_E3_RRF">BIGTREE_E3_RRF</option>
                                            <option value="BIGTREE_SKR_2">BIGTREE_SKR_2</option>
                                            <option value="BIGTREE_SKR_2_USB">BIGTREE_SKR_2_USB</option>
                                            <option value="BIGTREE_SKR_2">BIGTREE_SKR_2</option>
                                            <option value="BIGTREE_SKR_2_USB">BIGTREE_SKR_2_USB</option>
                                            <option value="BIGTREE_GTR_V1_0">BIGTREE_GTR_V1_0</option>
                                            <option value="BIGTREE_GTR_V1_0_usb_flash_drive">BIGTREE_GTR_V1_0_usb_flash_drive</option>
                                            <option value="BIGTREE_OCTOPUS_V1">BIGTREE_OCTOPUS_V1</option>
                                            <option value="BIGTREE_OCTOPUS_V1_USB">BIGTREE_OCTOPUS_V1_USB</option>
                                            <option value="BTT_SKR_SE_BX">BTT_SKR_SE_BX</option>
                                            <option value="chitu_f103">chitu_f103</option>
                                            <option value="chitu_v5_gpio_init">chitu_v5_gpio_init</option>
                                            <option value="custom">custom</option>
                                            <option value="DUE">DUE</option>
                                            <option value="DUE_USB">DUE_USB</option>
                                            <option value="DUE_debug">DUE_debug</option>
                                            <option value="DUE_archim">DUE_archim</option> 
                                            <option value="DUE_archim_debug">DUE_archim_debug</option>
                                            <option value="esp32">esp32</option>
                                            <option value="flsun_hispeedv1">flsun_hispeedv1</option>
                                            <option value="FLY_MINI">FLY_MINI</option> 
                                            <option value="FLY_MINI_maple">FLY_MINI_maple</option>
                                            <option value="FLYF407ZG">FLYF407ZG</option>
                                            <option value="FYSETC_CHEETAH_V20">FYSETC_CHEETAH_V20</option>
                                            <option value="FYSETC_E4">FYSETC_E4</option>
                                            <option value="FYSETC_F6">FYSETC_F6</option>
                                            <option value="FYSETC_S6">FYSETC_S6</option>
                                            <option value="FYSETC_S6_8000">FYSETC_S6_8000</option>
                                            <option value="jgaurora_a5s_a1">jgaurora_a5s_a1</option>
                                            <option value="LERDGEK">LERDGEK</option>
                                            <option value="LERDGEK_usb_flash_drive">LERDGEK_usb_flash_drive</option>
                                            <option value="linux_native">linux_native</option>
                                            <option value="LPC1768">LPC1768</option>
                                            <option value="LPC1769">LPC1769</option>
                                            <option value="malyan_M300">malyan_M300</option>
                                            <option value="mega1280">mega1280</option>
                                            <option value="mega2560">mega2560</option>
                                            <option value="mega2560ext">mega2560ext</option>
                                            <option value="melzi_optiboot_optimized">melzi_optiboot_optimized</option>
                                            <option value="melzi_optiboot">melzi_optiboot</option>
                                            <option value="melzi_optimized">melzi_optimized</option> 
                                            <option value="melzi">melzi</option>
                                            <option value="mks_robin">mks_robin</option> 
                                            <option value="mks_robin_e3">mks_robin_e3</option> 
                                            <option value="mks_robin_e3_maple">mks_robin_e3_maple</option>
                                            <option value="mks_robin_e3p">mks_robin_e3p</option>
                                            <option value="mks_robin_lite">mks_robin_lite</option>
                                            <option value="mks_robin_lite3">mks_robin_lite3</option>
                                            <option value="mks_robin_maple">mks_robin_maple</option>
                                            <option value="mks_robin_mini">mks_robin_mini</option>
                                            <option value="mks_robin_nano35">mks_robin_nano35</option>
                                            <option value="mks_robin_nano35_maple">mks_robin_nano35_maple</option>
                                            <option value="mks_robin_nano_v3">mks_robin_nano_v3</option>
                                            <option value="mks_robin_nano_v3_usb_flash_drive">mks_robin_nano_v3_usb_flash_drive</option> 
                                            <option value="mks_robin_nano_v3_usb_flash_drive_msc">mks_robin_nano_v3_usb_flash_drive_msc</option>
                                            <option value="mks_robin_pro">mks_robin_pro</option>
                                            <option value="mks_robin_pro2">mks_robin_pro2</option>
                                            <option value="MKS_ROBIN2">MKS_ROBIN2</option>
                                            <option value="MightyBoard1280">MightyBoard1280</option>
                                            <option value="MightyBoard2560">MightyBoard2560</option>
                                            <option value="mingda_mpx_arm_mini">mingda_mpx_arm_mini</option>
                                            <option value="NUCLEO_F767ZI">NUCLEO_F767ZI</option>
                                            <option value="rambo">rambo</option>
                                            <option value="REMRAM_V1">REMRAM_V1</option>
                                            <option value="rumba32">rumba32</option>
                                            <option value="SAMD51_grandcentral_m4">SAMD51_grandcentral_m4</option>
                                            <option value="sanguino1284p_optimized">sanguino1284p_optimized</option>
                                            <option value="sanguino1284p">sanguino1284p</option>
                                            <option value="sanguino644p">sanguino644p</option>
                                            <option value="STM32F070CB_malyan">STM32F070CB_malyan</option>
                                            <option value="STM32F070RB_malyan">STM32F070RB_malyan</option>
                                            <option value="STM32F103CB_malyan_maple">STM32F103CB_malyan_maple</option>
                                            <option value="STM32F103RC_btt">STM32F103RC_btt</option> 
                                            <option value="STM32F103RC_btt_maple">STM32F103RC_btt_maple</option> 
                                            <option value="STM32F103RC_btt_USB">STM32F103RC_btt_USB</option>
                                            <option value="STM32F103RC_btt_USB_maple">STM32F103RC_btt_USB_maple</option>
                                            <option value="STM32F103RC_fysetc">STM32F103RC_fysetc</option>
                                            <option value="STM32F103RC_meeb">STM32F103RC_meeb</option>
                                            <option value="STM32F103RE">STM32F103RE</option> 
                                            <option value="STM32F103RE_btt">STM32F103RE_btt</option> 
                                            <option value="STM32F103RE_btt_maple">STM32F103RE_btt_maple</option>
                                            <option value="STM32F103RE_btt_USB">STM32F103RE_btt_USB</option>
                                            <option value="STM32F103RE_btt_USB_maple">STM32F103RE_btt_USB_maple</option>
                                            <option value="STM32F103RE_maple">STM32F103RE_maple</option>
                                            <option value="STM32F103RET6_creality">STM32F103RET6_creality</option> 
                                            <option value="STM32F103RET6_creality_maple">STM32F103RET6_creality_maple</option>
                                            <option value="STM32F103VE">STM32F103VE</option>
                                            <option value="STM32F103VE_longer">STM32F103VE_longer</option>
                                            <option value="STM32F401VE_STEVAL">STM32F401VE_STEVAL</option>
                                            <option value="STM32F407VE_black">STM32F407VE_black</option>
                                            <option value="teensy31">teensy31</option>
                                            <option value="teensy35">teensy35</option>
                                            <option value="teensy36">teensy36</option>
                                            <option value="teensy41">teensy41</option>
                                            <option value="trigorilla_pro">trigorilla_pro</option>
       
                        
                        
                        
                        
                        
                        
                        </select>
                        <br><br>
                        
                       
                        <h6><label for="labelplaca">Selecione a Placa:</label></h6>
                        <select name="placa" id="placa" required>
                          <option selected="selected" value="">(Selecione a Placa:)</option>
                          
                         
                                            <optgroup label="RAMPS 1.3 / 1.4 - ATmega1280, ATmega2560">
                                                <option value="BOARD_RAMPS_OLD">MEGA/RAMPS up to 1.2 [BOARD_RAMPS_OLD]</option>
                                                <option value="BOARD_RAMPS_13_EFB">RAMPS 1.3 (Power outputs: Hotend, Fan, Bed) [BOARD_RAMPS_13_EFB]</option>
                                                <option value="BOARD_RAMPS_13_EEB">RAMPS 1.3 (Power outputs: Hotend0, Hotend1, Bed) [BOARD_RAMPS_13_EEB]</option>
                                                <option value="BOARD_RAMPS_13_EFF">RAMPS 1.3 (Power outputs: Hotend, Fan0, Fan1) [BOARD_RAMPS_13_EFF]</option>
                                                <option value="BOARD_RAMPS_13_EEF">RAMPS 1.3 (Power outputs: Hotend0, Hotend1, Fan) [BOARD_RAMPS_13_EEF]</option>
                                                <option value="BOARD_RAMPS_13_SF">RAMPS 1.3 (Power outputs: Spindle, Controller Fan) [BOARD_RAMPS_13_SF]</option>
                                                <option value="BOARD_RAMPS_14_EFB">RAMPS 1.4 (Power outputs: Hotend, Fan, Bed) [BOARD_RAMPS_14_EFB]</option>
                                                <option value="BOARD_RAMPS_14_EEB">RAMPS 1.4 (Power outputs: Hotend0, Hotend1, Bed) [BOARD_RAMPS_14_EEB]</option>
                                                <option value="BOARD_RAMPS_14_EFF">RAMPS 1.4 (Power outputs: Hotend, Fan0, Fan1) [BOARD_RAMPS_14_EFF]</option>
                                                <option value="BOARD_RAMPS_14_EEF">RAMPS 1.4 (Power outputs: Hotend0, Hotend1, Fan) [BOARD_RAMPS_14_EEF]</option>
                                                <option value="BOARD_RAMPS_14_SF">RAMPS 1.4 (Power outputs: Spindle, Controller Fan) [BOARD_RAMPS_14_SF]</option>
                                                <option value="BOARD_RAMPS_PLUS_EFB">RAMPS Plus 3DYMY (Power outputs: Hotend, Fan, Bed) [BOARD_RAMPS_PLUS_EFB]</option>
                                                <option value="BOARD_RAMPS_PLUS_EEB">RAMPS Plus 3DYMY (Power outputs: Hotend0, Hotend1, Bed) [BOARD_RAMPS_PLUS_EEB]</option>
                                                <option value="BOARD_RAMPS_PLUS_EFF">RAMPS Plus 3DYMY (Power outputs: Hotend, Fan0, Fan1) [BOARD_RAMPS_PLUS_EFF]</option>
                                                <option value="BOARD_RAMPS_PLUS_EEF">RAMPS Plus 3DYMY (Power outputs: Hotend0, Hotend1, Fan) [BOARD_RAMPS_PLUS_EEF]</option>
                                                <option value="BOARD_RAMPS_PLUS_SF">RAMPS Plus 3DYMY (Power outputs: Spindle, Controller Fan) [BOARD_RAMPS_PLUS_SF]</option>
                                            </optgroup>

                                            <optgroup label="RAMPS Derivatives - ATmega1280, ATmega2560">
                                                <option value="BOARD_3DRAG">3Drag Controller [BOARD_3DRAG] </option>
                                                <option value="BOARD_K8200">Velleman K8200 Controller (derived from 3Drag Controller) [BOARD_K8200] </option>
                                                <option value="BOARD_K8400">Velleman K8400 Controller (derived from 3Drag Controller) [BOARD_K8400] </option>
                                                <option value="BOARD_K8600"> Velleman K8600 Controller (Vertex Nano) [BOARD_K8600] </option>
                                                <option value="BOARD_K8800"> Velleman K8800 Controller (Vertex Delta) [BOARD_K8800] </option>
                                                <option value="BOARD_BAM_DICE">2PrintBeta BAM&amp;DICE with STK drivers [BOARD_BAM_DICE] </option>
                                                <option value="BOARD_BAM_DICE_DUE">2PrintBeta BAM&amp;DICE Due with STK drivers [BOARD_BAM_DICE_DUE] </option>
                                                <option value="BOARD_MKS_BASE">MKS BASE v1.0 [BOARD_MKS_BASE] </option>
                                                <option value="BOARD_MKS_BASE_14">MKS BASE v1.4 with Allegro A4982 stepper drivers [BOARD_MKS_BASE_14] </option>
                                                <option value="BOARD_MKS_BASE_15">MKS BASE v1.5 with Allegro A4982 stepper drivers [BOARD_MKS_BASE_15] </option>
                                                <option value="BOARD_MKS_BASE_16">MKS BASE v1.6 with Allegro A4982 stepper drivers [BOARD_MKS_BASE_16] </option>
                                                <option value="BOARD_MKS_BASE_HEROIC">MKS BASE 1.0 with Heroic HR4982 stepper drivers [BOARD_MKS_BASE_HEROIC] </option>
                                                <option value="BOARD_MKS_GEN_13">MKS GEN v1.3 or 1.4 [BOARD_MKS_GEN_13] </option>
                                                <option value="BOARD_MKS_GEN_L">MKS GEN L [BOARD_MKS_GEN_L] </option>
                                                <option value="BOARD_KFB_2">BigTreeTech or BIQU KFB2.0 [BOARD_KFB_2] </option>
                                                <option value="BOARD_ZRIB_V20">zrib V2.0 control board (Chinese knock off RAMPS replica) [BOARD_ZRIB_V20] </option>
                                                <option value="BOARD_ZRIB_V52">zrib V5.2 (Chinese RAMPS replica) [BOARD_ZRIB_V52] </option>
                                                <option value="BOARD_FELIX2">Felix 2.0+ Electronics Board (RAMPS like) [BOARD_FELIX2] </option>
                                                <option value="BOARD_RIGIDBOARD">Invent-A-Part RigidBoard [BOARD_RIGIDBOARD] </option>
                                                <option value="BOARD_RIGIDBOARD_V2">Invent-A-Part RigidBoard V2 [BOARD_RIGIDBOARD_V2] </option>
                                                <option value="BOARD_SAINSMART_2IN1">Sainsmart 2-in-1 board [BOARD_SAINSMART_2IN1] </option>
                                                <option value="BOARD_ULTIMAKER">Ultimaker [BOARD_ULTIMAKER] </option>
                                                <option value="BOARD_ULTIMAKER_OLD">Ultimaker (Older electronics. Pre 1.5.4. This is rare) [BOARD_ULTIMAKER_OLD] </option>
                                                <option value="BOARD_AZTEEG_X3">Azteeg X3 [BOARD_AZTEEG_X3] </option>
                                                <option value="BOARD_AZTEEG_X3_PRO">Azteeg X3 Pro [BOARD_AZTEEG_X3_PRO] </option>
                                                <option value="BOARD_ULTIMAIN_2">Ultimainboard 2.x (Uses TEMP_SENSOR 20) [BOARD_ULTIMAIN_2] </option>
                                                <option value="BOARD_RUMBA">Rumba [BOARD_RUMBA] </option>
                                                <option value="BOARD_RUMBA_RAISE3D">Raise3D N series Rumba derivative [BOARD_RUMBA_RAISE3D] </option>
                                                <option value="BOARD_RL200">Rapide Lite 200 (v1, low-cost RUMBA clone with drv) [BOARD_RL200] </option>
                                                <option value="BOARD_FORMBOT_TREX2PLUS">Formbot T-Rex 2 Plus [BOARD_FORMBOT_TREX2PLUS] </option>
                                                <option value="BOARD_FORMBOT_TREX3">Formbot T-Rex 3 [BOARD_FORMBOT_TREX3] </option>
                                                <option value="BOARD_FORMBOT_RAPTOR">Formbot Raptor [BOARD_FORMBOT_RAPTOR] </option>
                                                <option value="BOARD_FORMBOT_RAPTOR2">Formbot Raptor 2 [BOARD_FORMBOT_RAPTOR2] </option>
                                                <option value="BOARD_BQ_ZUM_MEGA_3D">bq ZUM Mega 3D [BOARD_BQ_ZUM_MEGA_3D] </option>
                                                <option value="BOARD_MAKEBOARD_MINI">MakeBoard Mini v2.1.2 is a control board sold by MicroMake [BOARD_MAKEBOARD_MINI] </option>
                                                <option value="BOARD_TRIGORILLA_13">TriGorilla Anycubic version 1.3-based on RAMPS EFB [BOARD_TRIGORILLA_13] </option>
                                                <option value="BOARD_TRIGORILLA_14">  ... Ver 1.4 [BOARD_TRIGORILLA_14] </option>
                                                <option value="BOARD_TRIGORILLA_14_11">  ... Rev 1.1 (new servo pin order) [BOARD_TRIGORILLA_14_11] </option>
                                                <option value="BOARD_RAMPS_ENDER_4">Creality: Ender-4, CR-8 [BOARD_RAMPS_ENDER_4] </option>
                                                <option value="BOARD_RAMPS_CREALITY">Creality: CR10S, CR20, CR-X [BOARD_RAMPS_CREALITY] </option>
                                                <option value="BOARD_DAGOMA_F5">Dagoma F5 [BOARD_DAGOMA_F5] </option>
                                                <option value="BOARD_FYSETC_F6_13">FYSETC F6 1.3 [BOARD_FYSETC_F6_13] </option>
                                                <option value="BOARD_FYSETC_F6_14">FYSETC F6 1.4 [BOARD_FYSETC_F6_14] </option>
                                                <option value="BOARD_DUPLICATOR_I3_PLUS">Wanhao Duplicator i3 Plus [BOARD_DUPLICATOR_I3_PLUS] </option>
                                                <option value="BOARD_VORON">VORON Design [BOARD_VORON] </option>
                                                <option value="BOARD_TRONXY_V3_1_0">Tronxy TRONXY-V3-1.0 [BOARD_TRONXY_V3_1_0] </option>
                                                <option value="BOARD_Z_BOLT_X_SERIES">Z-Bolt X Series [BOARD_Z_BOLT_X_SERIES] </option>
                                                <option value="BOARD_TT_OSCAR">TT OSCAR [BOARD_TT_OSCAR] </option>
                                                <option value="BOARD_OVERLORD">Overlord/Overlord Pro [BOARD_OVERLORD] </option>
                                                <option value="BOARD_HJC2560C_REV1">ADIMLab Gantry v1 [BOARD_HJC2560C_REV1] </option>
                                                <option value="BOARD_HJC2560C_REV2">ADIMLab Gantry v2 [BOARD_HJC2560C_REV2] </option>
                                                <option value="BOARD_TANGO">BIQU Tango V1 [BOARD_TANGO] </option>
                                                <option value="BOARD_MKS_GEN_L_V2">MKS GEN L V2 [BOARD_MKS_GEN_L_V2] </option>
                                                <option value="BOARD_MKS_GEN_L_V21">MKS GEN L V2.1 [BOARD_MKS_GEN_L_V21] </option>
                                                <option value="BOARD_COPYMASTER_3D">Copymaster 3D [BOARD_COPYMASTER_3D] </option>
                                                <option value="BOARD_ORTUR_4">Ortur 4 [BOARD_ORTUR_4] </option>
                                                <option value="BOARD_TENLOG_D3_HERO">MTenlog D3 Hero IDEX printer [BOARD_TENLOG_D3_HERO] </option>
                                                <option value="BOARD_RAMPS_S_12_EEFB">Ramps S 1.2 by Sakul.cz (Power outputs: Hotend0, Hotend1, Fan, Bed) [BOARD_RAMPS_S_12_EEFB] </option>
                                                <option value="BOARD_RAMPS_S_12_EEEB">Ramps S 1.2 by Sakul.cz (Power outputs: Hotend0, Hotend1, Hotend2, Bed) [BOARD_RAMPS_S_12_EEEB] </option>
                                                <option value="BOARD_RAMPS_S_12_EFFB">Ramps S 1.2 by Sakul.cz (Power outputs: Hotend, Fan0, Fan1, Bed) [BOARD_RAMPS_S_12_EFFB] </option>
                                                <option value="BOARD_LONGER3D_LK1_PRO">Longer LK1 PRO / Alfawise U20 Pro (PRO version) [BOARD_LONGER3D_LK1_PRO] </option>
                                                <option value="BOARD_LONGER3D_LKx_PRO">Longer LKx PRO / Alfawise Uxx Pro (PRO version) [BOARD_LONGER3D_LKx_PRO] </option>
                                            </optgroup>

                                            <optgroup label="Rambo and derivatives">
                                                <option value="BOARD_RAMBO">Rambo [BOARD_RAMBO] </option>
                                                <option value="BOARD_MINIRAMBO">Mini-Rambo [BOARD_MINIRAMBO] </option>
                                                <option value="BOARD_MINIRAMBO_10A"> Mini-Rambo 1.0a [BOARD_MINIRAMBO_10A] </option>
                                                <option value="BOARD_EINSY_RAMBO">Einsy Rambo [BOARD_EINSY_RAMBO] </option>
                                                <option value="BOARD_EINSY_RETRO">Einsy Retro [BOARD_EINSY_RETRO] </option>
                                                <option value="BOARD_SCOOVO_X9H">abee Scoovo X9H [BOARD_SCOOVO_X9H] </option>
                                                <option value="BOARD_RAMBO_THINKERV2">ThinkerV2 [BOARD_RAMBO_THINKERV2] </option>
                                            </optgroup>

                                            <optgroup label="Other ATmega1280, ATmega2560">
                                                <option value="BOARD_CNCONTROLS_11">Cartesio CN Controls V11 [BOARD_CNCONTROLS_12] </option>
                                                <option value="BOARD_CNCONTROLS_12">Cartesio CN Controls V12 [BOARD_CNCONTROLS_12] </option>
                                                <option value="BOARD_CNCONTROLS_15">Cartesio CN Controls V15 [BOARD_CNCONTROLS_15] </option>
                                                <option value="BOARD_CHEAPTRONIC">Cheaptronic v1.0 [BOARD_CHEAPTRONIC] </option>
                                                <option value="BOARD_CHEAPTRONIC_V2">Cheaptronic v2.0 [BOARD_CHEAPTRONIC_V2] </option>
                                                <option value="BOARD_MIGHTYBOARD_REVE">Makerbot Mightyboard Revision E [BOARD_MIGHTYBOARD_REVE] </option>
                                                <option value="BOARD_MEGATRONICS">Megatronics [BOARD_MEGATRONICS] </option>
                                                <option value="BOARD_MEGATRONICS_2">Megatronics v2.0 [BOARD_MEGATRONICS_2] </option>
                                                <option value="BOARD_MEGATRONICS_3">Megatronics v3.0 [BOARD_MEGATRONICS_3] </option>
                                                <option value="BOARD_MEGATRONICS_31">Megatronics v3.1 [BOARD_MEGATRONICS_31] </option>
                                                <option value="BOARD_MEGATRONICS_32">Megatronics v3.2 [BOARD_MEGATRONICS_32] </option>
                                                <option value="BOARD_ELEFU_3">Elefu Ra Board (v3) [BOARD_ELEFU_3] </option>
                                                <option value="BOARD_LEAPFROG">Leapfrog [BOARD_LEAPFROG] </option>
                                                <option value="BOARD_MEGACONTROLLER">Mega controller [BOARD_MEGACONTROLLER] </option>
                                                <option value="BOARD_GT2560_REV_A">Geeetech GT2560 Rev. A [BOARD_GT2560_REV_A] </option>
                                                <option value="BOARD_GT2560_REV_A_PLUS">Geeetech GT2560 Rev. A+ (with auto level probe) [BOARD_GT2560_REV_A_PLUS] </option>
                                                <option value="BOARD_GT2560_V3">Geeetech GT2560 Rev B for A10(M/D) [BOARD_GT2560_V3] </option>
                                                <option value="BOARD_GT2560_V4">Geeetech GT2560 Rev B for A10(M/D) [BOARD_GT2560_V4] </option>
                                                <option value="BOARD_GT2560_V3_MC2">Geeetech GT2560 Rev B for Mecreator2 [BOARD_GT2560_V3_MC2] </option>
                                                <option value="BOARD_GT2560_V3_A20">Geeetech GT2560 Rev B for A20(M/D) [BOARD_GT2560_V3_A20] </option>
                                                <option value="BOARD_EINSTART_S">Einstart retrofit [BOARD_EINSTART_S] </option>
                                                <option value="BOARD_WANHAO_ONEPLUS">Wanhao 0ne+ i3 Mini [BOARD_WANHAO_ONEPLUS] </option>
                                                <option value="BOARD_LEAPFROG_XEED2015">Leapfrog Xeed 2015 [BOARD_LEAPFROG_XEED2015] </option>
                                                <option value="BOARD_PICA_REVB">PICA Shield (original version) [BOARD_PICA_REVB] </option>
                                                <option value="BOARD_PICA">PICA Shield (rev C or later) [BOARD_PICA] </option>
                                                <option value="BOARD_INTAMSYS40">Intamsys 4.0 (Funmat HT) [BOARD_INTAMSYS40] </option>
                                                <option value="BOARD_MALYAN_M180">Malyan M180 Mainboard Version 2 (no display function, direct gcode only) [BOARD_MALYAN_M180] </option>
                                            </optgroup>

                                            <optgroup label="ATmega1281, ATmega2561">
                                                <option value="BOARD_MINITRONICS">Minitronics v1.0/1.1 [BOARD_MINITRONICS] </option>
                                                <option value="BOARD_SILVER_GATE">Silvergate v1.0 [BOARD_SILVER_GATE] </option>
                                            </optgroup>

                                            <optgroup label="Sanguinololu and Derivatives - ATmega644P, ATmega1284P">
                                                <option value="BOARD_SANGUINOLOLU_11">Sanguinololu &lt; 1.2 [BOARD_SANGUINOLOLU_11] </option>
                                                <option value="BOARD_SANGUINOLOLU_12">Sanguinololu 1.2 and above [BOARD_SANGUINOLOLU_12] </option>
                                                <option value="BOARD_MELZI">Melzi [BOARD_MELZI] </option>
                                                <option value="BOARD_MELZI_V2">Melzi V2 [BOARD_MELZI_V2] </option>
                                                <option value="BOARD_MELZI_MAKR3D">Melzi with ATmega1284 (MaKr3d version) [BOARD_MELZI_MAKR3D] </option>
                                                <option value="BOARD_MELZI_CREALITY">Melzi Creality3D board (for CR-10 etc) [BOARD_MELZI_CREALITY] </option>
                                                <option value="BOARD_MELZI_MALYAN">Melzi Malyan M150 board [BOARD_MELZI_MALYAN] </option>
                                                <option value="BOARD_MELZI_TRONXY">Tronxy X5S [BOARD_MELZI_TRONXY] </option>
                                                <option value="BOARD_STB_11">STB V1.1 [BOARD_STB_11] </option>
                                                <option value="BOARD_AZTEEG_X1">Azteeg X1 [BOARD_AZTEEG_X1] </option>
                                                <option value="BOARD_ANET_10">Anet 1.0 (Melzi clone) [BOARD_ANET_10] </option>
                                                <option value="BOARD_ZMIB_V2">ZoneStar ZMIB V2 [BOARD_ZMIB_V2] </option>
                                            </optgroup>

                                            <optgroup label="Other ATmega644P, ATmega644, ATmega1284P">
                                                <option value="BOARD_GEN3_MONOLITHIC">Gen3 Monolithic Electronics [BOARD_GEN3_MONOLITHIC] </option>
                                                <option value="BOARD_GEN3_PLUS">Gen3+ [BOARD_GEN3_PLUS] </option>
                                                <option value="BOARD_GEN6">Gen6 [BOARD_GEN6] </option>
                                                <option value="BOARD_GEN6_DELUXE">Gen6 deluxe [BOARD_GEN6_DELUXE] </option>
                                                <option value="BOARD_GEN7_CUSTOM">Gen7 custom (Alfons3 Version) "https://github.com/Alfons3/Generation_7_Electronics" [BOARD_GEN7_CUSTOM] </option>
                                                <option value="BOARD_GEN7_12">Gen7 v1.1, v1.2 [BOARD_GEN7_12] </option>
                                                <option value="BOARD_GEN7_13">Gen7 v1.3 [BOARD_GEN7_13] </option>
                                                <option value="BOARD_GEN7_14">Gen7 v1.4 [BOARD_GEN7_14] </option>
                                                <option value="BOARD_OMCA_A">Alpha OMCA board [BOARD_OMCA_A] </option>
                                                <option value="BOARD_OMCA">Final OMCA board [BOARD_OMCA] </option>
                                                <option value="BOARD_SETHI">Sethi 3D_1 [BOARD_SETHI] </option>
                                            </optgroup>

                                            <optgroup label="Teensyduino - AT90USB1286, AT90USB1286P">
                                                <option value="BOARD_TEENSYLU">Teensylu [BOARD_TEENSYLU] </option>
                                                <option value="BOARD_PRINTRBOARD">Printrboard (AT90USB1286) [BOARD_PRINTRBOARD] </option>
                                                <option value="BOARD_PRINTRBOARD_REVF">Printrboard Revision F (AT90USB1286) [BOARD_PRINTRBOARD_REVF] </option>
                                                <option value="BOARD_BRAINWAVE">Brainwave (AT90USB646) [BOARD_BRAINWAVE] </option>
                                                <option value="BOARD_BRAINWAVE_PRO">Brainwave Pro (AT90USB1286) [BOARD_BRAINWAVE_PRO] </option>
                                                <option value="BOARD_SAV_MKI">SAV Mk-I (AT90USB1286) [BOARD_SAV_MKI] </option>
                                                <option value="BOARD_TEENSY2">Teensy++2.0 (AT90USB1286) [BOARD_TEENSY2] </option>
                                                <option value="BOARD_5DPRINT">5DPrint D8 Driver Board [BOARD_5DPRINT] </option>
                                            </optgroup>

                                            <optgroup label="LPC1768 ARM Cortex M3">
                                                <option value="BOARD_RAMPS_14_RE_ARM_EFB">Re-ARM with RAMPS 1.4 (Power outputs: Hotend, Fan, Bed) [BOARD_RAMPS_14_RE_ARM_EFB] </option>
                                                <option value="BOARD_RAMPS_14_RE_ARM_EEB">Re-ARM with RAMPS 1.4 (Power outputs: Hotend0, Hotend1, Bed) [BOARD_RAMPS_14_RE_ARM_EEB] </option>
                                                <option value="BOARD_RAMPS_14_RE_ARM_EFF">Re-ARM with RAMPS 1.4 (Power outputs: Hotend, Fan0, Fan1) [BOARD_RAMPS_14_RE_ARM_EFF] </option>
                                                <option value="BOARD_RAMPS_14_RE_ARM_EEF">Re-ARM with RAMPS 1.4 (Power outputs: Hotend0, Hotend1, Fan) [BOARD_RAMPS_14_RE_ARM_EEF] </option>
                                                <option value="BOARD_RAMPS_14_RE_ARM_SF">Re-ARM with RAMPS 1.4 (Power outputs: Spindle, Controller Fan) [BOARD_RAMPS_14_RE_ARM_SF] </option>
                                                <option value="BOARD_MKS_SBASE">MKS-Sbase (Power outputs: Hotend0, Hotend1, Bed, Fan) [BOARD_MKS_SBASE] </option>
                                                <option value="BOARD_AZSMZ_MINI">AZSMZ Mini [BOARD_AZSMZ_MINI] </option>
                                                <option value="BOARD_BIQU_BQ111_A4">BIQU BQ111-A4 (Power outputs: Hotend, Fan, Bed) [BOARD_BIQU_BQ111_A4] </option>
                                                <option value="BOARD_SELENA_COMPACT">Selena Compact (Power outputs: Hotend0, Hotend1, Bed0, Bed1, Fan0, Fan1) [BOARD_SELENA_COMPACT] </option>
                                                <option value="BOARD_BIQU_B300_V1_0">BIQU B300_V1.0 (Power outputs: Hotend0, Fan, Bed, SPI Driver) [BOARD_BIQU_B300_V1_0] </option>
                                                <option value="BOARD_MKS_SGEN_L">MKS-SGen-L (Power outputs: Hotend0, Hotend1, Bed, Fan) [BOARD_MKS_SGEN_L] </option>
                                                <option value="BOARD_GMARSH_X6_REV1">GMARSH X6 board, revision 1 prototype [BOARD_GMARSH_X6_REV1] </option>
                                                <option value="BOARD_BTT_SKR_V1_1">BigTreeTech SKR v1.1 (Power outputs: Hotend0, Hotend1, Fan, Bed) [BOARD_BTT_SKR_V1_1] </option>
                                                <option value="BOARD_BTT_SKR_V1_3">BigTreeTech SKR v1.3 (Power outputs: Hotend0, Hotend1, Fan, Bed) [BOARD_BTT_SKR_V1_3] </option>
                                                <option value="BOARD_BTT_SKR_V1_4">BigTreeTech SKR v1.4 (Power outputs: Hotend0, Hotend1, Fan, Bed) [BOARD_BTT_SKR_V1_4] </option>
                                            </optgroup>

                                            <optgroup label="LPC1769 ARM Cortex M3">
                                                <option value="BOARD_MKS_SGEN">MKS-SGen (Power outputs: Hotend0, Hotend1, Bed, Fan) [BOARD_MKS_SGEN] </option>
                                                <option value="BOARD_AZTEEG_X5_GT">Azteeg X5 GT (Power outputs: Hotend0, Hotend1, Bed, Fan) [BOARD_AZTEEG_X5_GT] </option>
                                                <option value="BOARD_AZTEEG_X5_MINI">Azteeg X5 Mini (Power outputs: Hotend0, Bed, Fan) [BOARD_AZTEEG_X5_MINI] </option>
                                                <option value="BOARD_AZTEEG_X5_MINI_WIFI">Azteeg X5 Mini Wifi (Power outputs: Hotend0, Bed, Fan) [BOARD_AZTEEG_X5_MINI_WIFI] </option>
                                                <option value="BOARD_COHESION3D_REMIX">Cohesion3D ReMix [BOARD_COHESION3D_REMIX] </option>
                                                <option value="BOARD_COHESION3D_MINI">Cohesion3D Mini [BOARD_COHESION3D_MINI] </option>
                                                <option value="BOARD_SMOOTHIEBOARD">Smoothieboard [BOARD_SMOOTHIEBOARD] </option>
                                                <option value="BOARD_TH3D_EZBOARD">TH3D EZBoard v1.0 [BOARD_TH3D_EZBOARD] </option>
                                                <option value="BOARD_BTT_SKR_V1_4_TURBO">BigTreeTech SKR v1.4 TURBO (Power outputs: Hotend0, Hotend1, Fan, Bed) [BOARD_BTT_SKR_V1_4_TURBO] </option>
                                                <option value="BOARD_MKS_SGEN_L_V2">MKS SGEN_L V2 (Power outputs: Hotend0, Hotend1, Bed, Fan) [BOARD_MKS_SGEN_L_V2] </option>
                                                <option value="BOARD_BTT_SKR_E3_TURBO">BigTreeTech SKR E3 Turbo (Power outputs: Hotend0, Hotend1, Bed, Fan0, Fan1) [BOARD_BTT_SKR_E3_TURBO] </option>
                                                <option value="BOARD_FLY_CDY">FLYmaker FLY CDY (Power outputs: Hotend0, Hotend1, Hotend2, Bed, Fan0, Fan1, Fan2) [BOARD_FLY_CDY] </option>
                                            </optgroup>

                                            <optgroup label="SAM3X8E ARM Cortex M3">
                                                <option value="BOARD_DUE3DOM">DUE3DOM for Arduino DUE [BOARD_DUE3DOM] </option>
                                                <option value="BOARD_DUE3DOM_MINI">DUE3DOM MINI for Arduino DUE [BOARD_DUE3DOM_MINI] </option>
                                                <option value="BOARD_RADDS">RADDS [BOARD_RADDS] </option>
                                                <option value="BOARD_RAMPS_FD_V1">RAMPS-FD v1 [BOARD_RAMPS_FD_V1] </option>
                                                <option value="BOARD_RAMPS_FD_V2">RAMPS-FD v2 [BOARD_RAMPS_FD_V2] </option>
                                                <option value="BOARD_RAMPS_SMART_EFB">RAMPS-SMART (Power outputs: Hotend, Fan, Bed) [BOARD_RAMPS_SMART_EFB] </option>
                                                <option value="BOARD_RAMPS_SMART_EEB">RAMPS-SMART (Power outputs: Hotend0, Hotend1, Bed) [BOARD_RAMPS_SMART_EEB] </option>
                                                <option value="BOARD_RAMPS_SMART_EFF">RAMPS-SMART (Power outputs: Hotend, Fan0, Fan1) [BOARD_RAMPS_SMART_EFF] </option>
                                                <option value="BOARD_RAMPS_SMART_EEF">RAMPS-SMART (Power outputs: Hotend0, Hotend1, Fan) [BOARD_RAMPS_SMART_EEF] </option>
                                                <option value="BOARD_RAMPS_SMART_SF">RAMPS-SMART (Power outputs: Spindle, Controller Fan) [BOARD_RAMPS_SMART_SF] </option>
                                                <option value="BOARD_RAMPS_DUO_EFB">RAMPS Duo (Power outputs: Hotend, Fan, Bed) [BOARD_RAMPS_DUO_EFB] </option>
                                                <option value="BOARD_RAMPS_DUO_EEB">RAMPS Duo (Power outputs: Hotend0, Hotend1, Bed) [BOARD_RAMPS_DUO_EEB] </option>
                                                <option value="BOARD_RAMPS_DUO_EFF">RAMPS Duo (Power outputs: Hotend, Fan0, Fan1) [BOARD_RAMPS_DUO_EFF] </option>
                                                <option value="BOARD_RAMPS_DUO_EEF">RAMPS Duo (Power outputs: Hotend0, Hotend1, Fan) [BOARD_RAMPS_DUO_EEF] </option>
                                                <option value="BOARD_RAMPS_DUO_SF">RAMPS Duo (Power outputs: Spindle, Controller Fan) [BOARD_RAMPS_DUO_SF] </option>
                                                <option value="BOARD_RAMPS4DUE_EFB">RAMPS4DUE (Power outputs: Hotend, Fan, Bed) [BOARD_RAMPS4DUE_EFB] </option>
                                                <option value="BOARD_RAMPS4DUE_EEB">RAMPS4DUE (Power outputs: Hotend0, Hotend1, Bed) [BOARD_RAMPS4DUE_EEB] </option>
                                                <option value="BOARD_RAMPS4DUE_EFF">RAMPS4DUE (Power outputs: Hotend, Fan0, Fan1) [BOARD_RAMPS4DUE_EFF] </option>
                                                <option value="BOARD_RAMPS4DUE_EEF">RAMPS4DUE (Power outputs: Hotend0, Hotend1, Fan) [BOARD_RAMPS4DUE_EEF] </option>
                                                <option value="BOARD_RAMPS4DUE_SF">RAMPS4DUE (Power outputs: Spindle, Controller Fan) [BOARD_RAMPS4DUE_SF] </option>
                                                <option value="BOARD_RURAMPS4D_11">RuRAMPS4Duo v1.1 (Power outputs: Hotend0, Hotend1, Hotend2, Fan0, Fan1, Bed) [BOARD_RURAMPS4D_11] </option>
                                                <option value="BOARD_RURAMPS4D_13">RuRAMPS4Duo v1.3 (Power outputs: Hotend0, Hotend1, Hotend2, Fan0, Fan1, Bed) [BOARD_RURAMPS4D_13] </option>
                                                <option value="BOARD_ULTRATRONICS_PRO">ReprapWorld Ultratronics Pro V1.0 [BOARD_ULTRATRONICS_PRO] </option>
                                                <option value="BOARD_ARCHIM1">UltiMachine Archim1 (with DRV8825 drivers) [BOARD_ARCHIM1] </option>
                                                <option value="BOARD_ARCHIM2">UltiMachine Archim2 (with TMC2130 drivers) [BOARD_ARCHIM2] </option>
                                                <option value="BOARD_ALLIGATOR">Alligator Board R2 [BOARD_ALLIGATOR] </option>
                                                <option value="BOARD_CNCONTROLS_15D">Cartesio CN Controls V15 on DUE [BOARD_CNCONTROLS_15D] </option>
                                                <option value="BOARD_KRATOS32">K.3D Kratos32 (Arduino Due Shield) [BOARD_KRATOS32] </option>
                                            </optgroup>

                                            <optgroup label="SAM3X8C ARM Cortex M3">
                                                <option value="BOARD_PRINTRBOARD_G2">PRINTRBOARD G2 [BOARD_PRINTRBOARD_G2] </option>
                                                <option value="BOARD_ADSK">Arduino DUE Shield Kit (ADSK) [BOARD_ADSK] </option>
                                            </optgroup>

                                            <optgroup label="STM32 ARM Cortex-M3">
                                                <option value="BOARD_MALYAN_M200_V2">STM32F070CB controller [BOARD_MALYAN_M200_V2] </option>
                                                <option value="BOARD_MALYAN_M300">STM32F070-based delta [BOARD_MALYAN_M300] </option>
                                                <option value="BOARD_STM32F103RE">STM32F103RE Libmaple-based STM32F1 controller [BOARD_STM32F103RE] </option>
                                                <option value="BOARD_MALYAN_M200">STM32C8T6  Libmaple-based STM32F1 controller [BOARD_MALYAN_M200] </option>
                                                <option value="BOARD_STM3R_MINI">STM32F103RE Libmaple-based STM32F1 controller [BOARD_STM3R_MINI] </option>
                                                <option value="BOARD_GTM32_PRO_VB">STM32F103VET6 controller [BOARD_GTM32_PRO_VB] </option>
                                                <option value="BOARD_GTM32_MINI">STM32F103VET6 controller [BOARD_GTM32_MINI] </option>
                                                <option value="BOARD_GTM32_MINI_A30">STM32F103VET6 controller [BOARD_GTM32_MINI_A30] </option>
                                                <option value="BOARD_GTM32_REV_B">STM32F103VET6 controller [BOARD_GTM32_REV_B] </option>
                                                <option value="BOARD_MORPHEUS">STM32F103C8 / STM32F103CB  Libmaple-based STM32F1 controller [BOARD_MORPHEUS] </option>
                                                <option value="BOARD_CHITU3D">Chitu3D (STM32F103RET6) [BOARD_CHITU3D] </option>
                                                <option value="BOARD_MKS_ROBIN">MKS Robin (STM32F103ZET6) [BOARD_MKS_ROBIN] </option>
                                                <option value="BOARD_MKS_ROBIN_MINI">MKS Robin Mini (STM32F103VET6) [BOARD_MKS_ROBIN_MINI] </option>
                                                <option value="BOARD_MKS_ROBIN_NANO">MKS Robin Nano (STM32F103VET6) [BOARD_MKS_ROBIN_NANO] </option>
                                                <option value="BOARD_MKS_ROBIN_NANO_V2">BOARD_MKS_ROBIN_NANO_V2 [BOARD_MKS_ROBIN_NANO_V2] </option>
                                                <option value="BOARD_MKS_ROBIN_LITE">MKS Robin Lite/Lite2 (STM32F103RCT6) [BOARD_MKS_ROBIN_LITE] </option>
                                                <option value="BOARD_MKS_ROBIN_LITE3">MKS Robin Lite3 (STM32F103RCT6) [BOARD_MKS_ROBIN_LITE3] </option>
                                                <option value="BOARD_MKS_ROBIN_PRO">MKS Robin Pro (STM32F103ZET6) [BOARD_MKS_ROBIN_PRO] </option>
                                                <option value="BOARD_MKS_ROBIN_E3">MKS Robin E3 (STM32F103RCT6) [BOARD_MKS_ROBIN_E3] </option>
                                                <option value="BOARD_MKS_ROBIN_E3_V1_1">MKS Robin E3 V1.1 (STM32F103RCT6) [BOARD_MKS_ROBIN_E3_V1_1] </option>
                                                <option value="BOARD_MKS_ROBIN_E3D">MKS Robin E3D (STM32F103RCT6) [BOARD_MKS_ROBIN_E3D] </option>
                                                <option value="BOARD_MKS_ROBIN_E3D_V1_1">MKS Robin E3D V1.1 (STM32F103RCT6) [BOARD_MKS_ROBIN_E3D_V1_1] </option>
                                                <option value="BOARD_MKS_ROBIN_E3P">MKS Robin E3p (STM32F103VET6) [BOARD_MKS_ROBIN_E3P] </option>
                                                <option value="BOARD_BTT_SKR_MINI_V1_1">BigTreeTech SKR Mini v1.1 (STM32F103RC) [BOARD_BTT_SKR_MINI_V1_1] </option>
                                                <option value="BOARD_BTT_SKR_MINI_E3_V1_0">BigTreeTech SKR Mini E3 (STM32F103RC) [BOARD_BTT_SKR_MINI_E3_V1_0] </option>
                                                <option value="BOARD_BTT_SKR_MINI_E3_V1_2">BigTreeTech SKR Mini E3 V1.2 (STM32F103RC) [BOARD_BTT_SKR_MINI_E3_V1_2] </option>
                                                <option value="BOARD_BTT_SKR_MINI_E3_V2_0">BigTreeTech SKR Mini E3 V2.0 (STM32F103RC) [BOARD_BTT_SKR_MINI_E3_V2_0] </option>
                                                <option value="BOARD_BTT_SKR_MINI_MZ_V1_0">BigTreeTech SKR Mini MZ V1.0 (STM32F103RC) [BOARD_BTT_SKR_MINI_MZ_V1_0] </option>
                                                <option value="BOARD_BTT_SKR_E3_DIP">BigTreeTech SKR E3 DIP V1.0 (STM32F103RC / STM32F103RE) [BOARD_BTT_SKR_E3_DIP] </option>
                                                <option value="BOARD_BTT_SKR_CR6">BigTreeTech SKR CR6 v1.0 (STM32F103RE) [BOARD_BTT_SKR_CR6] </option>
                                                <option value="BOARD_JGAURORA_A5S_A1">JGAurora A5S A1 (STM32F103ZET6) [BOARD_JGAURORA_A5S_A1] </option>
                                                <option value="BOARD_FYSETC_AIO_II">FYSETC AIO_II [BOARD_FYSETC_AIO_II] </option>
                                                <option value="BOARD_FYSETC_CHEETAH">FYSETC Cheetah [BOARD_FYSETC_CHEETAH] </option>
                                                <option value="BOARD_FYSETC_CHEETAH_V12">FYSETC Cheetah V1.2 [BOARD_FYSETC_CHEETAH_V12] </option>
                                                <option value="BOARD_LONGER3D_LK">Alfawise U20/U20+/U30 (Longer3D LK1/2) / STM32F103VET6 [BOARD_LONGER3D_LK] </option>
                                                <option value="BOARD_CCROBOT_MEEB_3DP">ccrobot-online.com MEEB_3DP (STM32F103RC) [BOARD_CCROBOT_MEEB_3DP] </option>
                                                <option value="BOARD_CHITU3D_V5">Chitu3D TronXY X5SA V5 Board [BOARD_CHITU3D_V5] </option>
                                                <option value="BOARD_CHITU3D_V6">Chitu3D TronXY X5SA V5 Board [BOARD_CHITU3D_V6] </option>    
                                                <option value="BOARD_CREALITY_V4">Creality v4.x (STM32F103RE) [BOARD_CREALITY_V4] </option>
                                                <option value="BOARD_CREALITY_V427">Creality v4.2.7 (STM32F103RE) [BOARD_CREALITY_V427] </option>
                                                <option value="BOARD_CREALITY_V4210">Creality v4.2.10 (STM32F103RE) as found in the CR-30 [BOARD_CREALITY_V4210] </option>
                                                <option value="BOARD_CREALITY_V431">Creality v4.3.1 (STM32F103RE) [BOARD_CREALITY_V431] </option>
                                                <option value="BOARD_CREALITY_V452">Creality v4.5.2 (STM32F103RE) [BOARD_CREALITY_V452] </option>
                                                <option value="BOARD_CREALITY_V453">Creality v4.5.3 (STM32F103RE) [BOARD_CREALITY_V453] </option>
                                                <option value="BOARD_TRIGORILLA_PRO">Trigorilla Pro (STM32F103ZET6) [BOARD_TRIGORILLA_PRO] </option>
                                                <option value="BOARD_FLY_MINI">FLYmaker FLY MINI (STM32F103RCT6) [BOARD_FLY_MINI] </option>
                                                <option value="BOARD_FLSUN_HISPEED">FLSUN HiSpeedV1 (STM32F103VET6) [BOARD_FLSUN_HISPEED] </option>
                                                <option value="BOARD_BEAST">STM32F103RET6 Libmaple-based controller [BOARD_BEAST] </option>
                                                <option value="BOARD_MINGDA_MPX_ARM_MINI">STM32F103ZET6 Mingda MD-16 [BOARD_MINGDA_MPX_ARM_MINI] </option>
                                                <option value="BOARD_GTM32_PRO_VD">STM32F103VET6 controller [BOARD_GTM32_PRO_VD] </option>
                                            </optgroup>

                                            <optgroup label="ARM Cortex-M4F">
                                                <option value="BOARD_TEENSY31_32">Teensy3.1 and Teensy3.2 [BOARD_TEENSY31_32] </option>
                                                <option value="BOARD_TEENSY35_36">Teensy3.5 and Teensy3.6 [BOARD_TEENSY35_36] </option>
                                            </optgroup>

                                            <optgroup label="STM32 ARM Cortex-M4F">
                                                <option value="BOARD_ARMED">Arm'ed STM32F4-based controller [BOARD_ARMED] </option>
                                                <option value="BOARD_RUMBA32_V1_0">RUMBA32 STM32F446VET6 based controller from Aus3D [BOARD_RUMBA32_V1_0] </option>
                                                <option value="BOARD_RUMBA32_V1_1">RUMBA32 STM32F446VET6 based controller from Aus3D [BOARD_RUMBA32_V1_1] </option>
                                                <option value="BOARD_RUMBA32_MKS">RUMBA32 STM32F446VET6 based controller from Makerbase [BOARD_RUMBA32_MKS] </option>
                                                <option value="BOARD_BLACK_STM32F407VE">BLACK_STM32F407VE [BOARD_BLACK_STM32F407VE] </option>
                                                <option value="BOARD_BLACK_STM32F407ZE">BLACK_STM32F407ZE [BOARD_BLACK_STM32F407ZE] </option>
                                                <option value="BOARD_STEVAL_3DP001V1">STEVAL-3DP001V1 3D PRINTER BOARD [BOARD_STEVAL_3DP001V1] </option>
                                                <option value="BOARD_BTT_SKR_PRO_V1_1">BigTreeTech SKR Pro v1.1 (STM32F407ZG) [BOARD_BTT_SKR_PRO_V1_1] </option>
                                                <option value="BOARD_BTT_SKR_PRO_V1_2">BigTreeTech SKR Pro v1.2 (STM32F407ZG) [BOARD_BTT_SKR_PRO_V1_2] </option>
                                                <option value="BOARD_BTT_BTT002_V1_0">BigTreeTech BTT002 v1.0 (STM32F407VE) [BOARD_BTT_BTT002_V1_0] </option>
                                                <option value="BOARD_BTT_E3_RRF">BigTreeTech E3 RRF (STM32F407VGT6) [BOARD_BTT_E3_RRF] </option>
                                                <option value="BOARD_BTT_SKR_V2_0_REV_A">BigTreeTech SKR v2.0 Rev A (STM32F407VGT6) [BOARD_BTT_SKR_V2_0_REV_A] </option>
                                                <option value="BOARD_BTT_SKR_V2_0_REV_B">BigTreeTech SKR v2.0 Rev B (STM32F407VGT6) [BOARD_BTT_SKR_V2_0_REV_B] </option>
                                                <option value="BOARD_BTT_GTR_V1_0">BigTreeTech GTR v1.0 (STM32F407IGT) [BOARD_BTT_GTR_V1_0] </option>
                                                <option value="BOARD_BTT_OCTOPUS_V1_0">BigTreeTech Octopus v1.0 (STM32F446ZET6) [BOARD_BTT_OCTOPUS_V1_0] </option>
                                                <option value="BOARD_BTT_OCTOPUS_V1_1">BigTreeTech Octopus v1.1 (STM32F446ZET6) [BOARD_BTT_OCTOPUS_V1_1] </option>
                                                <option value="BOARD_LERDGE_K">Lerdge K (STM32F407ZG) [BOARD_LERDGE_K] </option>
                                                <option value="BOARD_LERDGE_S">Lerdge S (STM32F407VE) [BOARD_LERDGE_S] </option>
                                                <option value="BOARD_LERDGE_X">Lerdge X (STM32F407VE) [BOARD_LERDGE_X] </option>
                                                <option value="BOARD_VAKE403D">VAkE 403D (STM32F446VET6) [BOARD_VAKE403D] </option>
                                                <option value="BOARD_FYSETC_S6">FYSETC S6 board [BOARD_FYSETC_S6] </option>
                                                <option value="BOARD_FYSETC_S6_V2_0">FYSETC S6 v2.0 board [BOARD_FYSETC_S6_V2_0] </option>
                                                <option value="BOARD_FYSETC_SPIDER">FYSETC Spider (STM32F446VET6) [BOARD_FYSETC_SPIDER] </option>
                                                <option value="BOARD_FLYF407ZG">FLYF407ZG board (STM32F407ZG) [BOARD_FLYF407ZG] </option>
                                                <option value="BOARD_MKS_ROBIN2">MKS_ROBIN2 (STM32F407ZE) [BOARD_MKS_ROBIN2] </option>
                                                <option value="BOARD_MKS_ROBIN_PRO_V2">MKS Robin Pro V2 (STM32F407VE) [BOARD_MKS_ROBIN_PRO_V2] </option>
                                                <option value="BOARD_MKS_ROBIN_NANO_V3">MKS Robin Nano V3 (STM32F407VG) [BOARD_MKS_ROBIN_NANO_V3] </option>
                                                <option value="BOARD_ANET_ET4">ANET ET4 V1.x (STM32F407VGT6) [BOARD_ANET_ET4] </option>
                                                <option value="BOARD_ANET_ET4P">ANET ET4P V1.x (STM32F407VGT6) [BOARD_ANET_ET4P] </option>
                                                <option value="BOARD_FYSETC_CHEETAH_V20">FYSETC Cheetah V2.0 [BOARD_FYSETC_CHEETAH_V20] </option>
                                            </optgroup>

                                            <optgroup label="ARM Cortex M7">
                                                <option value="BOARD_REMRAM_V1">RemRam v1 [BOARD_REMRAM_V1] </option>
                                                <option value="BOARD_TEENSY41">Teensy 4.1 [BOARD_TEENSY41] </option>
                                                <option value="BOARD_T41U5XBB">T41U5XBB Teensy 4.1 breakout board [BOARD_T41U5XBB] </option>
                                                <option value="BOARD_NUCLEO_F767ZI">ST NUCLEO-F767ZI Dev Board </option>
                                                <option value="BOARD_BTT_SKR_SE_BX">BigTreeTech SKR SE BX (STM32H743II) </option>
                                            </optgroup>

                                            <optgroup label="Espressif ESP32 WiFi">
                                                <option value="BOARD_ESPRESSIF_ESP32">Generic ESP32 [BOARD_ESPRESSIF_ESP32] </option>
                                                <option value="BOARD_MRR_ESPA">MRR ESPA board based on ESP32 (native pins only) [BOARD_MRR_ESPA] </option>
                                                <option value="BOARD_MRR_ESPE">MRR ESPE board based on ESP32 (with I2S stepper stream) [BOARD_MRR_ESPE] </option>
                                                <option value="BOARD_E4D_BOX">E4d@BOX [BOARD_E4D_BOX] </option>
                                                <option value="BOARD_FYSETC_E4">FYSETC E4 [BOARD_FYSETC_E4] </option>
                                            </optgroup>

                                            <optgroup label="SAMD51 ARM Cortex M4">
                                                <option value="BOARD_AGCM4_RAMPS_144">RAMPS 1.4.4 [BOARD_AGCM4_RAMPS_144] </option>
                                            </optgroup>
                                        </select>
                          
                        
                        
                        <br><br>
                        
                         <h6><label for="labelportaserial">Selecione a Porta Serial:[ 0, 1, 2, 3, 4, 5, 6, 7]</label></h6>
                        
                        <select class="form-control" name="portaserial">
                                            <option selected="selected" value="0">0</option>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                            <option value="6">6</option>
                                            <option value="7">7</option>
                                            <option value="desabilitado">Desabilitar</option>
                                        </select>
                        
                        <br><br>
                        
                          <h6><label for="labelbaudrate">Selecione o Baudrate:</label></h6>
                        
                        <select class="form-control" name="baudrate">
                                            <option value="2400">2400</option>
                                            <option value="9600">9600</option>
                                            <option value="19200">19200</option>
                                            <option value="38400">38400</option>
                                            <option value="57600">57600</option>
                                            <option value="115200">115200</option>
                                            <option selected="selected" value="250000">250000</option>
                                            <option value="500000">500000</option>
                                            <option value="1000000">1000000</option>
                                        </select>
                        <br><br>
                        
                        <input type="submit" value="Montar Firmware" class="btn btn-info waves-effect waves-light">
                        <a href="<%= request.getContextPath() %>/principal/compilamarlin.jsp" class="btn btn-success waves-effect waves-light">Compilar Marlin</a>
                        <input href="https://github.com/MarlinFirmware/Marlin/archive/2.1.2.1.zip" type="button" value="Download do Marlin 2.1.2.1" class="btn btn-primary waves-effect waves-light">
                       
                        
                       
                        
                        
                        
                        </form>
                         <div>
                            <div>
                               <div>
                                  <div>
                                     <div> 
                                       <div> 
                                         <div> 
                                           <div>  
                                            <div>
                                            
                                            	 <span id="mensagem">${mensagem}</span>
                                           
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
