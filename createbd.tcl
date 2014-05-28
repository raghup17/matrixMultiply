
################################################################
# This is a generated script based on design: matrixMultiply
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2013.3
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   puts "ERROR: This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source matrixMultiply_script.tcl

# If you do not already have a project created,
# you can create a project using the following command:
#    create_project project_1 myproj -part xc7z045ffg900-2
#    set_property BOARD xilinx.com:zynq:zc706:1.1 [current_project]


# CHANGE DESIGN NAME HERE
set design_name matrixMultiply

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# CHECKING IF PROJECT EXISTS
if { [get_projects -quiet] eq "" } {
   puts "ERROR: Please open or create a project!"
   return 1
}


# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
if { ${design_name} ne "" && ${cur_design} eq ${design_name} } {
   # Checks if design is empty or not
   set list_cells [get_bd_cells -quiet]

   if { $list_cells ne "" } {
      set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
      set nRet 1
   } else {
      puts "INFO: Constructing design in IPI design <$design_name>..."
   }
} else {

   if { [get_files -quiet ${design_name}.bd] eq "" } {
      puts "INFO: Currently there is no design <$design_name> in project, so creating one..."

      create_bd_design $design_name

      puts "INFO: Making design <$design_name> as current_bd_design."
      current_bd_design $design_name

   } else {
      set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
      set nRet 3
   }

}

puts "INFO: Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   puts $errMsg
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]
  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]

  # Create ports

  # Create instance: axi_bram_ctrl_0, and set properties
  set axi_bram_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:3.0 axi_bram_ctrl_0 ]
  set_property -dict [ list CONFIG.DATA_WIDTH {256}  ] $axi_bram_ctrl_0

  # Create instance: axi_bram_ctrl_1, and set properties
  set axi_bram_ctrl_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:3.0 axi_bram_ctrl_1 ]
  set_property -dict [ list CONFIG.DATA_WIDTH {256} CONFIG.SINGLE_PORT_BRAM {1}  ] $axi_bram_ctrl_1

  # Create instance: axi_bram_ctrl_2, and set properties
  set axi_bram_ctrl_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:3.0 axi_bram_ctrl_2 ]
  set_property -dict [ list CONFIG.DATA_WIDTH {256} CONFIG.SINGLE_PORT_BRAM {1}  ] $axi_bram_ctrl_2

  # Create instance: axi_bram_ctrl_3, and set properties
  set axi_bram_ctrl_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:3.0 axi_bram_ctrl_3 ]
  set_property -dict [ list CONFIG.DATA_WIDTH {256} CONFIG.SINGLE_PORT_BRAM {1}  ] $axi_bram_ctrl_3

  # Create instance: axi_bram_ctrl_4, and set properties
  set axi_bram_ctrl_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:3.0 axi_bram_ctrl_4 ]
  set_property -dict [ list CONFIG.DATA_WIDTH {256} CONFIG.SINGLE_PORT_BRAM {1}  ] $axi_bram_ctrl_4

  # Create instance: axi_bram_ctrl_5, and set properties
  set axi_bram_ctrl_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:3.0 axi_bram_ctrl_5 ]
  set_property -dict [ list CONFIG.DATA_WIDTH {256} CONFIG.SINGLE_PORT_BRAM {1}  ] $axi_bram_ctrl_5

  # Create instance: axi_bram_ctrl_6, and set properties
  set axi_bram_ctrl_6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:3.0 axi_bram_ctrl_6 ]
  set_property -dict [ list CONFIG.DATA_WIDTH {256} CONFIG.SINGLE_PORT_BRAM {1}  ] $axi_bram_ctrl_6

  # Create instance: axi_bram_ctrl_7, and set properties
  set axi_bram_ctrl_7 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:3.0 axi_bram_ctrl_7 ]
  set_property -dict [ list CONFIG.DATA_WIDTH {256} CONFIG.SINGLE_PORT_BRAM {1}  ] $axi_bram_ctrl_7

  # Create instance: axi_bram_ctrl_8, and set properties
  set axi_bram_ctrl_8 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:3.0 axi_bram_ctrl_8 ]
  set_property -dict [ list CONFIG.DATA_WIDTH {256} CONFIG.SINGLE_PORT_BRAM {1}  ] $axi_bram_ctrl_8

  # Create instance: axi_cdma_0, and set properties
  set axi_cdma_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_cdma:4.1 axi_cdma_0 ]
  set_property -dict [ list CONFIG.C_INCLUDE_SG {0} CONFIG.C_M_AXI_DATA_WIDTH {256}  ] $axi_cdma_0

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0 ]
  set_property -dict [ list CONFIG.NUM_MI {4} CONFIG.NUM_SI {5}  ] $axi_interconnect_0

  # Create instance: axi_interconnect_1, and set properties
  set axi_interconnect_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_1 ]
  set_property -dict [ list CONFIG.NUM_MI {1} CONFIG.NUM_SI {5}  ] $axi_interconnect_1

  # Create instance: axi_interconnect_2, and set properties
  set axi_interconnect_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_2 ]
  set_property -dict [ list CONFIG.NUM_MI {4} CONFIG.NUM_SI {5}  ] $axi_interconnect_2

  # Create instance: axi_interconnect_3, and set properties
  set axi_interconnect_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_3 ]
  set_property -dict [ list CONFIG.NUM_MI {4}  ] $axi_interconnect_3

  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.0 blk_mem_gen_0 ]
  set_property -dict [ list CONFIG.Memory_Type {True_Dual_Port_RAM}  ] $blk_mem_gen_0

  # Create instance: blk_mem_gen_1, and set properties
  set blk_mem_gen_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.0 blk_mem_gen_1 ]

  # Create instance: blk_mem_gen_2, and set properties
  set blk_mem_gen_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.0 blk_mem_gen_2 ]

  # Create instance: blk_mem_gen_3, and set properties
  set blk_mem_gen_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.0 blk_mem_gen_3 ]

  # Create instance: blk_mem_gen_4, and set properties
  set blk_mem_gen_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.0 blk_mem_gen_4 ]

  # Create instance: blk_mem_gen_5, and set properties
  set blk_mem_gen_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.0 blk_mem_gen_5 ]

  # Create instance: blk_mem_gen_6, and set properties
  set blk_mem_gen_6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.0 blk_mem_gen_6 ]

  # Create instance: blk_mem_gen_7, and set properties
  set blk_mem_gen_7 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.0 blk_mem_gen_7 ]

  # Create instance: blk_mem_gen_8, and set properties
  set blk_mem_gen_8 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.0 blk_mem_gen_8 ]

  # Create instance: mmult_top_0, and set properties
  set mmult_top_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:mmult_top:2.0 mmult_top_0 ]
  set_property -dict [ list CONFIG.C_M_AXI_A_TARGET_ADDR {0xC0000000} CONFIG.C_M_AXI_B_TARGET_ADDR {0xC2000000} CONFIG.C_M_AXI_C_TARGET_ADDR {0xC4000000}  ] $mmult_top_0

  # Create instance: mmult_top_1, and set properties
  set mmult_top_1 [ create_bd_cell -type ip -vlnv xilinx.com:hls:mmult_top:2.0 mmult_top_1 ]
  set_property -dict [ list CONFIG.C_M_AXI_A_TARGET_ADDR {0xC0000000} CONFIG.C_M_AXI_B_TARGET_ADDR {0xC6000000} CONFIG.C_M_AXI_C_TARGET_ADDR {0xC8000000}  ] $mmult_top_1

  # Create instance: mmult_top_2, and set properties
  set mmult_top_2 [ create_bd_cell -type ip -vlnv xilinx.com:hls:mmult_top:2.0 mmult_top_2 ]
  set_property -dict [ list CONFIG.C_M_AXI_A_TARGET_ADDR {0xC0000000} CONFIG.C_M_AXI_B_TARGET_ADDR {0xCA000000} CONFIG.C_M_AXI_C_TARGET_ADDR {0xCC000000}  ] $mmult_top_2

  # Create instance: mmult_top_3, and set properties
  set mmult_top_3 [ create_bd_cell -type ip -vlnv xilinx.com:hls:mmult_top:2.0 mmult_top_3 ]
  set_property -dict [ list CONFIG.C_M_AXI_A_TARGET_ADDR {0xC0000000} CONFIG.C_M_AXI_B_TARGET_ADDR {0xCE000000} CONFIG.C_M_AXI_C_TARGET_ADDR {0xD0000000}  ] $mmult_top_3

  # Create instance: proc_sys_reset, and set properties
  set proc_sys_reset [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset ]

  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.3 processing_system7_0 ]
  set_property -dict [ list CONFIG.PCW_USE_S_AXI_HP0 {1} CONFIG.preset {ZC706*}  ] $processing_system7_0

  # Create instance: processing_system7_0_axi_periph, and set properties
  set processing_system7_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 processing_system7_0_axi_periph ]
  set_property -dict [ list CONFIG.NUM_MI {5}  ] $processing_system7_0_axi_periph

  # Create interface connections
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_bram_porta [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA] [get_bd_intf_pins blk_mem_gen_0/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_bram_portb [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTB] [get_bd_intf_pins blk_mem_gen_0/BRAM_PORTB]
  connect_bd_intf_net -intf_net axi_bram_ctrl_1_bram_porta [get_bd_intf_pins axi_bram_ctrl_1/BRAM_PORTA] [get_bd_intf_pins blk_mem_gen_1/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_bram_ctrl_2_bram_porta [get_bd_intf_pins axi_bram_ctrl_2/BRAM_PORTA] [get_bd_intf_pins blk_mem_gen_2/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_bram_ctrl_3_bram_porta [get_bd_intf_pins axi_bram_ctrl_3/BRAM_PORTA] [get_bd_intf_pins blk_mem_gen_3/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_bram_ctrl_4_bram_porta [get_bd_intf_pins axi_bram_ctrl_4/BRAM_PORTA] [get_bd_intf_pins blk_mem_gen_4/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_bram_ctrl_5_bram_porta [get_bd_intf_pins axi_bram_ctrl_5/BRAM_PORTA] [get_bd_intf_pins blk_mem_gen_5/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_bram_ctrl_6_bram_porta [get_bd_intf_pins axi_bram_ctrl_6/BRAM_PORTA] [get_bd_intf_pins blk_mem_gen_6/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_bram_ctrl_7_bram_porta [get_bd_intf_pins axi_bram_ctrl_7/BRAM_PORTA] [get_bd_intf_pins blk_mem_gen_7/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_bram_ctrl_8_bram_porta [get_bd_intf_pins axi_bram_ctrl_8/BRAM_PORTA] [get_bd_intf_pins blk_mem_gen_8/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_cdma_0_m_axi [get_bd_intf_pins axi_cdma_0/M_AXI] [get_bd_intf_pins axi_interconnect_3/S00_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_m00_axi [get_bd_intf_pins axi_bram_ctrl_1/S_AXI] [get_bd_intf_pins axi_interconnect_0/M00_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_m01_axi [get_bd_intf_pins axi_bram_ctrl_2/S_AXI] [get_bd_intf_pins axi_interconnect_0/M01_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_m02_axi [get_bd_intf_pins axi_bram_ctrl_3/S_AXI] [get_bd_intf_pins axi_interconnect_0/M02_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_m03_axi [get_bd_intf_pins axi_bram_ctrl_4/S_AXI] [get_bd_intf_pins axi_interconnect_0/M03_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_1_m00_axi [get_bd_intf_pins axi_bram_ctrl_0/S_AXI] [get_bd_intf_pins axi_interconnect_1/M00_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_2_m00_axi [get_bd_intf_pins axi_bram_ctrl_5/S_AXI] [get_bd_intf_pins axi_interconnect_2/M00_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_2_m01_axi [get_bd_intf_pins axi_bram_ctrl_6/S_AXI] [get_bd_intf_pins axi_interconnect_2/M01_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_2_m02_axi [get_bd_intf_pins axi_bram_ctrl_7/S_AXI] [get_bd_intf_pins axi_interconnect_2/M02_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_2_m03_axi [get_bd_intf_pins axi_bram_ctrl_8/S_AXI] [get_bd_intf_pins axi_interconnect_2/M03_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_3_m00_axi [get_bd_intf_pins axi_interconnect_1/S00_AXI] [get_bd_intf_pins axi_interconnect_3/M00_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_3_m01_axi [get_bd_intf_pins axi_interconnect_0/S00_AXI] [get_bd_intf_pins axi_interconnect_3/M01_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_3_m02_axi [get_bd_intf_pins axi_interconnect_2/S00_AXI] [get_bd_intf_pins axi_interconnect_3/M02_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_3_m03_axi [get_bd_intf_pins axi_interconnect_3/M03_AXI] [get_bd_intf_pins processing_system7_0/S_AXI_HP0]
  connect_bd_intf_net -intf_net mmult_top_0_m_axi_a [get_bd_intf_pins axi_interconnect_1/S01_AXI] [get_bd_intf_pins mmult_top_0/M_AXI_A]
  connect_bd_intf_net -intf_net mmult_top_0_m_axi_b [get_bd_intf_pins axi_interconnect_0/S01_AXI] [get_bd_intf_pins mmult_top_0/M_AXI_B]
  connect_bd_intf_net -intf_net mmult_top_0_m_axi_c [get_bd_intf_pins axi_interconnect_0/S02_AXI] [get_bd_intf_pins mmult_top_0/M_AXI_C]
  connect_bd_intf_net -intf_net mmult_top_1_m_axi_a [get_bd_intf_pins axi_interconnect_1/S02_AXI] [get_bd_intf_pins mmult_top_1/M_AXI_A]
  connect_bd_intf_net -intf_net mmult_top_1_m_axi_b [get_bd_intf_pins axi_interconnect_0/S03_AXI] [get_bd_intf_pins mmult_top_1/M_AXI_B]
  connect_bd_intf_net -intf_net mmult_top_1_m_axi_c [get_bd_intf_pins axi_interconnect_0/S04_AXI] [get_bd_intf_pins mmult_top_1/M_AXI_C]
  connect_bd_intf_net -intf_net mmult_top_2_m_axi_a [get_bd_intf_pins axi_interconnect_1/S03_AXI] [get_bd_intf_pins mmult_top_2/M_AXI_A]
  connect_bd_intf_net -intf_net mmult_top_2_m_axi_b [get_bd_intf_pins axi_interconnect_2/S01_AXI] [get_bd_intf_pins mmult_top_2/M_AXI_B]
  connect_bd_intf_net -intf_net mmult_top_2_m_axi_c [get_bd_intf_pins axi_interconnect_2/S02_AXI] [get_bd_intf_pins mmult_top_2/M_AXI_C]
  connect_bd_intf_net -intf_net mmult_top_3_m_axi_a [get_bd_intf_pins axi_interconnect_1/S04_AXI] [get_bd_intf_pins mmult_top_3/M_AXI_A]
  connect_bd_intf_net -intf_net mmult_top_3_m_axi_b [get_bd_intf_pins axi_interconnect_2/S03_AXI] [get_bd_intf_pins mmult_top_3/M_AXI_B]
  connect_bd_intf_net -intf_net mmult_top_3_m_axi_c [get_bd_intf_pins axi_interconnect_2/S04_AXI] [get_bd_intf_pins mmult_top_3/M_AXI_C]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_m00_axi [get_bd_intf_pins axi_cdma_0/S_AXI_LITE] [get_bd_intf_pins processing_system7_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_m01_axi [get_bd_intf_pins mmult_top_0/S_AXI_CONTROL] [get_bd_intf_pins processing_system7_0_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_m02_axi [get_bd_intf_pins mmult_top_1/S_AXI_CONTROL] [get_bd_intf_pins processing_system7_0_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_m03_axi [get_bd_intf_pins mmult_top_2/S_AXI_CONTROL] [get_bd_intf_pins processing_system7_0_axi_periph/M03_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_m04_axi [get_bd_intf_pins mmult_top_3/S_AXI_CONTROL] [get_bd_intf_pins processing_system7_0_axi_periph/M04_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_ddr [get_bd_intf_ports DDR] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_fixed_io [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins processing_system7_0/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_0_m_axi_gp0 [get_bd_intf_pins processing_system7_0/M_AXI_GP0] [get_bd_intf_pins processing_system7_0_axi_periph/S00_AXI]

  # Create port connections
  connect_bd_net -net proc_sys_reset_interconnect_aresetn [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins axi_interconnect_1/ARESETN] [get_bd_pins axi_interconnect_2/ARESETN] [get_bd_pins axi_interconnect_3/ARESETN] [get_bd_pins proc_sys_reset/interconnect_aresetn] [get_bd_pins processing_system7_0_axi_periph/ARESETN]
  connect_bd_net -net proc_sys_reset_peripheral_aresetn [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn] [get_bd_pins axi_bram_ctrl_1/s_axi_aresetn] [get_bd_pins axi_bram_ctrl_2/s_axi_aresetn] [get_bd_pins axi_bram_ctrl_3/s_axi_aresetn] [get_bd_pins axi_bram_ctrl_4/s_axi_aresetn] [get_bd_pins axi_bram_ctrl_5/s_axi_aresetn] [get_bd_pins axi_bram_ctrl_6/s_axi_aresetn] [get_bd_pins axi_bram_ctrl_7/s_axi_aresetn] [get_bd_pins axi_bram_ctrl_8/s_axi_aresetn] [get_bd_pins axi_cdma_0/s_axi_lite_aresetn] [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins axi_interconnect_0/M01_ARESETN] [get_bd_pins axi_interconnect_0/M02_ARESETN] [get_bd_pins axi_interconnect_0/M03_ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN] [get_bd_pins axi_interconnect_0/S01_ARESETN] [get_bd_pins axi_interconnect_0/S02_ARESETN] [get_bd_pins axi_interconnect_0/S03_ARESETN] [get_bd_pins axi_interconnect_0/S04_ARESETN] [get_bd_pins axi_interconnect_1/M00_ARESETN] [get_bd_pins axi_interconnect_1/S00_ARESETN] [get_bd_pins axi_interconnect_1/S01_ARESETN] [get_bd_pins axi_interconnect_1/S02_ARESETN] [get_bd_pins axi_interconnect_1/S03_ARESETN] [get_bd_pins axi_interconnect_1/S04_ARESETN] [get_bd_pins axi_interconnect_2/M00_ARESETN] [get_bd_pins axi_interconnect_2/M01_ARESETN] [get_bd_pins axi_interconnect_2/M02_ARESETN] [get_bd_pins axi_interconnect_2/M03_ARESETN] [get_bd_pins axi_interconnect_2/S00_ARESETN] [get_bd_pins axi_interconnect_3/M00_ARESETN] [get_bd_pins axi_interconnect_3/M01_ARESETN] [get_bd_pins axi_interconnect_3/M02_ARESETN] [get_bd_pins axi_interconnect_3/M03_ARESETN] [get_bd_pins axi_interconnect_3/S00_ARESETN] [get_bd_pins mmult_top_0/aresetn] [get_bd_pins mmult_top_1/aresetn] [get_bd_pins mmult_top_2/aresetn] [get_bd_pins mmult_top_3/aresetn] [get_bd_pins proc_sys_reset/peripheral_aresetn] [get_bd_pins processing_system7_0_axi_periph/M00_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M01_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M02_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M03_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M04_ARESETN] [get_bd_pins processing_system7_0_axi_periph/S00_ARESETN]
  connect_bd_net -net processing_system7_0_fclk_clk0 [get_bd_pins axi_bram_ctrl_0/s_axi_aclk] [get_bd_pins axi_bram_ctrl_1/s_axi_aclk] [get_bd_pins axi_bram_ctrl_2/s_axi_aclk] [get_bd_pins axi_bram_ctrl_3/s_axi_aclk] [get_bd_pins axi_bram_ctrl_4/s_axi_aclk] [get_bd_pins axi_bram_ctrl_5/s_axi_aclk] [get_bd_pins axi_bram_ctrl_6/s_axi_aclk] [get_bd_pins axi_bram_ctrl_7/s_axi_aclk] [get_bd_pins axi_bram_ctrl_8/s_axi_aclk] [get_bd_pins axi_cdma_0/m_axi_aclk] [get_bd_pins axi_cdma_0/s_axi_lite_aclk] [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_interconnect_0/M01_ACLK] [get_bd_pins axi_interconnect_0/M02_ACLK] [get_bd_pins axi_interconnect_0/M03_ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK] [get_bd_pins axi_interconnect_0/S01_ACLK] [get_bd_pins axi_interconnect_0/S02_ACLK] [get_bd_pins axi_interconnect_0/S03_ACLK] [get_bd_pins axi_interconnect_0/S04_ACLK] [get_bd_pins axi_interconnect_1/ACLK] [get_bd_pins axi_interconnect_1/M00_ACLK] [get_bd_pins axi_interconnect_1/S00_ACLK] [get_bd_pins axi_interconnect_1/S01_ACLK] [get_bd_pins axi_interconnect_1/S02_ACLK] [get_bd_pins axi_interconnect_1/S03_ACLK] [get_bd_pins axi_interconnect_1/S04_ACLK] [get_bd_pins axi_interconnect_2/ACLK] [get_bd_pins axi_interconnect_2/M00_ACLK] [get_bd_pins axi_interconnect_2/M01_ACLK] [get_bd_pins axi_interconnect_2/M02_ACLK] [get_bd_pins axi_interconnect_2/M03_ACLK] [get_bd_pins axi_interconnect_2/S00_ACLK] [get_bd_pins axi_interconnect_3/ACLK] [get_bd_pins axi_interconnect_3/M00_ACLK] [get_bd_pins axi_interconnect_3/M01_ACLK] [get_bd_pins axi_interconnect_3/M02_ACLK] [get_bd_pins axi_interconnect_3/M03_ACLK] [get_bd_pins axi_interconnect_3/S00_ACLK] [get_bd_pins mmult_top_0/aclk] [get_bd_pins mmult_top_1/aclk] [get_bd_pins mmult_top_2/aclk] [get_bd_pins mmult_top_3/aclk] [get_bd_pins proc_sys_reset/slowest_sync_clk] [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins processing_system7_0/S_AXI_HP0_ACLK] [get_bd_pins processing_system7_0_axi_periph/ACLK] [get_bd_pins processing_system7_0_axi_periph/M00_ACLK] [get_bd_pins processing_system7_0_axi_periph/M01_ACLK] [get_bd_pins processing_system7_0_axi_periph/M02_ACLK] [get_bd_pins processing_system7_0_axi_periph/M03_ACLK] [get_bd_pins processing_system7_0_axi_periph/M04_ACLK] [get_bd_pins processing_system7_0_axi_periph/S00_ACLK]
  connect_bd_net -net processing_system7_0_fclk_reset0_n [get_bd_pins proc_sys_reset/ext_reset_in] [get_bd_pins processing_system7_0/FCLK_RESET0_N]

  # Create address segments
  create_bd_addr_seg -range 0x20000 -offset 0xC0000000 [get_bd_addr_spaces axi_cdma_0/Data] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0
  create_bd_addr_seg -range 0x20000 -offset 0xC2000000 [get_bd_addr_spaces axi_cdma_0/Data] [get_bd_addr_segs axi_bram_ctrl_1/S_AXI/Mem0] SEG_axi_bram_ctrl_1_Mem0
  create_bd_addr_seg -range 0x20000 -offset 0xC4000000 [get_bd_addr_spaces axi_cdma_0/Data] [get_bd_addr_segs axi_bram_ctrl_2/S_AXI/Mem0] SEG_axi_bram_ctrl_2_Mem0
  create_bd_addr_seg -range 0x20000 -offset 0xC6000000 [get_bd_addr_spaces axi_cdma_0/Data] [get_bd_addr_segs axi_bram_ctrl_3/S_AXI/Mem0] SEG_axi_bram_ctrl_3_Mem0
  create_bd_addr_seg -range 0x20000 -offset 0xC8000000 [get_bd_addr_spaces axi_cdma_0/Data] [get_bd_addr_segs axi_bram_ctrl_4/S_AXI/Mem0] SEG_axi_bram_ctrl_4_Mem0
  create_bd_addr_seg -range 0x20000 -offset 0xCA000000 [get_bd_addr_spaces axi_cdma_0/Data] [get_bd_addr_segs axi_bram_ctrl_5/S_AXI/Mem0] SEG_axi_bram_ctrl_5_Mem0
  create_bd_addr_seg -range 0x20000 -offset 0xCC000000 [get_bd_addr_spaces axi_cdma_0/Data] [get_bd_addr_segs axi_bram_ctrl_6/S_AXI/Mem0] SEG_axi_bram_ctrl_6_Mem0
  create_bd_addr_seg -range 0x20000 -offset 0xCE000000 [get_bd_addr_spaces axi_cdma_0/Data] [get_bd_addr_segs axi_bram_ctrl_7/S_AXI/Mem0] SEG_axi_bram_ctrl_7_Mem0
  create_bd_addr_seg -range 0x20000 -offset 0xD0000000 [get_bd_addr_spaces axi_cdma_0/Data] [get_bd_addr_segs axi_bram_ctrl_8/S_AXI/Mem0] SEG_axi_bram_ctrl_8_Mem0
  create_bd_addr_seg -range 0x40000000 -offset 0x0 [get_bd_addr_spaces axi_cdma_0/Data] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
  create_bd_addr_seg -range 0x20000 -offset 0xC0000000 [get_bd_addr_spaces mmult_top_0/Data] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0
  create_bd_addr_seg -range 0x20000 -offset 0xC2000000 [get_bd_addr_spaces mmult_top_0/Data] [get_bd_addr_segs axi_bram_ctrl_1/S_AXI/Mem0] SEG_axi_bram_ctrl_1_Mem0
  create_bd_addr_seg -range 0x20000 -offset 0xC4000000 [get_bd_addr_spaces mmult_top_0/Data] [get_bd_addr_segs axi_bram_ctrl_2/S_AXI/Mem0] SEG_axi_bram_ctrl_2_Mem0
  create_bd_addr_seg -range 0x20000 -offset 0xC0000000 [get_bd_addr_spaces mmult_top_1/Data] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0
  create_bd_addr_seg -range 0x20000 -offset 0xC6000000 [get_bd_addr_spaces mmult_top_1/Data] [get_bd_addr_segs axi_bram_ctrl_3/S_AXI/Mem0] SEG_axi_bram_ctrl_3_Mem0
  create_bd_addr_seg -range 0x20000 -offset 0xC8000000 [get_bd_addr_spaces mmult_top_1/Data] [get_bd_addr_segs axi_bram_ctrl_4/S_AXI/Mem0] SEG_axi_bram_ctrl_4_Mem0
  create_bd_addr_seg -range 0x20000 -offset 0xC0000000 [get_bd_addr_spaces mmult_top_2/Data] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0
  create_bd_addr_seg -range 0x20000 -offset 0xCA000000 [get_bd_addr_spaces mmult_top_2/Data] [get_bd_addr_segs axi_bram_ctrl_5/S_AXI/Mem0] SEG_axi_bram_ctrl_5_Mem0
  create_bd_addr_seg -range 0x20000 -offset 0xCC000000 [get_bd_addr_spaces mmult_top_2/Data] [get_bd_addr_segs axi_bram_ctrl_6/S_AXI/Mem0] SEG_axi_bram_ctrl_6_Mem0
  create_bd_addr_seg -range 0x20000 -offset 0xC0000000 [get_bd_addr_spaces mmult_top_3/Data] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0
  create_bd_addr_seg -range 0x20000 -offset 0xCE000000 [get_bd_addr_spaces mmult_top_3/Data] [get_bd_addr_segs axi_bram_ctrl_7/S_AXI/Mem0] SEG_axi_bram_ctrl_7_Mem0
  create_bd_addr_seg -range 0x20000 -offset 0xD0000000 [get_bd_addr_spaces mmult_top_3/Data] [get_bd_addr_segs axi_bram_ctrl_8/S_AXI/Mem0] SEG_axi_bram_ctrl_8_Mem0
  create_bd_addr_seg -range 0x10000 -offset 0x7E200000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_cdma_0/S_AXI_LITE/Reg] SEG_axi_cdma_0_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x43C00000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs mmult_top_0/S_AXI_CONTROL/Reg] SEG_mmult_top_0_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x43C10000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs mmult_top_1/S_AXI_CONTROL/Reg] SEG_mmult_top_1_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x43C20000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs mmult_top_2/S_AXI_CONTROL/Reg] SEG_mmult_top_2_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x43C30000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs mmult_top_3/S_AXI_CONTROL/Reg] SEG_mmult_top_3_Reg
  

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


