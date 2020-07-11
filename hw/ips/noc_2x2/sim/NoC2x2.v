//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
//Date        : Sat Jul 11 19:26:23 2020
//Host        : lsa running 64-bit Ubuntu 18.04.4 LTS
//Command     : generate_target NoC2x2.bd
//Design      : NoC2x2
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "NoC2x2,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=NoC2x2,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=9,numReposBlks=8,numNonXlnxBlks=4,numHierBlks=1,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "NoC2x2.hwdef" *) 
module NoC2x2
   (L_m_0000_tdata,
    L_m_0000_tlast,
    L_m_0000_tready,
    L_m_0000_tvalid,
    L_m_0001_tdata,
    L_m_0001_tlast,
    L_m_0001_tready,
    L_m_0001_tvalid,
    L_m_0100_tdata,
    L_m_0100_tlast,
    L_m_0100_tready,
    L_m_0100_tvalid,
    L_m_0101_tdata,
    L_m_0101_tlast,
    L_m_0101_tready,
    L_m_0101_tvalid,
    L_s_0000_tdata,
    L_s_0000_tready,
    L_s_0000_tvalid,
    L_s_0001_tdata,
    L_s_0001_tready,
    L_s_0001_tvalid,
    L_s_0100_tdata,
    L_s_0100_tready,
    L_s_0100_tvalid,
    L_s_0101_tdata,
    L_s_0101_tready,
    L_s_0101_tvalid,
    clock,
    reset_n);
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 L_m_0000 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME L_m_0000, CLK_DOMAIN design_1_clock_0, FREQ_HZ 50000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [31:0]L_m_0000_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 L_m_0000 TLAST" *) output L_m_0000_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 L_m_0000 TREADY" *) input L_m_0000_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 L_m_0000 TVALID" *) output L_m_0000_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 L_m_0001 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME L_m_0001, CLK_DOMAIN design_1_clock_0, FREQ_HZ 50000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [31:0]L_m_0001_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 L_m_0001 TLAST" *) output L_m_0001_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 L_m_0001 TREADY" *) input L_m_0001_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 L_m_0001 TVALID" *) output L_m_0001_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 L_m_0100 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME L_m_0100, CLK_DOMAIN design_1_clock_0, FREQ_HZ 50000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [31:0]L_m_0100_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 L_m_0100 TLAST" *) output L_m_0100_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 L_m_0100 TREADY" *) input L_m_0100_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 L_m_0100 TVALID" *) output L_m_0100_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 L_m_0101 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME L_m_0101, CLK_DOMAIN design_1_clock_0, FREQ_HZ 50000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [31:0]L_m_0101_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 L_m_0101 TLAST" *) output L_m_0101_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 L_m_0101 TREADY" *) input L_m_0101_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 L_m_0101 TVALID" *) output L_m_0101_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 L_s_0000 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME L_s_0000, CLK_DOMAIN design_1_clock_0, FREQ_HZ 50000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [31:0]L_s_0000_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 L_s_0000 TREADY" *) output L_s_0000_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 L_s_0000 TVALID" *) input L_s_0000_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 L_s_0001 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME L_s_0001, CLK_DOMAIN design_1_clock_0, FREQ_HZ 50000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [31:0]L_s_0001_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 L_s_0001 TREADY" *) output L_s_0001_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 L_s_0001 TVALID" *) input L_s_0001_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 L_s_0100 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME L_s_0100, CLK_DOMAIN design_1_clock_0, FREQ_HZ 50000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [31:0]L_s_0100_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 L_s_0100 TREADY" *) output L_s_0100_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 L_s_0100 TVALID" *) input L_s_0100_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 L_s_0101 TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME L_s_0101, CLK_DOMAIN design_1_clock_0, FREQ_HZ 50000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [31:0]L_s_0101_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 L_s_0101 TREADY" *) output L_s_0101_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 L_s_0101 TVALID" *) input L_s_0101_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLOCK, ASSOCIATED_BUSIF L_m_0000:L_m_0001:L_m_0100:L_m_0101:L_s_0000:L_s_0001:L_s_0100:L_s_0101, ASSOCIATED_RESET reset_n, CLK_DOMAIN design_1_clock_0, FREQ_HZ 50000000, PHASE 0.000" *) input clock;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_N, POLARITY ACTIVE_LOW" *) input reset_n;

  wire [31:0]L_s_0000_0_1_TDATA;
  wire L_s_0000_0_1_TREADY;
  wire L_s_0000_0_1_TVALID;
  wire [31:0]L_s_0001_0_1_TDATA;
  wire L_s_0001_0_1_TREADY;
  wire L_s_0001_0_1_TVALID;
  wire [31:0]L_s_0100_0_1_TDATA;
  wire L_s_0100_0_1_TREADY;
  wire L_s_0100_0_1_TVALID;
  wire [31:0]L_s_0101_0_1_TDATA;
  wire L_s_0101_0_1_TREADY;
  wire L_s_0101_0_1_TVALID;
  wire [31:0]NoC2x2_L_m_0000_TDATA;
  wire NoC2x2_L_m_0000_TLAST;
  wire NoC2x2_L_m_0000_TREADY;
  wire NoC2x2_L_m_0000_TVALID;
  wire [31:0]NoC2x2_L_m_0001_TDATA;
  wire NoC2x2_L_m_0001_TLAST;
  wire NoC2x2_L_m_0001_TREADY;
  wire NoC2x2_L_m_0001_TVALID;
  wire [31:0]NoC2x2_L_m_0100_TDATA;
  wire NoC2x2_L_m_0100_TLAST;
  wire NoC2x2_L_m_0100_TREADY;
  wire NoC2x2_L_m_0100_TVALID;
  wire [31:0]NoC2x2_L_m_0101_TDATA;
  wire NoC2x2_L_m_0101_TLAST;
  wire NoC2x2_L_m_0101_TREADY;
  wire NoC2x2_L_m_0101_TVALID;
  wire clock_0_1;
  wire reset_n_0_1;

  assign L_m_0000_tdata[31:0] = NoC2x2_L_m_0000_TDATA;
  assign L_m_0000_tlast = NoC2x2_L_m_0000_TLAST;
  assign L_m_0000_tvalid = NoC2x2_L_m_0000_TVALID;
  assign L_m_0001_tdata[31:0] = NoC2x2_L_m_0001_TDATA;
  assign L_m_0001_tlast = NoC2x2_L_m_0001_TLAST;
  assign L_m_0001_tvalid = NoC2x2_L_m_0001_TVALID;
  assign L_m_0100_tdata[31:0] = NoC2x2_L_m_0100_TDATA;
  assign L_m_0100_tlast = NoC2x2_L_m_0100_TLAST;
  assign L_m_0100_tvalid = NoC2x2_L_m_0100_TVALID;
  assign L_m_0101_tdata[31:0] = NoC2x2_L_m_0101_TDATA;
  assign L_m_0101_tlast = NoC2x2_L_m_0101_TLAST;
  assign L_m_0101_tvalid = NoC2x2_L_m_0101_TVALID;
  assign L_s_0000_0_1_TDATA = L_s_0000_tdata[31:0];
  assign L_s_0000_0_1_TVALID = L_s_0000_tvalid;
  assign L_s_0000_tready = L_s_0000_0_1_TREADY;
  assign L_s_0001_0_1_TDATA = L_s_0001_tdata[31:0];
  assign L_s_0001_0_1_TVALID = L_s_0001_tvalid;
  assign L_s_0001_tready = L_s_0001_0_1_TREADY;
  assign L_s_0100_0_1_TDATA = L_s_0100_tdata[31:0];
  assign L_s_0100_0_1_TVALID = L_s_0100_tvalid;
  assign L_s_0100_tready = L_s_0100_0_1_TREADY;
  assign L_s_0101_0_1_TDATA = L_s_0101_tdata[31:0];
  assign L_s_0101_0_1_TVALID = L_s_0101_tvalid;
  assign L_s_0101_tready = L_s_0101_0_1_TREADY;
  assign NoC2x2_L_m_0000_TREADY = L_m_0000_tready;
  assign NoC2x2_L_m_0001_TREADY = L_m_0001_tready;
  assign NoC2x2_L_m_0100_TREADY = L_m_0100_tready;
  assign NoC2x2_L_m_0101_TREADY = L_m_0101_tready;
  assign clock_0_1 = clock;
  assign reset_n_0_1 = reset_n;
  NoC2x2_imp_7KIO88 NoC2x2
       (.L_m_0000_tdata(NoC2x2_L_m_0000_TDATA),
        .L_m_0000_tlast(NoC2x2_L_m_0000_TLAST),
        .L_m_0000_tready(NoC2x2_L_m_0000_TREADY),
        .L_m_0000_tvalid(NoC2x2_L_m_0000_TVALID),
        .L_m_0001_tdata(NoC2x2_L_m_0001_TDATA),
        .L_m_0001_tlast(NoC2x2_L_m_0001_TLAST),
        .L_m_0001_tready(NoC2x2_L_m_0001_TREADY),
        .L_m_0001_tvalid(NoC2x2_L_m_0001_TVALID),
        .L_m_0100_tdata(NoC2x2_L_m_0100_TDATA),
        .L_m_0100_tlast(NoC2x2_L_m_0100_TLAST),
        .L_m_0100_tready(NoC2x2_L_m_0100_TREADY),
        .L_m_0100_tvalid(NoC2x2_L_m_0100_TVALID),
        .L_m_0101_tdata(NoC2x2_L_m_0101_TDATA),
        .L_m_0101_tlast(NoC2x2_L_m_0101_TLAST),
        .L_m_0101_tready(NoC2x2_L_m_0101_TREADY),
        .L_m_0101_tvalid(NoC2x2_L_m_0101_TVALID),
        .L_s_0000_tdata(L_s_0000_0_1_TDATA),
        .L_s_0000_tready(L_s_0000_0_1_TREADY),
        .L_s_0000_tvalid(L_s_0000_0_1_TVALID),
        .L_s_0001_tdata(L_s_0001_0_1_TDATA),
        .L_s_0001_tready(L_s_0001_0_1_TREADY),
        .L_s_0001_tvalid(L_s_0001_0_1_TVALID),
        .L_s_0100_tdata(L_s_0100_0_1_TDATA),
        .L_s_0100_tready(L_s_0100_0_1_TREADY),
        .L_s_0100_tvalid(L_s_0100_0_1_TVALID),
        .L_s_0101_tdata(L_s_0101_0_1_TDATA),
        .L_s_0101_tready(L_s_0101_0_1_TREADY),
        .L_s_0101_tvalid(L_s_0101_0_1_TVALID),
        .clock(clock_0_1),
        .reset_n(reset_n_0_1));
endmodule

module NoC2x2_imp_7KIO88
   (L_m_0000_tdata,
    L_m_0000_tlast,
    L_m_0000_tready,
    L_m_0000_tvalid,
    L_m_0001_tdata,
    L_m_0001_tlast,
    L_m_0001_tready,
    L_m_0001_tvalid,
    L_m_0100_tdata,
    L_m_0100_tlast,
    L_m_0100_tready,
    L_m_0100_tvalid,
    L_m_0101_tdata,
    L_m_0101_tlast,
    L_m_0101_tready,
    L_m_0101_tvalid,
    L_s_0000_tdata,
    L_s_0000_tready,
    L_s_0000_tvalid,
    L_s_0001_tdata,
    L_s_0001_tready,
    L_s_0001_tvalid,
    L_s_0100_tdata,
    L_s_0100_tready,
    L_s_0100_tvalid,
    L_s_0101_tdata,
    L_s_0101_tready,
    L_s_0101_tvalid,
    clock,
    reset_n);
  output [31:0]L_m_0000_tdata;
  output L_m_0000_tlast;
  input L_m_0000_tready;
  output L_m_0000_tvalid;
  output [31:0]L_m_0001_tdata;
  output L_m_0001_tlast;
  input L_m_0001_tready;
  output L_m_0001_tvalid;
  output [31:0]L_m_0100_tdata;
  output L_m_0100_tlast;
  input L_m_0100_tready;
  output L_m_0100_tvalid;
  output [31:0]L_m_0101_tdata;
  output L_m_0101_tlast;
  input L_m_0101_tready;
  output L_m_0101_tvalid;
  input [31:0]L_s_0000_tdata;
  output L_s_0000_tready;
  input L_s_0000_tvalid;
  input [31:0]L_s_0001_tdata;
  output L_s_0001_tready;
  input L_s_0001_tvalid;
  input [31:0]L_s_0100_tdata;
  output L_s_0100_tready;
  input L_s_0100_tvalid;
  input [31:0]L_s_0101_tdata;
  output L_s_0101_tready;
  input L_s_0101_tvalid;
  input clock;
  input reset_n;

  wire [31:0]Conn1_TDATA;
  wire Conn1_TREADY;
  wire Conn1_TVALID;
  wire [31:0]Conn2_TDATA;
  wire Conn2_TLAST;
  wire Conn2_TREADY;
  wire Conn2_TVALID;
  wire [31:0]Conn3_TDATA;
  wire Conn3_TREADY;
  wire Conn3_TVALID;
  wire [31:0]Conn4_TDATA;
  wire Conn4_TLAST;
  wire Conn4_TREADY;
  wire Conn4_TVALID;
  wire [31:0]Conn5_TDATA;
  wire Conn5_TREADY;
  wire Conn5_TVALID;
  wire [31:0]Conn6_TDATA;
  wire Conn6_TLAST;
  wire Conn6_TREADY;
  wire Conn6_TVALID;
  wire [31:0]Conn7_TDATA;
  wire Conn7_TREADY;
  wire Conn7_TVALID;
  wire [31:0]Conn8_TDATA;
  wire Conn8_TLAST;
  wire Conn8_TREADY;
  wire Conn8_TVALID;
  wire [31:0]R0000_E_m_TDATA;
  wire R0000_E_m_TREADY;
  wire R0000_E_m_TVALID;
  wire [31:0]R0000_N_m_TDATA;
  wire R0000_N_m_TREADY;
  wire R0000_N_m_TVALID;
  wire [31:0]R0001_E_m_TDATA;
  wire R0001_E_m_TREADY;
  wire R0001_E_m_TVALID;
  wire [31:0]R0001_S_m_TDATA;
  wire R0001_S_m_TREADY;
  wire R0001_S_m_TVALID;
  wire [31:0]R0100_N_m_TDATA;
  wire R0100_N_m_TREADY;
  wire R0100_N_m_TVALID;
  wire [31:0]R0100_W_m_TDATA;
  wire R0100_W_m_TREADY;
  wire R0100_W_m_TVALID;
  wire [31:0]R0101_S_m_TDATA;
  wire R0101_S_m_TREADY;
  wire R0101_S_m_TVALID;
  wire [31:0]R0101_W_m_TDATA;
  wire R0101_W_m_TREADY;
  wire R0101_W_m_TVALID;
  wire clock_0_1;
  wire reset_0_1;
  wire [0:0]xlconstant_0_dout;
  wire [31:0]xlconstant_1_dout;
  wire [0:0]xlconstant_2_dout;
  wire [31:0]xlconstant_3_dout;

  assign Conn1_TDATA = L_s_0001_tdata[31:0];
  assign Conn1_TVALID = L_s_0001_tvalid;
  assign Conn2_TREADY = L_m_0001_tready;
  assign Conn3_TDATA = L_s_0101_tdata[31:0];
  assign Conn3_TVALID = L_s_0101_tvalid;
  assign Conn4_TREADY = L_m_0101_tready;
  assign Conn5_TDATA = L_s_0100_tdata[31:0];
  assign Conn5_TVALID = L_s_0100_tvalid;
  assign Conn6_TREADY = L_m_0100_tready;
  assign Conn7_TDATA = L_s_0000_tdata[31:0];
  assign Conn7_TVALID = L_s_0000_tvalid;
  assign Conn8_TREADY = L_m_0000_tready;
  assign L_m_0000_tdata[31:0] = Conn8_TDATA;
  assign L_m_0000_tlast = Conn8_TLAST;
  assign L_m_0000_tvalid = Conn8_TVALID;
  assign L_m_0001_tdata[31:0] = Conn2_TDATA;
  assign L_m_0001_tlast = Conn2_TLAST;
  assign L_m_0001_tvalid = Conn2_TVALID;
  assign L_m_0100_tdata[31:0] = Conn6_TDATA;
  assign L_m_0100_tlast = Conn6_TLAST;
  assign L_m_0100_tvalid = Conn6_TVALID;
  assign L_m_0101_tdata[31:0] = Conn4_TDATA;
  assign L_m_0101_tlast = Conn4_TLAST;
  assign L_m_0101_tvalid = Conn4_TVALID;
  assign L_s_0000_tready = Conn7_TREADY;
  assign L_s_0001_tready = Conn1_TREADY;
  assign L_s_0100_tready = Conn5_TREADY;
  assign L_s_0101_tready = Conn3_TREADY;
  assign clock_0_1 = clock;
  assign reset_0_1 = reset_n;
  NoC2x2_R0000_0 R0000
       (.clock(clock_0_1),
        .dataE_i(R0100_W_m_TDATA),
        .dataE_o(R0000_E_m_TDATA),
        .dataL_i(Conn7_TDATA),
        .dataL_o(Conn8_TDATA),
        .dataN_i(R0001_S_m_TDATA),
        .dataN_o(R0000_N_m_TDATA),
        .dataS_i(xlconstant_3_dout),
        .dataW_i(xlconstant_3_dout),
        .lastL_o(Conn8_TLAST),
        .readyE_i(R0000_E_m_TREADY),
        .readyE_o(R0100_W_m_TREADY),
        .readyL_i(Conn8_TREADY),
        .readyL_o(Conn7_TREADY),
        .readyN_i(R0000_N_m_TREADY),
        .readyN_o(R0001_S_m_TREADY),
        .readyS_i(xlconstant_2_dout),
        .readyW_i(xlconstant_2_dout),
        .reset(reset_0_1),
        .validE_i(R0100_W_m_TVALID),
        .validE_o(R0000_E_m_TVALID),
        .validL_i(Conn7_TVALID),
        .validL_o(Conn8_TVALID),
        .validN_i(R0001_S_m_TVALID),
        .validN_o(R0000_N_m_TVALID),
        .validS_i(xlconstant_2_dout),
        .validW_i(xlconstant_2_dout));
  NoC2x2_R0001_0 R0001
       (.clock(clock_0_1),
        .dataE_i(R0101_W_m_TDATA),
        .dataE_o(R0001_E_m_TDATA),
        .dataL_i(Conn1_TDATA),
        .dataL_o(Conn2_TDATA),
        .dataN_i(xlconstant_1_dout),
        .dataS_i(R0000_N_m_TDATA),
        .dataS_o(R0001_S_m_TDATA),
        .dataW_i(xlconstant_1_dout),
        .lastL_o(Conn2_TLAST),
        .readyE_i(R0001_E_m_TREADY),
        .readyE_o(R0101_W_m_TREADY),
        .readyL_i(Conn2_TREADY),
        .readyL_o(Conn1_TREADY),
        .readyN_i(xlconstant_0_dout),
        .readyS_i(R0001_S_m_TREADY),
        .readyS_o(R0000_N_m_TREADY),
        .readyW_i(xlconstant_0_dout),
        .reset(reset_0_1),
        .validE_i(R0101_W_m_TVALID),
        .validE_o(R0001_E_m_TVALID),
        .validL_i(Conn1_TVALID),
        .validL_o(Conn2_TVALID),
        .validN_i(xlconstant_0_dout),
        .validS_i(R0000_N_m_TVALID),
        .validS_o(R0001_S_m_TVALID),
        .validW_i(xlconstant_0_dout));
  NoC2x2_R0100_0 R0100
       (.clock(clock_0_1),
        .dataE_i(xlconstant_3_dout),
        .dataL_i(Conn5_TDATA),
        .dataL_o(Conn6_TDATA),
        .dataN_i(R0101_S_m_TDATA),
        .dataN_o(R0100_N_m_TDATA),
        .dataS_i(xlconstant_3_dout),
        .dataW_i(R0000_E_m_TDATA),
        .dataW_o(R0100_W_m_TDATA),
        .lastL_o(Conn6_TLAST),
        .readyE_i(xlconstant_2_dout),
        .readyL_i(Conn6_TREADY),
        .readyL_o(Conn5_TREADY),
        .readyN_i(R0100_N_m_TREADY),
        .readyN_o(R0101_S_m_TREADY),
        .readyS_i(xlconstant_2_dout),
        .readyW_i(R0100_W_m_TREADY),
        .readyW_o(R0000_E_m_TREADY),
        .reset(reset_0_1),
        .validE_i(xlconstant_2_dout),
        .validL_i(Conn5_TVALID),
        .validL_o(Conn6_TVALID),
        .validN_i(R0101_S_m_TVALID),
        .validN_o(R0100_N_m_TVALID),
        .validS_i(xlconstant_2_dout),
        .validW_i(R0000_E_m_TVALID),
        .validW_o(R0100_W_m_TVALID));
  NoC2x2_R0101_0 R0101
       (.clock(clock_0_1),
        .dataE_i(xlconstant_1_dout),
        .dataL_i(Conn3_TDATA),
        .dataL_o(Conn4_TDATA),
        .dataN_i(xlconstant_1_dout),
        .dataS_i(R0100_N_m_TDATA),
        .dataS_o(R0101_S_m_TDATA),
        .dataW_i(R0001_E_m_TDATA),
        .dataW_o(R0101_W_m_TDATA),
        .lastL_o(Conn4_TLAST),
        .readyE_i(xlconstant_0_dout),
        .readyL_i(Conn4_TREADY),
        .readyL_o(Conn3_TREADY),
        .readyN_i(xlconstant_0_dout),
        .readyS_i(R0101_S_m_TREADY),
        .readyS_o(R0100_N_m_TREADY),
        .readyW_i(R0101_W_m_TREADY),
        .readyW_o(R0001_E_m_TREADY),
        .reset(reset_0_1),
        .validE_i(xlconstant_0_dout),
        .validL_i(Conn3_TVALID),
        .validL_o(Conn4_TVALID),
        .validN_i(xlconstant_0_dout),
        .validS_i(R0100_N_m_TVALID),
        .validS_o(R0101_S_m_TVALID),
        .validW_i(R0001_E_m_TVALID),
        .validW_o(R0101_W_m_TVALID));
  NoC2x2_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  NoC2x2_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
  NoC2x2_xlconstant_2_0 xlconstant_2
       (.dout(xlconstant_2_dout));
  NoC2x2_xlconstant_3_0 xlconstant_3
       (.dout(xlconstant_3_dout));
endmodule
