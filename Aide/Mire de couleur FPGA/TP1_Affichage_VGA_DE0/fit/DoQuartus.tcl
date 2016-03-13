# DoQuartus.tcl
# ----------------------------------------------------
# Tornado Exercise 1
# Complete Tcl script File :
# Project creation, assignments, compilation, download
# ----------------------------------------------------

# Can run this script from Quartus II Tcl console, or directly :
#  quartus_sh -t doquartus.tcl

set MyProj DE0_top

# ---- Load Quartus II Tcl Project package

package require ::quartus::project
package require ::quartus::flow

# ---- Introduction

set make_assignments 1
puts "\n====    TP1 VGA    ===="
puts   "====   Carte DE0   ====\n"

# ---- Check that the right project is open
if {[is_project_open]} {
  if {[string compare -nocase $quartus(project) $MyProj]} {
    puts "Error : another project is already opened."
    puts "Please close this project and try again."
    exit
  } else {
    puts "The project $MyProj was already open..."
  }
} else {
  # Only open if not already open
  if {[project_exists $MyProj]} {
    project_open -cmp $MyProj $MyProj
  } else {
    project_new $MyProj
  }
}

# -- remove the old rbf file (if exists)
if [file exists ${MyProj}.rbf]  {
  file delete  ${MyProj}.rbf
  }

# ---- Project Assignments (VHDL source files, order is IMPORTANT)

# set_global_assignment -name VHDL_FILE "../src/______.vhd"
  set_global_assignment -name VHDL_FILE "../src/countVH.vhd"
  set_global_assignment -name VHDL_FILE "../src/syncVH.vhd"
  set_global_assignment -name VHDL_FILE "../src/SyncGen.vhd"
  set_global_assignment -name VHDL_FILE "../src/pll_vga.vhd"
  set_global_assignment -name VHDL_FILE "../src/compteur_adresse.vhd"
  set_global_assignment -name VHDL_FILE "../src/ROM_image.vhd"
  set_global_assignment -name VHDL_FILE "../src/colours.vhd"
  set_global_assignment -name VHDL_FILE "../src/interface_vga.vhd"  
  set_global_assignment -name VHDL_FILE "../src/DE0_top.vhd"

# ---- Compiler Assignments for top
  set_project_settings -cmp $MyProj
  set_global_assignment -name COMPILATION_LEVEL FULL
  set_global_assignment -name FAMILY "Cyclone III"
  set_global_assignment -name FOCUS_ENTITY_NAME $MyProj
  set_global_assignment -name DEVICE EP3C16F484C6
  set_global_assignment -name USE_GENERATED_PHYSICAL_CONSTRAINTS OFF -section_id eda_palace
  set_global_assignment -name NOMINAL_CORE_SUPPLY_VOLTAGE 1.2V
  set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top
  set_global_assignment -name PARTITION_COLOR 14622752 -section_id Top
  set_global_assignment -name LL_ROOT_REGION ON -section_id "Root Region"
  set_global_assignment -name LL_MEMBER_STATE LOCKED -section_id "Root Region"
  
# ---- Pin assignments

set_location_assignment PIN_B1 -to LEDG[9]
set_location_assignment PIN_B2 -to LEDG[8]
set_location_assignment PIN_C2 -to LEDG[7]
set_location_assignment PIN_C1 -to LEDG[6]
set_location_assignment PIN_E1 -to LEDG[5]
set_location_assignment PIN_F2 -to LEDG[4]
set_location_assignment PIN_H1 -to LEDG[3]
set_location_assignment PIN_J3 -to LEDG[2]
set_location_assignment PIN_J2 -to LEDG[1]
set_location_assignment PIN_J1 -to LEDG[0]
set_location_assignment PIN_D2 -to SW[9]
set_location_assignment PIN_E4 -to SW[8]
set_location_assignment PIN_E3 -to SW[7]
set_location_assignment PIN_H7 -to SW[6]
set_location_assignment PIN_J7 -to SW[5]
set_location_assignment PIN_G5 -to SW[4]
set_location_assignment PIN_G4 -to SW[3]
set_location_assignment PIN_H6 -to SW[2]
set_location_assignment PIN_H5 -to SW[1]
set_location_assignment PIN_J6 -to SW[0]
set_location_assignment PIN_F1 -to KEY[2]
set_location_assignment PIN_G3 -to KEY[1]
set_location_assignment PIN_H2 -to KEY[0]
set_location_assignment PIN_R2 -to FL_ADDR[21]
set_location_assignment PIN_P3 -to FL_ADDR[20]
set_location_assignment PIN_P1 -to FL_ADDR[19]
set_location_assignment PIN_M6 -to FL_ADDR[18]
set_location_assignment PIN_M5 -to FL_ADDR[17]
set_location_assignment PIN_AA2 -to FL_ADDR[16]
set_location_assignment PIN_L6 -to FL_ADDR[15]
set_location_assignment PIN_L7 -to FL_ADDR[14]
set_location_assignment PIN_M1 -to FL_ADDR[13]
set_location_assignment PIN_M2 -to FL_ADDR[12]
set_location_assignment PIN_M3 -to FL_ADDR[11]
set_location_assignment PIN_N1 -to FL_ADDR[10]
set_location_assignment PIN_N2 -to FL_ADDR[9]
set_location_assignment PIN_P2 -to FL_ADDR[8]
set_location_assignment PIN_M4 -to FL_ADDR[7]
set_location_assignment PIN_M8 -to FL_ADDR[6]
set_location_assignment PIN_N6 -to FL_ADDR[5]
set_location_assignment PIN_N5 -to FL_ADDR[4]
set_location_assignment PIN_N7 -to FL_ADDR[3]
set_location_assignment PIN_P6 -to FL_ADDR[2]
set_location_assignment PIN_P5 -to FL_ADDR[1]
set_location_assignment PIN_P7 -to FL_ADDR[0]
set_location_assignment PIN_AA1 -to FL_BYTE_N
set_location_assignment PIN_N8 -to FL_CE_N
set_location_assignment PIN_R7 -to FL_DQ[0]
set_location_assignment PIN_P8 -to FL_DQ[1]
set_location_assignment PIN_R8 -to FL_DQ[2]
set_location_assignment PIN_U1 -to FL_DQ[3]
set_location_assignment PIN_V2 -to FL_DQ[4]
set_location_assignment PIN_V3 -to FL_DQ[5]
set_location_assignment PIN_W1 -to FL_DQ[6]
set_location_assignment PIN_Y1 -to FL_DQ[7]
set_location_assignment PIN_T5 -to FL_DQ[8]
set_location_assignment PIN_T7 -to FL_DQ[9]
set_location_assignment PIN_T4 -to FL_DQ[10]
set_location_assignment PIN_U2 -to FL_DQ[11]
set_location_assignment PIN_V1 -to FL_DQ[12]
set_location_assignment PIN_V4 -to FL_DQ[13]
set_location_assignment PIN_W2 -to FL_DQ[14]
set_location_assignment PIN_R6 -to FL_OE_N
set_location_assignment PIN_R1 -to FL_RST_N
set_location_assignment PIN_M7 -to FL_RY
set_location_assignment PIN_P4 -to FL_WE_N
set_location_assignment PIN_T3 -to FL_WP_N
set_location_assignment PIN_Y2 -to FL_DQ15_AM1
set_location_assignment PIN_U7 -to GPIO_0[31]
set_location_assignment PIN_V5 -to GPIO_0[30]
set_location_assignment PIN_W6 -to GPIO_0[29]
set_location_assignment PIN_W7 -to GPIO_0[28]
set_location_assignment PIN_V8 -to GPIO_0[27]
set_location_assignment PIN_T8 -to GPIO_0[26]
set_location_assignment PIN_W10 -to GPIO_0[25]
set_location_assignment PIN_Y10 -to GPIO_0[24]
set_location_assignment PIN_V11 -to GPIO_0[23]
set_location_assignment PIN_R10 -to GPIO_0[22]
set_location_assignment PIN_V12 -to GPIO_0[21]
set_location_assignment PIN_U13 -to GPIO_0[20]
set_location_assignment PIN_W13 -to GPIO_0[19]
set_location_assignment PIN_Y13 -to GPIO_0[18]
set_location_assignment PIN_U14 -to GPIO_0[17]
set_location_assignment PIN_V14 -to GPIO_0[16]
set_location_assignment PIN_AA4 -to GPIO_0[15]
set_location_assignment PIN_AB4 -to GPIO_0[14]
set_location_assignment PIN_AA5 -to GPIO_0[13]
set_location_assignment PIN_AB5 -to GPIO_0[12]
set_location_assignment PIN_AA8 -to GPIO_0[11]
set_location_assignment PIN_AB8 -to GPIO_0[10]
set_location_assignment PIN_AA10 -to GPIO_0[9]
set_location_assignment PIN_AB10 -to GPIO_0[8]
set_location_assignment PIN_AA13 -to GPIO_0[7]
set_location_assignment PIN_AB13 -to GPIO_0[6]
set_location_assignment PIN_AB14 -to GPIO_0[5]
set_location_assignment PIN_AA14 -to GPIO_0[4]
set_location_assignment PIN_AB15 -to GPIO_0[3]
set_location_assignment PIN_AA15 -to GPIO_0[2]
set_location_assignment PIN_AA16 -to GPIO_0[1]
set_location_assignment PIN_AB16 -to GPIO_0[0]
set_location_assignment PIN_AB12 -to GPIO_CLKIN_N0
set_location_assignment PIN_AA12 -to GPIO_CLKIN_P0
set_location_assignment PIN_AB3 -to GPIO_CLKOUT_N0
set_location_assignment PIN_AA3 -to GPIO_CLKOUT_P0
set_location_assignment PIN_AA11 -to GPIO_CLKIN_P1
set_location_assignment PIN_AB11 -to GPIO_CLKIN_N1
set_location_assignment PIN_T16 -to GPIO_CLKOUT_P1
set_location_assignment PIN_R16 -to GPIO_CLKOUT_N1
set_location_assignment PIN_V7 -to GPIO_1[31]
set_location_assignment PIN_V6 -to GPIO_1[30]
set_location_assignment PIN_U8 -to GPIO_1[29]
set_location_assignment PIN_Y7 -to GPIO_1[28]
set_location_assignment PIN_T9 -to GPIO_1[27]
set_location_assignment PIN_U9 -to GPIO_1[26]
set_location_assignment PIN_T10 -to GPIO_1[25]
set_location_assignment PIN_U10 -to GPIO_1[24]
set_location_assignment PIN_R12 -to GPIO_1[23]
set_location_assignment PIN_R11 -to GPIO_1[22]
set_location_assignment PIN_T12 -to GPIO_1[21]
set_location_assignment PIN_U12 -to GPIO_1[20]
set_location_assignment PIN_R14 -to GPIO_1[19]
set_location_assignment PIN_T14 -to GPIO_1[18]
set_location_assignment PIN_AB7 -to GPIO_1[17]
set_location_assignment PIN_AA7 -to GPIO_1[16]
set_location_assignment PIN_AA9 -to GPIO_1[15]
set_location_assignment PIN_AB9 -to GPIO_1[14]
set_location_assignment PIN_V15 -to GPIO_1[13]
set_location_assignment PIN_W15 -to GPIO_1[12]
set_location_assignment PIN_T15 -to GPIO_1[11]
set_location_assignment PIN_U15 -to GPIO_1[10]
set_location_assignment PIN_W17 -to GPIO_1[9]
set_location_assignment PIN_Y17 -to GPIO_1[8]
set_location_assignment PIN_AB17 -to GPIO_1[7]
set_location_assignment PIN_AA17 -to GPIO_1[6]
set_location_assignment PIN_AA18 -to GPIO_1[5]
set_location_assignment PIN_AB18 -to GPIO_1[4]
set_location_assignment PIN_AB19 -to GPIO_1[3]
set_location_assignment PIN_AA19 -to GPIO_1[2]
set_location_assignment PIN_AB20 -to GPIO_1[1]
set_location_assignment PIN_AA20 -to GPIO_1[0]
set_location_assignment PIN_P22 -to PS2_KBCLK
set_location_assignment PIN_P21 -to PS2_KBDAT
set_location_assignment PIN_R21 -to PS2_MSCLK
set_location_assignment PIN_R22 -to PS2_MSDAT
set_location_assignment PIN_U22 -to UART_RXD
set_location_assignment PIN_U21 -to UART_TXD
set_location_assignment PIN_V22 -to UART_RTS
set_location_assignment PIN_V21 -to UART_CTS
set_location_assignment PIN_Y21 -to SD_CLK
set_location_assignment PIN_Y22 -to SD_CMD
set_location_assignment PIN_AA22 -to SD_DAT0
set_location_assignment PIN_W21 -to SD_DAT3
set_location_assignment PIN_W20 -to SD_WP_N
set_location_assignment PIN_C20 -to LCD_DATA[7]
set_location_assignment PIN_D20 -to LCD_DATA[6]
set_location_assignment PIN_B21 -to LCD_DATA[5]
set_location_assignment PIN_B22 -to LCD_DATA[4]
set_location_assignment PIN_C21 -to LCD_DATA[3]
set_location_assignment PIN_C22 -to LCD_DATA[2]
set_location_assignment PIN_D21 -to LCD_DATA[1]
set_location_assignment PIN_D22 -to LCD_DATA[0]
set_location_assignment PIN_E22 -to LCD_RW
set_location_assignment PIN_F22 -to LCD_RS
set_location_assignment PIN_E21 -to LCD_EN
set_location_assignment PIN_F21 -to LCD_BLON
set_location_assignment PIN_J21 -to VGA_G[3]
set_location_assignment PIN_K17 -to VGA_G[2]
set_location_assignment PIN_J17 -to VGA_G[1]
set_location_assignment PIN_H22 -to VGA_G[0]
set_location_assignment PIN_L21 -to VGA_HS
set_location_assignment PIN_L22 -to VGA_VS
set_location_assignment PIN_H21 -to VGA_R[3]
set_location_assignment PIN_H20 -to VGA_R[2]
set_location_assignment PIN_H17 -to VGA_R[1]
set_location_assignment PIN_H19 -to VGA_R[0]
set_location_assignment PIN_K18 -to VGA_B[3]
set_location_assignment PIN_J22 -to VGA_B[2]
set_location_assignment PIN_K21 -to VGA_B[1]
set_location_assignment PIN_K22 -to VGA_B[0]
set_location_assignment PIN_G21 -to CLOCK_50
set_location_assignment PIN_E11 -to HEX0[0]
set_location_assignment PIN_F11 -to HEX0[1]
set_location_assignment PIN_H12 -to HEX0[2]
set_location_assignment PIN_H13 -to HEX0[3]
set_location_assignment PIN_G12 -to HEX0[4]
set_location_assignment PIN_F12 -to HEX0[5]
set_location_assignment PIN_F13 -to HEX0[6]
set_location_assignment PIN_D13 -to HEX0[7]
set_location_assignment PIN_A15 -to HEX1[6]
set_location_assignment PIN_E14 -to HEX1[5]
set_location_assignment PIN_B14 -to HEX1[4]
set_location_assignment PIN_A14 -to HEX1[3]
set_location_assignment PIN_C13 -to HEX1[2]
set_location_assignment PIN_B13 -to HEX1[1]
set_location_assignment PIN_A13 -to HEX1[0]
set_location_assignment PIN_B15 -to HEX1[7]
set_location_assignment PIN_F14 -to HEX2[6]
set_location_assignment PIN_B17 -to HEX2[5]
set_location_assignment PIN_A17 -to HEX2[4]
set_location_assignment PIN_E15 -to HEX2[3]
set_location_assignment PIN_B16 -to HEX2[2]
set_location_assignment PIN_A16 -to HEX2[1]
set_location_assignment PIN_D15 -to HEX2[0]
set_location_assignment PIN_A18 -to HEX2[7]
set_location_assignment PIN_G15 -to HEX3[6]
set_location_assignment PIN_D19 -to HEX3[5]
set_location_assignment PIN_C19 -to HEX3[4]
set_location_assignment PIN_B19 -to HEX3[3]
set_location_assignment PIN_A19 -to HEX3[2]
set_location_assignment PIN_F15 -to HEX3[1]
set_location_assignment PIN_B18 -to HEX3[0]
set_location_assignment PIN_G16 -to HEX3[7]
set_location_assignment PIN_G8 -to DRAM_CAS_N
set_location_assignment PIN_G7 -to DRAM_CS_N
set_location_assignment PIN_E5 -to DRAM_CLK
set_location_assignment PIN_E6 -to DRAM_CKE
set_location_assignment PIN_B5 -to DRAM_BA[0]
set_location_assignment PIN_A4 -to DRAM_BA[1]
set_location_assignment PIN_F10 -to DRAM_DQ[15]
set_location_assignment PIN_E10 -to DRAM_DQ[14]
set_location_assignment PIN_A10 -to DRAM_DQ[13]
set_location_assignment PIN_B10 -to DRAM_DQ[12]
set_location_assignment PIN_C10 -to DRAM_DQ[11]
set_location_assignment PIN_A9 -to DRAM_DQ[10]
set_location_assignment PIN_B9 -to DRAM_DQ[9]
set_location_assignment PIN_A8 -to DRAM_DQ[8]
set_location_assignment PIN_F8 -to DRAM_DQ[7]
set_location_assignment PIN_H9 -to DRAM_DQ[6]
set_location_assignment PIN_G9 -to DRAM_DQ[5]
set_location_assignment PIN_F9 -to DRAM_DQ[4]
set_location_assignment PIN_E9 -to DRAM_DQ[3]
set_location_assignment PIN_H10 -to DRAM_DQ[2]
set_location_assignment PIN_G10 -to DRAM_DQ[1]
set_location_assignment PIN_D10 -to DRAM_DQ[0]
set_location_assignment PIN_E7 -to DRAM_LDQM
set_location_assignment PIN_B8 -to DRAM_UDQM
set_location_assignment PIN_F7 -to DRAM_RAS_N
set_location_assignment PIN_D6 -to DRAM_WE_N
set_location_assignment PIN_B12 -to CLOCK_50_2
set_location_assignment PIN_C8 -to DRAM_ADDR[12]
set_location_assignment PIN_A7 -to DRAM_ADDR[11]
set_location_assignment PIN_B4 -to DRAM_ADDR[10]
set_location_assignment PIN_B7 -to DRAM_ADDR[9]
set_location_assignment PIN_C7 -to DRAM_ADDR[8]
set_location_assignment PIN_A6 -to DRAM_ADDR[7]
set_location_assignment PIN_B6 -to DRAM_ADDR[6]
set_location_assignment PIN_C6 -to DRAM_ADDR[5]
set_location_assignment PIN_A5 -to DRAM_ADDR[4]
set_location_assignment PIN_C3 -to DRAM_ADDR[3]
set_location_assignment PIN_B3 -to DRAM_ADDR[2]
set_location_assignment PIN_A3 -to DRAM_ADDR[1]
set_location_assignment PIN_C4 -to DRAM_ADDR[0]

set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to KEY[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to KEY[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to KEY[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[7]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[8]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[9]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[10]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[11]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[12]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[13]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[14]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[15]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_CS_N
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_CLK
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_CKE
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_CAS_N
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_BA[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_BA[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[7]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[8]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[9]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[10]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[11]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[12]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CLOCK_50_2
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CLOCK_50
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FL_CE_N
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FL_BYTE_N
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FL_ADDR[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FL_ADDR[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FL_ADDR[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FL_ADDR[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FL_ADDR[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FL_ADDR[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FL_ADDR[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FL_ADDR[7]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FL_ADDR[8]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FL_ADDR[9]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FL_ADDR[10]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FL_ADDR[11]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FL_ADDR[12]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FL_ADDR[13]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FL_ADDR[14]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FL_ADDR[15]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FL_ADDR[16]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FL_ADDR[17]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FL_ADDR[18]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FL_ADDR[19]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FL_ADDR[20]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FL_ADDR[21]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_WE_N
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_UDQM
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_RAS_N
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_LDQM
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_1[28]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_1[29]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_1[30]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_1[31]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_CLKOUT_N1
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_CLKOUT_P1
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_CLKIN_N1
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_CLKIN_P1
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_0[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_0[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_0[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_0[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_0[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_0[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_0[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_0[7]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_0[8]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_0[9]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_0[10]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_0[11]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_0[12]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_0[13]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_0[14]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_0[15]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_0[16]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_0[17]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_0[18]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_0[19]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_0[20]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_0[21]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_0[22]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_0[23]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_0[24]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_0[25]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_0[26]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_0[27]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_0[28]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_0[29]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_0[30]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_0[31]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_CLKOUT_N0
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_CLKOUT_P0
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_CLKIN_N0
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_CLKIN_P0
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FL_WP_N
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FL_WE_N
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FL_RY
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FL_RST_N
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FL_OE_N
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FL_DQ15_AM1
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FL_DQ[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FL_DQ[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FL_DQ[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FL_DQ[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FL_DQ[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FL_DQ[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FL_DQ[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FL_DQ[7]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FL_DQ[8]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FL_DQ[9]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FL_DQ[10]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FL_DQ[11]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FL_DQ[12]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FL_DQ[13]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FL_DQ[14]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX0[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX0[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX0[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX0[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX0[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_1[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_1[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_1[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_1[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_1[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_1[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_1[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_1[7]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_1[8]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_1[9]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_1[10]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_1[11]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_1[12]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_1[13]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_1[14]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_1[15]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_1[16]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_1[17]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_1[18]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_1[19]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_1[20]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_1[21]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_1[22]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_1[23]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_1[24]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_1[25]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_1[26]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to GPIO_1[27]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LCD_DATA[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LCD_DATA[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LCD_DATA[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LCD_DATA[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LCD_DATA[7]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LCD_BLON
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX3[7]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX3[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX3[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX3[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX3[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX3[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX3[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX3[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX2[7]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX2[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX2[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX2[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX2[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX2[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX2[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX2[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX1[7]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX1[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX1[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX1[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX1[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX1[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX1[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX1[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX0[7]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX0[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX0[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to UART_CTS
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SW[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SW[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SW[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SW[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SW[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SW[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SW[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SW[7]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SW[8]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SW[9]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SD_WP_N
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SD_DAT3
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SD_DAT0
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SD_CMD
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to SD_CLK
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to PS2_MSDAT
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to PS2_MSCLK
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to PS2_KBDAT
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to PS2_KBCLK
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDG[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDG[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDG[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDG[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDG[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDG[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDG[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDG[7]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDG[8]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDG[9]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LCD_RW
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LCD_RS
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LCD_EN
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LCD_DATA[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LCD_DATA[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LCD_DATA[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_VS
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_R[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_R[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_R[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_R[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_HS
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_G[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_G[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_G[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_G[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_B[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_B[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_B[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_B[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to UART_TXD
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to UART_RXD
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to UART_RTS



  #set_location_assignment -to Reset_n       Pin_H2
  
  #set_location_assignment -to CLOCK_50   Pin_G21
  #set_location_assignment -to CLOCK_50_2   Pin_B12
  #
  #set_location_assignment -to SW\[0\]    Pin_J6
  #set_location_assignment -to SW\[1\]    Pin_H5
  #set_location_assignment -to SW\[2\]    Pin_H6
  #set_location_assignment -to SW\[3\]    Pin_G4
  #set_location_assignment -to SW\[4\]    Pin_G5
  #set_location_assignment -to SW\[5\]    Pin_J7
  #set_location_assignment -to SW\[6\]    Pin_H7
  #set_location_assignment -to SW\[7\]    Pin_E3
  #set_location_assignment -to SW\[8\]    Pin_E4
  #set_location_assignment -to SW\[9\]    Pin_D2
  #
  #set_location_assignment -to BUTTON\[0\]    Pin_H2
  #set_location_assignment -to BUTTON\[1\]    Pin_G3
  #set_location_assignment -to BUTTON\[2\]    Pin_F1
  #
  #set_location_assignment -to LEDG\[0\]    Pin_J1
  #set_location_assignment -to LEDG\[1\]    Pin_J2
  #set_location_assignment -to LEDG\[2\]    Pin_J3
  #set_location_assignment -to LEDG\[3\]    Pin_H1
  #set_location_assignment -to LEDG\[4\]    Pin_F2
  #set_location_assignment -to LEDG\[5\]    Pin_E1
  #set_location_assignment -to LEDG\[6\]    Pin_C1
  #set_location_assignment -to LEDG\[7\]    Pin_C2
  #set_location_assignment -to LEDG\[8\]    Pin_B2
  #set_location_assignment -to LEDG\[9\]    Pin_B1
  #
  #set_location_assignment -to HEX0_D\[0\]    Pin_E11
  #set_location_assignment -to HEX0_D\[1\]    Pin_F11
  #set_location_assignment -to HEX0_D\[2\]    Pin_H12
  #set_location_assignment -to HEX0_D\[3\]    Pin_H13
  #set_location_assignment -to HEX0_D\[4\]    Pin_G12
  #set_location_assignment -to HEX0_D\[5\]    Pin_F12
  #set_location_assignment -to HEX0_D\[6\]    Pin_F13
  #
  #set_location_assignment -to HEX0_DP       Pin_D13
  #
  #set_location_assignment -to HEX1_D\[0\]    Pin_A13
  #set_location_assignment -to HEX1_D\[1\]    Pin_B13
  #set_location_assignment -to HEX1_D\[2\]    Pin_C13
  #set_location_assignment -to HEX1_D\[3\]    Pin_A14
  #set_location_assignment -to HEX1_D\[4\]    Pin_B14
  #set_location_assignment -to HEX1_D\[5\]    Pin_E14
  #set_location_assignment -to HEX1_D\[6\]    Pin_A15
  #
  #set_location_assignment -to HEX1_DP       Pin_B15
  #
  #set_location_assignment -to HEX2_D\[0\]    Pin_D15
  #set_location_assignment -to HEX2_D\[1\]    Pin_A16
  #set_location_assignment -to HEX2_D\[2\]    Pin_B16
  #set_location_assignment -to HEX2_D\[3\]    Pin_E15
  #set_location_assignment -to HEX2_D\[4\]    Pin_A17
  #set_location_assignment -to HEX2_D\[5\]    Pin_B17
  #set_location_assignment -to HEX2_D\[6\]    Pin_F14
  #
  #set_location_assignment -to HEX2_DP       Pin_A18
  #
  #set_location_assignment -to HEX3_D\[0\]    Pin_B18
  #set_location_assignment -to HEX3_D\[1\]    Pin_F15
  #set_location_assignment -to HEX3_D\[2\]    Pin_A19
  #set_location_assignment -to HEX3_D\[3\]    Pin_B19
  #set_location_assignment -to HEX3_D\[4\]    Pin_C19
  #set_location_assignment -to HEX3_D\[5\]    Pin_D19
  #set_location_assignment -to HEX3_D\[6\]    Pin_G15
  #
  #set_location_assignment -to HEX3_DP       Pin_G16
  #
  #
  #set_location_assignment -to GPIO0_D\[0\]   Pin_AB16
  #set_location_assignment -to GPIO0_D\[1\]   Pin_AA16
  #set_location_assignment -to GPIO0_D\[2\]   Pin_AA15
  #set_location_assignment -to GPIO0_D\[3\]   Pin_AB15
  #set_location_assignment -to GPIO0_D\[4\]   Pin_AA14
  #set_location_assignment -to GPIO0_D\[5\]   Pin_AB14
  #set_location_assignment -to GPIO0_D\[6\]   Pin_AB13
  #set_location_assignment -to GPIO0_D\[7\]   Pin_AA13
  #set_location_assignment -to GPIO0_D\[8\]   Pin_AB10
  #set_location_assignment -to GPIO0_D\[9\]   Pin_AA10
  #set_location_assignment -to GPIO0_D\[10\]   Pin_AB8
  #set_location_assignment -to GPIO0_D\[11\]   Pin_AA8
  #set_location_assignment -to GPIO0_D\[12\]   Pin_AB5
  #set_location_assignment -to GPIO0_D\[13\]   Pin_AA5
  #set_location_assignment -to GPIO0_D\[14\]   Pin_AB4
  #set_location_assignment -to GPIO0_D\[15\]   Pin_AA4
  #set_location_assignment -to GPIO0_D\[16\]   Pin_V14
  #set_location_assignment -to GPIO0_D\[17\]   Pin_U14
  #set_location_assignment -to GPIO0_D\[18\]   Pin_Y13
  #set_location_assignment -to GPIO0_D\[19\]   Pin_W13
  #set_location_assignment -to GPIO0_D\[20\]   Pin_U13
  #set_location_assignment -to GPIO0_D\[21\]   Pin_V12
  #set_location_assignment -to GPIO0_D\[22\]   Pin_R10
  #set_location_assignment -to GPIO0_D\[23\]   Pin_V11
  #set_location_assignment -to GPIO0_D\[24\]   Pin_Y10
  #set_location_assignment -to GPIO0_D\[25\]   Pin_W10
  #set_location_assignment -to GPIO0_D\[26\]   Pin_T8
  #set_location_assignment -to GPIO0_D\[27\]   Pin_V8
  #set_location_assignment -to GPIO0_D\[28\]   Pin_W7
  #set_location_assignment -to GPIO0_D\[29\]   Pin_W6
  #set_location_assignment -to GPIO0_D\[30\]   Pin_V5
  #set_location_assignment -to GPIO0_D\[31\]   Pin_U7
  #
  #set_location_assignment -to GPIO0_CLKIN\[0\]   Pin_AB12
  #set_location_assignment -to GPIO0_CLKIN\[1\]   Pin_AA12
  #
  #set_location_assignment -to GPIO0_CLKOUT\[0\]   Pin_AB3
  #set_location_assignment -to GPIO0_CLKOUT\[1\]   Pin_AA3
  #
  #set_location_assignment -to GPIO1_D\[0\]   Pin_AA20
  #set_location_assignment -to GPIO1_D\[1\]   Pin_AB20
  #set_location_assignment -to GPIO1_D\[2\]   Pin_AA19
  #set_location_assignment -to GPIO1_D\[3\]   Pin_AB19
  #set_location_assignment -to GPIO1_D\[4\]   Pin_AB18
  #set_location_assignment -to GPIO1_D\[5\]   Pin_AA18
  #set_location_assignment -to GPIO1_D\[6\]   Pin_AA17
  #set_location_assignment -to GPIO1_D\[7\]   Pin_AB17
  #set_location_assignment -to GPIO1_D\[8\]   Pin_Y17
  #set_location_assignment -to GPIO1_D\[9\]   Pin_W17
  #set_location_assignment -to GPIO1_D\[10\]   Pin_U15
  #set_location_assignment -to GPIO1_D\[11\]   Pin_T15
  #set_location_assignment -to GPIO1_D\[12\]   Pin_W15
  #set_location_assignment -to GPIO1_D\[13\]   Pin_V15
  #set_location_assignment -to GPIO1_D\[14\]   Pin_AB9
  #set_location_assignment -to GPIO1_D\[15\]   Pin_AA9
  #set_location_assignment -to GPIO1_D\[16\]   Pin_AA7
  #set_location_assignment -to GPIO1_D\[17\]   Pin_AB7
  #set_location_assignment -to GPIO1_D\[18\]   Pin_T14
  #set_location_assignment -to GPIO1_D\[19\]   Pin_R14
  #set_location_assignment -to GPIO1_D\[20\]   Pin_U12
  #set_location_assignment -to GPIO1_D\[21\]   Pin_T12
  #set_location_assignment -to GPIO1_D\[22\]   Pin_R11
  #set_location_assignment -to GPIO1_D\[23\]   Pin_R12
  #set_location_assignment -to GPIO1_D\[24\]   Pin_U10
  #set_location_assignment -to GPIO1_D\[25\]   Pin_T10
  #set_location_assignment -to GPIO1_D\[26\]   Pin_U9
  #set_location_assignment -to GPIO1_D\[27\]   Pin_T9
  #set_location_assignment -to GPIO1_D\[28\]   Pin_Y7
  #set_location_assignment -to GPIO1_D\[29\]   Pin_U8
  #set_location_assignment -to GPIO1_D\[30\]   Pin_V6
  #set_location_assignment -to GPIO1_D\[31\]   Pin_V7
  #
  #set_location_assignment -to GPIO1_CLKIN\[0\]   Pin_AB11
  #set_location_assignment -to GPIO1_CLKIN\[1\]   Pin_AA11
  #
  #set_location_assignment -to GPIO1_CLKOUT\[0\]   Pin_R16
  #set_location_assignment -to GPIO1_CLKOUT\[1\]   Pin_T16
  #
  #set_location_assignment -to VGA_R\[0\]   Pin_H19
  #set_location_assignment -to VGA_R\[1\]   Pin_H17
  #set_location_assignment -to VGA_R\[2\]   Pin_H20
  #set_location_assignment -to VGA_R\[3\]   Pin_H21
  #
  #set_location_assignment -to VGA_G\[0\]   Pin_H22
  #set_location_assignment -to VGA_G\[1\]   Pin_J17
  #set_location_assignment -to VGA_G\[2\]   Pin_K17
  #set_location_assignment -to VGA_G\[3\]   Pin_J21
  #
  #set_location_assignment -to VGA_B\[0\]   Pin_K22
  #set_location_assignment -to VGA_B\[1\]   Pin_K21
  #set_location_assignment -to VGA_B\[2\]   Pin_J22
  #set_location_assignment -to VGA_B\[3\]   Pin_K18
  #
  #set_location_assignment -to VGA_HS   Pin_L21
  #set_location_assignment -to VGA_VS   Pin_L22
  #
  #set_location_assignment -to UART_RXD   Pin_U22
  #set_location_assignment -to UART_TXD   Pin_U21
  #set_location_assignment -to UART_CTS   Pin_V21
  #set_location_assignment -to UART_RTS   Pin_V22
  #
  #set_location_assignment -to PS2_KBCLK   Pin_P22
  #set_location_assignment -to PS2_KBDAT   Pin_P21
  #set_location_assignment -to PS2_MSCLK   Pin_R21
  #set_location_assignment -to PS2_MSDAT   Pin_R22
  #
  #set_location_assignment -to SD_CLK    Pin_Y21
  #set_location_assignment -to SD_CMD    Pin_Y22
  #set_location_assignment -to SD_DAT0   Pin_AA22
  #set_location_assignment -to SD_DAT3   Pin_W21
  #set_location_assignment -to SD_WP_N   Pin_W20
  
  
  set_global_assignment -name ENABLE_ADVANCED_IO_TIMING ON
  set_global_assignment -name FORCE_CONFIGURATION_VCCIO ON
  set_global_assignment -name CYCLONEII_RESERVE_NCEO_AFTER_CONFIGURATION "USE AS REGULAR IO"
  
  set_global_assignment -name STRATIX_DEVICE_IO_STANDARD "2.5 V"
  
  set_instance_assignment -name FAST_INPUT_REGISTER ON -to *
  set_instance_assignment -name FAST_OUTPUT_REGISTER ON -to *
  set_instance_assignment -name TSU_REQUIREMENT "10 ns" -from * -to *

  set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -section_id Top
  
  # Make sure unused pins are not grounded !
  set_global_assignment -name RESERVE_ALL_UNUSED_PINS "AS INPUT TRI-STATED"

  # -- Global Clock et Fmax
  set_instance_assignment -name GLOBAL_SIGNAL "GLOBAL CLOCK" -to Clk
  set_global_assignment -name fmax_requirement 50MHz

  # -- Misc Compilation options
  set_global_assignment -name ON_CHIP_BITSTREAM_DECOMPRESSION ON
  set_global_assignment -name CYCLONE_CONFIGURATION_DEVICE EPCS4
  set_global_assignment -name GENERATE_RBF_FILE ON

  # -- Run Design Assistant
  set_global_assignment -name ENABLE_DRC_SETTINGS ON

  #---- Commit assignments
  export_assignments
  puts "Assignments done, starting compilation..."

  #---- Compile using ::quartus::flow
  execute_flow -compile
  if [file exists ${MyProj}.rbf]  {
    puts "\nCompilation apparently succeeded !\n"
    if { [file exists C:/ALTERA/12.1/quartus/bin/quartus_pgmw.exe]} {
   
      exec cmd.exe /c C:/ALTERA/12.1/quartus/bin/quartus_pgmw.exe ${MyProj}.sof
    
    } else {
      puts "Error: The programmer utility (programmer) was not found."
    }
    after 2000
    puts "End of script."
  } else {
    puts "\nCompilation failed !\nPlease analyze the error messages."
  }


