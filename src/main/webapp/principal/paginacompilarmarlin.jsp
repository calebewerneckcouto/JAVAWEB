
                     
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
                        <label for="novoValor">Selecione o Chipset:</label>
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
                        <input type="submit" value="Montar Firmware" class="btn btn-primary waves-effect waves-light">
                        <a href="<%= request.getContextPath() %>/principal/compilamarlin.jsp" class="btn btn-primary waves-effect waves-light">Compilar Marlin</a>
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
