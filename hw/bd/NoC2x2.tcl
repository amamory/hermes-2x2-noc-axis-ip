
################################################################
# This is a generated script based on design: NoC2x2
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source NoC2x2_script.tcl

set bCheckIPsPassed 1
##################################################################
# CHECK IPs
##################################################################
set bCheckIPs 1
if { $bCheckIPs == 1 } {
   set list_check_ips "\ 
user.org:user:RouterCC:1.0\
xilinx.com:ip:xlconstant:1.1\
"

   set list_ips_missing ""
   common::send_msg_id "BD_TCL-006" "INFO" "Checking if the following IPs exist in the project's IP catalog: $list_check_ips ."

   foreach ip_vlnv $list_check_ips {
      set ip_obj [get_ipdefs -all $ip_vlnv]
      if { $ip_obj eq "" } {
         lappend list_ips_missing $ip_vlnv
      }
   }

   if { $list_ips_missing ne "" } {
      catch {common::send_msg_id "BD_TCL-115" "ERROR" "The following IPs are not found in the IP Catalog:\n  $list_ips_missing\n\nResolution: Please add the repository containing the IP(s) to the project." }
      set bCheckIPsPassed 0
   }

}

if { $bCheckIPsPassed != 1 } {
  common::send_msg_id "BD_TCL-1003" "WARNING" "Will not continue with creation of design due to the error(s) above."
  return 3
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: NoC2x2
proc create_hier_cell_NoC2x2_1 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_NoC2x2_1() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 L_m_0000
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 L_m_0001
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 L_m_0100
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 L_m_0101
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 L_s_0000
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 L_s_0001
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 L_s_0100
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 L_s_0101

  # Create pins
  create_bd_pin -dir I -type clk clock
  create_bd_pin -dir I -type rst reset_n

  # Create instance: R0000, and set properties
  set R0000 [ create_bd_cell -type ip -vlnv user.org:user:RouterCC:1.0 R0000 ]
  set_property -dict [ list \
   CONFIG.address {0x0000} \
 ] $R0000

  # Create instance: R0001, and set properties
  set R0001 [ create_bd_cell -type ip -vlnv user.org:user:RouterCC:1.0 R0001 ]
  set_property -dict [ list \
   CONFIG.address {0x0001} \
 ] $R0001

  # Create instance: R0100, and set properties
  set R0100 [ create_bd_cell -type ip -vlnv user.org:user:RouterCC:1.0 R0100 ]
  set_property -dict [ list \
   CONFIG.address {0x0100} \
 ] $R0100

  # Create instance: R0101, and set properties
  set R0101 [ create_bd_cell -type ip -vlnv user.org:user:RouterCC:1.0 R0101 ]
  set_property -dict [ list \
   CONFIG.address {0x0101} \
 ] $R0101

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_0

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {32} \
 ] $xlconstant_1

  # Create instance: xlconstant_2, and set properties
  set xlconstant_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_2 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_2

  # Create instance: xlconstant_3, and set properties
  set xlconstant_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_3 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {32} \
 ] $xlconstant_3

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins L_s_0001] [get_bd_intf_pins R0001/L_s]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins L_m_0001] [get_bd_intf_pins R0001/L_m]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins L_s_0101] [get_bd_intf_pins R0101/L_s]
  connect_bd_intf_net -intf_net Conn4 [get_bd_intf_pins L_m_0101] [get_bd_intf_pins R0101/L_m]
  connect_bd_intf_net -intf_net Conn5 [get_bd_intf_pins L_s_0100] [get_bd_intf_pins R0100/L_s]
  connect_bd_intf_net -intf_net Conn6 [get_bd_intf_pins L_m_0100] [get_bd_intf_pins R0100/L_m]
  connect_bd_intf_net -intf_net Conn7 [get_bd_intf_pins L_s_0000] [get_bd_intf_pins R0000/L_s]
  connect_bd_intf_net -intf_net Conn8 [get_bd_intf_pins L_m_0000] [get_bd_intf_pins R0000/L_m]
  connect_bd_intf_net -intf_net R0000_E_m [get_bd_intf_pins R0000/E_m] [get_bd_intf_pins R0100/W_s]
  connect_bd_intf_net -intf_net R0000_N_m [get_bd_intf_pins R0000/N_m] [get_bd_intf_pins R0001/S_s]
  connect_bd_intf_net -intf_net R0001_E_m [get_bd_intf_pins R0001/E_m] [get_bd_intf_pins R0101/W_s]
  connect_bd_intf_net -intf_net R0001_S_m [get_bd_intf_pins R0000/N_s] [get_bd_intf_pins R0001/S_m]
  connect_bd_intf_net -intf_net R0100_N_m [get_bd_intf_pins R0100/N_m] [get_bd_intf_pins R0101/S_s]
  connect_bd_intf_net -intf_net R0100_W_m [get_bd_intf_pins R0000/E_s] [get_bd_intf_pins R0100/W_m]
  connect_bd_intf_net -intf_net R0101_S_m [get_bd_intf_pins R0100/N_s] [get_bd_intf_pins R0101/S_m]
  connect_bd_intf_net -intf_net R0101_W_m [get_bd_intf_pins R0001/E_s] [get_bd_intf_pins R0101/W_m]

  # Create port connections
  connect_bd_net -net clock_0_1 [get_bd_pins clock] [get_bd_pins R0000/clock] [get_bd_pins R0001/clock] [get_bd_pins R0100/clock] [get_bd_pins R0101/clock]
  connect_bd_net -net reset_0_1 [get_bd_pins reset_n] [get_bd_pins R0000/reset] [get_bd_pins R0001/reset] [get_bd_pins R0100/reset] [get_bd_pins R0101/reset]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins R0001/readyN_i] [get_bd_pins R0001/readyW_i] [get_bd_pins R0001/validN_i] [get_bd_pins R0001/validW_i] [get_bd_pins R0101/readyE_i] [get_bd_pins R0101/readyN_i] [get_bd_pins R0101/validE_i] [get_bd_pins R0101/validN_i] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins R0001/dataN_i] [get_bd_pins R0001/dataW_i] [get_bd_pins R0101/dataE_i] [get_bd_pins R0101/dataN_i] [get_bd_pins xlconstant_1/dout]
  connect_bd_net -net xlconstant_2_dout [get_bd_pins R0000/readyS_i] [get_bd_pins R0000/readyW_i] [get_bd_pins R0000/validS_i] [get_bd_pins R0000/validW_i] [get_bd_pins R0100/readyE_i] [get_bd_pins R0100/readyS_i] [get_bd_pins R0100/validE_i] [get_bd_pins R0100/validS_i] [get_bd_pins xlconstant_2/dout]
  connect_bd_net -net xlconstant_3_dout [get_bd_pins R0000/dataS_i] [get_bd_pins R0000/dataW_i] [get_bd_pins R0100/dataE_i] [get_bd_pins R0100/dataS_i] [get_bd_pins xlconstant_3/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set L_m_0000 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 L_m_0000 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {50000000} \
   ] $L_m_0000
  set L_m_0001 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 L_m_0001 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {50000000} \
   ] $L_m_0001
  set L_m_0100 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 L_m_0100 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {50000000} \
   ] $L_m_0100
  set L_m_0101 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 L_m_0101 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {50000000} \
   ] $L_m_0101
  set L_s_0000 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 L_s_0000 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {50000000} \
   CONFIG.HAS_TKEEP {0} \
   CONFIG.HAS_TLAST {0} \
   CONFIG.HAS_TREADY {1} \
   CONFIG.HAS_TSTRB {0} \
   CONFIG.LAYERED_METADATA {undef} \
   CONFIG.TDATA_NUM_BYTES {4} \
   CONFIG.TDEST_WIDTH {0} \
   CONFIG.TID_WIDTH {0} \
   CONFIG.TUSER_WIDTH {0} \
   ] $L_s_0000
  set L_s_0001 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 L_s_0001 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {50000000} \
   CONFIG.HAS_TKEEP {0} \
   CONFIG.HAS_TLAST {0} \
   CONFIG.HAS_TREADY {1} \
   CONFIG.HAS_TSTRB {0} \
   CONFIG.LAYERED_METADATA {undef} \
   CONFIG.TDATA_NUM_BYTES {4} \
   CONFIG.TDEST_WIDTH {0} \
   CONFIG.TID_WIDTH {0} \
   CONFIG.TUSER_WIDTH {0} \
   ] $L_s_0001
  set L_s_0100 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 L_s_0100 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {50000000} \
   CONFIG.HAS_TKEEP {0} \
   CONFIG.HAS_TLAST {0} \
   CONFIG.HAS_TREADY {1} \
   CONFIG.HAS_TSTRB {0} \
   CONFIG.LAYERED_METADATA {undef} \
   CONFIG.TDATA_NUM_BYTES {4} \
   CONFIG.TDEST_WIDTH {0} \
   CONFIG.TID_WIDTH {0} \
   CONFIG.TUSER_WIDTH {0} \
   ] $L_s_0100
  set L_s_0101 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 L_s_0101 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {50000000} \
   CONFIG.HAS_TKEEP {0} \
   CONFIG.HAS_TLAST {0} \
   CONFIG.HAS_TREADY {1} \
   CONFIG.HAS_TSTRB {0} \
   CONFIG.LAYERED_METADATA {undef} \
   CONFIG.TDATA_NUM_BYTES {4} \
   CONFIG.TDEST_WIDTH {0} \
   CONFIG.TID_WIDTH {0} \
   CONFIG.TUSER_WIDTH {0} \
   ] $L_s_0101

  # Create ports
  set clock [ create_bd_port -dir I -type clk clock ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_RESET {reset_n} \
   CONFIG.FREQ_HZ {50000000} \
 ] $clock
  set reset_n [ create_bd_port -dir I -type rst reset_n ]

  # Create instance: NoC2x2
  create_hier_cell_NoC2x2_1 [current_bd_instance .] NoC2x2

  # Create interface connections
  connect_bd_intf_net -intf_net L_s_0000_0_1 [get_bd_intf_ports L_s_0000] [get_bd_intf_pins NoC2x2/L_s_0000]
  connect_bd_intf_net -intf_net L_s_0001_0_1 [get_bd_intf_ports L_s_0001] [get_bd_intf_pins NoC2x2/L_s_0001]
  connect_bd_intf_net -intf_net L_s_0100_0_1 [get_bd_intf_ports L_s_0100] [get_bd_intf_pins NoC2x2/L_s_0100]
  connect_bd_intf_net -intf_net L_s_0101_0_1 [get_bd_intf_ports L_s_0101] [get_bd_intf_pins NoC2x2/L_s_0101]
  connect_bd_intf_net -intf_net NoC2x2_L_m_0000 [get_bd_intf_ports L_m_0000] [get_bd_intf_pins NoC2x2/L_m_0000]
  connect_bd_intf_net -intf_net NoC2x2_L_m_0001 [get_bd_intf_ports L_m_0001] [get_bd_intf_pins NoC2x2/L_m_0001]
  connect_bd_intf_net -intf_net NoC2x2_L_m_0100 [get_bd_intf_ports L_m_0100] [get_bd_intf_pins NoC2x2/L_m_0100]
  connect_bd_intf_net -intf_net NoC2x2_L_m_0101 [get_bd_intf_ports L_m_0101] [get_bd_intf_pins NoC2x2/L_m_0101]

  # Create port connections
  connect_bd_net -net clock_0_1 [get_bd_ports clock] [get_bd_pins NoC2x2/clock]
  connect_bd_net -net reset_n_0_1 [get_bd_ports reset_n] [get_bd_pins NoC2x2/reset_n]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

}
# End of create_root_design()




proc available_tcl_procs { } {
   puts "##################################################################"
   puts "# Available Tcl procedures to recreate hierarchical blocks:"
   puts "#"
   puts "#    create_hier_cell_NoC2x2_1 parentCell nameHier"
   puts "#    create_root_design"
   puts "#"
   puts "#"
   puts "# The following procedures will create hiearchical blocks with addressing "
   puts "# for IPs within those blocks and their sub-hierarchical blocks. Addressing "
   puts "# will not be handled outside those blocks:"
   puts "#"
   puts "#    create_root_design"
   puts "#"
   puts "##################################################################"
}

available_tcl_procs
