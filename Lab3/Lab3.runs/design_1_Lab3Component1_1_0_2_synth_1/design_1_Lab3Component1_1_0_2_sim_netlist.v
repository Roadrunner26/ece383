// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Apr 29 12:42:15 2025
// Host        : C26-5CG2151LB4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_Lab3Component1_1_0_2_sim_netlist.v
// Design      : design_1_Lab3Component1_1_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Audio_Codec_Wrapper
   (ready_sig_reg_0,
    ready_sig_reg_1,
    s00_axi_aresetn_0,
    ready_sig_reg_2,
    p_1_out,
    Q,
    \sdp_bl.ramb18_dp_bl.ram18_bl ,
    \D_R_O_int_reg[7] ,
    ac_mclk,
    ac_dac_sdata,
    LRCLK_reg,
    BCLK_int_reg,
    fromADCL,
    fromADCR,
    scl,
    sda,
    s00_axi_aresetn,
    switch,
    flagQ_reg,
    s00_axi_aclk,
    ac_adc_sdata,
    toADCR,
    toADCL,
    LBus_out,
    Rbus_out,
    lopt);
  output ready_sig_reg_0;
  output ready_sig_reg_1;
  output s00_axi_aresetn_0;
  output ready_sig_reg_2;
  output [0:0]p_1_out;
  output [1:0]Q;
  output \sdp_bl.ramb18_dp_bl.ram18_bl ;
  output [1:0]\D_R_O_int_reg[7] ;
  output ac_mclk;
  output ac_dac_sdata;
  output LRCLK_reg;
  output BCLK_int_reg;
  output [15:0]fromADCL;
  output [15:0]fromADCR;
  inout scl;
  inout sda;
  input s00_axi_aresetn;
  input [0:0]switch;
  input [0:0]flagQ_reg;
  input s00_axi_aclk;
  input ac_adc_sdata;
  input [2:0]toADCR;
  input [2:0]toADCL;
  input [14:0]LBus_out;
  input [14:0]Rbus_out;
  output lopt;

  wire BCLK_int_reg;
  wire [15:0]DO;
  wire [23:23]D_L_O_int;
  wire [23:23]D_R_O_int;
  wire [1:0]\D_R_O_int_reg[7] ;
  wire [14:0]LBus_out;
  wire LRCLK_reg;
  wire [1:0]Q;
  wire [14:0]Rbus_out;
  wire ac_adc_sdata;
  wire ac_dac_sdata;
  wire [2:0]ac_lrclk_count__0;
  wire ac_lrclk_sig_prev_reg_n_0;
  wire ac_mclk;
  wire audio_inout_n_3;
  wire audio_inout_n_4;
  wire audio_inout_n_5;
  wire audio_inout_n_6;
  wire audio_inout_n_7;
  wire clk_50;
  wire \count[9]_i_2_n_0 ;
  wire [9:0]count_reg;
  wire [0:0]flagQ_reg;
  wire [15:0]fromADCL;
  wire [15:0]fromADCR;
  wire lopt;
  wire [0:0]p_1_out;
  wire [9:0]plusOp;
  wire [17:2]readR;
  wire ready_sig_i_2_n_0;
  wire ready_sig_reg_0;
  wire ready_sig_reg_1;
  wire ready_sig_reg_2;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_aresetn_0;
  wire scl;
  wire sda;
  wire \sdp_bl.ramb18_dp_bl.ram18_bl ;
  wire [0:0]switch;
  wire [2:0]toADCL;
  wire [2:0]toADCR;

  FDRE \ac_lrclk_count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(audio_inout_n_4),
        .Q(ac_lrclk_count__0[0]),
        .R(1'b0));
  FDRE \ac_lrclk_count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(audio_inout_n_5),
        .Q(ac_lrclk_count__0[1]),
        .R(1'b0));
  FDRE \ac_lrclk_count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(audio_inout_n_3),
        .Q(ac_lrclk_count__0[2]),
        .R(1'b0));
  FDRE ac_lrclk_sig_prev_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(audio_inout_n_6),
        .Q(ac_lrclk_sig_prev_reg_n_0),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_ctl audio_inout
       (.BCLK_int_reg_0(BCLK_int_reg),
        .DOADO(DO),
        .\D_R_O_int_reg[23]_0 ({D_R_O_int,\D_R_O_int_reg[7] }),
        .LBus_out(LBus_out),
        .LRCLK_reg_0(LRCLK_reg),
        .Q({D_L_O_int,Q}),
        .Rbus_out(Rbus_out),
        .SR(s00_axi_aresetn_0),
        .ac_adc_sdata(ac_adc_sdata),
        .ac_dac_sdata(ac_dac_sdata),
        .ac_lrclk_count__0(ac_lrclk_count__0),
        .\ac_lrclk_count_reg[2] (audio_inout_n_7),
        .\ac_lrclk_count_reg[2]_0 (ac_lrclk_sig_prev_reg_n_0),
        .ac_lrclk_sig_prev_reg(audio_inout_n_6),
        .fromADCL(fromADCL),
        .fromADCR(fromADCR),
        .ready_sig_reg(ready_sig_i_2_n_0),
        .ready_sig_reg_0(ready_sig_reg_1),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_aresetn_0(audio_inout_n_3),
        .s00_axi_aresetn_1(audio_inout_n_4),
        .s00_axi_aresetn_2(audio_inout_n_5),
        .switch(switch),
        .toADCL(toADCL),
        .toADCR(toADCR),
        .\toADCR_reg[17] (readR));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_1 audiocodec_master_clock
       (.clk_in1(s00_axi_aclk),
        .clk_out1(ac_mclk),
        .clk_out2(clk_50),
        .lopt(lopt),
        .resetn(s00_axi_aresetn));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count_reg[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .I2(count_reg[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_1 
       (.I0(count_reg[2]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(count_reg[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count[4]_i_1 
       (.I0(count_reg[3]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(count_reg[2]),
        .I4(count_reg[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count[5]_i_1 
       (.I0(count_reg[4]),
        .I1(count_reg[2]),
        .I2(count_reg[0]),
        .I3(count_reg[1]),
        .I4(count_reg[3]),
        .I5(count_reg[5]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \count[6]_i_1 
       (.I0(\count[9]_i_2_n_0 ),
        .I1(count_reg[6]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \count[7]_i_1 
       (.I0(count_reg[6]),
        .I1(\count[9]_i_2_n_0 ),
        .I2(count_reg[7]),
        .O(plusOp[7]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \count[8]_i_1 
       (.I0(count_reg[7]),
        .I1(\count[9]_i_2_n_0 ),
        .I2(count_reg[6]),
        .I3(count_reg[8]),
        .O(plusOp[8]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \count[9]_i_1 
       (.I0(count_reg[8]),
        .I1(count_reg[6]),
        .I2(\count[9]_i_2_n_0 ),
        .I3(count_reg[7]),
        .I4(count_reg[9]),
        .O(plusOp[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \count[9]_i_2 
       (.I0(count_reg[4]),
        .I1(count_reg[2]),
        .I2(count_reg[0]),
        .I3(count_reg[1]),
        .I4(count_reg[3]),
        .I5(count_reg[5]),
        .O(\count[9]_i_2_n_0 ));
  FDRE \count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(ready_sig_reg_1),
        .D(plusOp[0]),
        .Q(count_reg[0]),
        .R(s00_axi_aresetn_0));
  FDRE \count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(ready_sig_reg_1),
        .D(plusOp[1]),
        .Q(count_reg[1]),
        .R(s00_axi_aresetn_0));
  FDRE \count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(ready_sig_reg_1),
        .D(plusOp[2]),
        .Q(count_reg[2]),
        .R(s00_axi_aresetn_0));
  FDRE \count_reg[3] 
       (.C(s00_axi_aclk),
        .CE(ready_sig_reg_1),
        .D(plusOp[3]),
        .Q(count_reg[3]),
        .R(s00_axi_aresetn_0));
  FDRE \count_reg[4] 
       (.C(s00_axi_aclk),
        .CE(ready_sig_reg_1),
        .D(plusOp[4]),
        .Q(count_reg[4]),
        .R(s00_axi_aresetn_0));
  FDRE \count_reg[5] 
       (.C(s00_axi_aclk),
        .CE(ready_sig_reg_1),
        .D(plusOp[5]),
        .Q(count_reg[5]),
        .R(s00_axi_aresetn_0));
  FDRE \count_reg[6] 
       (.C(s00_axi_aclk),
        .CE(ready_sig_reg_1),
        .D(plusOp[6]),
        .Q(count_reg[6]),
        .R(s00_axi_aresetn_0));
  FDRE \count_reg[7] 
       (.C(s00_axi_aclk),
        .CE(ready_sig_reg_1),
        .D(plusOp[7]),
        .Q(count_reg[7]),
        .R(s00_axi_aresetn_0));
  FDRE \count_reg[8] 
       (.C(s00_axi_aclk),
        .CE(ready_sig_reg_1),
        .D(plusOp[8]),
        .Q(count_reg[8]),
        .R(s00_axi_aresetn_0));
  FDRE \count_reg[9] 
       (.C(s00_axi_aclk),
        .CE(ready_sig_reg_1),
        .D(plusOp[9]),
        .Q(count_reg[9]),
        .R(s00_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    flagQ_i_1
       (.I0(ready_sig_reg_1),
        .I1(flagQ_reg),
        .O(ready_sig_reg_2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_init initialize_audio
       (.CLK(clk_50),
        .SR(s00_axi_aresetn_0),
        .s00_axi_aresetn(s00_axi_aresetn),
        .scl(scl),
        .sda(sda));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_unimacro_BRAM_SDP_MACRO leftChannelMemory
       (.DOADO(DO),
        .Q(count_reg),
        .SR(s00_axi_aresetn_0),
        .p_1_out(p_1_out),
        .s00_axi_aclk(s00_axi_aclk),
        .switch(switch),
        .\w_Lbus_out_reg[15] (D_L_O_int));
  LUT2 #(
    .INIT(4'h7)) 
    ready_sig_i_2
       (.I0(ac_lrclk_count__0[0]),
        .I1(ac_lrclk_count__0[1]),
        .O(ready_sig_i_2_n_0));
  FDRE ready_sig_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(audio_inout_n_7),
        .Q(ready_sig_reg_1),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_unimacro_BRAM_SDP_MACRO__parameterized0 rightChannelMemory
       (.Q(count_reg),
        .SR(s00_axi_aresetn_0),
        .s00_axi_aclk(s00_axi_aclk),
        .\sdp_bl.ramb18_dp_bl.ram18_bl_0 (readR),
        .\sdp_bl.ramb18_dp_bl.ram18_bl_1 (\sdp_bl.ramb18_dp_bl.ram18_bl ),
        .switch(switch),
        .\w_Rbus_out_reg[15] (D_R_O_int));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \toADCL[1]_i_1 
       (.I0(ready_sig_reg_1),
        .I1(switch),
        .O(ready_sig_reg_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FlagRegister
   (flagQOut,
    SS,
    flagQ_reg_0,
    s00_axi_aclk);
  output flagQOut;
  input [0:0]SS;
  input flagQ_reg_0;
  input s00_axi_aclk;

  wire [0:0]SS;
  wire flagQOut;
  wire flagQ_reg_0;
  wire s00_axi_aclk;

  FDRE flagQ_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(flagQ_reg_0),
        .Q(flagQOut),
        .R(SS));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Lab3Component1_1
   (tmds,
    tmdsb,
    ac_mclk,
    ac_dac_sdata,
    LRCLK_reg,
    BCLK_int_reg,
    flagQOut,
    axi_awready_reg,
    axi_rvalid_reg,
    axi_arready_reg,
    s00_axi_rdata,
    s00_axi_bvalid,
    s00_axi_wready,
    scl,
    sda,
    s00_axi_aresetn,
    btn,
    switch,
    s00_axi_aclk,
    ac_adc_sdata,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_rready,
    s00_axi_arvalid,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_wstrb,
    s00_axi_bready);
  output [3:0]tmds;
  output [3:0]tmdsb;
  output ac_mclk;
  output ac_dac_sdata;
  output LRCLK_reg;
  output BCLK_int_reg;
  output flagQOut;
  output axi_awready_reg;
  output axi_rvalid_reg;
  output axi_arready_reg;
  output [31:0]s00_axi_rdata;
  output s00_axi_bvalid;
  output s00_axi_wready;
  inout scl;
  inout sda;
  input s00_axi_aresetn;
  input [3:0]btn;
  input [3:0]switch;
  input s00_axi_aclk;
  input ac_adc_sdata;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_rready;
  input s00_axi_arvalid;
  input [4:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [4:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;

  wire BCLK_int_reg;
  wire LRCLK_reg;
  wire Lab3Component1_1_slave_lite_v1_0_S00_AXI_inst_n_43;
  wire Lab3Component1_1_slave_lite_v1_0_S00_AXI_inst_n_5;
  wire Lab3Component1_1_slave_lite_v1_0_S00_AXI_inst_n_6;
  wire ac_adc_sdata;
  wire ac_dac_sdata;
  wire ac_mclk;
  wire axi_arready_i_1_n_0;
  wire axi_arready_reg;
  wire axi_awready_i_2_n_0;
  wire axi_awready_reg;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg;
  wire axi_wready;
  wire axi_wready_i_1_n_0;
  wire [3:0]btn;
  wire flagQOut;
  wire s00_axi_aclk;
  wire [4:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [4:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire scl;
  wire sda;
  wire [1:0]state_read;
  wire [3:0]switch;
  wire [3:0]tmds;
  wire [3:0]tmdsb;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Lab3Component1_1_slave_lite_v1_0_S00_AXI Lab3Component1_1_slave_lite_v1_0_S00_AXI_inst
       (.BCLK_int_reg(BCLK_int_reg),
        .\FSM_onehot_state_write_reg[1]_0 (Lab3Component1_1_slave_lite_v1_0_S00_AXI_inst_n_5),
        .\FSM_onehot_state_write_reg[2]_0 (Lab3Component1_1_slave_lite_v1_0_S00_AXI_inst_n_6),
        .\FSM_onehot_state_write_reg[2]_1 (Lab3Component1_1_slave_lite_v1_0_S00_AXI_inst_n_43),
        .LRCLK_reg(LRCLK_reg),
        .ac_adc_sdata(ac_adc_sdata),
        .ac_dac_sdata(ac_dac_sdata),
        .ac_mclk(ac_mclk),
        .axi_arready_reg_0(axi_arready_reg),
        .axi_arready_reg_1(axi_arready_i_1_n_0),
        .axi_awready_reg_0(axi_awready_reg),
        .axi_awready_reg_1(axi_awready_i_2_n_0),
        .axi_bvalid_reg_0(axi_bvalid_i_1_n_0),
        .axi_rvalid_reg_0(axi_rvalid_reg),
        .axi_rvalid_reg_1(axi_rvalid_i_1_n_0),
        .axi_wready(axi_wready),
        .axi_wready_reg_0(axi_wready_i_1_n_0),
        .btn(btn),
        .flagQOut(flagQOut),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .scl(scl),
        .sda(sda),
        .state_read(state_read),
        .switch(switch),
        .tmds(tmds),
        .tmdsb(tmdsb));
  LUT6 #(
    .INIT(64'hFF55FFFF40554055)) 
    axi_arready_i_1
       (.I0(state_read[0]),
        .I1(s00_axi_rready),
        .I2(axi_rvalid_reg),
        .I3(state_read[1]),
        .I4(s00_axi_arvalid),
        .I5(axi_arready_reg),
        .O(axi_arready_i_1_n_0));
  LUT6 #(
    .INIT(64'hEEFFEAEAFFFFEAEA)) 
    axi_awready_i_2
       (.I0(axi_wready),
        .I1(s00_axi_wvalid),
        .I2(Lab3Component1_1_slave_lite_v1_0_S00_AXI_inst_n_6),
        .I3(s00_axi_awvalid),
        .I4(axi_awready_reg),
        .I5(Lab3Component1_1_slave_lite_v1_0_S00_AXI_inst_n_5),
        .O(axi_awready_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFABFF0000)) 
    axi_bvalid_i_1
       (.I0(axi_wready),
        .I1(Lab3Component1_1_slave_lite_v1_0_S00_AXI_inst_n_6),
        .I2(Lab3Component1_1_slave_lite_v1_0_S00_AXI_inst_n_5),
        .I3(s00_axi_bready),
        .I4(s00_axi_bvalid),
        .I5(Lab3Component1_1_slave_lite_v1_0_S00_AXI_inst_n_43),
        .O(axi_bvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'hA2A2A2A2FAAAAAAA)) 
    axi_rvalid_i_1
       (.I0(axi_rvalid_reg),
        .I1(s00_axi_rready),
        .I2(state_read[0]),
        .I3(axi_arready_reg),
        .I4(s00_axi_arvalid),
        .I5(state_read[1]),
        .O(axi_rvalid_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    axi_wready_i_1
       (.I0(axi_wready),
        .I1(s00_axi_wready),
        .O(axi_wready_i_1_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Lab3Component1_1_slave_lite_v1_0_S00_AXI
   (s00_axi_bvalid,
    axi_awready_reg_0,
    s00_axi_wready,
    axi_rvalid_reg_0,
    axi_arready_reg_0,
    \FSM_onehot_state_write_reg[1]_0 ,
    \FSM_onehot_state_write_reg[2]_0 ,
    axi_wready,
    state_read,
    s00_axi_rdata,
    flagQOut,
    \FSM_onehot_state_write_reg[2]_1 ,
    tmds,
    tmdsb,
    ac_mclk,
    ac_dac_sdata,
    LRCLK_reg,
    BCLK_int_reg,
    scl,
    sda,
    axi_bvalid_reg_0,
    s00_axi_aclk,
    axi_awready_reg_1,
    axi_wready_reg_0,
    axi_rvalid_reg_1,
    axi_arready_reg_1,
    s00_axi_aresetn,
    btn,
    switch,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_rready,
    s00_axi_arvalid,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_wstrb,
    ac_adc_sdata);
  output s00_axi_bvalid;
  output axi_awready_reg_0;
  output s00_axi_wready;
  output axi_rvalid_reg_0;
  output axi_arready_reg_0;
  output \FSM_onehot_state_write_reg[1]_0 ;
  output \FSM_onehot_state_write_reg[2]_0 ;
  output axi_wready;
  output [1:0]state_read;
  output [31:0]s00_axi_rdata;
  output flagQOut;
  output \FSM_onehot_state_write_reg[2]_1 ;
  output [3:0]tmds;
  output [3:0]tmdsb;
  output ac_mclk;
  output ac_dac_sdata;
  output LRCLK_reg;
  output BCLK_int_reg;
  inout scl;
  inout sda;
  input axi_bvalid_reg_0;
  input s00_axi_aclk;
  input axi_awready_reg_1;
  input axi_wready_reg_0;
  input axi_rvalid_reg_1;
  input axi_arready_reg_1;
  input s00_axi_aresetn;
  input [3:0]btn;
  input [3:0]switch;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_rready;
  input s00_axi_arvalid;
  input [4:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [4:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;
  input ac_adc_sdata;

  wire \Audio_Codec/rst ;
  wire BCLK_int_reg;
  wire \FSM_onehot_state_write[1]_i_1_n_0 ;
  wire \FSM_onehot_state_write[2]_i_1_n_0 ;
  wire \FSM_onehot_state_write_reg[1]_0 ;
  wire \FSM_onehot_state_write_reg[2]_0 ;
  wire \FSM_onehot_state_write_reg[2]_1 ;
  wire \FSM_sequential_state_read[0]_i_1_n_0 ;
  wire \FSM_sequential_state_read[1]_i_1_n_0 ;
  wire [15:0]LBus_out;
  wire LRCLK_reg;
  wire [15:0]Rbus_out;
  wire ac_adc_sdata;
  wire ac_dac_sdata;
  wire ac_mclk;
  wire \axi_araddr[6]_i_1_n_0 ;
  wire \axi_araddr_reg[2]_rep_n_0 ;
  wire \axi_araddr_reg[3]_rep_n_0 ;
  wire axi_arready_reg_0;
  wire axi_arready_reg_1;
  wire \axi_awaddr[6]_i_1_n_0 ;
  wire \axi_awaddr_reg_n_0_[2] ;
  wire \axi_awaddr_reg_n_0_[3] ;
  wire \axi_awaddr_reg_n_0_[4] ;
  wire \axi_awaddr_reg_n_0_[5] ;
  wire \axi_awaddr_reg_n_0_[6] ;
  wire axi_awready_reg_0;
  wire axi_awready_reg_1;
  wire axi_bvalid_reg_0;
  wire axi_rvalid_reg_0;
  wire axi_rvalid_reg_1;
  wire axi_wready;
  wire axi_wready_reg_0;
  wire [3:0]btn;
  wire controlUnit_n_0;
  wire controlUnit_n_2;
  wire controlUnit_n_5;
  wire [2:2]cw;
  wire datapath_n_36;
  wire flagQOut;
  wire [5:2]mem_logic;
  wire [1:0]\memory_counter/processQ ;
  wire [31:7]p_1_in;
  wire s00_axi_aclk;
  wire [4:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [4:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire \s00_axi_rdata[0]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_11_n_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[0]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_11_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[10]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[11]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[11]_INST_0_i_11_n_0 ;
  wire \s00_axi_rdata[11]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[11]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[11]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[11]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[11]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[11]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[11]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[11]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[11]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_11_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[12]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[13]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[13]_INST_0_i_11_n_0 ;
  wire \s00_axi_rdata[13]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[13]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[13]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[13]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[13]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[13]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[13]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[13]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[13]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[14]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[14]_INST_0_i_11_n_0 ;
  wire \s00_axi_rdata[14]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[14]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[14]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[14]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[14]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[14]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[14]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[14]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[14]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[15]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[15]_INST_0_i_11_n_0 ;
  wire \s00_axi_rdata[15]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[15]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[15]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[15]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[15]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[15]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[15]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[15]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[15]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[16]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[16]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[16]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[16]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[16]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[16]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[16]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[16]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[16]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[16]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[17]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[17]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[17]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[17]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[17]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[17]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[17]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[17]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[17]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[17]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[18]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[18]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[18]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[18]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[18]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[18]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[18]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[18]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[18]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[18]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[19]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[19]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[19]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[19]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[19]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[19]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[19]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[19]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[19]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[19]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_11_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[1]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[20]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[20]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[20]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[20]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[20]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[20]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[20]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[20]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[20]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[20]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[21]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[21]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[21]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[21]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[21]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[21]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[21]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[21]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[21]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[21]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[22]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[22]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[22]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[22]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[22]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[22]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[22]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[22]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[22]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[22]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[23]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[23]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[23]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[23]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[23]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[23]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[23]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[23]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[23]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[23]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[24]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[24]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[24]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[24]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[24]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[24]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[24]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[24]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[24]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[24]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[25]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[25]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[25]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[25]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[25]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[25]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[25]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[25]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[25]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[25]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[26]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[27]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[27]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[27]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[27]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[27]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[27]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[27]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[27]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[27]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[27]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[28]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[28]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[28]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[28]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[28]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[28]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[28]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[28]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[28]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[28]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[29]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[29]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[29]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[29]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[29]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[29]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[29]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[29]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[29]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[29]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_11_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_12_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[2]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[30]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[30]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[30]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[30]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[30]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[30]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[30]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[30]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[30]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[30]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[31]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_11_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_12_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[3]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_11_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_12_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[4]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_11_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_12_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[5]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_11_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_12_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[6]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_11_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_12_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[7]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_11_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_12_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[8]_INST_0_i_9_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_10_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_11_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_12_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_1_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_2_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_3_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_4_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_5_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_6_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_7_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_8_n_0 ;
  wire \s00_axi_rdata[9]_INST_0_i_9_n_0 ;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire scl;
  wire sda;
  wire [4:0]sel0;
  wire [31:0]slv_reg1;
  wire [31:0]slv_reg10;
  wire \slv_reg10[15]_i_1_n_0 ;
  wire \slv_reg10[23]_i_1_n_0 ;
  wire \slv_reg10[31]_i_1_n_0 ;
  wire \slv_reg10[31]_i_2_n_0 ;
  wire \slv_reg10[7]_i_1_n_0 ;
  wire [0:0]slv_reg11;
  wire \slv_reg11[15]_i_1_n_0 ;
  wire \slv_reg11[23]_i_1_n_0 ;
  wire \slv_reg11[31]_i_1_n_0 ;
  wire \slv_reg11[31]_i_2_n_0 ;
  wire \slv_reg11[7]_i_1_n_0 ;
  wire [31:1]slv_reg11__0;
  wire [31:0]slv_reg15;
  wire \slv_reg15[15]_i_1_n_0 ;
  wire \slv_reg15[23]_i_1_n_0 ;
  wire \slv_reg15[31]_i_1_n_0 ;
  wire \slv_reg15[31]_i_2_n_0 ;
  wire \slv_reg15[31]_i_4_n_0 ;
  wire \slv_reg15[31]_i_5_n_0 ;
  wire \slv_reg15[7]_i_1_n_0 ;
  wire [31:0]slv_reg16;
  wire \slv_reg16[15]_i_1_n_0 ;
  wire \slv_reg16[15]_i_2_n_0 ;
  wire \slv_reg16[23]_i_1_n_0 ;
  wire \slv_reg16[23]_i_2_n_0 ;
  wire \slv_reg16[31]_i_1_n_0 ;
  wire \slv_reg16[31]_i_2_n_0 ;
  wire \slv_reg16[31]_i_3_n_0 ;
  wire \slv_reg16[7]_i_1_n_0 ;
  wire \slv_reg16[7]_i_2_n_0 ;
  wire [31:0]slv_reg17;
  wire \slv_reg17[15]_i_1_n_0 ;
  wire \slv_reg17[23]_i_1_n_0 ;
  wire \slv_reg17[31]_i_1_n_0 ;
  wire \slv_reg17[31]_i_2_n_0 ;
  wire \slv_reg17[7]_i_1_n_0 ;
  wire [31:0]slv_reg18;
  wire \slv_reg18[15]_i_1_n_0 ;
  wire \slv_reg18[23]_i_1_n_0 ;
  wire \slv_reg18[31]_i_1_n_0 ;
  wire \slv_reg18[31]_i_2_n_0 ;
  wire \slv_reg18[7]_i_1_n_0 ;
  wire [31:0]slv_reg19;
  wire \slv_reg19[15]_i_1_n_0 ;
  wire \slv_reg19[23]_i_1_n_0 ;
  wire \slv_reg19[31]_i_1_n_0 ;
  wire \slv_reg19[31]_i_2_n_0 ;
  wire \slv_reg19[7]_i_1_n_0 ;
  wire \slv_reg1[31]_i_2_n_0 ;
  wire [31:0]slv_reg2;
  wire [31:0]slv_reg20;
  wire \slv_reg20[15]_i_1_n_0 ;
  wire \slv_reg20[15]_i_2_n_0 ;
  wire \slv_reg20[23]_i_1_n_0 ;
  wire \slv_reg20[23]_i_2_n_0 ;
  wire \slv_reg20[31]_i_1_n_0 ;
  wire \slv_reg20[31]_i_2_n_0 ;
  wire \slv_reg20[7]_i_1_n_0 ;
  wire \slv_reg20[7]_i_2_n_0 ;
  wire [31:0]slv_reg21;
  wire \slv_reg21[15]_i_1_n_0 ;
  wire \slv_reg21[23]_i_1_n_0 ;
  wire \slv_reg21[31]_i_1_n_0 ;
  wire \slv_reg21[7]_i_1_n_0 ;
  wire [31:0]slv_reg22;
  wire \slv_reg22[15]_i_1_n_0 ;
  wire \slv_reg22[23]_i_1_n_0 ;
  wire \slv_reg22[31]_i_1_n_0 ;
  wire \slv_reg22[7]_i_1_n_0 ;
  wire [31:0]slv_reg23;
  wire \slv_reg23[15]_i_1_n_0 ;
  wire \slv_reg23[23]_i_1_n_0 ;
  wire \slv_reg23[31]_i_1_n_0 ;
  wire \slv_reg23[7]_i_1_n_0 ;
  wire [31:0]slv_reg24;
  wire \slv_reg24[15]_i_1_n_0 ;
  wire \slv_reg24[23]_i_1_n_0 ;
  wire \slv_reg24[31]_i_1_n_0 ;
  wire \slv_reg24[31]_i_2_n_0 ;
  wire \slv_reg24[7]_i_1_n_0 ;
  wire [31:0]slv_reg25;
  wire \slv_reg25[15]_i_1_n_0 ;
  wire \slv_reg25[23]_i_1_n_0 ;
  wire \slv_reg25[31]_i_1_n_0 ;
  wire \slv_reg25[31]_i_2_n_0 ;
  wire \slv_reg25[7]_i_1_n_0 ;
  wire [31:0]slv_reg26;
  wire \slv_reg26[15]_i_1_n_0 ;
  wire \slv_reg26[23]_i_1_n_0 ;
  wire \slv_reg26[31]_i_1_n_0 ;
  wire \slv_reg26[31]_i_2_n_0 ;
  wire \slv_reg26[7]_i_1_n_0 ;
  wire [31:0]slv_reg27;
  wire \slv_reg27[15]_i_1_n_0 ;
  wire \slv_reg27[23]_i_1_n_0 ;
  wire \slv_reg27[31]_i_1_n_0 ;
  wire \slv_reg27[31]_i_2_n_0 ;
  wire \slv_reg27[7]_i_1_n_0 ;
  wire [31:0]slv_reg28;
  wire \slv_reg28[15]_i_1_n_0 ;
  wire \slv_reg28[23]_i_1_n_0 ;
  wire \slv_reg28[31]_i_1_n_0 ;
  wire \slv_reg28[7]_i_1_n_0 ;
  wire [31:0]slv_reg29;
  wire \slv_reg29[15]_i_1_n_0 ;
  wire \slv_reg29[23]_i_1_n_0 ;
  wire \slv_reg29[31]_i_1_n_0 ;
  wire \slv_reg29[31]_i_2_n_0 ;
  wire \slv_reg29[31]_i_3_n_0 ;
  wire \slv_reg29[7]_i_1_n_0 ;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[31]_i_2_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire [31:0]slv_reg30;
  wire \slv_reg30[15]_i_1_n_0 ;
  wire \slv_reg30[23]_i_1_n_0 ;
  wire \slv_reg30[31]_i_1_n_0 ;
  wire \slv_reg30[31]_i_2_n_0 ;
  wire \slv_reg30[7]_i_1_n_0 ;
  wire [31:0]slv_reg31;
  wire \slv_reg31[15]_i_1_n_0 ;
  wire \slv_reg31[23]_i_1_n_0 ;
  wire \slv_reg31[31]_i_1_n_0 ;
  wire \slv_reg31[31]_i_2_n_0 ;
  wire \slv_reg31[7]_i_1_n_0 ;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[31]_i_2_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire [9:0]slv_reg4;
  wire \slv_reg4[15]_i_1_n_0 ;
  wire \slv_reg4[23]_i_1_n_0 ;
  wire \slv_reg4[31]_i_1_n_0 ;
  wire \slv_reg4[31]_i_2_n_0 ;
  wire \slv_reg4[31]_i_5_n_0 ;
  wire \slv_reg4[7]_i_1_n_0 ;
  wire [31:10]slv_reg4__0;
  wire [0:0]slv_reg7;
  wire \slv_reg7[15]_i_1_n_0 ;
  wire \slv_reg7[23]_i_1_n_0 ;
  wire \slv_reg7[31]_i_1_n_0 ;
  wire \slv_reg7[31]_i_2_n_0 ;
  wire \slv_reg7[7]_i_1_n_0 ;
  wire [31:1]slv_reg7__0;
  wire [15:0]slv_reg8;
  wire \slv_reg8[15]_i_1_n_0 ;
  wire \slv_reg8[23]_i_1_n_0 ;
  wire \slv_reg8[31]_i_1_n_0 ;
  wire \slv_reg8[31]_i_2_n_0 ;
  wire \slv_reg8[7]_i_1_n_0 ;
  wire [31:16]slv_reg8__0;
  wire [15:0]slv_reg9;
  wire \slv_reg9[15]_i_1_n_0 ;
  wire \slv_reg9[23]_i_1_n_0 ;
  wire \slv_reg9[31]_i_1_n_0 ;
  wire \slv_reg9[31]_i_2_n_0 ;
  wire \slv_reg9[7]_i_1_n_0 ;
  wire [31:16]slv_reg9__0;
  wire [1:0]state_read;
  wire [1:0]sw;
  wire sw1;
  wire sw118_in;
  wire [3:0]switch;
  wire [3:0]tmds;
  wire [3:0]tmdsb;
  wire [9:2]triggerTimeOut;
  wire [9:2]triggerVoltOut;
  wire w_wrEnbMux;
  wire [1:0]writeCntr;

  LUT6 #(
    .INIT(64'hFFFFFFFFF7F0F700)) 
    \FSM_onehot_state_write[1]_i_1 
       (.I0(s00_axi_awvalid),
        .I1(axi_awready_reg_0),
        .I2(s00_axi_wvalid),
        .I3(\FSM_onehot_state_write_reg[1]_0 ),
        .I4(\FSM_onehot_state_write_reg[2]_0 ),
        .I5(axi_wready),
        .O(\FSM_onehot_state_write[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT5 #(
    .INIT(32'h0F0F0800)) 
    \FSM_onehot_state_write[2]_i_1 
       (.I0(axi_awready_reg_0),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(\FSM_onehot_state_write_reg[1]_0 ),
        .I4(\FSM_onehot_state_write_reg[2]_0 ),
        .O(\FSM_onehot_state_write[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "idle:001,wdata:100,waddr:010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_write_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(axi_wready),
        .S(\Audio_Codec/rst ));
  (* FSM_ENCODED_STATES = "idle:001,wdata:100,waddr:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_write_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state_write[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_write_reg[1]_0 ),
        .R(\Audio_Codec/rst ));
  (* FSM_ENCODED_STATES = "idle:001,wdata:100,waddr:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_write_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_state_write[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_write_reg[2]_0 ),
        .R(\Audio_Codec/rst ));
  LUT6 #(
    .INIT(64'hFFFF88880FFFFFFF)) 
    \FSM_sequential_state_read[0]_i_1 
       (.I0(s00_axi_rready),
        .I1(axi_rvalid_reg_0),
        .I2(s00_axi_arvalid),
        .I3(axi_arready_reg_0),
        .I4(state_read[0]),
        .I5(state_read[1]),
        .O(\FSM_sequential_state_read[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7777F0000000)) 
    \FSM_sequential_state_read[1]_i_1 
       (.I0(axi_rvalid_reg_0),
        .I1(s00_axi_rready),
        .I2(axi_arready_reg_0),
        .I3(s00_axi_arvalid),
        .I4(state_read[0]),
        .I5(state_read[1]),
        .O(\FSM_sequential_state_read[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "idle:00,rdata:10,raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[0]_i_1_n_0 ),
        .Q(state_read[0]),
        .R(\Audio_Codec/rst ));
  (* FSM_ENCODED_STATES = "idle:00,rdata:10,raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[1]_i_1_n_0 ),
        .Q(state_read[1]),
        .R(\Audio_Codec/rst ));
  LUT5 #(
    .INIT(32'h08000000)) 
    \axi_araddr[6]_i_1 
       (.I0(state_read[0]),
        .I1(s00_axi_aresetn),
        .I2(state_read[1]),
        .I3(s00_axi_arvalid),
        .I4(axi_arready_reg_0),
        .O(\axi_araddr[6]_i_1_n_0 ));
  (* ORIG_CELL_NAME = "axi_araddr_reg[2]" *) 
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[6]_i_1_n_0 ),
        .D(s00_axi_araddr[0]),
        .Q(sel0[0]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "axi_araddr_reg[2]" *) 
  FDRE \axi_araddr_reg[2]_rep 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[6]_i_1_n_0 ),
        .D(s00_axi_araddr[0]),
        .Q(\axi_araddr_reg[2]_rep_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "axi_araddr_reg[3]" *) 
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[6]_i_1_n_0 ),
        .D(s00_axi_araddr[1]),
        .Q(sel0[1]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "axi_araddr_reg[3]" *) 
  FDRE \axi_araddr_reg[3]_rep 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[6]_i_1_n_0 ),
        .D(s00_axi_araddr[1]),
        .Q(\axi_araddr_reg[3]_rep_n_0 ),
        .R(1'b0));
  FDRE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[6]_i_1_n_0 ),
        .D(s00_axi_araddr[2]),
        .Q(sel0[2]),
        .R(1'b0));
  FDRE \axi_araddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[6]_i_1_n_0 ),
        .D(s00_axi_araddr[3]),
        .Q(sel0[3]),
        .R(1'b0));
  FDRE \axi_araddr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\axi_araddr[6]_i_1_n_0 ),
        .D(s00_axi_araddr[4]),
        .Q(sel0[4]),
        .R(1'b0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_reg_1),
        .Q(axi_arready_reg_0),
        .R(\Audio_Codec/rst ));
  LUT4 #(
    .INIT(16'h8000)) 
    \axi_awaddr[6]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\FSM_onehot_state_write_reg[1]_0 ),
        .I2(axi_awready_reg_0),
        .I3(s00_axi_awvalid),
        .O(\axi_awaddr[6]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr[6]_i_1_n_0 ),
        .D(s00_axi_awaddr[0]),
        .Q(\axi_awaddr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr[6]_i_1_n_0 ),
        .D(s00_axi_awaddr[1]),
        .Q(\axi_awaddr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr[6]_i_1_n_0 ),
        .D(s00_axi_awaddr[2]),
        .Q(\axi_awaddr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \axi_awaddr_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr[6]_i_1_n_0 ),
        .D(s00_axi_awaddr[3]),
        .Q(\axi_awaddr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \axi_awaddr_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\axi_awaddr[6]_i_1_n_0 ),
        .D(s00_axi_awaddr[4]),
        .Q(\axi_awaddr_reg_n_0_[6] ),
        .R(1'b0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_reg_1),
        .Q(axi_awready_reg_0),
        .R(\Audio_Codec/rst ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT5 #(
    .INIT(32'hEAAA0000)) 
    axi_bvalid_i_2
       (.I0(\FSM_onehot_state_write_reg[2]_0 ),
        .I1(\FSM_onehot_state_write_reg[1]_0 ),
        .I2(axi_awready_reg_0),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_wvalid),
        .O(\FSM_onehot_state_write_reg[2]_1 ));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_reg_0),
        .Q(s00_axi_bvalid),
        .R(\Audio_Codec/rst ));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_reg_1),
        .Q(axi_rvalid_reg_0),
        .R(\Audio_Codec/rst ));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_reg_0),
        .Q(s00_axi_wready),
        .R(\Audio_Codec/rst ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lab2_fsm controlUnit
       (.CO(sw1),
        .D(\memory_counter/processQ ),
        .E(controlUnit_n_0),
        .\FSM_onehot_state_reg[0]_0 (datapath_n_36),
        .\FSM_onehot_state_reg[0]_1 (sw118_in),
        .\FSM_onehot_state_reg[3]_0 (controlUnit_n_5),
        .Q({cw,controlUnit_n_2}),
        .SR(\Audio_Codec/rst ),
        .\processQ_reg[1] (writeCntr),
        .s00_axi_aclk(s00_axi_aclk),
        .\sdp_bl.ramb18_dp_bl.ram18_bl (slv_reg7),
        .sw(sw),
        .switch(switch[2]),
        .w_wrEnbMux(w_wrEnbMux));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lab2_datapath datapath
       (.BCLK_int_reg(BCLK_int_reg),
        .CO(sw1),
        .D(\memory_counter/processQ ),
        .E(controlUnit_n_0),
        .\FSM_onehot_state_reg[3] (datapath_n_36),
        .LBus_out(LBus_out),
        .LRCLK_reg(LRCLK_reg),
        .Q({cw,controlUnit_n_2}),
        .Rbus_out(Rbus_out),
        .SR(\Audio_Codec/rst ),
        .ac_adc_sdata(ac_adc_sdata),
        .ac_dac_sdata(ac_dac_sdata),
        .ac_mclk(ac_mclk),
        .btn(btn),
        .flagQOut(flagQOut),
        .flagQ_reg(slv_reg11),
        .\processQ_reg[1] (writeCntr),
        .\processQ_reg[9] (controlUnit_n_5),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .scl(scl),
        .sda(sda),
        .\sdp_bl.ramb18_dp_bl.ram18_bl (slv_reg4),
        .\sdp_bl.ramb18_dp_bl.ram18_bl_0 (slv_reg8),
        .\sdp_bl.ramb18_dp_bl.ram18_bl_1 (slv_reg9),
        .sw(sw),
        .switch(switch),
        .tmds(tmds),
        .tmdsb(tmdsb),
        .triggerTimeOut(triggerTimeOut),
        .triggerVoltOut(triggerVoltOut),
        .\triggerVolt_reg[8]_0 (sw118_in),
        .w_wrEnbMux(w_wrEnbMux));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[0]_INST_0 
       (.I0(\s00_axi_rdata[0]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[0]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[0]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[0]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[0]));
  MUXF7 \s00_axi_rdata[0]_INST_0_i_1 
       (.I0(\s00_axi_rdata[0]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[0]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[0]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[0]_INST_0_i_10 
       (.I0(slv_reg3[0]),
        .I1(slv_reg2[0]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\axi_araddr_reg[2]_rep_n_0 ),
        .I4(slv_reg1[0]),
        .O(\s00_axi_rdata[0]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[0]_INST_0_i_11 
       (.I0(slv_reg7),
        .I1(Rbus_out[0]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(LBus_out[0]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg4[0]),
        .O(\s00_axi_rdata[0]_INST_0_i_11_n_0 ));
  MUXF7 \s00_axi_rdata[0]_INST_0_i_2 
       (.I0(\s00_axi_rdata[0]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[0]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[0]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'h8830FFFF88300000)) 
    \s00_axi_rdata[0]_INST_0_i_3 
       (.I0(slv_reg15[0]),
        .I1(\axi_araddr_reg[3]_rep_n_0 ),
        .I2(flagQOut),
        .I3(\axi_araddr_reg[2]_rep_n_0 ),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[0]_INST_0_i_9_n_0 ),
        .O(\s00_axi_rdata[0]_INST_0_i_3_n_0 ));
  MUXF7 \s00_axi_rdata[0]_INST_0_i_4 
       (.I0(\s00_axi_rdata[0]_INST_0_i_10_n_0 ),
        .I1(\s00_axi_rdata[0]_INST_0_i_11_n_0 ),
        .O(\s00_axi_rdata[0]_INST_0_i_4_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[0]_INST_0_i_5 
       (.I0(slv_reg27[0]),
        .I1(slv_reg26[0]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg25[0]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg24[0]),
        .O(\s00_axi_rdata[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[0]_INST_0_i_6 
       (.I0(slv_reg31[0]),
        .I1(slv_reg30[0]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg29[0]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg28[0]),
        .O(\s00_axi_rdata[0]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[0]_INST_0_i_7 
       (.I0(slv_reg19[0]),
        .I1(slv_reg18[0]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg17[0]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg16[0]),
        .O(\s00_axi_rdata[0]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[0]_INST_0_i_8 
       (.I0(slv_reg23[0]),
        .I1(slv_reg22[0]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg21[0]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg20[0]),
        .O(\s00_axi_rdata[0]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[0]_INST_0_i_9 
       (.I0(slv_reg11),
        .I1(slv_reg10[0]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg9[0]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg8[0]),
        .O(\s00_axi_rdata[0]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[10]_INST_0 
       (.I0(\s00_axi_rdata[10]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[10]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[10]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[10]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[10]));
  MUXF7 \s00_axi_rdata[10]_INST_0_i_1 
       (.I0(\s00_axi_rdata[10]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[10]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[10]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[10]_INST_0_i_10 
       (.I0(slv_reg3[10]),
        .I1(slv_reg2[10]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\axi_araddr_reg[2]_rep_n_0 ),
        .I4(slv_reg1[10]),
        .O(\s00_axi_rdata[10]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[10]_INST_0_i_11 
       (.I0(slv_reg7__0[10]),
        .I1(Rbus_out[10]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(LBus_out[10]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg4__0[10]),
        .O(\s00_axi_rdata[10]_INST_0_i_11_n_0 ));
  MUXF7 \s00_axi_rdata[10]_INST_0_i_2 
       (.I0(\s00_axi_rdata[10]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[10]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[10]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \s00_axi_rdata[10]_INST_0_i_3 
       (.I0(\axi_araddr_reg[3]_rep_n_0 ),
        .I1(slv_reg15[10]),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[10]_INST_0_i_9_n_0 ),
        .O(\s00_axi_rdata[10]_INST_0_i_3_n_0 ));
  MUXF7 \s00_axi_rdata[10]_INST_0_i_4 
       (.I0(\s00_axi_rdata[10]_INST_0_i_10_n_0 ),
        .I1(\s00_axi_rdata[10]_INST_0_i_11_n_0 ),
        .O(\s00_axi_rdata[10]_INST_0_i_4_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[10]_INST_0_i_5 
       (.I0(slv_reg27[10]),
        .I1(slv_reg26[10]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg25[10]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg24[10]),
        .O(\s00_axi_rdata[10]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[10]_INST_0_i_6 
       (.I0(slv_reg31[10]),
        .I1(slv_reg30[10]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg29[10]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg28[10]),
        .O(\s00_axi_rdata[10]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[10]_INST_0_i_7 
       (.I0(slv_reg19[10]),
        .I1(slv_reg18[10]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg17[10]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg16[10]),
        .O(\s00_axi_rdata[10]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[10]_INST_0_i_8 
       (.I0(slv_reg23[10]),
        .I1(slv_reg22[10]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg21[10]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg20[10]),
        .O(\s00_axi_rdata[10]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[10]_INST_0_i_9 
       (.I0(slv_reg11__0[10]),
        .I1(slv_reg10[10]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg9[10]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg8[10]),
        .O(\s00_axi_rdata[10]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[11]_INST_0 
       (.I0(\s00_axi_rdata[11]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[11]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[11]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[11]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[11]));
  MUXF7 \s00_axi_rdata[11]_INST_0_i_1 
       (.I0(\s00_axi_rdata[11]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[11]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[11]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[11]_INST_0_i_10 
       (.I0(slv_reg3[11]),
        .I1(slv_reg2[11]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\axi_araddr_reg[2]_rep_n_0 ),
        .I4(slv_reg1[11]),
        .O(\s00_axi_rdata[11]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[11]_INST_0_i_11 
       (.I0(slv_reg7__0[11]),
        .I1(Rbus_out[11]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(LBus_out[11]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg4__0[11]),
        .O(\s00_axi_rdata[11]_INST_0_i_11_n_0 ));
  MUXF7 \s00_axi_rdata[11]_INST_0_i_2 
       (.I0(\s00_axi_rdata[11]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[11]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[11]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \s00_axi_rdata[11]_INST_0_i_3 
       (.I0(\axi_araddr_reg[3]_rep_n_0 ),
        .I1(slv_reg15[11]),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[11]_INST_0_i_9_n_0 ),
        .O(\s00_axi_rdata[11]_INST_0_i_3_n_0 ));
  MUXF7 \s00_axi_rdata[11]_INST_0_i_4 
       (.I0(\s00_axi_rdata[11]_INST_0_i_10_n_0 ),
        .I1(\s00_axi_rdata[11]_INST_0_i_11_n_0 ),
        .O(\s00_axi_rdata[11]_INST_0_i_4_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[11]_INST_0_i_5 
       (.I0(slv_reg27[11]),
        .I1(slv_reg26[11]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg25[11]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg24[11]),
        .O(\s00_axi_rdata[11]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[11]_INST_0_i_6 
       (.I0(slv_reg31[11]),
        .I1(slv_reg30[11]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg29[11]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg28[11]),
        .O(\s00_axi_rdata[11]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[11]_INST_0_i_7 
       (.I0(slv_reg19[11]),
        .I1(slv_reg18[11]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg17[11]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg16[11]),
        .O(\s00_axi_rdata[11]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[11]_INST_0_i_8 
       (.I0(slv_reg23[11]),
        .I1(slv_reg22[11]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg21[11]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg20[11]),
        .O(\s00_axi_rdata[11]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[11]_INST_0_i_9 
       (.I0(slv_reg11__0[11]),
        .I1(slv_reg10[11]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg9[11]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg8[11]),
        .O(\s00_axi_rdata[11]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[12]_INST_0 
       (.I0(\s00_axi_rdata[12]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[12]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[12]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[12]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[12]));
  MUXF7 \s00_axi_rdata[12]_INST_0_i_1 
       (.I0(\s00_axi_rdata[12]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[12]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[12]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[12]_INST_0_i_10 
       (.I0(slv_reg3[12]),
        .I1(slv_reg2[12]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\axi_araddr_reg[2]_rep_n_0 ),
        .I4(slv_reg1[12]),
        .O(\s00_axi_rdata[12]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[12]_INST_0_i_11 
       (.I0(slv_reg7__0[12]),
        .I1(Rbus_out[12]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(LBus_out[12]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg4__0[12]),
        .O(\s00_axi_rdata[12]_INST_0_i_11_n_0 ));
  MUXF7 \s00_axi_rdata[12]_INST_0_i_2 
       (.I0(\s00_axi_rdata[12]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[12]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[12]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \s00_axi_rdata[12]_INST_0_i_3 
       (.I0(\axi_araddr_reg[3]_rep_n_0 ),
        .I1(slv_reg15[12]),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[12]_INST_0_i_9_n_0 ),
        .O(\s00_axi_rdata[12]_INST_0_i_3_n_0 ));
  MUXF7 \s00_axi_rdata[12]_INST_0_i_4 
       (.I0(\s00_axi_rdata[12]_INST_0_i_10_n_0 ),
        .I1(\s00_axi_rdata[12]_INST_0_i_11_n_0 ),
        .O(\s00_axi_rdata[12]_INST_0_i_4_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[12]_INST_0_i_5 
       (.I0(slv_reg27[12]),
        .I1(slv_reg26[12]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg25[12]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg24[12]),
        .O(\s00_axi_rdata[12]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[12]_INST_0_i_6 
       (.I0(slv_reg31[12]),
        .I1(slv_reg30[12]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg29[12]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg28[12]),
        .O(\s00_axi_rdata[12]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[12]_INST_0_i_7 
       (.I0(slv_reg19[12]),
        .I1(slv_reg18[12]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg17[12]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg16[12]),
        .O(\s00_axi_rdata[12]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[12]_INST_0_i_8 
       (.I0(slv_reg23[12]),
        .I1(slv_reg22[12]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg21[12]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg20[12]),
        .O(\s00_axi_rdata[12]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[12]_INST_0_i_9 
       (.I0(slv_reg11__0[12]),
        .I1(slv_reg10[12]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg9[12]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg8[12]),
        .O(\s00_axi_rdata[12]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[13]_INST_0 
       (.I0(\s00_axi_rdata[13]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[13]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[13]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[13]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[13]));
  MUXF7 \s00_axi_rdata[13]_INST_0_i_1 
       (.I0(\s00_axi_rdata[13]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[13]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[13]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[13]_INST_0_i_10 
       (.I0(slv_reg3[13]),
        .I1(slv_reg2[13]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\axi_araddr_reg[2]_rep_n_0 ),
        .I4(slv_reg1[13]),
        .O(\s00_axi_rdata[13]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[13]_INST_0_i_11 
       (.I0(slv_reg7__0[13]),
        .I1(Rbus_out[13]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(LBus_out[13]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg4__0[13]),
        .O(\s00_axi_rdata[13]_INST_0_i_11_n_0 ));
  MUXF7 \s00_axi_rdata[13]_INST_0_i_2 
       (.I0(\s00_axi_rdata[13]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[13]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[13]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \s00_axi_rdata[13]_INST_0_i_3 
       (.I0(\axi_araddr_reg[3]_rep_n_0 ),
        .I1(slv_reg15[13]),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[13]_INST_0_i_9_n_0 ),
        .O(\s00_axi_rdata[13]_INST_0_i_3_n_0 ));
  MUXF7 \s00_axi_rdata[13]_INST_0_i_4 
       (.I0(\s00_axi_rdata[13]_INST_0_i_10_n_0 ),
        .I1(\s00_axi_rdata[13]_INST_0_i_11_n_0 ),
        .O(\s00_axi_rdata[13]_INST_0_i_4_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[13]_INST_0_i_5 
       (.I0(slv_reg27[13]),
        .I1(slv_reg26[13]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg25[13]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg24[13]),
        .O(\s00_axi_rdata[13]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[13]_INST_0_i_6 
       (.I0(slv_reg31[13]),
        .I1(slv_reg30[13]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg29[13]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg28[13]),
        .O(\s00_axi_rdata[13]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[13]_INST_0_i_7 
       (.I0(slv_reg19[13]),
        .I1(slv_reg18[13]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg17[13]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg16[13]),
        .O(\s00_axi_rdata[13]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[13]_INST_0_i_8 
       (.I0(slv_reg23[13]),
        .I1(slv_reg22[13]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg21[13]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg20[13]),
        .O(\s00_axi_rdata[13]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[13]_INST_0_i_9 
       (.I0(slv_reg11__0[13]),
        .I1(slv_reg10[13]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg9[13]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg8[13]),
        .O(\s00_axi_rdata[13]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[14]_INST_0 
       (.I0(\s00_axi_rdata[14]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[14]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[14]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[14]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[14]));
  MUXF7 \s00_axi_rdata[14]_INST_0_i_1 
       (.I0(\s00_axi_rdata[14]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[14]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[14]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[14]_INST_0_i_10 
       (.I0(slv_reg3[14]),
        .I1(slv_reg2[14]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\axi_araddr_reg[2]_rep_n_0 ),
        .I4(slv_reg1[14]),
        .O(\s00_axi_rdata[14]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[14]_INST_0_i_11 
       (.I0(slv_reg7__0[14]),
        .I1(Rbus_out[14]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(LBus_out[14]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg4__0[14]),
        .O(\s00_axi_rdata[14]_INST_0_i_11_n_0 ));
  MUXF7 \s00_axi_rdata[14]_INST_0_i_2 
       (.I0(\s00_axi_rdata[14]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[14]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[14]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \s00_axi_rdata[14]_INST_0_i_3 
       (.I0(\axi_araddr_reg[3]_rep_n_0 ),
        .I1(slv_reg15[14]),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[14]_INST_0_i_9_n_0 ),
        .O(\s00_axi_rdata[14]_INST_0_i_3_n_0 ));
  MUXF7 \s00_axi_rdata[14]_INST_0_i_4 
       (.I0(\s00_axi_rdata[14]_INST_0_i_10_n_0 ),
        .I1(\s00_axi_rdata[14]_INST_0_i_11_n_0 ),
        .O(\s00_axi_rdata[14]_INST_0_i_4_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[14]_INST_0_i_5 
       (.I0(slv_reg27[14]),
        .I1(slv_reg26[14]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg25[14]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg24[14]),
        .O(\s00_axi_rdata[14]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[14]_INST_0_i_6 
       (.I0(slv_reg31[14]),
        .I1(slv_reg30[14]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg29[14]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg28[14]),
        .O(\s00_axi_rdata[14]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[14]_INST_0_i_7 
       (.I0(slv_reg19[14]),
        .I1(slv_reg18[14]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg17[14]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg16[14]),
        .O(\s00_axi_rdata[14]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[14]_INST_0_i_8 
       (.I0(slv_reg23[14]),
        .I1(slv_reg22[14]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg21[14]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg20[14]),
        .O(\s00_axi_rdata[14]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[14]_INST_0_i_9 
       (.I0(slv_reg11__0[14]),
        .I1(slv_reg10[14]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg9[14]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg8[14]),
        .O(\s00_axi_rdata[14]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[15]_INST_0 
       (.I0(\s00_axi_rdata[15]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[15]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[15]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[15]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[15]));
  MUXF7 \s00_axi_rdata[15]_INST_0_i_1 
       (.I0(\s00_axi_rdata[15]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[15]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[15]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[15]_INST_0_i_10 
       (.I0(slv_reg3[15]),
        .I1(slv_reg2[15]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\axi_araddr_reg[2]_rep_n_0 ),
        .I4(slv_reg1[15]),
        .O(\s00_axi_rdata[15]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[15]_INST_0_i_11 
       (.I0(slv_reg7__0[15]),
        .I1(Rbus_out[15]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(LBus_out[15]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg4__0[15]),
        .O(\s00_axi_rdata[15]_INST_0_i_11_n_0 ));
  MUXF7 \s00_axi_rdata[15]_INST_0_i_2 
       (.I0(\s00_axi_rdata[15]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[15]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[15]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \s00_axi_rdata[15]_INST_0_i_3 
       (.I0(\axi_araddr_reg[3]_rep_n_0 ),
        .I1(slv_reg15[15]),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[15]_INST_0_i_9_n_0 ),
        .O(\s00_axi_rdata[15]_INST_0_i_3_n_0 ));
  MUXF7 \s00_axi_rdata[15]_INST_0_i_4 
       (.I0(\s00_axi_rdata[15]_INST_0_i_10_n_0 ),
        .I1(\s00_axi_rdata[15]_INST_0_i_11_n_0 ),
        .O(\s00_axi_rdata[15]_INST_0_i_4_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[15]_INST_0_i_5 
       (.I0(slv_reg27[15]),
        .I1(slv_reg26[15]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg25[15]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg24[15]),
        .O(\s00_axi_rdata[15]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[15]_INST_0_i_6 
       (.I0(slv_reg31[15]),
        .I1(slv_reg30[15]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg29[15]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg28[15]),
        .O(\s00_axi_rdata[15]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[15]_INST_0_i_7 
       (.I0(slv_reg19[15]),
        .I1(slv_reg18[15]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg17[15]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg16[15]),
        .O(\s00_axi_rdata[15]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[15]_INST_0_i_8 
       (.I0(slv_reg23[15]),
        .I1(slv_reg22[15]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg21[15]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg20[15]),
        .O(\s00_axi_rdata[15]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[15]_INST_0_i_9 
       (.I0(slv_reg11__0[15]),
        .I1(slv_reg10[15]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg9[15]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg8[15]),
        .O(\s00_axi_rdata[15]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[16]_INST_0 
       (.I0(\s00_axi_rdata[16]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[16]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[16]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[16]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[16]));
  MUXF7 \s00_axi_rdata[16]_INST_0_i_1 
       (.I0(\s00_axi_rdata[16]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[16]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[16]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[16]_INST_0_i_10 
       (.I0(slv_reg3[16]),
        .I1(slv_reg2[16]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg1[16]),
        .O(\s00_axi_rdata[16]_INST_0_i_10_n_0 ));
  MUXF7 \s00_axi_rdata[16]_INST_0_i_2 
       (.I0(\s00_axi_rdata[16]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[16]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[16]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \s00_axi_rdata[16]_INST_0_i_3 
       (.I0(sel0[1]),
        .I1(slv_reg15[16]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[16]_INST_0_i_9_n_0 ),
        .O(\s00_axi_rdata[16]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8830FFFF88300000)) 
    \s00_axi_rdata[16]_INST_0_i_4 
       (.I0(slv_reg7__0[16]),
        .I1(sel0[1]),
        .I2(slv_reg4__0[16]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[16]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[16]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[16]_INST_0_i_5 
       (.I0(slv_reg27[16]),
        .I1(slv_reg26[16]),
        .I2(sel0[1]),
        .I3(slv_reg25[16]),
        .I4(sel0[0]),
        .I5(slv_reg24[16]),
        .O(\s00_axi_rdata[16]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[16]_INST_0_i_6 
       (.I0(slv_reg31[16]),
        .I1(slv_reg30[16]),
        .I2(sel0[1]),
        .I3(slv_reg29[16]),
        .I4(sel0[0]),
        .I5(slv_reg28[16]),
        .O(\s00_axi_rdata[16]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[16]_INST_0_i_7 
       (.I0(slv_reg19[16]),
        .I1(slv_reg18[16]),
        .I2(sel0[1]),
        .I3(slv_reg17[16]),
        .I4(sel0[0]),
        .I5(slv_reg16[16]),
        .O(\s00_axi_rdata[16]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[16]_INST_0_i_8 
       (.I0(slv_reg23[16]),
        .I1(slv_reg22[16]),
        .I2(sel0[1]),
        .I3(slv_reg21[16]),
        .I4(sel0[0]),
        .I5(slv_reg20[16]),
        .O(\s00_axi_rdata[16]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[16]_INST_0_i_9 
       (.I0(slv_reg11__0[16]),
        .I1(slv_reg10[16]),
        .I2(sel0[1]),
        .I3(slv_reg9__0[16]),
        .I4(sel0[0]),
        .I5(slv_reg8__0[16]),
        .O(\s00_axi_rdata[16]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[17]_INST_0 
       (.I0(\s00_axi_rdata[17]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[17]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[17]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[17]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[17]));
  MUXF7 \s00_axi_rdata[17]_INST_0_i_1 
       (.I0(\s00_axi_rdata[17]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[17]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[17]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[17]_INST_0_i_10 
       (.I0(slv_reg3[17]),
        .I1(slv_reg2[17]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg1[17]),
        .O(\s00_axi_rdata[17]_INST_0_i_10_n_0 ));
  MUXF7 \s00_axi_rdata[17]_INST_0_i_2 
       (.I0(\s00_axi_rdata[17]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[17]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[17]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \s00_axi_rdata[17]_INST_0_i_3 
       (.I0(sel0[1]),
        .I1(slv_reg15[17]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[17]_INST_0_i_9_n_0 ),
        .O(\s00_axi_rdata[17]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8830FFFF88300000)) 
    \s00_axi_rdata[17]_INST_0_i_4 
       (.I0(slv_reg7__0[17]),
        .I1(sel0[1]),
        .I2(slv_reg4__0[17]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[17]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[17]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[17]_INST_0_i_5 
       (.I0(slv_reg27[17]),
        .I1(slv_reg26[17]),
        .I2(sel0[1]),
        .I3(slv_reg25[17]),
        .I4(sel0[0]),
        .I5(slv_reg24[17]),
        .O(\s00_axi_rdata[17]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[17]_INST_0_i_6 
       (.I0(slv_reg31[17]),
        .I1(slv_reg30[17]),
        .I2(sel0[1]),
        .I3(slv_reg29[17]),
        .I4(sel0[0]),
        .I5(slv_reg28[17]),
        .O(\s00_axi_rdata[17]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[17]_INST_0_i_7 
       (.I0(slv_reg19[17]),
        .I1(slv_reg18[17]),
        .I2(sel0[1]),
        .I3(slv_reg17[17]),
        .I4(sel0[0]),
        .I5(slv_reg16[17]),
        .O(\s00_axi_rdata[17]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[17]_INST_0_i_8 
       (.I0(slv_reg23[17]),
        .I1(slv_reg22[17]),
        .I2(sel0[1]),
        .I3(slv_reg21[17]),
        .I4(sel0[0]),
        .I5(slv_reg20[17]),
        .O(\s00_axi_rdata[17]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[17]_INST_0_i_9 
       (.I0(slv_reg11__0[17]),
        .I1(slv_reg10[17]),
        .I2(sel0[1]),
        .I3(slv_reg9__0[17]),
        .I4(sel0[0]),
        .I5(slv_reg8__0[17]),
        .O(\s00_axi_rdata[17]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[18]_INST_0 
       (.I0(\s00_axi_rdata[18]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[18]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[18]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[18]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[18]));
  MUXF7 \s00_axi_rdata[18]_INST_0_i_1 
       (.I0(\s00_axi_rdata[18]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[18]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[18]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[18]_INST_0_i_10 
       (.I0(slv_reg3[18]),
        .I1(slv_reg2[18]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg1[18]),
        .O(\s00_axi_rdata[18]_INST_0_i_10_n_0 ));
  MUXF7 \s00_axi_rdata[18]_INST_0_i_2 
       (.I0(\s00_axi_rdata[18]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[18]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[18]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \s00_axi_rdata[18]_INST_0_i_3 
       (.I0(sel0[1]),
        .I1(slv_reg15[18]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[18]_INST_0_i_9_n_0 ),
        .O(\s00_axi_rdata[18]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8830FFFF88300000)) 
    \s00_axi_rdata[18]_INST_0_i_4 
       (.I0(slv_reg7__0[18]),
        .I1(sel0[1]),
        .I2(slv_reg4__0[18]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[18]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[18]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[18]_INST_0_i_5 
       (.I0(slv_reg27[18]),
        .I1(slv_reg26[18]),
        .I2(sel0[1]),
        .I3(slv_reg25[18]),
        .I4(sel0[0]),
        .I5(slv_reg24[18]),
        .O(\s00_axi_rdata[18]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[18]_INST_0_i_6 
       (.I0(slv_reg31[18]),
        .I1(slv_reg30[18]),
        .I2(sel0[1]),
        .I3(slv_reg29[18]),
        .I4(sel0[0]),
        .I5(slv_reg28[18]),
        .O(\s00_axi_rdata[18]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[18]_INST_0_i_7 
       (.I0(slv_reg19[18]),
        .I1(slv_reg18[18]),
        .I2(sel0[1]),
        .I3(slv_reg17[18]),
        .I4(sel0[0]),
        .I5(slv_reg16[18]),
        .O(\s00_axi_rdata[18]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[18]_INST_0_i_8 
       (.I0(slv_reg23[18]),
        .I1(slv_reg22[18]),
        .I2(sel0[1]),
        .I3(slv_reg21[18]),
        .I4(sel0[0]),
        .I5(slv_reg20[18]),
        .O(\s00_axi_rdata[18]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[18]_INST_0_i_9 
       (.I0(slv_reg11__0[18]),
        .I1(slv_reg10[18]),
        .I2(sel0[1]),
        .I3(slv_reg9__0[18]),
        .I4(sel0[0]),
        .I5(slv_reg8__0[18]),
        .O(\s00_axi_rdata[18]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[19]_INST_0 
       (.I0(\s00_axi_rdata[19]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[19]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[19]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[19]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[19]));
  MUXF7 \s00_axi_rdata[19]_INST_0_i_1 
       (.I0(\s00_axi_rdata[19]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[19]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[19]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[19]_INST_0_i_10 
       (.I0(slv_reg3[19]),
        .I1(slv_reg2[19]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg1[19]),
        .O(\s00_axi_rdata[19]_INST_0_i_10_n_0 ));
  MUXF7 \s00_axi_rdata[19]_INST_0_i_2 
       (.I0(\s00_axi_rdata[19]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[19]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[19]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \s00_axi_rdata[19]_INST_0_i_3 
       (.I0(sel0[1]),
        .I1(slv_reg15[19]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[19]_INST_0_i_9_n_0 ),
        .O(\s00_axi_rdata[19]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8830FFFF88300000)) 
    \s00_axi_rdata[19]_INST_0_i_4 
       (.I0(slv_reg7__0[19]),
        .I1(sel0[1]),
        .I2(slv_reg4__0[19]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[19]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[19]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[19]_INST_0_i_5 
       (.I0(slv_reg27[19]),
        .I1(slv_reg26[19]),
        .I2(sel0[1]),
        .I3(slv_reg25[19]),
        .I4(sel0[0]),
        .I5(slv_reg24[19]),
        .O(\s00_axi_rdata[19]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[19]_INST_0_i_6 
       (.I0(slv_reg31[19]),
        .I1(slv_reg30[19]),
        .I2(sel0[1]),
        .I3(slv_reg29[19]),
        .I4(sel0[0]),
        .I5(slv_reg28[19]),
        .O(\s00_axi_rdata[19]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[19]_INST_0_i_7 
       (.I0(slv_reg19[19]),
        .I1(slv_reg18[19]),
        .I2(sel0[1]),
        .I3(slv_reg17[19]),
        .I4(sel0[0]),
        .I5(slv_reg16[19]),
        .O(\s00_axi_rdata[19]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[19]_INST_0_i_8 
       (.I0(slv_reg23[19]),
        .I1(slv_reg22[19]),
        .I2(sel0[1]),
        .I3(slv_reg21[19]),
        .I4(sel0[0]),
        .I5(slv_reg20[19]),
        .O(\s00_axi_rdata[19]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[19]_INST_0_i_9 
       (.I0(slv_reg11__0[19]),
        .I1(slv_reg10[19]),
        .I2(sel0[1]),
        .I3(slv_reg9__0[19]),
        .I4(sel0[0]),
        .I5(slv_reg8__0[19]),
        .O(\s00_axi_rdata[19]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[1]_INST_0 
       (.I0(\s00_axi_rdata[1]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[1]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[1]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[1]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[1]));
  MUXF7 \s00_axi_rdata[1]_INST_0_i_1 
       (.I0(\s00_axi_rdata[1]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[1]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[1]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[1]_INST_0_i_10 
       (.I0(slv_reg3[1]),
        .I1(slv_reg2[1]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\axi_araddr_reg[2]_rep_n_0 ),
        .I4(slv_reg1[1]),
        .O(\s00_axi_rdata[1]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[1]_INST_0_i_11 
       (.I0(slv_reg7__0[1]),
        .I1(Rbus_out[1]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(LBus_out[1]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg4[1]),
        .O(\s00_axi_rdata[1]_INST_0_i_11_n_0 ));
  MUXF7 \s00_axi_rdata[1]_INST_0_i_2 
       (.I0(\s00_axi_rdata[1]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[1]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[1]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \s00_axi_rdata[1]_INST_0_i_3 
       (.I0(\axi_araddr_reg[3]_rep_n_0 ),
        .I1(slv_reg15[1]),
        .I2(\axi_araddr_reg[2]_rep_n_0 ),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[1]_INST_0_i_9_n_0 ),
        .O(\s00_axi_rdata[1]_INST_0_i_3_n_0 ));
  MUXF7 \s00_axi_rdata[1]_INST_0_i_4 
       (.I0(\s00_axi_rdata[1]_INST_0_i_10_n_0 ),
        .I1(\s00_axi_rdata[1]_INST_0_i_11_n_0 ),
        .O(\s00_axi_rdata[1]_INST_0_i_4_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[1]_INST_0_i_5 
       (.I0(slv_reg27[1]),
        .I1(slv_reg26[1]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg25[1]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg24[1]),
        .O(\s00_axi_rdata[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[1]_INST_0_i_6 
       (.I0(slv_reg31[1]),
        .I1(slv_reg30[1]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg29[1]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg28[1]),
        .O(\s00_axi_rdata[1]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[1]_INST_0_i_7 
       (.I0(slv_reg19[1]),
        .I1(slv_reg18[1]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg17[1]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg16[1]),
        .O(\s00_axi_rdata[1]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[1]_INST_0_i_8 
       (.I0(slv_reg23[1]),
        .I1(slv_reg22[1]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg21[1]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg20[1]),
        .O(\s00_axi_rdata[1]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[1]_INST_0_i_9 
       (.I0(slv_reg11__0[1]),
        .I1(slv_reg10[1]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg9[1]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg8[1]),
        .O(\s00_axi_rdata[1]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[20]_INST_0 
       (.I0(\s00_axi_rdata[20]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[20]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[20]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[20]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[20]));
  MUXF7 \s00_axi_rdata[20]_INST_0_i_1 
       (.I0(\s00_axi_rdata[20]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[20]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[20]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[20]_INST_0_i_10 
       (.I0(slv_reg3[20]),
        .I1(slv_reg2[20]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg1[20]),
        .O(\s00_axi_rdata[20]_INST_0_i_10_n_0 ));
  MUXF7 \s00_axi_rdata[20]_INST_0_i_2 
       (.I0(\s00_axi_rdata[20]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[20]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[20]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \s00_axi_rdata[20]_INST_0_i_3 
       (.I0(sel0[1]),
        .I1(slv_reg15[20]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[20]_INST_0_i_9_n_0 ),
        .O(\s00_axi_rdata[20]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8830FFFF88300000)) 
    \s00_axi_rdata[20]_INST_0_i_4 
       (.I0(slv_reg7__0[20]),
        .I1(sel0[1]),
        .I2(slv_reg4__0[20]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[20]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[20]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[20]_INST_0_i_5 
       (.I0(slv_reg27[20]),
        .I1(slv_reg26[20]),
        .I2(sel0[1]),
        .I3(slv_reg25[20]),
        .I4(sel0[0]),
        .I5(slv_reg24[20]),
        .O(\s00_axi_rdata[20]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[20]_INST_0_i_6 
       (.I0(slv_reg31[20]),
        .I1(slv_reg30[20]),
        .I2(sel0[1]),
        .I3(slv_reg29[20]),
        .I4(sel0[0]),
        .I5(slv_reg28[20]),
        .O(\s00_axi_rdata[20]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[20]_INST_0_i_7 
       (.I0(slv_reg19[20]),
        .I1(slv_reg18[20]),
        .I2(sel0[1]),
        .I3(slv_reg17[20]),
        .I4(sel0[0]),
        .I5(slv_reg16[20]),
        .O(\s00_axi_rdata[20]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[20]_INST_0_i_8 
       (.I0(slv_reg23[20]),
        .I1(slv_reg22[20]),
        .I2(sel0[1]),
        .I3(slv_reg21[20]),
        .I4(sel0[0]),
        .I5(slv_reg20[20]),
        .O(\s00_axi_rdata[20]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[20]_INST_0_i_9 
       (.I0(slv_reg11__0[20]),
        .I1(slv_reg10[20]),
        .I2(sel0[1]),
        .I3(slv_reg9__0[20]),
        .I4(sel0[0]),
        .I5(slv_reg8__0[20]),
        .O(\s00_axi_rdata[20]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[21]_INST_0 
       (.I0(\s00_axi_rdata[21]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[21]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[21]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[21]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[21]));
  MUXF7 \s00_axi_rdata[21]_INST_0_i_1 
       (.I0(\s00_axi_rdata[21]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[21]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[21]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[21]_INST_0_i_10 
       (.I0(slv_reg3[21]),
        .I1(slv_reg2[21]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg1[21]),
        .O(\s00_axi_rdata[21]_INST_0_i_10_n_0 ));
  MUXF7 \s00_axi_rdata[21]_INST_0_i_2 
       (.I0(\s00_axi_rdata[21]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[21]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[21]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \s00_axi_rdata[21]_INST_0_i_3 
       (.I0(sel0[1]),
        .I1(slv_reg15[21]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[21]_INST_0_i_9_n_0 ),
        .O(\s00_axi_rdata[21]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8830FFFF88300000)) 
    \s00_axi_rdata[21]_INST_0_i_4 
       (.I0(slv_reg7__0[21]),
        .I1(sel0[1]),
        .I2(slv_reg4__0[21]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[21]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[21]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[21]_INST_0_i_5 
       (.I0(slv_reg27[21]),
        .I1(slv_reg26[21]),
        .I2(sel0[1]),
        .I3(slv_reg25[21]),
        .I4(sel0[0]),
        .I5(slv_reg24[21]),
        .O(\s00_axi_rdata[21]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[21]_INST_0_i_6 
       (.I0(slv_reg31[21]),
        .I1(slv_reg30[21]),
        .I2(sel0[1]),
        .I3(slv_reg29[21]),
        .I4(sel0[0]),
        .I5(slv_reg28[21]),
        .O(\s00_axi_rdata[21]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[21]_INST_0_i_7 
       (.I0(slv_reg19[21]),
        .I1(slv_reg18[21]),
        .I2(sel0[1]),
        .I3(slv_reg17[21]),
        .I4(sel0[0]),
        .I5(slv_reg16[21]),
        .O(\s00_axi_rdata[21]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[21]_INST_0_i_8 
       (.I0(slv_reg23[21]),
        .I1(slv_reg22[21]),
        .I2(sel0[1]),
        .I3(slv_reg21[21]),
        .I4(sel0[0]),
        .I5(slv_reg20[21]),
        .O(\s00_axi_rdata[21]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[21]_INST_0_i_9 
       (.I0(slv_reg11__0[21]),
        .I1(slv_reg10[21]),
        .I2(sel0[1]),
        .I3(slv_reg9__0[21]),
        .I4(sel0[0]),
        .I5(slv_reg8__0[21]),
        .O(\s00_axi_rdata[21]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[22]_INST_0 
       (.I0(\s00_axi_rdata[22]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[22]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[22]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[22]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[22]));
  MUXF7 \s00_axi_rdata[22]_INST_0_i_1 
       (.I0(\s00_axi_rdata[22]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[22]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[22]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[22]_INST_0_i_10 
       (.I0(slv_reg3[22]),
        .I1(slv_reg2[22]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg1[22]),
        .O(\s00_axi_rdata[22]_INST_0_i_10_n_0 ));
  MUXF7 \s00_axi_rdata[22]_INST_0_i_2 
       (.I0(\s00_axi_rdata[22]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[22]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[22]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \s00_axi_rdata[22]_INST_0_i_3 
       (.I0(sel0[1]),
        .I1(slv_reg15[22]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[22]_INST_0_i_9_n_0 ),
        .O(\s00_axi_rdata[22]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8830FFFF88300000)) 
    \s00_axi_rdata[22]_INST_0_i_4 
       (.I0(slv_reg7__0[22]),
        .I1(sel0[1]),
        .I2(slv_reg4__0[22]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[22]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[22]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[22]_INST_0_i_5 
       (.I0(slv_reg27[22]),
        .I1(slv_reg26[22]),
        .I2(sel0[1]),
        .I3(slv_reg25[22]),
        .I4(sel0[0]),
        .I5(slv_reg24[22]),
        .O(\s00_axi_rdata[22]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[22]_INST_0_i_6 
       (.I0(slv_reg31[22]),
        .I1(slv_reg30[22]),
        .I2(sel0[1]),
        .I3(slv_reg29[22]),
        .I4(sel0[0]),
        .I5(slv_reg28[22]),
        .O(\s00_axi_rdata[22]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[22]_INST_0_i_7 
       (.I0(slv_reg19[22]),
        .I1(slv_reg18[22]),
        .I2(sel0[1]),
        .I3(slv_reg17[22]),
        .I4(sel0[0]),
        .I5(slv_reg16[22]),
        .O(\s00_axi_rdata[22]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[22]_INST_0_i_8 
       (.I0(slv_reg23[22]),
        .I1(slv_reg22[22]),
        .I2(sel0[1]),
        .I3(slv_reg21[22]),
        .I4(sel0[0]),
        .I5(slv_reg20[22]),
        .O(\s00_axi_rdata[22]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[22]_INST_0_i_9 
       (.I0(slv_reg11__0[22]),
        .I1(slv_reg10[22]),
        .I2(sel0[1]),
        .I3(slv_reg9__0[22]),
        .I4(sel0[0]),
        .I5(slv_reg8__0[22]),
        .O(\s00_axi_rdata[22]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[23]_INST_0 
       (.I0(\s00_axi_rdata[23]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[23]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[23]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[23]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[23]));
  MUXF7 \s00_axi_rdata[23]_INST_0_i_1 
       (.I0(\s00_axi_rdata[23]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[23]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[23]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[23]_INST_0_i_10 
       (.I0(slv_reg3[23]),
        .I1(slv_reg2[23]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg1[23]),
        .O(\s00_axi_rdata[23]_INST_0_i_10_n_0 ));
  MUXF7 \s00_axi_rdata[23]_INST_0_i_2 
       (.I0(\s00_axi_rdata[23]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[23]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[23]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \s00_axi_rdata[23]_INST_0_i_3 
       (.I0(sel0[1]),
        .I1(slv_reg15[23]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[23]_INST_0_i_9_n_0 ),
        .O(\s00_axi_rdata[23]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8830FFFF88300000)) 
    \s00_axi_rdata[23]_INST_0_i_4 
       (.I0(slv_reg7__0[23]),
        .I1(sel0[1]),
        .I2(slv_reg4__0[23]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[23]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[23]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[23]_INST_0_i_5 
       (.I0(slv_reg27[23]),
        .I1(slv_reg26[23]),
        .I2(sel0[1]),
        .I3(slv_reg25[23]),
        .I4(sel0[0]),
        .I5(slv_reg24[23]),
        .O(\s00_axi_rdata[23]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[23]_INST_0_i_6 
       (.I0(slv_reg31[23]),
        .I1(slv_reg30[23]),
        .I2(sel0[1]),
        .I3(slv_reg29[23]),
        .I4(sel0[0]),
        .I5(slv_reg28[23]),
        .O(\s00_axi_rdata[23]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[23]_INST_0_i_7 
       (.I0(slv_reg19[23]),
        .I1(slv_reg18[23]),
        .I2(sel0[1]),
        .I3(slv_reg17[23]),
        .I4(sel0[0]),
        .I5(slv_reg16[23]),
        .O(\s00_axi_rdata[23]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[23]_INST_0_i_8 
       (.I0(slv_reg23[23]),
        .I1(slv_reg22[23]),
        .I2(sel0[1]),
        .I3(slv_reg21[23]),
        .I4(sel0[0]),
        .I5(slv_reg20[23]),
        .O(\s00_axi_rdata[23]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[23]_INST_0_i_9 
       (.I0(slv_reg11__0[23]),
        .I1(slv_reg10[23]),
        .I2(sel0[1]),
        .I3(slv_reg9__0[23]),
        .I4(sel0[0]),
        .I5(slv_reg8__0[23]),
        .O(\s00_axi_rdata[23]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[24]_INST_0 
       (.I0(\s00_axi_rdata[24]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[24]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[24]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[24]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[24]));
  MUXF7 \s00_axi_rdata[24]_INST_0_i_1 
       (.I0(\s00_axi_rdata[24]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[24]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[24]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[24]_INST_0_i_10 
       (.I0(slv_reg3[24]),
        .I1(slv_reg2[24]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg1[24]),
        .O(\s00_axi_rdata[24]_INST_0_i_10_n_0 ));
  MUXF7 \s00_axi_rdata[24]_INST_0_i_2 
       (.I0(\s00_axi_rdata[24]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[24]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[24]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \s00_axi_rdata[24]_INST_0_i_3 
       (.I0(sel0[1]),
        .I1(slv_reg15[24]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[24]_INST_0_i_9_n_0 ),
        .O(\s00_axi_rdata[24]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8830FFFF88300000)) 
    \s00_axi_rdata[24]_INST_0_i_4 
       (.I0(slv_reg7__0[24]),
        .I1(sel0[1]),
        .I2(slv_reg4__0[24]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[24]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[24]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[24]_INST_0_i_5 
       (.I0(slv_reg27[24]),
        .I1(slv_reg26[24]),
        .I2(sel0[1]),
        .I3(slv_reg25[24]),
        .I4(sel0[0]),
        .I5(slv_reg24[24]),
        .O(\s00_axi_rdata[24]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[24]_INST_0_i_6 
       (.I0(slv_reg31[24]),
        .I1(slv_reg30[24]),
        .I2(sel0[1]),
        .I3(slv_reg29[24]),
        .I4(sel0[0]),
        .I5(slv_reg28[24]),
        .O(\s00_axi_rdata[24]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[24]_INST_0_i_7 
       (.I0(slv_reg19[24]),
        .I1(slv_reg18[24]),
        .I2(sel0[1]),
        .I3(slv_reg17[24]),
        .I4(sel0[0]),
        .I5(slv_reg16[24]),
        .O(\s00_axi_rdata[24]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[24]_INST_0_i_8 
       (.I0(slv_reg23[24]),
        .I1(slv_reg22[24]),
        .I2(sel0[1]),
        .I3(slv_reg21[24]),
        .I4(sel0[0]),
        .I5(slv_reg20[24]),
        .O(\s00_axi_rdata[24]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[24]_INST_0_i_9 
       (.I0(slv_reg11__0[24]),
        .I1(slv_reg10[24]),
        .I2(sel0[1]),
        .I3(slv_reg9__0[24]),
        .I4(sel0[0]),
        .I5(slv_reg8__0[24]),
        .O(\s00_axi_rdata[24]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[25]_INST_0 
       (.I0(\s00_axi_rdata[25]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[25]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[25]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[25]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[25]));
  MUXF7 \s00_axi_rdata[25]_INST_0_i_1 
       (.I0(\s00_axi_rdata[25]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[25]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[25]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[25]_INST_0_i_10 
       (.I0(slv_reg3[25]),
        .I1(slv_reg2[25]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg1[25]),
        .O(\s00_axi_rdata[25]_INST_0_i_10_n_0 ));
  MUXF7 \s00_axi_rdata[25]_INST_0_i_2 
       (.I0(\s00_axi_rdata[25]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[25]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[25]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \s00_axi_rdata[25]_INST_0_i_3 
       (.I0(sel0[1]),
        .I1(slv_reg15[25]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[25]_INST_0_i_9_n_0 ),
        .O(\s00_axi_rdata[25]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8830FFFF88300000)) 
    \s00_axi_rdata[25]_INST_0_i_4 
       (.I0(slv_reg7__0[25]),
        .I1(sel0[1]),
        .I2(slv_reg4__0[25]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[25]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[25]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[25]_INST_0_i_5 
       (.I0(slv_reg27[25]),
        .I1(slv_reg26[25]),
        .I2(sel0[1]),
        .I3(slv_reg25[25]),
        .I4(sel0[0]),
        .I5(slv_reg24[25]),
        .O(\s00_axi_rdata[25]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[25]_INST_0_i_6 
       (.I0(slv_reg31[25]),
        .I1(slv_reg30[25]),
        .I2(sel0[1]),
        .I3(slv_reg29[25]),
        .I4(sel0[0]),
        .I5(slv_reg28[25]),
        .O(\s00_axi_rdata[25]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[25]_INST_0_i_7 
       (.I0(slv_reg19[25]),
        .I1(slv_reg18[25]),
        .I2(sel0[1]),
        .I3(slv_reg17[25]),
        .I4(sel0[0]),
        .I5(slv_reg16[25]),
        .O(\s00_axi_rdata[25]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[25]_INST_0_i_8 
       (.I0(slv_reg23[25]),
        .I1(slv_reg22[25]),
        .I2(sel0[1]),
        .I3(slv_reg21[25]),
        .I4(sel0[0]),
        .I5(slv_reg20[25]),
        .O(\s00_axi_rdata[25]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[25]_INST_0_i_9 
       (.I0(slv_reg11__0[25]),
        .I1(slv_reg10[25]),
        .I2(sel0[1]),
        .I3(slv_reg9__0[25]),
        .I4(sel0[0]),
        .I5(slv_reg8__0[25]),
        .O(\s00_axi_rdata[25]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[26]_INST_0 
       (.I0(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[26]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[26]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[26]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[26]));
  MUXF7 \s00_axi_rdata[26]_INST_0_i_1 
       (.I0(\s00_axi_rdata[26]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[26]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[26]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[26]_INST_0_i_10 
       (.I0(slv_reg3[26]),
        .I1(slv_reg2[26]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg1[26]),
        .O(\s00_axi_rdata[26]_INST_0_i_10_n_0 ));
  MUXF7 \s00_axi_rdata[26]_INST_0_i_2 
       (.I0(\s00_axi_rdata[26]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[26]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[26]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \s00_axi_rdata[26]_INST_0_i_3 
       (.I0(sel0[1]),
        .I1(slv_reg15[26]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[26]_INST_0_i_9_n_0 ),
        .O(\s00_axi_rdata[26]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8830FFFF88300000)) 
    \s00_axi_rdata[26]_INST_0_i_4 
       (.I0(slv_reg7__0[26]),
        .I1(sel0[1]),
        .I2(slv_reg4__0[26]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[26]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[26]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[26]_INST_0_i_5 
       (.I0(slv_reg27[26]),
        .I1(slv_reg26[26]),
        .I2(sel0[1]),
        .I3(slv_reg25[26]),
        .I4(sel0[0]),
        .I5(slv_reg24[26]),
        .O(\s00_axi_rdata[26]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[26]_INST_0_i_6 
       (.I0(slv_reg31[26]),
        .I1(slv_reg30[26]),
        .I2(sel0[1]),
        .I3(slv_reg29[26]),
        .I4(sel0[0]),
        .I5(slv_reg28[26]),
        .O(\s00_axi_rdata[26]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[26]_INST_0_i_7 
       (.I0(slv_reg19[26]),
        .I1(slv_reg18[26]),
        .I2(sel0[1]),
        .I3(slv_reg17[26]),
        .I4(sel0[0]),
        .I5(slv_reg16[26]),
        .O(\s00_axi_rdata[26]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[26]_INST_0_i_8 
       (.I0(slv_reg23[26]),
        .I1(slv_reg22[26]),
        .I2(sel0[1]),
        .I3(slv_reg21[26]),
        .I4(sel0[0]),
        .I5(slv_reg20[26]),
        .O(\s00_axi_rdata[26]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[26]_INST_0_i_9 
       (.I0(slv_reg11__0[26]),
        .I1(slv_reg10[26]),
        .I2(sel0[1]),
        .I3(slv_reg9__0[26]),
        .I4(sel0[0]),
        .I5(slv_reg8__0[26]),
        .O(\s00_axi_rdata[26]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[27]_INST_0 
       (.I0(\s00_axi_rdata[27]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[27]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[27]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[27]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[27]));
  MUXF7 \s00_axi_rdata[27]_INST_0_i_1 
       (.I0(\s00_axi_rdata[27]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[27]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[27]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[27]_INST_0_i_10 
       (.I0(slv_reg3[27]),
        .I1(slv_reg2[27]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg1[27]),
        .O(\s00_axi_rdata[27]_INST_0_i_10_n_0 ));
  MUXF7 \s00_axi_rdata[27]_INST_0_i_2 
       (.I0(\s00_axi_rdata[27]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[27]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[27]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \s00_axi_rdata[27]_INST_0_i_3 
       (.I0(sel0[1]),
        .I1(slv_reg15[27]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[27]_INST_0_i_9_n_0 ),
        .O(\s00_axi_rdata[27]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8830FFFF88300000)) 
    \s00_axi_rdata[27]_INST_0_i_4 
       (.I0(slv_reg7__0[27]),
        .I1(sel0[1]),
        .I2(slv_reg4__0[27]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[27]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[27]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[27]_INST_0_i_5 
       (.I0(slv_reg27[27]),
        .I1(slv_reg26[27]),
        .I2(sel0[1]),
        .I3(slv_reg25[27]),
        .I4(sel0[0]),
        .I5(slv_reg24[27]),
        .O(\s00_axi_rdata[27]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[27]_INST_0_i_6 
       (.I0(slv_reg31[27]),
        .I1(slv_reg30[27]),
        .I2(sel0[1]),
        .I3(slv_reg29[27]),
        .I4(sel0[0]),
        .I5(slv_reg28[27]),
        .O(\s00_axi_rdata[27]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[27]_INST_0_i_7 
       (.I0(slv_reg19[27]),
        .I1(slv_reg18[27]),
        .I2(sel0[1]),
        .I3(slv_reg17[27]),
        .I4(sel0[0]),
        .I5(slv_reg16[27]),
        .O(\s00_axi_rdata[27]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[27]_INST_0_i_8 
       (.I0(slv_reg23[27]),
        .I1(slv_reg22[27]),
        .I2(sel0[1]),
        .I3(slv_reg21[27]),
        .I4(sel0[0]),
        .I5(slv_reg20[27]),
        .O(\s00_axi_rdata[27]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[27]_INST_0_i_9 
       (.I0(slv_reg11__0[27]),
        .I1(slv_reg10[27]),
        .I2(sel0[1]),
        .I3(slv_reg9__0[27]),
        .I4(sel0[0]),
        .I5(slv_reg8__0[27]),
        .O(\s00_axi_rdata[27]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[28]_INST_0 
       (.I0(\s00_axi_rdata[28]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[28]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[28]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[28]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[28]));
  MUXF7 \s00_axi_rdata[28]_INST_0_i_1 
       (.I0(\s00_axi_rdata[28]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[28]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[28]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[28]_INST_0_i_10 
       (.I0(slv_reg3[28]),
        .I1(slv_reg2[28]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg1[28]),
        .O(\s00_axi_rdata[28]_INST_0_i_10_n_0 ));
  MUXF7 \s00_axi_rdata[28]_INST_0_i_2 
       (.I0(\s00_axi_rdata[28]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[28]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[28]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \s00_axi_rdata[28]_INST_0_i_3 
       (.I0(sel0[1]),
        .I1(slv_reg15[28]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[28]_INST_0_i_9_n_0 ),
        .O(\s00_axi_rdata[28]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8830FFFF88300000)) 
    \s00_axi_rdata[28]_INST_0_i_4 
       (.I0(slv_reg7__0[28]),
        .I1(sel0[1]),
        .I2(slv_reg4__0[28]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[28]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[28]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[28]_INST_0_i_5 
       (.I0(slv_reg27[28]),
        .I1(slv_reg26[28]),
        .I2(sel0[1]),
        .I3(slv_reg25[28]),
        .I4(sel0[0]),
        .I5(slv_reg24[28]),
        .O(\s00_axi_rdata[28]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[28]_INST_0_i_6 
       (.I0(slv_reg31[28]),
        .I1(slv_reg30[28]),
        .I2(sel0[1]),
        .I3(slv_reg29[28]),
        .I4(sel0[0]),
        .I5(slv_reg28[28]),
        .O(\s00_axi_rdata[28]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[28]_INST_0_i_7 
       (.I0(slv_reg19[28]),
        .I1(slv_reg18[28]),
        .I2(sel0[1]),
        .I3(slv_reg17[28]),
        .I4(sel0[0]),
        .I5(slv_reg16[28]),
        .O(\s00_axi_rdata[28]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[28]_INST_0_i_8 
       (.I0(slv_reg23[28]),
        .I1(slv_reg22[28]),
        .I2(sel0[1]),
        .I3(slv_reg21[28]),
        .I4(sel0[0]),
        .I5(slv_reg20[28]),
        .O(\s00_axi_rdata[28]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[28]_INST_0_i_9 
       (.I0(slv_reg11__0[28]),
        .I1(slv_reg10[28]),
        .I2(sel0[1]),
        .I3(slv_reg9__0[28]),
        .I4(sel0[0]),
        .I5(slv_reg8__0[28]),
        .O(\s00_axi_rdata[28]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[29]_INST_0 
       (.I0(\s00_axi_rdata[29]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[29]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[29]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[29]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[29]));
  MUXF7 \s00_axi_rdata[29]_INST_0_i_1 
       (.I0(\s00_axi_rdata[29]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[29]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[29]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[29]_INST_0_i_10 
       (.I0(slv_reg3[29]),
        .I1(slv_reg2[29]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg1[29]),
        .O(\s00_axi_rdata[29]_INST_0_i_10_n_0 ));
  MUXF7 \s00_axi_rdata[29]_INST_0_i_2 
       (.I0(\s00_axi_rdata[29]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[29]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[29]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \s00_axi_rdata[29]_INST_0_i_3 
       (.I0(sel0[1]),
        .I1(slv_reg15[29]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[29]_INST_0_i_9_n_0 ),
        .O(\s00_axi_rdata[29]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8830FFFF88300000)) 
    \s00_axi_rdata[29]_INST_0_i_4 
       (.I0(slv_reg7__0[29]),
        .I1(sel0[1]),
        .I2(slv_reg4__0[29]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[29]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[29]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[29]_INST_0_i_5 
       (.I0(slv_reg27[29]),
        .I1(slv_reg26[29]),
        .I2(sel0[1]),
        .I3(slv_reg25[29]),
        .I4(sel0[0]),
        .I5(slv_reg24[29]),
        .O(\s00_axi_rdata[29]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[29]_INST_0_i_6 
       (.I0(slv_reg31[29]),
        .I1(slv_reg30[29]),
        .I2(sel0[1]),
        .I3(slv_reg29[29]),
        .I4(sel0[0]),
        .I5(slv_reg28[29]),
        .O(\s00_axi_rdata[29]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[29]_INST_0_i_7 
       (.I0(slv_reg19[29]),
        .I1(slv_reg18[29]),
        .I2(sel0[1]),
        .I3(slv_reg17[29]),
        .I4(sel0[0]),
        .I5(slv_reg16[29]),
        .O(\s00_axi_rdata[29]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[29]_INST_0_i_8 
       (.I0(slv_reg23[29]),
        .I1(slv_reg22[29]),
        .I2(sel0[1]),
        .I3(slv_reg21[29]),
        .I4(sel0[0]),
        .I5(slv_reg20[29]),
        .O(\s00_axi_rdata[29]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[29]_INST_0_i_9 
       (.I0(slv_reg11__0[29]),
        .I1(slv_reg10[29]),
        .I2(sel0[1]),
        .I3(slv_reg9__0[29]),
        .I4(sel0[0]),
        .I5(slv_reg8__0[29]),
        .O(\s00_axi_rdata[29]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[2]_INST_0 
       (.I0(\s00_axi_rdata[2]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[2]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[2]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[2]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[2]));
  MUXF7 \s00_axi_rdata[2]_INST_0_i_1 
       (.I0(\s00_axi_rdata[2]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[2]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[2]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[2]_INST_0_i_10 
       (.I0(slv_reg15[2]),
        .I1(triggerTimeOut[2]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\axi_araddr_reg[2]_rep_n_0 ),
        .I4(triggerVoltOut[2]),
        .O(\s00_axi_rdata[2]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0CFCF)) 
    \s00_axi_rdata[2]_INST_0_i_11 
       (.I0(slv_reg3[2]),
        .I1(slv_reg2[2]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg1[2]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .O(\s00_axi_rdata[2]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[2]_INST_0_i_12 
       (.I0(slv_reg7__0[2]),
        .I1(Rbus_out[2]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(LBus_out[2]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg4[2]),
        .O(\s00_axi_rdata[2]_INST_0_i_12_n_0 ));
  MUXF7 \s00_axi_rdata[2]_INST_0_i_2 
       (.I0(\s00_axi_rdata[2]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[2]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[2]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[2]_INST_0_i_3 
       (.I0(\s00_axi_rdata[2]_INST_0_i_9_n_0 ),
        .I1(\s00_axi_rdata[2]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[2]_INST_0_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[2]_INST_0_i_4 
       (.I0(\s00_axi_rdata[2]_INST_0_i_11_n_0 ),
        .I1(\s00_axi_rdata[2]_INST_0_i_12_n_0 ),
        .O(\s00_axi_rdata[2]_INST_0_i_4_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[2]_INST_0_i_5 
       (.I0(slv_reg27[2]),
        .I1(slv_reg26[2]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg25[2]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg24[2]),
        .O(\s00_axi_rdata[2]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[2]_INST_0_i_6 
       (.I0(slv_reg31[2]),
        .I1(slv_reg30[2]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg29[2]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg28[2]),
        .O(\s00_axi_rdata[2]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[2]_INST_0_i_7 
       (.I0(slv_reg19[2]),
        .I1(slv_reg18[2]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg17[2]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg16[2]),
        .O(\s00_axi_rdata[2]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[2]_INST_0_i_8 
       (.I0(slv_reg23[2]),
        .I1(slv_reg22[2]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg21[2]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg20[2]),
        .O(\s00_axi_rdata[2]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[2]_INST_0_i_9 
       (.I0(slv_reg11__0[2]),
        .I1(slv_reg10[2]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg9[2]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg8[2]),
        .O(\s00_axi_rdata[2]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[30]_INST_0 
       (.I0(\s00_axi_rdata[30]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[30]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[30]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[30]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[30]));
  MUXF7 \s00_axi_rdata[30]_INST_0_i_1 
       (.I0(\s00_axi_rdata[30]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[30]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[30]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[30]_INST_0_i_10 
       (.I0(slv_reg3[30]),
        .I1(slv_reg2[30]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg1[30]),
        .O(\s00_axi_rdata[30]_INST_0_i_10_n_0 ));
  MUXF7 \s00_axi_rdata[30]_INST_0_i_2 
       (.I0(\s00_axi_rdata[30]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[30]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[30]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \s00_axi_rdata[30]_INST_0_i_3 
       (.I0(sel0[1]),
        .I1(slv_reg15[30]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[30]_INST_0_i_9_n_0 ),
        .O(\s00_axi_rdata[30]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8830FFFF88300000)) 
    \s00_axi_rdata[30]_INST_0_i_4 
       (.I0(slv_reg7__0[30]),
        .I1(sel0[1]),
        .I2(slv_reg4__0[30]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[30]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[30]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[30]_INST_0_i_5 
       (.I0(slv_reg27[30]),
        .I1(slv_reg26[30]),
        .I2(sel0[1]),
        .I3(slv_reg25[30]),
        .I4(sel0[0]),
        .I5(slv_reg24[30]),
        .O(\s00_axi_rdata[30]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[30]_INST_0_i_6 
       (.I0(slv_reg31[30]),
        .I1(slv_reg30[30]),
        .I2(sel0[1]),
        .I3(slv_reg29[30]),
        .I4(sel0[0]),
        .I5(slv_reg28[30]),
        .O(\s00_axi_rdata[30]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[30]_INST_0_i_7 
       (.I0(slv_reg19[30]),
        .I1(slv_reg18[30]),
        .I2(sel0[1]),
        .I3(slv_reg17[30]),
        .I4(sel0[0]),
        .I5(slv_reg16[30]),
        .O(\s00_axi_rdata[30]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[30]_INST_0_i_8 
       (.I0(slv_reg23[30]),
        .I1(slv_reg22[30]),
        .I2(sel0[1]),
        .I3(slv_reg21[30]),
        .I4(sel0[0]),
        .I5(slv_reg20[30]),
        .O(\s00_axi_rdata[30]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[30]_INST_0_i_9 
       (.I0(slv_reg11__0[30]),
        .I1(slv_reg10[30]),
        .I2(sel0[1]),
        .I3(slv_reg9__0[30]),
        .I4(sel0[0]),
        .I5(slv_reg8__0[30]),
        .O(\s00_axi_rdata[30]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[31]_INST_0 
       (.I0(\s00_axi_rdata[31]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[31]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[31]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[31]));
  MUXF7 \s00_axi_rdata[31]_INST_0_i_1 
       (.I0(\s00_axi_rdata[31]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[31]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[31]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[31]_INST_0_i_10 
       (.I0(slv_reg3[31]),
        .I1(slv_reg2[31]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(slv_reg1[31]),
        .O(\s00_axi_rdata[31]_INST_0_i_10_n_0 ));
  MUXF7 \s00_axi_rdata[31]_INST_0_i_2 
       (.I0(\s00_axi_rdata[31]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[31]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[31]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \s00_axi_rdata[31]_INST_0_i_3 
       (.I0(sel0[1]),
        .I1(slv_reg15[31]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(\s00_axi_rdata[31]_INST_0_i_9_n_0 ),
        .O(\s00_axi_rdata[31]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8830FFFF88300000)) 
    \s00_axi_rdata[31]_INST_0_i_4 
       (.I0(slv_reg7__0[31]),
        .I1(sel0[1]),
        .I2(slv_reg4__0[31]),
        .I3(sel0[0]),
        .I4(sel0[2]),
        .I5(\s00_axi_rdata[31]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[31]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[31]_INST_0_i_5 
       (.I0(slv_reg27[31]),
        .I1(slv_reg26[31]),
        .I2(sel0[1]),
        .I3(slv_reg25[31]),
        .I4(sel0[0]),
        .I5(slv_reg24[31]),
        .O(\s00_axi_rdata[31]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[31]_INST_0_i_6 
       (.I0(slv_reg31[31]),
        .I1(slv_reg30[31]),
        .I2(sel0[1]),
        .I3(slv_reg29[31]),
        .I4(sel0[0]),
        .I5(slv_reg28[31]),
        .O(\s00_axi_rdata[31]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[31]_INST_0_i_7 
       (.I0(slv_reg19[31]),
        .I1(slv_reg18[31]),
        .I2(sel0[1]),
        .I3(slv_reg17[31]),
        .I4(sel0[0]),
        .I5(slv_reg16[31]),
        .O(\s00_axi_rdata[31]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[31]_INST_0_i_8 
       (.I0(slv_reg23[31]),
        .I1(slv_reg22[31]),
        .I2(sel0[1]),
        .I3(slv_reg21[31]),
        .I4(sel0[0]),
        .I5(slv_reg20[31]),
        .O(\s00_axi_rdata[31]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[31]_INST_0_i_9 
       (.I0(slv_reg11__0[31]),
        .I1(slv_reg10[31]),
        .I2(sel0[1]),
        .I3(slv_reg9__0[31]),
        .I4(sel0[0]),
        .I5(slv_reg8__0[31]),
        .O(\s00_axi_rdata[31]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[3]_INST_0 
       (.I0(\s00_axi_rdata[3]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[3]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[3]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[3]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[3]));
  MUXF7 \s00_axi_rdata[3]_INST_0_i_1 
       (.I0(\s00_axi_rdata[3]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[3]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[3]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[3]_INST_0_i_10 
       (.I0(slv_reg15[3]),
        .I1(triggerTimeOut[3]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\axi_araddr_reg[2]_rep_n_0 ),
        .I4(triggerVoltOut[3]),
        .O(\s00_axi_rdata[3]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[3]_INST_0_i_11 
       (.I0(slv_reg3[3]),
        .I1(slv_reg2[3]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\axi_araddr_reg[2]_rep_n_0 ),
        .I4(slv_reg1[3]),
        .O(\s00_axi_rdata[3]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[3]_INST_0_i_12 
       (.I0(slv_reg7__0[3]),
        .I1(Rbus_out[3]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(LBus_out[3]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg4[3]),
        .O(\s00_axi_rdata[3]_INST_0_i_12_n_0 ));
  MUXF7 \s00_axi_rdata[3]_INST_0_i_2 
       (.I0(\s00_axi_rdata[3]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[3]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[3]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[3]_INST_0_i_3 
       (.I0(\s00_axi_rdata[3]_INST_0_i_9_n_0 ),
        .I1(\s00_axi_rdata[3]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[3]_INST_0_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[3]_INST_0_i_4 
       (.I0(\s00_axi_rdata[3]_INST_0_i_11_n_0 ),
        .I1(\s00_axi_rdata[3]_INST_0_i_12_n_0 ),
        .O(\s00_axi_rdata[3]_INST_0_i_4_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[3]_INST_0_i_5 
       (.I0(slv_reg27[3]),
        .I1(slv_reg26[3]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg25[3]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg24[3]),
        .O(\s00_axi_rdata[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[3]_INST_0_i_6 
       (.I0(slv_reg31[3]),
        .I1(slv_reg30[3]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg29[3]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg28[3]),
        .O(\s00_axi_rdata[3]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[3]_INST_0_i_7 
       (.I0(slv_reg19[3]),
        .I1(slv_reg18[3]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg17[3]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg16[3]),
        .O(\s00_axi_rdata[3]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[3]_INST_0_i_8 
       (.I0(slv_reg23[3]),
        .I1(slv_reg22[3]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg21[3]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg20[3]),
        .O(\s00_axi_rdata[3]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[3]_INST_0_i_9 
       (.I0(slv_reg11__0[3]),
        .I1(slv_reg10[3]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg9[3]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg8[3]),
        .O(\s00_axi_rdata[3]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[4]_INST_0 
       (.I0(\s00_axi_rdata[4]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[4]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[4]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[4]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[4]));
  MUXF7 \s00_axi_rdata[4]_INST_0_i_1 
       (.I0(\s00_axi_rdata[4]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[4]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[4]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[4]_INST_0_i_10 
       (.I0(slv_reg15[4]),
        .I1(triggerTimeOut[4]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\axi_araddr_reg[2]_rep_n_0 ),
        .I4(triggerVoltOut[4]),
        .O(\s00_axi_rdata[4]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0CFCF)) 
    \s00_axi_rdata[4]_INST_0_i_11 
       (.I0(slv_reg3[4]),
        .I1(slv_reg2[4]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg1[4]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .O(\s00_axi_rdata[4]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[4]_INST_0_i_12 
       (.I0(slv_reg7__0[4]),
        .I1(Rbus_out[4]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(LBus_out[4]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg4[4]),
        .O(\s00_axi_rdata[4]_INST_0_i_12_n_0 ));
  MUXF7 \s00_axi_rdata[4]_INST_0_i_2 
       (.I0(\s00_axi_rdata[4]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[4]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[4]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[4]_INST_0_i_3 
       (.I0(\s00_axi_rdata[4]_INST_0_i_9_n_0 ),
        .I1(\s00_axi_rdata[4]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[4]_INST_0_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[4]_INST_0_i_4 
       (.I0(\s00_axi_rdata[4]_INST_0_i_11_n_0 ),
        .I1(\s00_axi_rdata[4]_INST_0_i_12_n_0 ),
        .O(\s00_axi_rdata[4]_INST_0_i_4_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[4]_INST_0_i_5 
       (.I0(slv_reg27[4]),
        .I1(slv_reg26[4]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg25[4]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg24[4]),
        .O(\s00_axi_rdata[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[4]_INST_0_i_6 
       (.I0(slv_reg31[4]),
        .I1(slv_reg30[4]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg29[4]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg28[4]),
        .O(\s00_axi_rdata[4]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[4]_INST_0_i_7 
       (.I0(slv_reg19[4]),
        .I1(slv_reg18[4]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg17[4]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg16[4]),
        .O(\s00_axi_rdata[4]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[4]_INST_0_i_8 
       (.I0(slv_reg23[4]),
        .I1(slv_reg22[4]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg21[4]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg20[4]),
        .O(\s00_axi_rdata[4]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[4]_INST_0_i_9 
       (.I0(slv_reg11__0[4]),
        .I1(slv_reg10[4]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg9[4]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg8[4]),
        .O(\s00_axi_rdata[4]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[5]_INST_0 
       (.I0(\s00_axi_rdata[5]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[5]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[5]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[5]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[5]));
  MUXF7 \s00_axi_rdata[5]_INST_0_i_1 
       (.I0(\s00_axi_rdata[5]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[5]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[5]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[5]_INST_0_i_10 
       (.I0(slv_reg15[5]),
        .I1(triggerTimeOut[5]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\axi_araddr_reg[2]_rep_n_0 ),
        .I4(triggerVoltOut[5]),
        .O(\s00_axi_rdata[5]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[5]_INST_0_i_11 
       (.I0(slv_reg3[5]),
        .I1(slv_reg2[5]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\axi_araddr_reg[2]_rep_n_0 ),
        .I4(slv_reg1[5]),
        .O(\s00_axi_rdata[5]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[5]_INST_0_i_12 
       (.I0(slv_reg7__0[5]),
        .I1(Rbus_out[5]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(LBus_out[5]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg4[5]),
        .O(\s00_axi_rdata[5]_INST_0_i_12_n_0 ));
  MUXF7 \s00_axi_rdata[5]_INST_0_i_2 
       (.I0(\s00_axi_rdata[5]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[5]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[5]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[5]_INST_0_i_3 
       (.I0(\s00_axi_rdata[5]_INST_0_i_9_n_0 ),
        .I1(\s00_axi_rdata[5]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[5]_INST_0_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[5]_INST_0_i_4 
       (.I0(\s00_axi_rdata[5]_INST_0_i_11_n_0 ),
        .I1(\s00_axi_rdata[5]_INST_0_i_12_n_0 ),
        .O(\s00_axi_rdata[5]_INST_0_i_4_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[5]_INST_0_i_5 
       (.I0(slv_reg27[5]),
        .I1(slv_reg26[5]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg25[5]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg24[5]),
        .O(\s00_axi_rdata[5]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[5]_INST_0_i_6 
       (.I0(slv_reg31[5]),
        .I1(slv_reg30[5]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg29[5]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg28[5]),
        .O(\s00_axi_rdata[5]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[5]_INST_0_i_7 
       (.I0(slv_reg19[5]),
        .I1(slv_reg18[5]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg17[5]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg16[5]),
        .O(\s00_axi_rdata[5]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[5]_INST_0_i_8 
       (.I0(slv_reg23[5]),
        .I1(slv_reg22[5]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg21[5]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg20[5]),
        .O(\s00_axi_rdata[5]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[5]_INST_0_i_9 
       (.I0(slv_reg11__0[5]),
        .I1(slv_reg10[5]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg9[5]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg8[5]),
        .O(\s00_axi_rdata[5]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[6]_INST_0 
       (.I0(\s00_axi_rdata[6]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[6]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[6]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[6]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[6]));
  MUXF7 \s00_axi_rdata[6]_INST_0_i_1 
       (.I0(\s00_axi_rdata[6]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[6]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[6]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[6]_INST_0_i_10 
       (.I0(slv_reg15[6]),
        .I1(triggerTimeOut[6]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\axi_araddr_reg[2]_rep_n_0 ),
        .I4(triggerVoltOut[6]),
        .O(\s00_axi_rdata[6]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[6]_INST_0_i_11 
       (.I0(slv_reg3[6]),
        .I1(slv_reg2[6]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\axi_araddr_reg[2]_rep_n_0 ),
        .I4(slv_reg1[6]),
        .O(\s00_axi_rdata[6]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[6]_INST_0_i_12 
       (.I0(slv_reg7__0[6]),
        .I1(Rbus_out[6]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(LBus_out[6]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg4[6]),
        .O(\s00_axi_rdata[6]_INST_0_i_12_n_0 ));
  MUXF7 \s00_axi_rdata[6]_INST_0_i_2 
       (.I0(\s00_axi_rdata[6]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[6]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[6]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[6]_INST_0_i_3 
       (.I0(\s00_axi_rdata[6]_INST_0_i_9_n_0 ),
        .I1(\s00_axi_rdata[6]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[6]_INST_0_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[6]_INST_0_i_4 
       (.I0(\s00_axi_rdata[6]_INST_0_i_11_n_0 ),
        .I1(\s00_axi_rdata[6]_INST_0_i_12_n_0 ),
        .O(\s00_axi_rdata[6]_INST_0_i_4_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[6]_INST_0_i_5 
       (.I0(slv_reg27[6]),
        .I1(slv_reg26[6]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg25[6]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg24[6]),
        .O(\s00_axi_rdata[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[6]_INST_0_i_6 
       (.I0(slv_reg31[6]),
        .I1(slv_reg30[6]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg29[6]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg28[6]),
        .O(\s00_axi_rdata[6]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[6]_INST_0_i_7 
       (.I0(slv_reg19[6]),
        .I1(slv_reg18[6]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg17[6]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg16[6]),
        .O(\s00_axi_rdata[6]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[6]_INST_0_i_8 
       (.I0(slv_reg23[6]),
        .I1(slv_reg22[6]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg21[6]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg20[6]),
        .O(\s00_axi_rdata[6]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[6]_INST_0_i_9 
       (.I0(slv_reg11__0[6]),
        .I1(slv_reg10[6]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg9[6]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg8[6]),
        .O(\s00_axi_rdata[6]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[7]_INST_0 
       (.I0(\s00_axi_rdata[7]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[7]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[7]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[7]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[7]));
  MUXF7 \s00_axi_rdata[7]_INST_0_i_1 
       (.I0(\s00_axi_rdata[7]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[7]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[7]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[7]_INST_0_i_10 
       (.I0(slv_reg15[7]),
        .I1(triggerTimeOut[7]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\axi_araddr_reg[2]_rep_n_0 ),
        .I4(triggerVoltOut[7]),
        .O(\s00_axi_rdata[7]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[7]_INST_0_i_11 
       (.I0(slv_reg3[7]),
        .I1(slv_reg2[7]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\axi_araddr_reg[2]_rep_n_0 ),
        .I4(slv_reg1[7]),
        .O(\s00_axi_rdata[7]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[7]_INST_0_i_12 
       (.I0(slv_reg7__0[7]),
        .I1(Rbus_out[7]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(LBus_out[7]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg4[7]),
        .O(\s00_axi_rdata[7]_INST_0_i_12_n_0 ));
  MUXF7 \s00_axi_rdata[7]_INST_0_i_2 
       (.I0(\s00_axi_rdata[7]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[7]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[7]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[7]_INST_0_i_3 
       (.I0(\s00_axi_rdata[7]_INST_0_i_9_n_0 ),
        .I1(\s00_axi_rdata[7]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[7]_INST_0_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[7]_INST_0_i_4 
       (.I0(\s00_axi_rdata[7]_INST_0_i_11_n_0 ),
        .I1(\s00_axi_rdata[7]_INST_0_i_12_n_0 ),
        .O(\s00_axi_rdata[7]_INST_0_i_4_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[7]_INST_0_i_5 
       (.I0(slv_reg27[7]),
        .I1(slv_reg26[7]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg25[7]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg24[7]),
        .O(\s00_axi_rdata[7]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[7]_INST_0_i_6 
       (.I0(slv_reg31[7]),
        .I1(slv_reg30[7]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg29[7]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg28[7]),
        .O(\s00_axi_rdata[7]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[7]_INST_0_i_7 
       (.I0(slv_reg19[7]),
        .I1(slv_reg18[7]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg17[7]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg16[7]),
        .O(\s00_axi_rdata[7]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[7]_INST_0_i_8 
       (.I0(slv_reg23[7]),
        .I1(slv_reg22[7]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg21[7]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg20[7]),
        .O(\s00_axi_rdata[7]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[7]_INST_0_i_9 
       (.I0(slv_reg11__0[7]),
        .I1(slv_reg10[7]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg9[7]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg8[7]),
        .O(\s00_axi_rdata[7]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[8]_INST_0 
       (.I0(\s00_axi_rdata[8]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[8]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[8]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[8]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[8]));
  MUXF7 \s00_axi_rdata[8]_INST_0_i_1 
       (.I0(\s00_axi_rdata[8]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[8]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[8]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[8]_INST_0_i_10 
       (.I0(slv_reg15[8]),
        .I1(triggerTimeOut[8]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\axi_araddr_reg[2]_rep_n_0 ),
        .I4(triggerVoltOut[8]),
        .O(\s00_axi_rdata[8]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[8]_INST_0_i_11 
       (.I0(slv_reg3[8]),
        .I1(slv_reg2[8]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\axi_araddr_reg[2]_rep_n_0 ),
        .I4(slv_reg1[8]),
        .O(\s00_axi_rdata[8]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[8]_INST_0_i_12 
       (.I0(slv_reg7__0[8]),
        .I1(Rbus_out[8]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(LBus_out[8]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg4[8]),
        .O(\s00_axi_rdata[8]_INST_0_i_12_n_0 ));
  MUXF7 \s00_axi_rdata[8]_INST_0_i_2 
       (.I0(\s00_axi_rdata[8]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[8]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[8]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[8]_INST_0_i_3 
       (.I0(\s00_axi_rdata[8]_INST_0_i_9_n_0 ),
        .I1(\s00_axi_rdata[8]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[8]_INST_0_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[8]_INST_0_i_4 
       (.I0(\s00_axi_rdata[8]_INST_0_i_11_n_0 ),
        .I1(\s00_axi_rdata[8]_INST_0_i_12_n_0 ),
        .O(\s00_axi_rdata[8]_INST_0_i_4_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[8]_INST_0_i_5 
       (.I0(slv_reg27[8]),
        .I1(slv_reg26[8]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg25[8]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg24[8]),
        .O(\s00_axi_rdata[8]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[8]_INST_0_i_6 
       (.I0(slv_reg31[8]),
        .I1(slv_reg30[8]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg29[8]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg28[8]),
        .O(\s00_axi_rdata[8]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[8]_INST_0_i_7 
       (.I0(slv_reg19[8]),
        .I1(slv_reg18[8]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg17[8]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg16[8]),
        .O(\s00_axi_rdata[8]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[8]_INST_0_i_8 
       (.I0(slv_reg23[8]),
        .I1(slv_reg22[8]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg21[8]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg20[8]),
        .O(\s00_axi_rdata[8]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[8]_INST_0_i_9 
       (.I0(slv_reg11__0[8]),
        .I1(slv_reg10[8]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg9[8]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg8[8]),
        .O(\s00_axi_rdata[8]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[9]_INST_0 
       (.I0(\s00_axi_rdata[9]_INST_0_i_1_n_0 ),
        .I1(\s00_axi_rdata[9]_INST_0_i_2_n_0 ),
        .I2(sel0[4]),
        .I3(\s00_axi_rdata[9]_INST_0_i_3_n_0 ),
        .I4(sel0[3]),
        .I5(\s00_axi_rdata[9]_INST_0_i_4_n_0 ),
        .O(s00_axi_rdata[9]));
  MUXF7 \s00_axi_rdata[9]_INST_0_i_1 
       (.I0(\s00_axi_rdata[9]_INST_0_i_5_n_0 ),
        .I1(\s00_axi_rdata[9]_INST_0_i_6_n_0 ),
        .O(\s00_axi_rdata[9]_INST_0_i_1_n_0 ),
        .S(sel0[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[9]_INST_0_i_10 
       (.I0(slv_reg15[9]),
        .I1(triggerTimeOut[9]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\axi_araddr_reg[2]_rep_n_0 ),
        .I4(triggerVoltOut[9]),
        .O(\s00_axi_rdata[9]_INST_0_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \s00_axi_rdata[9]_INST_0_i_11 
       (.I0(slv_reg3[9]),
        .I1(slv_reg2[9]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\axi_araddr_reg[2]_rep_n_0 ),
        .I4(slv_reg1[9]),
        .O(\s00_axi_rdata[9]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[9]_INST_0_i_12 
       (.I0(slv_reg7__0[9]),
        .I1(Rbus_out[9]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(LBus_out[9]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg4[9]),
        .O(\s00_axi_rdata[9]_INST_0_i_12_n_0 ));
  MUXF7 \s00_axi_rdata[9]_INST_0_i_2 
       (.I0(\s00_axi_rdata[9]_INST_0_i_7_n_0 ),
        .I1(\s00_axi_rdata[9]_INST_0_i_8_n_0 ),
        .O(\s00_axi_rdata[9]_INST_0_i_2_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[9]_INST_0_i_3 
       (.I0(\s00_axi_rdata[9]_INST_0_i_9_n_0 ),
        .I1(\s00_axi_rdata[9]_INST_0_i_10_n_0 ),
        .O(\s00_axi_rdata[9]_INST_0_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \s00_axi_rdata[9]_INST_0_i_4 
       (.I0(\s00_axi_rdata[9]_INST_0_i_11_n_0 ),
        .I1(\s00_axi_rdata[9]_INST_0_i_12_n_0 ),
        .O(\s00_axi_rdata[9]_INST_0_i_4_n_0 ),
        .S(sel0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[9]_INST_0_i_5 
       (.I0(slv_reg27[9]),
        .I1(slv_reg26[9]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg25[9]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg24[9]),
        .O(\s00_axi_rdata[9]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[9]_INST_0_i_6 
       (.I0(slv_reg31[9]),
        .I1(slv_reg30[9]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg29[9]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg28[9]),
        .O(\s00_axi_rdata[9]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[9]_INST_0_i_7 
       (.I0(slv_reg19[9]),
        .I1(slv_reg18[9]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg17[9]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg16[9]),
        .O(\s00_axi_rdata[9]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[9]_INST_0_i_8 
       (.I0(slv_reg23[9]),
        .I1(slv_reg22[9]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg21[9]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg20[9]),
        .O(\s00_axi_rdata[9]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s00_axi_rdata[9]_INST_0_i_9 
       (.I0(slv_reg11__0[9]),
        .I1(slv_reg10[9]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg9[9]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg8[9]),
        .O(\s00_axi_rdata[9]_INST_0_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg10[15]_i_1 
       (.I0(\slv_reg10[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[1]),
        .O(\slv_reg10[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg10[23]_i_1 
       (.I0(\slv_reg10[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[2]),
        .O(\slv_reg10[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg10[31]_i_1 
       (.I0(\slv_reg10[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[3]),
        .O(\slv_reg10[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000002020200020)) 
    \slv_reg10[31]_i_2 
       (.I0(\slv_reg26[31]_i_2_n_0 ),
        .I1(mem_logic[4]),
        .I2(s00_axi_wvalid),
        .I3(\axi_awaddr_reg_n_0_[6] ),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_awaddr[4]),
        .O(\slv_reg10[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg10[7]_i_1 
       (.I0(\slv_reg10[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[0]),
        .O(\slv_reg10[7]_i_1_n_0 ));
  FDRE \slv_reg10_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg10[0]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg10_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg10[10]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg10_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg10[11]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg10_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg10[12]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg10_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg10[13]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg10_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg10[14]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg10_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg10[15]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg10_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg10[16]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg10_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg10[17]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg10_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg10[18]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg10_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg10[19]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg10_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg10[1]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg10_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg10[20]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg10_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg10[21]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg10_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg10[22]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg10_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg10[23]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg10_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg10[24]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg10_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg10[25]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg10_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg10[26]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg10_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg10[27]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg10_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg10[28]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg10_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg10[29]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg10_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg10[2]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg10_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg10[30]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg10_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg10[31]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg10_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg10[3]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg10_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg10[4]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg10_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg10[5]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg10_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg10[6]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg10_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg10[7]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg10_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg10[8]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg10_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg10[9]),
        .R(\Audio_Codec/rst ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg11[15]_i_1 
       (.I0(\slv_reg11[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[1]),
        .O(\slv_reg11[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg11[23]_i_1 
       (.I0(\slv_reg11[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[2]),
        .O(\slv_reg11[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg11[31]_i_1 
       (.I0(\slv_reg11[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[3]),
        .O(\slv_reg11[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000002A200000000)) 
    \slv_reg11[31]_i_2 
       (.I0(\slv_reg27[31]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[6] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[4]),
        .I4(mem_logic[4]),
        .I5(s00_axi_wvalid),
        .O(\slv_reg11[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg11[7]_i_1 
       (.I0(\slv_reg11[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[0]),
        .O(\slv_reg11[7]_i_1_n_0 ));
  FDRE \slv_reg11_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg11),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg11_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg11__0[10]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg11_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg11__0[11]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg11_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg11__0[12]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg11_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg11__0[13]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg11_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg11__0[14]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg11_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg11__0[15]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg11_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg11__0[16]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg11_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg11__0[17]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg11_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg11__0[18]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg11_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg11__0[19]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg11_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg11__0[1]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg11_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg11__0[20]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg11_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg11__0[21]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg11_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg11__0[22]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg11_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg11__0[23]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg11_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg11__0[24]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg11_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg11__0[25]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg11_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg11__0[26]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg11_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg11__0[27]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg11_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg11__0[28]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg11_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg11__0[29]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg11_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg11__0[2]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg11_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg11__0[30]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg11_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg11__0[31]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg11_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg11__0[3]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg11_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg11__0[4]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg11_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg11__0[5]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg11_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg11__0[6]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg11_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg11__0[7]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg11_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg11__0[8]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg11_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg11__0[9]),
        .R(\Audio_Codec/rst ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg15[15]_i_1 
       (.I0(\slv_reg15[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[1]),
        .O(\slv_reg15[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg15[23]_i_1 
       (.I0(\slv_reg15[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[2]),
        .O(\slv_reg15[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg15[31]_i_1 
       (.I0(\slv_reg15[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[3]),
        .O(\slv_reg15[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A8080000)) 
    \slv_reg15[31]_i_2 
       (.I0(mem_logic[5]),
        .I1(\axi_awaddr_reg_n_0_[4] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[2]),
        .I4(\slv_reg15[31]_i_4_n_0 ),
        .I5(\slv_reg15[31]_i_5_n_0 ),
        .O(\slv_reg15[31]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg15[31]_i_3 
       (.I0(s00_axi_awaddr[3]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[5] ),
        .O(mem_logic[5]));
  LUT4 #(
    .INIT(16'h02A2)) 
    \slv_reg15[31]_i_4 
       (.I0(s00_axi_wvalid),
        .I1(\axi_awaddr_reg_n_0_[6] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[4]),
        .O(\slv_reg15[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT5 #(
    .INIT(32'h335FFF5F)) 
    \slv_reg15[31]_i_5 
       (.I0(\axi_awaddr_reg_n_0_[2] ),
        .I1(s00_axi_awaddr[0]),
        .I2(\axi_awaddr_reg_n_0_[3] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[1]),
        .O(\slv_reg15[31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg15[7]_i_1 
       (.I0(\slv_reg15[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[0]),
        .O(\slv_reg15[7]_i_1_n_0 ));
  FDRE \slv_reg15_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg15[0]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg15_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg15[10]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg15_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg15[11]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg15_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg15[12]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg15_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg15[13]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg15_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg15[14]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg15_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg15[15]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg15_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg15[16]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg15_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg15[17]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg15_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg15[18]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg15_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg15[19]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg15_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg15[1]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg15_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg15[20]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg15_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg15[21]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg15_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg15[22]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg15_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg15[23]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg15_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg15[24]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg15_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg15[25]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg15_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg15[26]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg15_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg15[27]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg15_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg15[28]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg15_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg15[29]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg15_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg15[2]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg15_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg15[30]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg15_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg15[31]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg15_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg15[3]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg15_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg15[4]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg15_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg15[5]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg15_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg15[6]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg15_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg15[7]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg15_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg15[8]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg15_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg15[9]),
        .R(\Audio_Codec/rst ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg16[15]_i_1 
       (.I0(\slv_reg16[15]_i_2_n_0 ),
        .I1(\slv_reg16[31]_i_3_n_0 ),
        .O(\slv_reg16[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5404000000000000)) 
    \slv_reg16[15]_i_2 
       (.I0(mem_logic[4]),
        .I1(\axi_awaddr_reg_n_0_[6] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[4]),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wstrb[1]),
        .O(\slv_reg16[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg16[23]_i_1 
       (.I0(\slv_reg16[23]_i_2_n_0 ),
        .I1(\slv_reg16[31]_i_3_n_0 ),
        .O(\slv_reg16[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5404000000000000)) 
    \slv_reg16[23]_i_2 
       (.I0(mem_logic[4]),
        .I1(\axi_awaddr_reg_n_0_[6] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[4]),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wstrb[2]),
        .O(\slv_reg16[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg16[31]_i_1 
       (.I0(\slv_reg16[31]_i_2_n_0 ),
        .I1(\slv_reg16[31]_i_3_n_0 ),
        .O(\slv_reg16[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5404000000000000)) 
    \slv_reg16[31]_i_2 
       (.I0(mem_logic[4]),
        .I1(\axi_awaddr_reg_n_0_[6] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[4]),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wstrb[3]),
        .O(\slv_reg16[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000440347)) 
    \slv_reg16[31]_i_3 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(s00_axi_awaddr[3]),
        .I4(\axi_awaddr_reg_n_0_[5] ),
        .I5(mem_logic[3]),
        .O(\slv_reg16[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg16[7]_i_1 
       (.I0(\slv_reg16[7]_i_2_n_0 ),
        .I1(\slv_reg16[31]_i_3_n_0 ),
        .O(\slv_reg16[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5404000000000000)) 
    \slv_reg16[7]_i_2 
       (.I0(mem_logic[4]),
        .I1(\axi_awaddr_reg_n_0_[6] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[4]),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wstrb[0]),
        .O(\slv_reg16[7]_i_2_n_0 ));
  FDRE \slv_reg16_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg16[0]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg16_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg16[10]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg16_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg16[11]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg16_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg16[12]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg16_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg16[13]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg16_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg16[14]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg16_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg16[15]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg16_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg16[16]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg16_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg16[17]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg16_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg16[18]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg16_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg16[19]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg16_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg16[1]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg16_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg16[20]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg16_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg16[21]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg16_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg16[22]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg16_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg16[23]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg16_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg16[24]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg16_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg16[25]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg16_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg16[26]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg16_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg16[27]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg16_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg16[28]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg16_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg16[29]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg16_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg16[2]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg16_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg16[30]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg16_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg16[31]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg16_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg16[3]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg16_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg16[4]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg16_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg16[5]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg16_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg16[6]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg16_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg16[7]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg16_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg16[8]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg16_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg16[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg16[9]),
        .R(\Audio_Codec/rst ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg17[15]_i_1 
       (.I0(\slv_reg16[15]_i_2_n_0 ),
        .I1(\slv_reg17[31]_i_2_n_0 ),
        .O(\slv_reg17[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg17[23]_i_1 
       (.I0(\slv_reg16[23]_i_2_n_0 ),
        .I1(\slv_reg17[31]_i_2_n_0 ),
        .O(\slv_reg17[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg17[31]_i_1 
       (.I0(\slv_reg16[31]_i_2_n_0 ),
        .I1(\slv_reg17[31]_i_2_n_0 ),
        .O(\slv_reg17[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000C0000000C0A0A)) 
    \slv_reg17[31]_i_2 
       (.I0(\axi_awaddr_reg_n_0_[2] ),
        .I1(s00_axi_awaddr[0]),
        .I2(mem_logic[3]),
        .I3(s00_axi_awaddr[3]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[5] ),
        .O(\slv_reg17[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg17[7]_i_1 
       (.I0(\slv_reg16[7]_i_2_n_0 ),
        .I1(\slv_reg17[31]_i_2_n_0 ),
        .O(\slv_reg17[7]_i_1_n_0 ));
  FDRE \slv_reg17_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg17[0]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg17_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg17[10]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg17_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg17[11]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg17_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg17[12]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg17_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg17[13]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg17_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg17[14]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg17_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg17[15]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg17_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg17[16]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg17_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg17[17]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg17_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg17[18]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg17_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg17[19]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg17_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg17[1]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg17_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg17[20]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg17_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg17[21]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg17_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg17[22]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg17_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg17[23]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg17_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg17[24]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg17_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg17[25]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg17_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg17[26]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg17_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg17[27]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg17_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg17[28]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg17_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg17[29]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg17_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg17[2]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg17_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg17[30]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg17_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg17[31]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg17_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg17[3]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg17_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg17[4]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg17_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg17[5]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg17_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg17[6]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg17_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg17[7]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg17_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg17[8]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg17_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg17[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg17[9]),
        .R(\Audio_Codec/rst ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg18[15]_i_1 
       (.I0(\slv_reg16[15]_i_2_n_0 ),
        .I1(\slv_reg18[31]_i_2_n_0 ),
        .O(\slv_reg18[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg18[23]_i_1 
       (.I0(\slv_reg16[23]_i_2_n_0 ),
        .I1(\slv_reg18[31]_i_2_n_0 ),
        .O(\slv_reg18[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg18[31]_i_1 
       (.I0(\slv_reg16[31]_i_2_n_0 ),
        .I1(\slv_reg18[31]_i_2_n_0 ),
        .O(\slv_reg18[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00002020000A202A)) 
    \slv_reg18[31]_i_2 
       (.I0(mem_logic[3]),
        .I1(s00_axi_awaddr[0]),
        .I2(s00_axi_awvalid),
        .I3(\axi_awaddr_reg_n_0_[2] ),
        .I4(s00_axi_awaddr[3]),
        .I5(\axi_awaddr_reg_n_0_[5] ),
        .O(\slv_reg18[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg18[7]_i_1 
       (.I0(\slv_reg16[7]_i_2_n_0 ),
        .I1(\slv_reg18[31]_i_2_n_0 ),
        .O(\slv_reg18[7]_i_1_n_0 ));
  FDRE \slv_reg18_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg18[0]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg18_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg18[10]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg18_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg18[11]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg18_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg18[12]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg18_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg18[13]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg18_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg18[14]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg18_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg18[15]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg18_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg18[16]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg18_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg18[17]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg18_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg18[18]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg18_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg18[19]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg18_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg18[1]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg18_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg18[20]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg18_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg18[21]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg18_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg18[22]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg18_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg18[23]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg18_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg18[24]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg18_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg18[25]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg18_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg18[26]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg18_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg18[27]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg18_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg18[28]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg18_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg18[29]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg18_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg18[2]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg18_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg18[30]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg18_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg18[31]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg18_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg18[3]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg18_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg18[4]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg18_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg18[5]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg18_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg18[6]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg18_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg18[7]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg18_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg18[8]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg18_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg18[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg18[9]),
        .R(\Audio_Codec/rst ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg19[15]_i_1 
       (.I0(\slv_reg16[15]_i_2_n_0 ),
        .I1(\slv_reg19[31]_i_2_n_0 ),
        .O(\slv_reg19[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg19[23]_i_1 
       (.I0(\slv_reg16[23]_i_2_n_0 ),
        .I1(\slv_reg19[31]_i_2_n_0 ),
        .O(\slv_reg19[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg19[31]_i_1 
       (.I0(\slv_reg16[31]_i_2_n_0 ),
        .I1(\slv_reg19[31]_i_2_n_0 ),
        .O(\slv_reg19[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000A0888800A0)) 
    \slv_reg19[31]_i_2 
       (.I0(mem_logic[3]),
        .I1(s00_axi_awaddr[0]),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(\axi_awaddr_reg_n_0_[5] ),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_awaddr[3]),
        .O(\slv_reg19[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg19[7]_i_1 
       (.I0(\slv_reg16[7]_i_2_n_0 ),
        .I1(\slv_reg19[31]_i_2_n_0 ),
        .O(\slv_reg19[7]_i_1_n_0 ));
  FDRE \slv_reg19_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg19[0]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg19_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg19[10]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg19_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg19[11]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg19_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg19[12]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg19_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg19[13]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg19_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg19[14]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg19_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg19[15]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg19_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg19[16]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg19_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg19[17]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg19_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg19[18]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg19_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg19[19]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg19_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg19[1]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg19_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg19[20]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg19_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg19[21]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg19_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg19[22]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg19_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg19[23]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg19_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg19[24]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg19_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg19[25]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg19_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg19[26]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg19_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg19[27]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg19_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg19[28]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg19_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg19[29]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg19_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg19[2]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg19_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg19[30]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg19_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg19[31]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg19_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg19[3]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg19_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg19[4]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg19_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg19[5]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg19_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg19[6]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg19_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg19[7]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg19_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg19[8]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg19_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg19[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg19[9]),
        .R(\Audio_Codec/rst ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[15]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[1]),
        .O(p_1_in[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[23]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[2]),
        .O(p_1_in[23]));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[31]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[3]),
        .O(p_1_in[31]));
  LUT6 #(
    .INIT(64'h000002A200000000)) 
    \slv_reg1[31]_i_2 
       (.I0(\slv_reg17[31]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[6] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[4]),
        .I4(mem_logic[4]),
        .I5(s00_axi_wvalid),
        .O(\slv_reg1[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[7]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[0]),
        .O(p_1_in[7]));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(\Audio_Codec/rst ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg20[15]_i_1 
       (.I0(\slv_reg20[15]_i_2_n_0 ),
        .I1(\slv_reg16[31]_i_3_n_0 ),
        .O(\slv_reg20[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA808000000000000)) 
    \slv_reg20[15]_i_2 
       (.I0(mem_logic[4]),
        .I1(\axi_awaddr_reg_n_0_[6] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[4]),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wstrb[1]),
        .O(\slv_reg20[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg20[23]_i_1 
       (.I0(\slv_reg20[23]_i_2_n_0 ),
        .I1(\slv_reg16[31]_i_3_n_0 ),
        .O(\slv_reg20[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA808000000000000)) 
    \slv_reg20[23]_i_2 
       (.I0(mem_logic[4]),
        .I1(\axi_awaddr_reg_n_0_[6] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[4]),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wstrb[2]),
        .O(\slv_reg20[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg20[31]_i_1 
       (.I0(\slv_reg20[31]_i_2_n_0 ),
        .I1(\slv_reg16[31]_i_3_n_0 ),
        .O(\slv_reg20[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA808000000000000)) 
    \slv_reg20[31]_i_2 
       (.I0(mem_logic[4]),
        .I1(\axi_awaddr_reg_n_0_[6] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[4]),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wstrb[3]),
        .O(\slv_reg20[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg20[7]_i_1 
       (.I0(\slv_reg20[7]_i_2_n_0 ),
        .I1(\slv_reg16[31]_i_3_n_0 ),
        .O(\slv_reg20[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA808000000000000)) 
    \slv_reg20[7]_i_2 
       (.I0(mem_logic[4]),
        .I1(\axi_awaddr_reg_n_0_[6] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[4]),
        .I4(s00_axi_wvalid),
        .I5(s00_axi_wstrb[0]),
        .O(\slv_reg20[7]_i_2_n_0 ));
  FDRE \slv_reg20_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg20[0]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg20_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg20[10]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg20_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg20[11]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg20_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg20[12]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg20_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg20[13]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg20_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg20[14]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg20_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg20[15]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg20_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg20[16]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg20_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg20[17]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg20_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg20[18]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg20_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg20[19]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg20_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg20[1]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg20_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg20[20]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg20_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg20[21]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg20_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg20[22]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg20_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg20[23]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg20_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg20[24]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg20_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg20[25]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg20_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg20[26]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg20_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg20[27]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg20_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg20[28]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg20_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg20[29]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg20_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg20[2]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg20_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg20[30]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg20_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg20[31]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg20_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg20[3]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg20_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg20[4]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg20_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg20[5]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg20_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg20[6]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg20_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg20[7]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg20_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg20[8]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg20_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg20[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg20[9]),
        .R(\Audio_Codec/rst ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg21[15]_i_1 
       (.I0(\slv_reg20[15]_i_2_n_0 ),
        .I1(\slv_reg17[31]_i_2_n_0 ),
        .O(\slv_reg21[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg21[23]_i_1 
       (.I0(\slv_reg20[23]_i_2_n_0 ),
        .I1(\slv_reg17[31]_i_2_n_0 ),
        .O(\slv_reg21[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg21[31]_i_1 
       (.I0(\slv_reg20[31]_i_2_n_0 ),
        .I1(\slv_reg17[31]_i_2_n_0 ),
        .O(\slv_reg21[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg21[7]_i_1 
       (.I0(\slv_reg20[7]_i_2_n_0 ),
        .I1(\slv_reg17[31]_i_2_n_0 ),
        .O(\slv_reg21[7]_i_1_n_0 ));
  FDRE \slv_reg21_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg21[0]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg21_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg21[10]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg21_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg21[11]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg21_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg21[12]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg21_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg21[13]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg21_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg21[14]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg21_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg21[15]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg21_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg21[16]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg21_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg21[17]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg21_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg21[18]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg21_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg21[19]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg21_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg21[1]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg21_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg21[20]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg21_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg21[21]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg21_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg21[22]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg21_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg21[23]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg21_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg21[24]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg21_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg21[25]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg21_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg21[26]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg21_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg21[27]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg21_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg21[28]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg21_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg21[29]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg21_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg21[2]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg21_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg21[30]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg21_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg21[31]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg21_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg21[3]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg21_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg21[4]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg21_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg21[5]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg21_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg21[6]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg21_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg21[7]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg21_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg21[8]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg21_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg21[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg21[9]),
        .R(\Audio_Codec/rst ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg22[15]_i_1 
       (.I0(\slv_reg20[15]_i_2_n_0 ),
        .I1(\slv_reg18[31]_i_2_n_0 ),
        .O(\slv_reg22[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg22[23]_i_1 
       (.I0(\slv_reg20[23]_i_2_n_0 ),
        .I1(\slv_reg18[31]_i_2_n_0 ),
        .O(\slv_reg22[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg22[31]_i_1 
       (.I0(\slv_reg20[31]_i_2_n_0 ),
        .I1(\slv_reg18[31]_i_2_n_0 ),
        .O(\slv_reg22[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg22[7]_i_1 
       (.I0(\slv_reg20[7]_i_2_n_0 ),
        .I1(\slv_reg18[31]_i_2_n_0 ),
        .O(\slv_reg22[7]_i_1_n_0 ));
  FDRE \slv_reg22_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg22[0]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg22_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg22[10]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg22_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg22[11]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg22_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg22[12]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg22_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg22[13]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg22_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg22[14]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg22_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg22[15]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg22_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg22[16]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg22_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg22[17]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg22_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg22[18]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg22_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg22[19]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg22_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg22[1]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg22_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg22[20]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg22_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg22[21]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg22_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg22[22]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg22_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg22[23]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg22_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg22[24]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg22_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg22[25]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg22_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg22[26]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg22_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg22[27]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg22_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg22[28]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg22_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg22[29]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg22_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg22[2]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg22_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg22[30]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg22_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg22[31]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg22_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg22[3]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg22_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg22[4]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg22_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg22[5]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg22_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg22[6]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg22_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg22[7]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg22_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg22[8]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg22_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg22[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg22[9]),
        .R(\Audio_Codec/rst ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg23[15]_i_1 
       (.I0(\slv_reg20[15]_i_2_n_0 ),
        .I1(\slv_reg19[31]_i_2_n_0 ),
        .O(\slv_reg23[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg23[23]_i_1 
       (.I0(\slv_reg20[23]_i_2_n_0 ),
        .I1(\slv_reg19[31]_i_2_n_0 ),
        .O(\slv_reg23[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg23[31]_i_1 
       (.I0(\slv_reg20[31]_i_2_n_0 ),
        .I1(\slv_reg19[31]_i_2_n_0 ),
        .O(\slv_reg23[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg23[7]_i_1 
       (.I0(\slv_reg20[7]_i_2_n_0 ),
        .I1(\slv_reg19[31]_i_2_n_0 ),
        .O(\slv_reg23[7]_i_1_n_0 ));
  FDRE \slv_reg23_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg23[0]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg23_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg23[10]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg23_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg23[11]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg23_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg23[12]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg23_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg23[13]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg23_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg23[14]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg23_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg23[15]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg23_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg23[16]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg23_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg23[17]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg23_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg23[18]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg23_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg23[19]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg23_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg23[1]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg23_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg23[20]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg23_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg23[21]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg23_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg23[22]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg23_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg23[23]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg23_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg23[24]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg23_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg23[25]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg23_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg23[26]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg23_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg23[27]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg23_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg23[28]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg23_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg23[29]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg23_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg23[2]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg23_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg23[30]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg23_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg23[31]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg23_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg23[3]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg23_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg23[4]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg23_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg23[5]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg23_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg23[6]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg23_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg23[7]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg23_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg23[8]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg23_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg23[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg23[9]),
        .R(\Audio_Codec/rst ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg24[15]_i_1 
       (.I0(\slv_reg16[15]_i_2_n_0 ),
        .I1(\slv_reg24[31]_i_2_n_0 ),
        .O(\slv_reg24[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg24[23]_i_1 
       (.I0(\slv_reg16[23]_i_2_n_0 ),
        .I1(\slv_reg24[31]_i_2_n_0 ),
        .O(\slv_reg24[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg24[31]_i_1 
       (.I0(\slv_reg16[31]_i_2_n_0 ),
        .I1(\slv_reg24[31]_i_2_n_0 ),
        .O(\slv_reg24[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000047034400)) 
    \slv_reg24[31]_i_2 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(s00_axi_awaddr[3]),
        .I4(\axi_awaddr_reg_n_0_[5] ),
        .I5(mem_logic[3]),
        .O(\slv_reg24[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg24[7]_i_1 
       (.I0(\slv_reg16[7]_i_2_n_0 ),
        .I1(\slv_reg24[31]_i_2_n_0 ),
        .O(\slv_reg24[7]_i_1_n_0 ));
  FDRE \slv_reg24_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg24[0]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg24_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg24[10]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg24_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg24[11]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg24_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg24[12]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg24_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg24[13]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg24_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg24[14]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg24_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg24[15]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg24_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg24[16]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg24_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg24[17]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg24_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg24[18]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg24_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg24[19]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg24_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg24[1]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg24_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg24[20]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg24_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg24[21]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg24_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg24[22]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg24_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg24[23]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg24_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg24[24]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg24_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg24[25]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg24_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg24[26]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg24_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg24[27]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg24_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg24[28]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg24_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg24[29]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg24_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg24[2]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg24_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg24[30]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg24_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg24[31]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg24_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg24[3]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg24_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg24[4]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg24_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg24[5]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg24_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg24[6]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg24_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg24[7]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg24_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg24[8]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg24_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg24[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg24[9]),
        .R(\Audio_Codec/rst ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg25[15]_i_1 
       (.I0(\slv_reg16[15]_i_2_n_0 ),
        .I1(\slv_reg25[31]_i_2_n_0 ),
        .O(\slv_reg25[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg25[23]_i_1 
       (.I0(\slv_reg16[23]_i_2_n_0 ),
        .I1(\slv_reg25[31]_i_2_n_0 ),
        .O(\slv_reg25[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg25[31]_i_1 
       (.I0(\slv_reg16[31]_i_2_n_0 ),
        .I1(\slv_reg25[31]_i_2_n_0 ),
        .O(\slv_reg25[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4444500000005000)) 
    \slv_reg25[31]_i_2 
       (.I0(mem_logic[3]),
        .I1(s00_axi_awaddr[0]),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(\axi_awaddr_reg_n_0_[5] ),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_awaddr[3]),
        .O(\slv_reg25[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg25[7]_i_1 
       (.I0(\slv_reg16[7]_i_2_n_0 ),
        .I1(\slv_reg25[31]_i_2_n_0 ),
        .O(\slv_reg25[7]_i_1_n_0 ));
  FDRE \slv_reg25_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg25[0]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg25_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg25[10]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg25_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg25[11]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg25_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg25[12]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg25_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg25[13]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg25_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg25[14]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg25_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg25[15]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg25_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg25[16]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg25_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg25[17]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg25_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg25[18]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg25_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg25[19]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg25_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg25[1]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg25_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg25[20]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg25_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg25[21]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg25_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg25[22]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg25_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg25[23]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg25_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg25[24]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg25_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg25[25]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg25_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg25[26]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg25_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg25[27]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg25_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg25[28]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg25_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg25[29]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg25_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg25[2]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg25_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg25[30]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg25_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg25[31]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg25_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg25[3]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg25_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg25[4]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg25_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg25[5]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg25_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg25[6]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg25_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg25[7]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg25_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg25[8]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg25_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg25[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg25[9]),
        .R(\Audio_Codec/rst ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg26[15]_i_1 
       (.I0(\slv_reg16[15]_i_2_n_0 ),
        .I1(\slv_reg26[31]_i_2_n_0 ),
        .O(\slv_reg26[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg26[23]_i_1 
       (.I0(\slv_reg16[23]_i_2_n_0 ),
        .I1(\slv_reg26[31]_i_2_n_0 ),
        .O(\slv_reg26[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg26[31]_i_1 
       (.I0(\slv_reg16[31]_i_2_n_0 ),
        .I1(\slv_reg26[31]_i_2_n_0 ),
        .O(\slv_reg26[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4703440000000000)) 
    \slv_reg26[31]_i_2 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(s00_axi_awaddr[3]),
        .I4(\axi_awaddr_reg_n_0_[5] ),
        .I5(mem_logic[3]),
        .O(\slv_reg26[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg26[7]_i_1 
       (.I0(\slv_reg16[7]_i_2_n_0 ),
        .I1(\slv_reg26[31]_i_2_n_0 ),
        .O(\slv_reg26[7]_i_1_n_0 ));
  FDRE \slv_reg26_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg26[0]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg26_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg26[10]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg26_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg26[11]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg26_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg26[12]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg26_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg26[13]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg26_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg26[14]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg26_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg26[15]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg26_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg26[16]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg26_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg26[17]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg26_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg26[18]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg26_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg26[19]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg26_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg26[1]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg26_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg26[20]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg26_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg26[21]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg26_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg26[22]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg26_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg26[23]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg26_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg26[24]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg26_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg26[25]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg26_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg26[26]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg26_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg26[27]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg26_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg26[28]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg26_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg26[29]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg26_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg26[2]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg26_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg26[30]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg26_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg26[31]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg26_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg26[3]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg26_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg26[4]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg26_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg26[5]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg26_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg26[6]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg26_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg26[7]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg26_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg26[8]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg26_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg26[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg26[9]),
        .R(\Audio_Codec/rst ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg27[15]_i_1 
       (.I0(\slv_reg27[31]_i_2_n_0 ),
        .I1(\slv_reg16[15]_i_2_n_0 ),
        .O(\slv_reg27[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg27[23]_i_1 
       (.I0(\slv_reg27[31]_i_2_n_0 ),
        .I1(\slv_reg16[23]_i_2_n_0 ),
        .O(\slv_reg27[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg27[31]_i_1 
       (.I0(\slv_reg27[31]_i_2_n_0 ),
        .I1(\slv_reg16[31]_i_2_n_0 ),
        .O(\slv_reg27[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC000A0A0C0000000)) 
    \slv_reg27[31]_i_2 
       (.I0(\axi_awaddr_reg_n_0_[5] ),
        .I1(s00_axi_awaddr[3]),
        .I2(mem_logic[3]),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(\slv_reg27[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg27[7]_i_1 
       (.I0(\slv_reg27[31]_i_2_n_0 ),
        .I1(\slv_reg16[7]_i_2_n_0 ),
        .O(\slv_reg27[7]_i_1_n_0 ));
  FDRE \slv_reg27_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg27[0]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg27_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg27[10]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg27_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg27[11]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg27_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg27[12]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg27_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg27[13]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg27_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg27[14]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg27_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg27[15]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg27_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg27[16]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg27_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg27[17]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg27_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg27[18]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg27_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg27[19]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg27_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg27[1]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg27_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg27[20]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg27_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg27[21]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg27_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg27[22]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg27_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg27[23]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg27_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg27[24]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg27_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg27[25]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg27_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg27[26]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg27_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg27[27]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg27_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg27[28]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg27_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg27[29]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg27_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg27[2]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg27_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg27[30]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg27_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg27[31]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg27_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg27[3]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg27_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg27[4]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg27_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg27[5]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg27_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg27[6]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg27_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg27[7]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg27_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg27[8]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg27_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg27[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg27[9]),
        .R(\Audio_Codec/rst ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg28[15]_i_1 
       (.I0(\slv_reg20[15]_i_2_n_0 ),
        .I1(\slv_reg24[31]_i_2_n_0 ),
        .O(\slv_reg28[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg28[23]_i_1 
       (.I0(\slv_reg20[23]_i_2_n_0 ),
        .I1(\slv_reg24[31]_i_2_n_0 ),
        .O(\slv_reg28[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg28[31]_i_1 
       (.I0(\slv_reg20[31]_i_2_n_0 ),
        .I1(\slv_reg24[31]_i_2_n_0 ),
        .O(\slv_reg28[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg28[7]_i_1 
       (.I0(\slv_reg20[7]_i_2_n_0 ),
        .I1(\slv_reg24[31]_i_2_n_0 ),
        .O(\slv_reg28[7]_i_1_n_0 ));
  FDRE \slv_reg28_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg28[0]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg28_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg28[10]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg28_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg28[11]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg28_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg28[12]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg28_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg28[13]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg28_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg28[14]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg28_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg28[15]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg28_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg28[16]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg28_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg28[17]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg28_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg28[18]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg28_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg28[19]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg28_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg28[1]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg28_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg28[20]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg28_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg28[21]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg28_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg28[22]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg28_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg28[23]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg28_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg28[24]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg28_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg28[25]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg28_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg28[26]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg28_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg28[27]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg28_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg28[28]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg28_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg28[29]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg28_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg28[2]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg28_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg28[30]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg28_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg28[31]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg28_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg28[3]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg28_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg28[4]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg28_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg28[5]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg28_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg28[6]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg28_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg28[7]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg28_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg28[8]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg28_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg28[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg28[9]),
        .R(\Audio_Codec/rst ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg29[15]_i_1 
       (.I0(\slv_reg29[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[1]),
        .O(\slv_reg29[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg29[23]_i_1 
       (.I0(\slv_reg29[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[2]),
        .O(\slv_reg29[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg29[31]_i_1 
       (.I0(\slv_reg29[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[3]),
        .O(\slv_reg29[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h202A000A20200000)) 
    \slv_reg29[31]_i_2 
       (.I0(\slv_reg29[31]_i_3_n_0 ),
        .I1(s00_axi_awaddr[1]),
        .I2(s00_axi_awvalid),
        .I3(\axi_awaddr_reg_n_0_[3] ),
        .I4(s00_axi_awaddr[0]),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(\slv_reg29[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8A80000000000000)) 
    \slv_reg29[31]_i_3 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awaddr[4]),
        .I2(s00_axi_awvalid),
        .I3(\axi_awaddr_reg_n_0_[6] ),
        .I4(mem_logic[4]),
        .I5(mem_logic[5]),
        .O(\slv_reg29[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg29[7]_i_1 
       (.I0(\slv_reg29[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[0]),
        .O(\slv_reg29[7]_i_1_n_0 ));
  FDRE \slv_reg29_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg29[0]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg29_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg29[10]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg29_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg29[11]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg29_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg29[12]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg29_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg29[13]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg29_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg29[14]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg29_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg29[15]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg29_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg29[16]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg29_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg29[17]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg29_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg29[18]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg29_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg29[19]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg29_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg29[1]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg29_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg29[20]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg29_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg29[21]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg29_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg29[22]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg29_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg29[23]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg29_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg29[24]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg29_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg29[25]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg29_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg29[26]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg29_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg29[27]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg29_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg29[28]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg29_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg29[29]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg29_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg29[2]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg29_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg29[30]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg29_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg29[31]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg29_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg29[3]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg29_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg29[4]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg29_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg29[5]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg29_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg29[6]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg29_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg29[7]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg29_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg29[8]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg29_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg29[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg29[9]),
        .R(\Audio_Codec/rst ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[15]_i_1 
       (.I0(\slv_reg2[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[1]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[23]_i_1 
       (.I0(\slv_reg2[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[2]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[31]_i_1 
       (.I0(\slv_reg2[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[3]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000002A200000000)) 
    \slv_reg2[31]_i_2 
       (.I0(\slv_reg18[31]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[6] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[4]),
        .I4(mem_logic[4]),
        .I5(s00_axi_wvalid),
        .O(\slv_reg2[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[7]_i_1 
       (.I0(\slv_reg2[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(\Audio_Codec/rst ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg30[15]_i_1 
       (.I0(\slv_reg30[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[1]),
        .O(\slv_reg30[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg30[23]_i_1 
       (.I0(\slv_reg30[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[2]),
        .O(\slv_reg30[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg30[31]_i_1 
       (.I0(\slv_reg30[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[3]),
        .O(\slv_reg30[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4703440000000000)) 
    \slv_reg30[31]_i_2 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(s00_axi_awaddr[1]),
        .I4(\axi_awaddr_reg_n_0_[3] ),
        .I5(\slv_reg29[31]_i_3_n_0 ),
        .O(\slv_reg30[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg30[7]_i_1 
       (.I0(\slv_reg30[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[0]),
        .O(\slv_reg30[7]_i_1_n_0 ));
  FDRE \slv_reg30_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg30[0]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg30_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg30[10]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg30_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg30[11]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg30_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg30[12]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg30_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg30[13]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg30_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg30[14]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg30_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg30[15]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg30_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg30[16]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg30_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg30[17]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg30_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg30[18]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg30_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg30[19]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg30_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg30[1]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg30_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg30[20]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg30_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg30[21]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg30_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg30[22]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg30_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg30[23]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg30_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg30[24]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg30_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg30[25]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg30_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg30[26]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg30_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg30[27]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg30_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg30[28]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg30_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg30[29]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg30_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg30[2]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg30_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg30[30]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg30_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg30[31]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg30_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg30[3]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg30_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg30[4]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg30_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg30[5]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg30_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg30[6]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg30_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg30[7]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg30_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg30[8]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg30_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg30[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg30[9]),
        .R(\Audio_Codec/rst ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg31[15]_i_1 
       (.I0(\slv_reg31[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[1]),
        .O(\slv_reg31[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg31[23]_i_1 
       (.I0(\slv_reg31[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[2]),
        .O(\slv_reg31[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg31[31]_i_1 
       (.I0(\slv_reg31[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[3]),
        .O(\slv_reg31[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8A800A0080800000)) 
    \slv_reg31[31]_i_2 
       (.I0(\slv_reg29[31]_i_3_n_0 ),
        .I1(s00_axi_awaddr[1]),
        .I2(s00_axi_awvalid),
        .I3(\axi_awaddr_reg_n_0_[3] ),
        .I4(s00_axi_awaddr[0]),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(\slv_reg31[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg31[7]_i_1 
       (.I0(\slv_reg31[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[0]),
        .O(\slv_reg31[7]_i_1_n_0 ));
  FDRE \slv_reg31_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg31[0]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg31_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg31[10]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg31_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg31[11]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg31_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg31[12]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg31_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg31[13]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg31_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg31[14]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg31_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg31[15]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg31_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg31[16]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg31_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg31[17]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg31_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg31[18]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg31_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg31[19]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg31_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg31[1]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg31_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg31[20]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg31_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg31[21]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg31_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg31[22]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg31_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg31[23]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg31_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg31[24]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg31_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg31[25]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg31_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg31[26]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg31_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg31[27]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg31_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg31[28]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg31_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg31[29]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg31_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg31[2]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg31_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg31[30]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg31_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg31[31]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg31_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg31[3]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg31_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg31[4]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg31_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg31[5]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg31_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg31[6]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg31_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg31[7]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg31_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg31[8]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg31_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg31[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg31[9]),
        .R(\Audio_Codec/rst ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg3[15]_i_1 
       (.I0(\slv_reg3[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[1]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg3[23]_i_1 
       (.I0(\slv_reg3[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[2]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg3[31]_i_1 
       (.I0(\slv_reg3[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[3]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000002020200020)) 
    \slv_reg3[31]_i_2 
       (.I0(\slv_reg19[31]_i_2_n_0 ),
        .I1(mem_logic[4]),
        .I2(s00_axi_wvalid),
        .I3(\axi_awaddr_reg_n_0_[6] ),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_awaddr[4]),
        .O(\slv_reg3[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg3[7]_i_1 
       (.I0(\slv_reg3[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[0]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(\Audio_Codec/rst ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg4[15]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[1]),
        .O(\slv_reg4[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg4[23]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[2]),
        .O(\slv_reg4[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg4[31]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[3]),
        .O(\slv_reg4[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000015100000000)) 
    \slv_reg4[31]_i_2 
       (.I0(mem_logic[2]),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[3]),
        .I4(mem_logic[3]),
        .I5(\slv_reg4[31]_i_5_n_0 ),
        .O(\slv_reg4[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg4[31]_i_3 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .O(mem_logic[2]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg4[31]_i_4 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[3] ),
        .O(mem_logic[3]));
  LUT6 #(
    .INIT(64'h5050300000003000)) 
    \slv_reg4[31]_i_5 
       (.I0(s00_axi_awaddr[4]),
        .I1(\axi_awaddr_reg_n_0_[6] ),
        .I2(s00_axi_wvalid),
        .I3(\axi_awaddr_reg_n_0_[4] ),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_awaddr[2]),
        .O(\slv_reg4[31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg4[7]_i_1 
       (.I0(\slv_reg4[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[0]),
        .O(\slv_reg4[7]_i_1_n_0 ));
  FDRE \slv_reg4_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg4[0]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg4_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg4__0[10]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg4_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg4__0[11]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg4_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg4__0[12]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg4_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg4__0[13]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg4_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg4__0[14]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg4_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg4__0[15]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg4_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg4__0[16]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg4_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg4__0[17]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg4_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg4__0[18]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg4_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg4__0[19]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg4_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg4[1]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg4_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg4__0[20]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg4_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg4__0[21]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg4_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg4__0[22]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg4_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg4__0[23]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg4_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg4__0[24]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg4_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg4__0[25]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg4_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg4__0[26]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg4_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg4__0[27]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg4_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg4__0[28]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg4_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg4__0[29]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg4_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg4[2]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg4_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg4__0[30]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg4_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg4__0[31]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg4_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg4[3]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg4_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg4[4]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg4_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg4[5]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg4_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg4[6]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg4_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg4[7]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg4_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg4[8]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg4_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg4[9]),
        .R(\Audio_Codec/rst ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg7[15]_i_1 
       (.I0(\slv_reg7[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[1]),
        .O(\slv_reg7[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg7[23]_i_1 
       (.I0(\slv_reg7[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[2]),
        .O(\slv_reg7[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg7[31]_i_1 
       (.I0(\slv_reg7[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[3]),
        .O(\slv_reg7[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0008880800000000)) 
    \slv_reg7[31]_i_2 
       (.I0(mem_logic[4]),
        .I1(s00_axi_wvalid),
        .I2(\axi_awaddr_reg_n_0_[6] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[4]),
        .I5(\slv_reg19[31]_i_2_n_0 ),
        .O(\slv_reg7[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg7[31]_i_3 
       (.I0(s00_axi_awaddr[2]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[4] ),
        .O(mem_logic[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg7[7]_i_1 
       (.I0(\slv_reg7[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[0]),
        .O(\slv_reg7[7]_i_1_n_0 ));
  FDRE \slv_reg7_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg7),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg7_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg7__0[10]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg7_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg7__0[11]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg7_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg7__0[12]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg7_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg7__0[13]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg7_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg7__0[14]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg7_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg7__0[15]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg7_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg7__0[16]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg7_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg7__0[17]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg7_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg7__0[18]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg7_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg7__0[19]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg7_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg7__0[1]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg7_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg7__0[20]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg7_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg7__0[21]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg7_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg7__0[22]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg7_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg7__0[23]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg7_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg7__0[24]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg7_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg7__0[25]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg7_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg7__0[26]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg7_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg7__0[27]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg7_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg7__0[28]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg7_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg7__0[29]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg7_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg7__0[2]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg7_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg7__0[30]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg7_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg7__0[31]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg7_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg7__0[3]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg7_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg7__0[4]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg7_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg7__0[5]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg7_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg7__0[6]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg7_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg7__0[7]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg7_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg7__0[8]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg7_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg7__0[9]),
        .R(\Audio_Codec/rst ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg8[15]_i_1 
       (.I0(\slv_reg8[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[1]),
        .O(\slv_reg8[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg8[23]_i_1 
       (.I0(\slv_reg8[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[2]),
        .O(\slv_reg8[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg8[31]_i_1 
       (.I0(\slv_reg8[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[3]),
        .O(\slv_reg8[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000002A200000000)) 
    \slv_reg8[31]_i_2 
       (.I0(\slv_reg24[31]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[6] ),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awaddr[4]),
        .I4(mem_logic[4]),
        .I5(s00_axi_wvalid),
        .O(\slv_reg8[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg8[7]_i_1 
       (.I0(\slv_reg8[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[0]),
        .O(\slv_reg8[7]_i_1_n_0 ));
  FDRE \slv_reg8_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg8[0]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg8_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg8[10]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg8_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg8[11]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg8_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg8[12]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg8_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg8[13]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg8_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg8[14]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg8_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg8[15]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg8_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg8__0[16]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg8_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg8__0[17]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg8_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg8__0[18]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg8_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg8__0[19]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg8_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg8[1]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg8_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg8__0[20]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg8_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg8__0[21]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg8_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg8__0[22]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg8_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg8__0[23]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg8_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg8__0[24]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg8_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg8__0[25]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg8_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg8__0[26]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg8_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg8__0[27]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg8_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg8__0[28]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg8_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg8__0[29]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg8_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg8[2]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg8_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg8__0[30]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg8_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg8__0[31]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg8_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg8[3]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg8_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg8[4]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg8_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg8[5]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg8_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg8[6]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg8_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg8[7]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg8_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg8[8]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg8_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg8[9]),
        .R(\Audio_Codec/rst ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg9[15]_i_1 
       (.I0(\slv_reg9[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[1]),
        .O(\slv_reg9[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg9[23]_i_1 
       (.I0(\slv_reg9[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[2]),
        .O(\slv_reg9[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg9[31]_i_1 
       (.I0(\slv_reg9[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[3]),
        .O(\slv_reg9[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000002020200020)) 
    \slv_reg9[31]_i_2 
       (.I0(\slv_reg25[31]_i_2_n_0 ),
        .I1(mem_logic[4]),
        .I2(s00_axi_wvalid),
        .I3(\axi_awaddr_reg_n_0_[6] ),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_awaddr[4]),
        .O(\slv_reg9[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg9[7]_i_1 
       (.I0(\slv_reg9[31]_i_2_n_0 ),
        .I1(s00_axi_wstrb[0]),
        .O(\slv_reg9[7]_i_1_n_0 ));
  FDRE \slv_reg9_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg9[0]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg9_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg9[10]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg9_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg9[11]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg9_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg9[12]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg9_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg9[13]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg9_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg9[14]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg9_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg9[15]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg9_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg9__0[16]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg9_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg9__0[17]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg9_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg9__0[18]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg9_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg9__0[19]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg9_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg9[1]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg9_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg9__0[20]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg9_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg9__0[21]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg9_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg9__0[22]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg9_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg9__0[23]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg9_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg9__0[24]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg9_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg9__0[25]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg9_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg9__0[26]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg9_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg9__0[27]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg9_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg9__0[28]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg9_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg9__0[29]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg9_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg9[2]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg9_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg9__0[30]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg9_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg9__0[31]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg9_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg9[3]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg9_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg9[4]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg9_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg9[5]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg9_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg9[6]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg9_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg9[7]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg9_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg9[8]),
        .R(\Audio_Codec/rst ));
  FDRE \slv_reg9_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg9[9]),
        .R(\Audio_Codec/rst ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder
   (Q,
    D,
    \dc_bias_reg[1]_0 ,
    SR,
    CLK,
    \encoded_reg[2]_0 ,
    \encoded_reg[9]_0 ,
    \encoded_reg[8]_0 ,
    \encoded_reg[8]_1 );
  output [0:0]Q;
  output [3:0]D;
  input \dc_bias_reg[1]_0 ;
  input [0:0]SR;
  input CLK;
  input [1:0]\encoded_reg[2]_0 ;
  input \encoded_reg[9]_0 ;
  input \encoded_reg[8]_0 ;
  input \encoded_reg[8]_1 ;

  wire CLK;
  wire [3:0]D;
  wire [0:0]Q;
  wire [0:0]SR;
  wire \dc_bias[0]_i_1__1_n_0 ;
  wire \dc_bias[1]_i_1__0_n_0 ;
  wire \dc_bias[2]_i_1__0_n_0 ;
  wire \dc_bias[3]_i_1__1_n_0 ;
  wire \dc_bias_reg[1]_0 ;
  wire \dc_bias_reg_n_0_[0] ;
  wire \dc_bias_reg_n_0_[1] ;
  wire \dc_bias_reg_n_0_[2] ;
  wire \encoded[8]_i_1_n_0 ;
  wire \encoded[9]_i_1_n_0 ;
  wire \encoded[9]_i_3_n_0 ;
  wire [1:0]\encoded_reg[2]_0 ;
  wire \encoded_reg[8]_0 ;
  wire \encoded_reg[8]_1 ;
  wire \encoded_reg[9]_0 ;

  LUT2 #(
    .INIT(4'h6)) 
    \dc_bias[0]_i_1__1 
       (.I0(Q),
        .I1(\dc_bias_reg_n_0_[0] ),
        .O(\dc_bias[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'hA66A)) 
    \dc_bias[1]_i_1__0 
       (.I0(\dc_bias_reg_n_0_[1] ),
        .I1(Q),
        .I2(\dc_bias_reg_n_0_[0] ),
        .I3(\dc_bias_reg[1]_0 ),
        .O(\dc_bias[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'h20DF08F7)) 
    \dc_bias[2]_i_1__0 
       (.I0(Q),
        .I1(\dc_bias_reg[1]_0 ),
        .I2(\dc_bias_reg_n_0_[0] ),
        .I3(\dc_bias_reg_n_0_[2] ),
        .I4(\dc_bias_reg_n_0_[1] ),
        .O(\dc_bias[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'h0008DFFF)) 
    \dc_bias[3]_i_1__1 
       (.I0(Q),
        .I1(\dc_bias_reg[1]_0 ),
        .I2(\dc_bias_reg_n_0_[0] ),
        .I3(\dc_bias_reg_n_0_[1] ),
        .I4(\dc_bias_reg_n_0_[2] ),
        .O(\dc_bias[3]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dc_bias_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dc_bias[0]_i_1__1_n_0 ),
        .Q(\dc_bias_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dc_bias_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dc_bias[1]_i_1__0_n_0 ),
        .Q(\dc_bias_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dc_bias_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dc_bias[2]_i_1__0_n_0 ),
        .Q(\dc_bias_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dc_bias_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dc_bias[3]_i_1__1_n_0 ),
        .Q(Q),
        .R(SR));
  LUT5 #(
    .INIT(32'hAAA2EEEE)) 
    \encoded[8]_i_1 
       (.I0(\encoded_reg[8]_0 ),
        .I1(\encoded_reg[8]_1 ),
        .I2(\encoded[9]_i_3_n_0 ),
        .I3(Q),
        .I4(\dc_bias_reg[1]_0 ),
        .O(\encoded[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8989F9F9F9F98909)) 
    \encoded[9]_i_1 
       (.I0(\encoded_reg[9]_0 ),
        .I1(\encoded_reg[8]_0 ),
        .I2(\encoded_reg[8]_1 ),
        .I3(\encoded[9]_i_3_n_0 ),
        .I4(Q),
        .I5(\dc_bias_reg[1]_0 ),
        .O(\encoded[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \encoded[9]_i_3 
       (.I0(\dc_bias_reg_n_0_[2] ),
        .I1(\dc_bias_reg_n_0_[1] ),
        .I2(\dc_bias_reg_n_0_[0] ),
        .O(\encoded[9]_i_3_n_0 ));
  FDRE \encoded_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\encoded_reg[2]_0 [0]),
        .Q(D[0]),
        .R(1'b0));
  FDRE \encoded_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\encoded_reg[2]_0 [1]),
        .Q(D[1]),
        .R(1'b0));
  FDRE \encoded_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\encoded[8]_i_1_n_0 ),
        .Q(D[2]),
        .R(1'b0));
  FDRE \encoded_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\encoded[9]_i_1_n_0 ),
        .Q(D[3]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "TDMS_encoder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder_0
   (D,
    \encoded_reg[9]_0 ,
    \encoded_reg[9]_1 ,
    SR,
    CLK);
  output [3:0]D;
  input \encoded_reg[9]_0 ;
  input \encoded_reg[9]_1 ;
  input [0:0]SR;
  input CLK;

  wire CLK;
  wire [3:0]D;
  wire [0:0]SR;
  wire \dc_bias[0]_i_1__0_n_0 ;
  wire \dc_bias[1]_i_1_n_0 ;
  wire \dc_bias[2]_i_1_n_0 ;
  wire \dc_bias[3]_i_1__0_n_0 ;
  wire \dc_bias_reg_n_0_[0] ;
  wire \dc_bias_reg_n_0_[1] ;
  wire \dc_bias_reg_n_0_[2] ;
  wire \encoded[0]_i_1__0_n_0 ;
  wire \encoded[2]_i_1__0_n_0 ;
  wire \encoded[8]_i_1_n_0 ;
  wire \encoded[9]_i_1_n_0 ;
  wire \encoded_reg[9]_0 ;
  wire \encoded_reg[9]_1 ;
  wire p_1_in;

  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \dc_bias[0]_i_1__0 
       (.I0(p_1_in),
        .I1(\dc_bias_reg_n_0_[0] ),
        .O(\dc_bias[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'h69AA)) 
    \dc_bias[1]_i_1 
       (.I0(\dc_bias_reg_n_0_[1] ),
        .I1(\dc_bias_reg_n_0_[0] ),
        .I2(\encoded_reg[9]_1 ),
        .I3(p_1_in),
        .O(\dc_bias[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT5 #(
    .INIT(32'h870F0F2D)) 
    \dc_bias[2]_i_1 
       (.I0(p_1_in),
        .I1(\encoded_reg[9]_1 ),
        .I2(\dc_bias_reg_n_0_[2] ),
        .I3(\dc_bias_reg_n_0_[1] ),
        .I4(\dc_bias_reg_n_0_[0] ),
        .O(\dc_bias[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT5 #(
    .INIT(32'h070F0F2F)) 
    \dc_bias[3]_i_1__0 
       (.I0(p_1_in),
        .I1(\encoded_reg[9]_1 ),
        .I2(\dc_bias_reg_n_0_[2] ),
        .I3(\dc_bias_reg_n_0_[1] ),
        .I4(\dc_bias_reg_n_0_[0] ),
        .O(\dc_bias[3]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dc_bias_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dc_bias[0]_i_1__0_n_0 ),
        .Q(\dc_bias_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dc_bias_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dc_bias[1]_i_1_n_0 ),
        .Q(\dc_bias_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dc_bias_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dc_bias[2]_i_1_n_0 ),
        .Q(\dc_bias_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dc_bias_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dc_bias[3]_i_1__0_n_0 ),
        .Q(p_1_in),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \encoded[0]_i_1__0 
       (.I0(p_1_in),
        .I1(\encoded_reg[9]_0 ),
        .O(\encoded[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \encoded[2]_i_1__0 
       (.I0(p_1_in),
        .I1(\encoded_reg[9]_0 ),
        .O(\encoded[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'hD)) 
    \encoded[8]_i_1 
       (.I0(\encoded_reg[9]_0 ),
        .I1(\encoded_reg[9]_1 ),
        .O(\encoded[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hD7)) 
    \encoded[9]_i_1 
       (.I0(\encoded_reg[9]_0 ),
        .I1(p_1_in),
        .I2(\encoded_reg[9]_1 ),
        .O(\encoded[9]_i_1_n_0 ));
  FDRE \encoded_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\encoded[0]_i_1__0_n_0 ),
        .Q(D[0]),
        .R(1'b0));
  FDRE \encoded_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\encoded[2]_i_1__0_n_0 ),
        .Q(D[1]),
        .R(1'b0));
  FDRE \encoded_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\encoded[8]_i_1_n_0 ),
        .Q(D[2]),
        .R(1'b0));
  FDRE \encoded_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\encoded[9]_i_1_n_0 ),
        .Q(D[3]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "TDMS_encoder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder_1
   (\triggerVolt_reg[6] ,
    \triggerVolt_reg[4] ,
    \triggerTime_reg[6] ,
    \triggerTime_reg[4] ,
    \triggerTime_reg[6]_0 ,
    \triggerTime_reg[3] ,
    \triggerVolt_reg[6]_0 ,
    \triggerVolt_reg[3] ,
    \triggerVolt_reg[4]_0 ,
    \triggerTime_reg[4]_0 ,
    D,
    \encoded_reg[9]_0 ,
    triggerVoltOut,
    triggerTimeOut,
    \encoded_reg[9]_1 ,
    SR,
    CLK);
  output \triggerVolt_reg[6] ;
  output \triggerVolt_reg[4] ;
  output \triggerTime_reg[6] ;
  output \triggerTime_reg[4] ;
  output \triggerTime_reg[6]_0 ;
  output \triggerTime_reg[3] ;
  output \triggerVolt_reg[6]_0 ;
  output \triggerVolt_reg[3] ;
  output \triggerVolt_reg[4]_0 ;
  output \triggerTime_reg[4]_0 ;
  output [3:0]D;
  input \encoded_reg[9]_0 ;
  input [5:0]triggerVoltOut;
  input [5:0]triggerTimeOut;
  input \encoded_reg[9]_1 ;
  input [0:0]SR;
  input CLK;

  wire CLK;
  wire [3:0]D;
  wire [0:0]SR;
  wire \dc_bias[0]_i_1_n_0 ;
  wire \dc_bias[1]_i_1__1_n_0 ;
  wire \dc_bias[2]_i_1__1_n_0 ;
  wire \dc_bias[3]_i_2__0_n_0 ;
  wire \dc_bias_reg_n_0_[0] ;
  wire \dc_bias_reg_n_0_[1] ;
  wire \dc_bias_reg_n_0_[2] ;
  wire [2:0]encoded1_in;
  wire \encoded[8]_i_1_n_0 ;
  wire \encoded[9]_i_1_n_0 ;
  wire \encoded_reg[9]_0 ;
  wire \encoded_reg[9]_1 ;
  wire p_1_in;
  wire [5:0]triggerTimeOut;
  wire \triggerTime_reg[3] ;
  wire \triggerTime_reg[4] ;
  wire \triggerTime_reg[4]_0 ;
  wire \triggerTime_reg[6] ;
  wire \triggerTime_reg[6]_0 ;
  wire [5:0]triggerVoltOut;
  wire \triggerVolt_reg[3] ;
  wire \triggerVolt_reg[4] ;
  wire \triggerVolt_reg[4]_0 ;
  wire \triggerVolt_reg[6] ;
  wire \triggerVolt_reg[6]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \dc_bias[0]_i_1 
       (.I0(p_1_in),
        .I1(\dc_bias_reg_n_0_[0] ),
        .O(\dc_bias[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h96AA)) 
    \dc_bias[1]_i_1__1 
       (.I0(\dc_bias_reg_n_0_[1] ),
        .I1(\dc_bias_reg_n_0_[0] ),
        .I2(\encoded_reg[9]_0 ),
        .I3(p_1_in),
        .O(\dc_bias[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT5 #(
    .INIT(32'h59655555)) 
    \dc_bias[2]_i_1__1 
       (.I0(\dc_bias_reg_n_0_[2] ),
        .I1(\dc_bias_reg_n_0_[1] ),
        .I2(\encoded_reg[9]_0 ),
        .I3(\dc_bias_reg_n_0_[0] ),
        .I4(p_1_in),
        .O(\dc_bias[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \dc_bias[3]_i_114 
       (.I0(triggerVoltOut[4]),
        .I1(triggerVoltOut[2]),
        .I2(triggerVoltOut[0]),
        .I3(triggerVoltOut[1]),
        .I4(triggerVoltOut[3]),
        .I5(triggerVoltOut[5]),
        .O(\triggerVolt_reg[6] ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \dc_bias[3]_i_150 
       (.I0(triggerTimeOut[4]),
        .I1(triggerTimeOut[2]),
        .I2(triggerTimeOut[0]),
        .I3(triggerTimeOut[1]),
        .I4(triggerTimeOut[3]),
        .I5(triggerTimeOut[5]),
        .O(\triggerTime_reg[6] ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \dc_bias[3]_i_189 
       (.I0(triggerVoltOut[2]),
        .I1(triggerVoltOut[0]),
        .I2(triggerVoltOut[1]),
        .I3(triggerVoltOut[3]),
        .O(\triggerVolt_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \dc_bias[3]_i_198 
       (.I0(triggerTimeOut[2]),
        .I1(triggerTimeOut[0]),
        .I2(triggerTimeOut[1]),
        .I3(triggerTimeOut[3]),
        .O(\triggerTime_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT5 #(
    .INIT(32'h0D0F0F8F)) 
    \dc_bias[3]_i_2__0 
       (.I0(p_1_in),
        .I1(\encoded_reg[9]_0 ),
        .I2(\dc_bias_reg_n_0_[2] ),
        .I3(\dc_bias_reg_n_0_[0] ),
        .I4(\dc_bias_reg_n_0_[1] ),
        .O(\dc_bias[3]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dc_bias_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dc_bias[0]_i_1_n_0 ),
        .Q(\dc_bias_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dc_bias_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dc_bias[1]_i_1__1_n_0 ),
        .Q(\dc_bias_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dc_bias_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dc_bias[2]_i_1__1_n_0 ),
        .Q(\dc_bias_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dc_bias_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\dc_bias[3]_i_2__0_n_0 ),
        .Q(p_1_in),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \encoded[0]_i_1__1 
       (.I0(p_1_in),
        .I1(\encoded_reg[9]_1 ),
        .O(encoded1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \encoded[2]_i_1__1 
       (.I0(p_1_in),
        .I1(\encoded_reg[9]_1 ),
        .O(encoded1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \encoded[8]_i_1 
       (.I0(\encoded_reg[9]_1 ),
        .I1(\encoded_reg[9]_0 ),
        .O(\encoded[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'h7D)) 
    \encoded[9]_i_1 
       (.I0(\encoded_reg[9]_1 ),
        .I1(p_1_in),
        .I2(\encoded_reg[9]_0 ),
        .O(\encoded[9]_i_1_n_0 ));
  FDRE \encoded_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(encoded1_in[0]),
        .Q(D[0]),
        .R(1'b0));
  FDRE \encoded_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(encoded1_in[2]),
        .Q(D[1]),
        .R(1'b0));
  FDRE \encoded_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\encoded[8]_i_1_n_0 ),
        .Q(D[2]),
        .R(1'b0));
  FDRE \encoded_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\encoded[9]_i_1_n_0 ),
        .Q(D[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    i__carry__0_i_3
       (.I0(triggerTimeOut[4]),
        .I1(triggerTimeOut[1]),
        .I2(triggerTimeOut[2]),
        .I3(triggerTimeOut[3]),
        .I4(triggerTimeOut[5]),
        .O(\triggerTime_reg[6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    i__carry__0_i_3__0
       (.I0(triggerVoltOut[4]),
        .I1(triggerVoltOut[1]),
        .I2(triggerVoltOut[2]),
        .I3(triggerVoltOut[3]),
        .I4(triggerVoltOut[5]),
        .O(\triggerVolt_reg[6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h01)) 
    i__carry_i_10
       (.I0(triggerTimeOut[1]),
        .I1(triggerTimeOut[2]),
        .I2(triggerTimeOut[3]),
        .O(\triggerTime_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'h01)) 
    i__carry_i_10__0
       (.I0(triggerVoltOut[1]),
        .I1(triggerVoltOut[2]),
        .I2(triggerVoltOut[3]),
        .O(\triggerVolt_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    i__carry_i_9__1
       (.I0(triggerVoltOut[2]),
        .I1(triggerVoltOut[0]),
        .I2(triggerVoltOut[1]),
        .I3(triggerVoltOut[3]),
        .O(\triggerVolt_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    i__carry_i_9__2
       (.I0(triggerTimeOut[2]),
        .I1(triggerTimeOut[0]),
        .I2(triggerTimeOut[1]),
        .I3(triggerTimeOut[3]),
        .O(\triggerTime_reg[4]_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TWICtl
   (D,
    E,
    \state_reg[0] ,
    \state_reg[2] ,
    scl,
    sda,
    CLK,
    Q,
    stb,
    \FSM_gray_state_reg[2]_0 ,
    s00_axi_aresetn,
    \state_reg[1] ,
    \state_reg[1]_0 ,
    \state_reg[1]_1 ,
    \initA_reg[0] ,
    \initA_reg[0]_0 ,
    \initA_reg[0]_1 ,
    \state_reg[2]_0 ,
    \state_reg[2]_1 ,
    \state_reg[3] ,
    initEn_reg,
    \state_reg[1]_2 ,
    \state_reg[1]_3 ,
    initEn_reg_0,
    initEn);
  output [3:0]D;
  output [0:0]E;
  output [0:0]\state_reg[0] ;
  output \state_reg[2] ;
  inout scl;
  inout sda;
  input CLK;
  input [7:0]Q;
  input stb;
  input \FSM_gray_state_reg[2]_0 ;
  input s00_axi_aresetn;
  input [1:0]\state_reg[1] ;
  input \state_reg[1]_0 ;
  input \state_reg[1]_1 ;
  input \initA_reg[0] ;
  input [6:0]\initA_reg[0]_0 ;
  input \initA_reg[0]_1 ;
  input \state_reg[2]_0 ;
  input [3:0]\state_reg[2]_1 ;
  input \state_reg[3] ;
  input initEn_reg;
  input \state_reg[1]_2 ;
  input \state_reg[1]_3 ;
  input initEn_reg_0;
  input initEn;

  wire CLK;
  wire [3:0]D;
  wire DONE_O_i_1_n_0;
  wire DONE_O_i_2_n_0;
  wire DONE_O_i_3_n_0;
  wire DONE_O_i_4_n_0;
  wire [0:0]E;
  wire ERR_O_i_1_n_0;
  wire ERR_O_i_2_n_0;
  wire \FSM_gray_state[0]_i_1_n_0 ;
  wire \FSM_gray_state[0]_i_2_n_0 ;
  wire \FSM_gray_state[1]_i_1_n_0 ;
  wire \FSM_gray_state[1]_i_2_n_0 ;
  wire \FSM_gray_state[2]_i_1_n_0 ;
  wire \FSM_gray_state[2]_i_2_n_0 ;
  wire \FSM_gray_state[2]_i_3_n_0 ;
  wire \FSM_gray_state[3]_i_10_n_0 ;
  wire \FSM_gray_state[3]_i_11_n_0 ;
  wire \FSM_gray_state[3]_i_1_n_0 ;
  wire \FSM_gray_state[3]_i_2_n_0 ;
  wire \FSM_gray_state[3]_i_3_n_0 ;
  wire \FSM_gray_state[3]_i_4_n_0 ;
  wire \FSM_gray_state[3]_i_5_n_0 ;
  wire \FSM_gray_state[3]_i_6_n_0 ;
  wire \FSM_gray_state[3]_i_7_n_0 ;
  wire \FSM_gray_state[3]_i_8_n_0 ;
  wire \FSM_gray_state[3]_i_9_n_0 ;
  wire \FSM_gray_state_reg[2]_0 ;
  wire [7:0]Q;
  wire addrNData;
  wire addrNData_i_1_n_0;
  wire [2:0]bitCount;
  wire \bitCount[0]_i_1_n_0 ;
  wire \bitCount[1]_i_1_n_0 ;
  wire \bitCount[2]_i_1_n_0 ;
  wire [6:0]busFreeCnt0;
  wire busFreeCnt0_1;
  wire \busFreeCnt[6]_i_3_n_0 ;
  wire [6:0]busFreeCnt_reg;
  wire busState0;
  wire \busState[0]_i_1_n_0 ;
  wire \busState[1]_i_1_n_0 ;
  wire \busState_reg_n_0_[0] ;
  wire \busState_reg_n_0_[1] ;
  wire dScl;
  wire [7:1]dataByte;
  wire dataByte0;
  wire \dataByte[7]_i_1_n_0 ;
  wire \dataByte[7]_i_3_n_0 ;
  wire \dataByte[7]_i_4_n_0 ;
  wire \dataByte[7]_i_5_n_0 ;
  wire \dataByte[7]_i_6_n_0 ;
  wire \dataByte[7]_i_7_n_0 ;
  wire \dataByte[7]_i_8_n_0 ;
  wire \dataByte[7]_i_9_n_0 ;
  wire \dataByte_reg_n_0_[0] ;
  wire ddSda;
  wire done;
  wire error;
  wire \initA[6]_i_4_n_0 ;
  wire \initA_reg[0] ;
  wire [6:0]\initA_reg[0]_0 ;
  wire \initA_reg[0]_1 ;
  wire initEn;
  wire initEn_i_2_n_0;
  wire initEn_reg;
  wire initEn_reg_0;
  wire int_Rst;
  wire int_Rst_i_1_n_0;
  wire [0:0]p_0_in;
  wire [7:0]p_1_in;
  wire rScl;
  wire rScl_i_1_n_0;
  wire rScl_i_2_n_0;
  wire rSda;
  wire rSda_i_1_n_0;
  wire rSda_i_2_n_0;
  wire rSda_i_3_n_0;
  wire s00_axi_aresetn;
  wire scl;
  wire [6:0]sclCnt0;
  wire sclCnt0_0;
  wire \sclCnt[6]_i_2_n_0 ;
  wire \sclCnt[6]_i_4_n_0 ;
  wire [6:0]sclCnt_reg;
  wire scl_INST_0_i_1_n_0;
  wire sda;
  wire sda_INST_0_i_1_n_0;
  wire [3:0]state;
  wire \state[1]_i_3_n_0 ;
  wire \state[1]_i_5_n_0 ;
  wire \state[3]_i_5_n_0 ;
  wire [0:0]\state_reg[0] ;
  wire [1:0]\state_reg[1] ;
  wire \state_reg[1]_0 ;
  wire \state_reg[1]_1 ;
  wire \state_reg[1]_2 ;
  wire \state_reg[1]_3 ;
  wire \state_reg[2] ;
  wire \state_reg[2]_0 ;
  wire [3:0]\state_reg[2]_1 ;
  wire \state_reg[3] ;
  wire stb;
  wire \subState[0]_i_1_n_0 ;
  wire \subState[1]_i_1_n_0 ;
  wire \subState[1]_i_2_n_0 ;
  wire \subState[1]_i_3_n_0 ;
  wire \subState_reg_n_0_[0] ;
  wire \subState_reg_n_0_[1] ;

  LUT6 #(
    .INIT(64'hFFFFFFFF23222323)) 
    DONE_O_i_1
       (.I0(DONE_O_i_2_n_0),
        .I1(\dataByte[7]_i_4_n_0 ),
        .I2(DONE_O_i_3_n_0),
        .I3(p_0_in),
        .I4(addrNData),
        .I5(DONE_O_i_4_n_0),
        .O(DONE_O_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    DONE_O_i_2
       (.I0(bitCount[0]),
        .I1(bitCount[1]),
        .I2(bitCount[2]),
        .I3(state[0]),
        .I4(\FSM_gray_state[2]_i_3_n_0 ),
        .O(DONE_O_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    DONE_O_i_3
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[3]),
        .I3(state[0]),
        .O(DONE_O_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    DONE_O_i_4
       (.I0(state[2]),
        .I1(state[3]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(\FSM_gray_state[3]_i_7_n_0 ),
        .O(DONE_O_i_4_n_0));
  FDRE DONE_O_reg
       (.C(CLK),
        .CE(1'b1),
        .D(DONE_O_i_1_n_0),
        .Q(done),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0030000500000005)) 
    ERR_O_i_1
       (.I0(\FSM_gray_state[3]_i_7_n_0 ),
        .I1(\dataByte[7]_i_4_n_0 ),
        .I2(state[0]),
        .I3(ERR_O_i_2_n_0),
        .I4(state[1]),
        .I5(p_0_in),
        .O(ERR_O_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    ERR_O_i_2
       (.I0(state[2]),
        .I1(state[3]),
        .O(ERR_O_i_2_n_0));
  FDRE ERR_O_reg
       (.C(CLK),
        .CE(1'b1),
        .D(ERR_O_i_1_n_0),
        .Q(error),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0161)) 
    \FSM_gray_state[0]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(\FSM_gray_state[3]_i_7_n_0 ),
        .I4(\FSM_gray_state[0]_i_2_n_0 ),
        .I5(state[3]),
        .O(\FSM_gray_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h11011111)) 
    \FSM_gray_state[0]_i_2 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(\FSM_gray_state_reg[2]_0 ),
        .I3(int_Rst),
        .I4(stb),
        .O(\FSM_gray_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CC000322)) 
    \FSM_gray_state[1]_i_1 
       (.I0(\FSM_gray_state[3]_i_7_n_0 ),
        .I1(state[0]),
        .I2(\FSM_gray_state[1]_i_2_n_0 ),
        .I3(state[1]),
        .I4(state[2]),
        .I5(state[3]),
        .O(\FSM_gray_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_gray_state[1]_i_2 
       (.I0(int_Rst),
        .I1(stb),
        .O(\FSM_gray_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAEAAAFAAAFAAAA)) 
    \FSM_gray_state[2]_i_1 
       (.I0(\FSM_gray_state[2]_i_2_n_0 ),
        .I1(\FSM_gray_state[3]_i_9_n_0 ),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .I5(state[1]),
        .O(\FSM_gray_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0808080808FF0808)) 
    \FSM_gray_state[2]_i_2 
       (.I0(\FSM_gray_state[3]_i_7_n_0 ),
        .I1(\FSM_gray_state[3]_i_8_n_0 ),
        .I2(state[3]),
        .I3(\FSM_gray_state[2]_i_3_n_0 ),
        .I4(\FSM_gray_state_reg[2]_0 ),
        .I5(addrNData),
        .O(\FSM_gray_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \FSM_gray_state[2]_i_3 
       (.I0(state[3]),
        .I1(state[2]),
        .I2(state[1]),
        .O(\FSM_gray_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFAEEFEEAFAEAFAE)) 
    \FSM_gray_state[3]_i_1 
       (.I0(\FSM_gray_state[3]_i_3_n_0 ),
        .I1(\FSM_gray_state[3]_i_4_n_0 ),
        .I2(\FSM_gray_state[3]_i_5_n_0 ),
        .I3(\FSM_gray_state[3]_i_6_n_0 ),
        .I4(\FSM_gray_state[3]_i_7_n_0 ),
        .I5(\FSM_gray_state[3]_i_8_n_0 ),
        .O(\FSM_gray_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    \FSM_gray_state[3]_i_10 
       (.I0(state[2]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(s00_axi_aresetn),
        .O(\FSM_gray_state[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \FSM_gray_state[3]_i_11 
       (.I0(\subState_reg_n_0_[1] ),
        .I1(\subState_reg_n_0_[0] ),
        .I2(state[3]),
        .I3(state[2]),
        .I4(\dataByte[7]_i_8_n_0 ),
        .I5(\subState[1]_i_2_n_0 ),
        .O(\FSM_gray_state[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h002C000000200000)) 
    \FSM_gray_state[3]_i_2 
       (.I0(\FSM_gray_state[3]_i_7_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(state[0]),
        .I5(\FSM_gray_state[3]_i_9_n_0 ),
        .O(\FSM_gray_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0008)) 
    \FSM_gray_state[3]_i_3 
       (.I0(\busState_reg_n_0_[0] ),
        .I1(stb),
        .I2(\busState_reg_n_0_[1] ),
        .I3(\FSM_gray_state[3]_i_10_n_0 ),
        .I4(DONE_O_i_4_n_0),
        .I5(\FSM_gray_state[3]_i_11_n_0 ),
        .O(\FSM_gray_state[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_gray_state[3]_i_4 
       (.I0(state[2]),
        .I1(state[3]),
        .O(\FSM_gray_state[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \FSM_gray_state[3]_i_5 
       (.I0(\subState_reg_n_0_[1] ),
        .I1(\subState_reg_n_0_[0] ),
        .I2(\subState[1]_i_2_n_0 ),
        .O(\FSM_gray_state[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EAAA0001)) 
    \FSM_gray_state[3]_i_6 
       (.I0(state[0]),
        .I1(bitCount[2]),
        .I2(bitCount[1]),
        .I3(bitCount[0]),
        .I4(state[1]),
        .I5(state[3]),
        .O(\FSM_gray_state[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \FSM_gray_state[3]_i_7 
       (.I0(dScl),
        .I1(p_0_in),
        .I2(rSda),
        .O(\FSM_gray_state[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_gray_state[3]_i_8 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\FSM_gray_state[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFAB)) 
    \FSM_gray_state[3]_i_9 
       (.I0(\dataByte_reg_n_0_[0] ),
        .I1(stb),
        .I2(addrNData),
        .I3(int_Rst),
        .O(\FSM_gray_state[3]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "stwrite:0000,stread:0010,ststart:0100,stidle:0001,stmnackstart:0110,stmack:0111,stsack:0011,stmnackstop:0101,ststop:1100" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_gray_state_reg[0] 
       (.C(CLK),
        .CE(\FSM_gray_state[3]_i_1_n_0 ),
        .D(\FSM_gray_state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "stwrite:0000,stread:0010,ststart:0100,stidle:0001,stmnackstart:0110,stmack:0111,stsack:0011,stmnackstop:0101,ststop:1100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_gray_state_reg[1] 
       (.C(CLK),
        .CE(\FSM_gray_state[3]_i_1_n_0 ),
        .D(\FSM_gray_state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "stwrite:0000,stread:0010,ststart:0100,stidle:0001,stmnackstart:0110,stmack:0111,stsack:0011,stmnackstop:0101,ststop:1100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_gray_state_reg[2] 
       (.C(CLK),
        .CE(\FSM_gray_state[3]_i_1_n_0 ),
        .D(\FSM_gray_state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "stwrite:0000,stread:0010,ststart:0100,stidle:0001,stmnackstart:0110,stmack:0111,stsack:0011,stmnackstop:0101,ststop:1100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_gray_state_reg[3] 
       (.C(CLK),
        .CE(\FSM_gray_state[3]_i_1_n_0 ),
        .D(\FSM_gray_state[3]_i_2_n_0 ),
        .Q(state[3]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hE0)) 
    addrNData_i_1
       (.I0(addrNData),
        .I1(\dataByte[7]_i_3_n_0 ),
        .I2(\dataByte[7]_i_6_n_0 ),
        .O(addrNData_i_1_n_0));
  FDRE addrNData_reg
       (.C(CLK),
        .CE(1'b1),
        .D(addrNData_i_1_n_0),
        .Q(addrNData),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hFF6F)) 
    \bitCount[0]_i_1 
       (.I0(bitCount[0]),
        .I1(dataByte0),
        .I2(\dataByte[7]_i_6_n_0 ),
        .I3(\dataByte[7]_i_3_n_0 ),
        .O(\bitCount[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hFFFFA6FF)) 
    \bitCount[1]_i_1 
       (.I0(bitCount[1]),
        .I1(dataByte0),
        .I2(bitCount[0]),
        .I3(\dataByte[7]_i_6_n_0 ),
        .I4(\dataByte[7]_i_3_n_0 ),
        .O(\bitCount[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAA6FFFF)) 
    \bitCount[2]_i_1 
       (.I0(bitCount[2]),
        .I1(dataByte0),
        .I2(bitCount[0]),
        .I3(bitCount[1]),
        .I4(\dataByte[7]_i_6_n_0 ),
        .I5(\dataByte[7]_i_3_n_0 ),
        .O(\bitCount[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004000408)) 
    \bitCount[2]_i_2 
       (.I0(\subState_reg_n_0_[1] ),
        .I1(\subState_reg_n_0_[0] ),
        .I2(\subState[1]_i_2_n_0 ),
        .I3(state[1]),
        .I4(state[0]),
        .I5(ERR_O_i_2_n_0),
        .O(dataByte0));
  FDRE #(
    .INIT(1'b1)) 
    \bitCount_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\bitCount[0]_i_1_n_0 ),
        .Q(bitCount[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \bitCount_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\bitCount[1]_i_1_n_0 ),
        .Q(bitCount[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \bitCount_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\bitCount[2]_i_1_n_0 ),
        .Q(bitCount[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \busFreeCnt[0]_i_1 
       (.I0(busFreeCnt_reg[0]),
        .O(busFreeCnt0[0]));
  LUT2 #(
    .INIT(4'h9)) 
    \busFreeCnt[1]_i_1 
       (.I0(busFreeCnt_reg[1]),
        .I1(busFreeCnt_reg[0]),
        .O(busFreeCnt0[1]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \busFreeCnt[2]_i_1 
       (.I0(busFreeCnt_reg[2]),
        .I1(busFreeCnt_reg[0]),
        .I2(busFreeCnt_reg[1]),
        .O(busFreeCnt0[2]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \busFreeCnt[3]_i_1 
       (.I0(busFreeCnt_reg[3]),
        .I1(busFreeCnt_reg[1]),
        .I2(busFreeCnt_reg[0]),
        .I3(busFreeCnt_reg[2]),
        .O(busFreeCnt0[3]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \busFreeCnt[4]_i_1 
       (.I0(busFreeCnt_reg[4]),
        .I1(busFreeCnt_reg[2]),
        .I2(busFreeCnt_reg[0]),
        .I3(busFreeCnt_reg[1]),
        .I4(busFreeCnt_reg[3]),
        .O(busFreeCnt0[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \busFreeCnt[5]_i_1 
       (.I0(busFreeCnt_reg[5]),
        .I1(busFreeCnt_reg[3]),
        .I2(busFreeCnt_reg[1]),
        .I3(busFreeCnt_reg[0]),
        .I4(busFreeCnt_reg[2]),
        .I5(busFreeCnt_reg[4]),
        .O(busFreeCnt0[5]));
  LUT3 #(
    .INIT(8'hDF)) 
    \busFreeCnt[6]_i_1 
       (.I0(p_0_in),
        .I1(int_Rst),
        .I2(dScl),
        .O(busFreeCnt0_1));
  LUT2 #(
    .INIT(4'h9)) 
    \busFreeCnt[6]_i_2 
       (.I0(\busFreeCnt[6]_i_3_n_0 ),
        .I1(busFreeCnt_reg[6]),
        .O(busFreeCnt0[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \busFreeCnt[6]_i_3 
       (.I0(busFreeCnt_reg[4]),
        .I1(busFreeCnt_reg[2]),
        .I2(busFreeCnt_reg[0]),
        .I3(busFreeCnt_reg[1]),
        .I4(busFreeCnt_reg[3]),
        .I5(busFreeCnt_reg[5]),
        .O(\busFreeCnt[6]_i_3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \busFreeCnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(busFreeCnt0[0]),
        .Q(busFreeCnt_reg[0]),
        .S(busFreeCnt0_1));
  FDRE #(
    .INIT(1'b0)) 
    \busFreeCnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(busFreeCnt0[1]),
        .Q(busFreeCnt_reg[1]),
        .R(busFreeCnt0_1));
  FDSE #(
    .INIT(1'b1)) 
    \busFreeCnt_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(busFreeCnt0[2]),
        .Q(busFreeCnt_reg[2]),
        .S(busFreeCnt0_1));
  FDSE #(
    .INIT(1'b1)) 
    \busFreeCnt_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(busFreeCnt0[3]),
        .Q(busFreeCnt_reg[3]),
        .S(busFreeCnt0_1));
  FDSE #(
    .INIT(1'b1)) 
    \busFreeCnt_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(busFreeCnt0[4]),
        .Q(busFreeCnt_reg[4]),
        .S(busFreeCnt0_1));
  FDSE #(
    .INIT(1'b1)) 
    \busFreeCnt_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(busFreeCnt0[5]),
        .Q(busFreeCnt_reg[5]),
        .S(busFreeCnt0_1));
  FDSE #(
    .INIT(1'b1)) 
    \busFreeCnt_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(busFreeCnt0[6]),
        .Q(busFreeCnt_reg[6]),
        .S(busFreeCnt0_1));
  LUT6 #(
    .INIT(64'h00DFFFFF00DF0000)) 
    \busState[0]_i_1 
       (.I0(dScl),
        .I1(p_0_in),
        .I2(ddSda),
        .I3(int_Rst),
        .I4(busState0),
        .I5(\busState_reg_n_0_[0] ),
        .O(\busState[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020FFFF00200000)) 
    \busState[1]_i_1 
       (.I0(ddSda),
        .I1(p_0_in),
        .I2(dScl),
        .I3(int_Rst),
        .I4(busState0),
        .I5(\busState_reg_n_0_[1] ),
        .O(\busState[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF20FF20FF20FFFF)) 
    \busState[1]_i_2 
       (.I0(dScl),
        .I1(p_0_in),
        .I2(ddSda),
        .I3(int_Rst),
        .I4(busFreeCnt_reg[6]),
        .I5(\busFreeCnt[6]_i_3_n_0 ),
        .O(busState0));
  FDRE #(
    .INIT(1'b0)) 
    \busState_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\busState[0]_i_1_n_0 ),
        .Q(\busState_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \busState_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\busState[1]_i_1_n_0 ),
        .Q(\busState_reg_n_0_[1] ),
        .R(1'b0));
  FDRE dScl_reg
       (.C(CLK),
        .CE(1'b1),
        .D(scl),
        .Q(dScl),
        .R(1'b0));
  FDRE dSda_reg
       (.C(CLK),
        .CE(1'b1),
        .D(sda),
        .Q(p_0_in),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8F88)) 
    \dataByte[0]_i_1 
       (.I0(p_0_in),
        .I1(\dataByte[7]_i_7_n_0 ),
        .I2(\dataByte[7]_i_6_n_0 ),
        .I3(Q[0]),
        .O(p_1_in[0]));
  LUT4 #(
    .INIT(16'hEFEA)) 
    \dataByte[1]_i_1 
       (.I0(\dataByte[7]_i_3_n_0 ),
        .I1(\dataByte_reg_n_0_[0] ),
        .I2(\dataByte[7]_i_6_n_0 ),
        .I3(Q[1]),
        .O(p_1_in[1]));
  LUT4 #(
    .INIT(16'hEFEA)) 
    \dataByte[2]_i_1 
       (.I0(\dataByte[7]_i_3_n_0 ),
        .I1(dataByte[1]),
        .I2(\dataByte[7]_i_6_n_0 ),
        .I3(Q[2]),
        .O(p_1_in[2]));
  LUT4 #(
    .INIT(16'hF444)) 
    \dataByte[3]_i_1 
       (.I0(\dataByte[7]_i_6_n_0 ),
        .I1(Q[3]),
        .I2(dataByte[2]),
        .I3(\dataByte[7]_i_7_n_0 ),
        .O(p_1_in[3]));
  LUT4 #(
    .INIT(16'hEFEA)) 
    \dataByte[4]_i_1 
       (.I0(\dataByte[7]_i_3_n_0 ),
        .I1(dataByte[3]),
        .I2(\dataByte[7]_i_6_n_0 ),
        .I3(Q[4]),
        .O(p_1_in[4]));
  LUT4 #(
    .INIT(16'hEFEA)) 
    \dataByte[5]_i_1 
       (.I0(\dataByte[7]_i_3_n_0 ),
        .I1(dataByte[4]),
        .I2(\dataByte[7]_i_6_n_0 ),
        .I3(Q[5]),
        .O(p_1_in[5]));
  LUT4 #(
    .INIT(16'hEFEA)) 
    \dataByte[6]_i_1 
       (.I0(\dataByte[7]_i_3_n_0 ),
        .I1(dataByte[5]),
        .I2(\dataByte[7]_i_6_n_0 ),
        .I3(Q[6]),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAABA)) 
    \dataByte[7]_i_1 
       (.I0(\dataByte[7]_i_3_n_0 ),
        .I1(\dataByte[7]_i_4_n_0 ),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[3]),
        .I5(\dataByte[7]_i_5_n_0 ),
        .O(\dataByte[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \dataByte[7]_i_2 
       (.I0(\dataByte[7]_i_6_n_0 ),
        .I1(Q[7]),
        .I2(dataByte[6]),
        .I3(\dataByte[7]_i_7_n_0 ),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \dataByte[7]_i_3 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[3]),
        .I4(\subState[1]_i_2_n_0 ),
        .O(\dataByte[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \dataByte[7]_i_4 
       (.I0(\subState_reg_n_0_[0] ),
        .I1(\subState_reg_n_0_[1] ),
        .I2(\subState[1]_i_2_n_0 ),
        .O(\dataByte[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000FF0000)) 
    \dataByte[7]_i_5 
       (.I0(\subState_reg_n_0_[1] ),
        .I1(\dataByte[7]_i_8_n_0 ),
        .I2(state[3]),
        .I3(\subState[1]_i_2_n_0 ),
        .I4(\subState_reg_n_0_[0] ),
        .I5(DONE_O_i_3_n_0),
        .O(\dataByte[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hFFFBFFFF)) 
    \dataByte[7]_i_6 
       (.I0(\FSM_gray_state[3]_i_5_n_0 ),
        .I1(state[0]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(state[1]),
        .O(\dataByte[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFDFAFF)) 
    \dataByte[7]_i_7 
       (.I0(state[1]),
        .I1(\dataByte[7]_i_9_n_0 ),
        .I2(state[3]),
        .I3(state[2]),
        .I4(state[0]),
        .I5(\subState[1]_i_2_n_0 ),
        .O(\dataByte[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \dataByte[7]_i_8 
       (.I0(state[0]),
        .I1(state[1]),
        .O(\dataByte[7]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dataByte[7]_i_9 
       (.I0(\subState_reg_n_0_[0] ),
        .I1(\subState_reg_n_0_[1] ),
        .O(\dataByte[7]_i_9_n_0 ));
  FDRE \dataByte_reg[0] 
       (.C(CLK),
        .CE(\dataByte[7]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(\dataByte_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \dataByte_reg[1] 
       (.C(CLK),
        .CE(\dataByte[7]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(dataByte[1]),
        .R(1'b0));
  FDRE \dataByte_reg[2] 
       (.C(CLK),
        .CE(\dataByte[7]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(dataByte[2]),
        .R(1'b0));
  FDRE \dataByte_reg[3] 
       (.C(CLK),
        .CE(\dataByte[7]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(dataByte[3]),
        .R(1'b0));
  FDRE \dataByte_reg[4] 
       (.C(CLK),
        .CE(\dataByte[7]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(dataByte[4]),
        .R(1'b0));
  FDRE \dataByte_reg[5] 
       (.C(CLK),
        .CE(\dataByte[7]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(dataByte[5]),
        .R(1'b0));
  FDRE \dataByte_reg[6] 
       (.C(CLK),
        .CE(\dataByte[7]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(dataByte[6]),
        .R(1'b0));
  FDRE \dataByte_reg[7] 
       (.C(CLK),
        .CE(\dataByte[7]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(dataByte[7]),
        .R(1'b0));
  FDRE ddSda_reg
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in),
        .Q(ddSda),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAAAAA)) 
    \initA[6]_i_1 
       (.I0(\initA_reg[0] ),
        .I1(\initA[6]_i_4_n_0 ),
        .I2(\initA_reg[0]_0 [0]),
        .I3(\initA_reg[0]_0 [1]),
        .I4(\initA_reg[0]_0 [2]),
        .I5(\initA_reg[0]_1 ),
        .O(E));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \initA[6]_i_4 
       (.I0(\initA_reg[0]_0 [5]),
        .I1(\initA_reg[0]_0 [6]),
        .I2(\initA_reg[0]_0 [3]),
        .I3(\initA_reg[0]_0 [4]),
        .I4(error),
        .I5(done),
        .O(\initA[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h75774544)) 
    initEn_i_1
       (.I0(\state_reg[2]_1 [2]),
        .I1(initEn_i_2_n_0),
        .I2(initEn_reg),
        .I3(initEn_reg_0),
        .I4(initEn),
        .O(\state_reg[2] ));
  LUT4 #(
    .INIT(16'h4000)) 
    initEn_i_2
       (.I0(error),
        .I1(done),
        .I2(s00_axi_aresetn),
        .I3(\state_reg[2]_0 ),
        .O(initEn_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFDFFFF0000FFFF)) 
    int_Rst_i_1
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[3]),
        .I3(state[2]),
        .I4(s00_axi_aresetn),
        .I5(int_Rst),
        .O(int_Rst_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_Rst_reg
       (.C(CLK),
        .CE(1'b1),
        .D(int_Rst_i_1_n_0),
        .Q(int_Rst),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBFBFBFFF3C3C3C28)) 
    rScl_i_1
       (.I0(state[3]),
        .I1(\subState_reg_n_0_[0] ),
        .I2(\subState_reg_n_0_[1] ),
        .I3(state[2]),
        .I4(rScl_i_2_n_0),
        .I5(rScl),
        .O(rScl_i_1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    rScl_i_2
       (.I0(state[1]),
        .I1(state[0]),
        .O(rScl_i_2_n_0));
  FDRE #(
    .INIT(1'b1)) 
    rScl_reg
       (.C(CLK),
        .CE(1'b1),
        .D(rScl_i_1_n_0),
        .Q(rScl),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hABEAFFFFABEA0000)) 
    rSda_i_1
       (.I0(rSda_i_2_n_0),
        .I1(state[3]),
        .I2(\subState_reg_n_0_[1] ),
        .I3(\subState_reg_n_0_[0] ),
        .I4(rSda_i_3_n_0),
        .I5(rSda),
        .O(rSda_i_1_n_0));
  LUT6 #(
    .INIT(64'h0003000F000F000E)) 
    rSda_i_2
       (.I0(dataByte[7]),
        .I1(state[0]),
        .I2(\subState_reg_n_0_[1] ),
        .I3(state[3]),
        .I4(state[2]),
        .I5(state[1]),
        .O(rSda_i_2_n_0));
  LUT6 #(
    .INIT(64'h0100ABAAABAAFFFB)) 
    rSda_i_3
       (.I0(state[3]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(\subState_reg_n_0_[0] ),
        .I5(\subState_reg_n_0_[1] ),
        .O(rSda_i_3_n_0));
  FDRE #(
    .INIT(1'b1)) 
    rSda_reg
       (.C(CLK),
        .CE(1'b1),
        .D(rSda_i_1_n_0),
        .Q(rSda),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \sclCnt[0]_i_1 
       (.I0(sclCnt_reg[0]),
        .O(sclCnt0[0]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \sclCnt[1]_i_1 
       (.I0(sclCnt_reg[1]),
        .I1(sclCnt_reg[0]),
        .O(sclCnt0[1]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \sclCnt[2]_i_1 
       (.I0(sclCnt_reg[2]),
        .I1(sclCnt_reg[0]),
        .I2(sclCnt_reg[1]),
        .O(sclCnt0[2]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \sclCnt[3]_i_1 
       (.I0(sclCnt_reg[3]),
        .I1(sclCnt_reg[1]),
        .I2(sclCnt_reg[0]),
        .I3(sclCnt_reg[2]),
        .O(sclCnt0[3]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \sclCnt[4]_i_1 
       (.I0(sclCnt_reg[4]),
        .I1(sclCnt_reg[2]),
        .I2(sclCnt_reg[0]),
        .I3(sclCnt_reg[1]),
        .I4(sclCnt_reg[3]),
        .O(sclCnt0[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \sclCnt[5]_i_1 
       (.I0(sclCnt_reg[5]),
        .I1(sclCnt_reg[3]),
        .I2(sclCnt_reg[1]),
        .I3(sclCnt_reg[0]),
        .I4(sclCnt_reg[2]),
        .I5(sclCnt_reg[4]),
        .O(sclCnt0[5]));
  LUT5 #(
    .INIT(32'h0100FFFF)) 
    \sclCnt[6]_i_1 
       (.I0(state[2]),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\subState[1]_i_2_n_0 ),
        .O(sclCnt0_0));
  LUT2 #(
    .INIT(4'hB)) 
    \sclCnt[6]_i_2 
       (.I0(dScl),
        .I1(rScl),
        .O(\sclCnt[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \sclCnt[6]_i_3 
       (.I0(sclCnt_reg[6]),
        .I1(\sclCnt[6]_i_4_n_0 ),
        .O(sclCnt0[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sclCnt[6]_i_4 
       (.I0(sclCnt_reg[4]),
        .I1(sclCnt_reg[2]),
        .I2(sclCnt_reg[0]),
        .I3(sclCnt_reg[1]),
        .I4(sclCnt_reg[3]),
        .I5(sclCnt_reg[5]),
        .O(\sclCnt[6]_i_4_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \sclCnt_reg[0] 
       (.C(CLK),
        .CE(\sclCnt[6]_i_2_n_0 ),
        .D(sclCnt0[0]),
        .Q(sclCnt_reg[0]),
        .S(sclCnt0_0));
  FDSE #(
    .INIT(1'b0)) 
    \sclCnt_reg[1] 
       (.C(CLK),
        .CE(\sclCnt[6]_i_2_n_0 ),
        .D(sclCnt0[1]),
        .Q(sclCnt_reg[1]),
        .S(sclCnt0_0));
  FDSE #(
    .INIT(1'b1)) 
    \sclCnt_reg[2] 
       (.C(CLK),
        .CE(\sclCnt[6]_i_2_n_0 ),
        .D(sclCnt0[2]),
        .Q(sclCnt_reg[2]),
        .S(sclCnt0_0));
  FDSE #(
    .INIT(1'b1)) 
    \sclCnt_reg[3] 
       (.C(CLK),
        .CE(\sclCnt[6]_i_2_n_0 ),
        .D(sclCnt0[3]),
        .Q(sclCnt_reg[3]),
        .S(sclCnt0_0));
  FDSE #(
    .INIT(1'b1)) 
    \sclCnt_reg[4] 
       (.C(CLK),
        .CE(\sclCnt[6]_i_2_n_0 ),
        .D(sclCnt0[4]),
        .Q(sclCnt_reg[4]),
        .S(sclCnt0_0));
  FDRE #(
    .INIT(1'b1)) 
    \sclCnt_reg[5] 
       (.C(CLK),
        .CE(\sclCnt[6]_i_2_n_0 ),
        .D(sclCnt0[5]),
        .Q(sclCnt_reg[5]),
        .R(sclCnt0_0));
  FDRE #(
    .INIT(1'b1)) 
    \sclCnt_reg[6] 
       (.C(CLK),
        .CE(\sclCnt[6]_i_2_n_0 ),
        .D(sclCnt0[6]),
        .Q(sclCnt_reg[6]),
        .R(sclCnt0_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    scl_INST_0
       (.I0(1'b0),
        .I1(scl_INST_0_i_1_n_0),
        .I2(1'b0),
        .I3(1'b0),
        .I4(1'b0),
        .I5(1'b0),
        .O(scl));
  LUT1 #(
    .INIT(2'h1)) 
    scl_INST_0_i_1
       (.I0(rScl),
        .O(scl_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    sda_INST_0
       (.I0(1'b0),
        .I1(sda_INST_0_i_1_n_0),
        .I2(1'b0),
        .I3(1'b0),
        .I4(1'b0),
        .I5(1'b0),
        .O(sda));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT1 #(
    .INIT(2'h1)) 
    sda_INST_0_i_1
       (.I0(rSda),
        .O(sda_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h00FF000B)) 
    \state[0]_i_1 
       (.I0(\state_reg[2]_1 [1]),
        .I1(\state_reg[2]_1 [0]),
        .I2(\state_reg[2]_1 [2]),
        .I3(error),
        .I4(\state_reg[2]_1 [3]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFDFF00FF00)) 
    \state[1]_i_1 
       (.I0(\state_reg[1] [0]),
        .I1(\state_reg[1] [1]),
        .I2(\state_reg[1]_0 ),
        .I3(\state[1]_i_3_n_0 ),
        .I4(\state_reg[1]_1 ),
        .I5(\state[1]_i_5_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h05000D0000000000)) 
    \state[1]_i_3 
       (.I0(\state_reg[2]_1 [1]),
        .I1(\state_reg[1]_2 ),
        .I2(error),
        .I3(\state_reg[2]_1 [0]),
        .I4(\initA_reg[0]_0 [0]),
        .I5(\state_reg[1]_3 ),
        .O(\state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \state[1]_i_5 
       (.I0(\state_reg[2]_1 [1]),
        .I1(\state_reg[2]_1 [2]),
        .I2(\state_reg[2]_1 [3]),
        .I3(error),
        .O(\state[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFF8A)) 
    \state[2]_i_1 
       (.I0(error),
        .I1(\state_reg[2]_1 [3]),
        .I2(\state_reg[2]_1 [2]),
        .I3(\state_reg[2]_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h880000005F55CCCC)) 
    \state[3]_i_1 
       (.I0(\state_reg[2]_1 [0]),
        .I1(done),
        .I2(initEn_reg),
        .I3(\state_reg[2]_1 [1]),
        .I4(\state_reg[2]_1 [2]),
        .I5(\state_reg[2]_1 [3]),
        .O(\state_reg[0] ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \state[3]_i_2 
       (.I0(\state_reg[2]_1 [3]),
        .I1(\state_reg[2]_1 [2]),
        .I2(\state_reg[3] ),
        .I3(\initA_reg[0]_0 [1]),
        .I4(\initA_reg[0]_0 [0]),
        .I5(\state[3]_i_5_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \state[3]_i_5 
       (.I0(\initA_reg[0]_0 [4]),
        .I1(\initA_reg[0]_0 [5]),
        .I2(\initA_reg[0]_0 [2]),
        .I3(\initA_reg[0]_0 [3]),
        .I4(error),
        .I5(\initA_reg[0]_0 [6]),
        .O(\state[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9999999999999909)) 
    \subState[0]_i_1 
       (.I0(\subState_reg_n_0_[0] ),
        .I1(\subState[1]_i_2_n_0 ),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[3]),
        .I5(state[2]),
        .O(\subState[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h9A00)) 
    \subState[1]_i_1 
       (.I0(\subState_reg_n_0_[1] ),
        .I1(\subState[1]_i_2_n_0 ),
        .I2(\subState_reg_n_0_[0] ),
        .I3(\subState[1]_i_3_n_0 ),
        .O(\subState[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \subState[1]_i_2 
       (.I0(\sclCnt[6]_i_4_n_0 ),
        .I1(sclCnt_reg[6]),
        .O(\subState[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \subState[1]_i_3 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[3]),
        .I3(state[2]),
        .O(\subState[1]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \subState_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\subState[0]_i_1_n_0 ),
        .Q(\subState_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \subState_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\subState[1]_i_1_n_0 ),
        .Q(\subState_reg_n_0_[1] ),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA
   (Q,
    \processQ_reg[5] ,
    \processQ_reg[0] ,
    \processQ_reg[5]_0 ,
    D,
    \processQ_reg[5]_1 ,
    \processQ_reg[7] ,
    SR,
    \processQ_reg[0]_0 ,
    \processQ_reg[4] ,
    s00_axi_aresetn,
    triggerVoltOut,
    triggerTimeOut,
    S,
    \dc_bias[3]_i_7__0 ,
    \dc_bias_reg[3]_i_15 ,
    DOADO,
    \dc_bias_reg[3]_i_9 ,
    \dc_bias_reg[3]_i_9_0 ,
    \encoded_reg[0] ,
    switch,
    \is_trigger_time6_inferred__2/i__carry ,
    \is_trigger_time6_inferred__2/i__carry_0 ,
    \is_trigger_volt6_inferred__2/i__carry ,
    \is_trigger_volt6_inferred__2/i__carry_0 ,
    \dc_bias_reg[3]_i_62 ,
    \dc_bias_reg[3]_i_31 ,
    \dc_bias_reg[3]_i_66 ,
    \dc_bias_reg[3]_i_92 ,
    \dc_bias_reg[3]_i_56 ,
    \dc_bias_reg[3]_i_55 ,
    CLK);
  output [9:0]Q;
  output [3:0]\processQ_reg[5] ;
  output \processQ_reg[0] ;
  output \processQ_reg[5]_0 ;
  output [1:0]D;
  output \processQ_reg[5]_1 ;
  output \processQ_reg[7] ;
  output [0:0]SR;
  output \processQ_reg[0]_0 ;
  output \processQ_reg[4] ;
  input s00_axi_aresetn;
  input [7:0]triggerVoltOut;
  input [7:0]triggerTimeOut;
  input [0:0]S;
  input [0:0]\dc_bias[3]_i_7__0 ;
  input \dc_bias_reg[3]_i_15 ;
  input [3:0]DOADO;
  input \dc_bias_reg[3]_i_9 ;
  input [3:0]\dc_bias_reg[3]_i_9_0 ;
  input [0:0]\encoded_reg[0] ;
  input [1:0]switch;
  input \is_trigger_time6_inferred__2/i__carry ;
  input \is_trigger_time6_inferred__2/i__carry_0 ;
  input \is_trigger_volt6_inferred__2/i__carry ;
  input \is_trigger_volt6_inferred__2/i__carry_0 ;
  input \dc_bias_reg[3]_i_62 ;
  input \dc_bias_reg[3]_i_31 ;
  input \dc_bias_reg[3]_i_66 ;
  input \dc_bias_reg[3]_i_92 ;
  input \dc_bias_reg[3]_i_56 ;
  input \dc_bias_reg[3]_i_55 ;
  input CLK;

  wire CLK;
  wire [1:0]D;
  wire [3:0]DOADO;
  wire [9:0]Q;
  wire [0:0]S;
  wire [0:0]SR;
  wire [0:0]\dc_bias[3]_i_7__0 ;
  wire \dc_bias_reg[3]_i_15 ;
  wire \dc_bias_reg[3]_i_31 ;
  wire \dc_bias_reg[3]_i_55 ;
  wire \dc_bias_reg[3]_i_56 ;
  wire \dc_bias_reg[3]_i_62 ;
  wire \dc_bias_reg[3]_i_66 ;
  wire \dc_bias_reg[3]_i_9 ;
  wire \dc_bias_reg[3]_i_92 ;
  wire [3:0]\dc_bias_reg[3]_i_9_0 ;
  wire [0:0]\encoded_reg[0] ;
  wire [9:5]is_horizontal_gridline1;
  wire is_trigger_time1;
  wire is_trigger_time3;
  wire is_trigger_time35_in;
  wire is_trigger_time5;
  wire is_trigger_time6;
  wire is_trigger_time613_in;
  wire is_trigger_time616_in;
  wire \is_trigger_time6_inferred__2/i__carry ;
  wire \is_trigger_time6_inferred__2/i__carry_0 ;
  wire is_trigger_volt1;
  wire is_trigger_volt3;
  wire is_trigger_volt319_in;
  wire is_trigger_volt4;
  wire is_trigger_volt422_in;
  wire is_trigger_volt5;
  wire is_trigger_volt627_in;
  wire is_trigger_volt629_in;
  wire is_trigger_volt630_in;
  wire \is_trigger_volt6_inferred__2/i__carry ;
  wire \is_trigger_volt6_inferred__2/i__carry_0 ;
  wire [7:5]is_vertical_gridline1;
  wire \processQ_reg[0] ;
  wire \processQ_reg[0]_0 ;
  wire \processQ_reg[4] ;
  wire [3:0]\processQ_reg[5] ;
  wire \processQ_reg[5]_0 ;
  wire \processQ_reg[5]_1 ;
  wire \processQ_reg[7] ;
  wire [9:3]row;
  wire s00_axi_aresetn;
  wire [1:0]switch;
  wire [7:0]triggerTimeOut;
  wire [7:0]triggerVoltOut;
  wire uut1_n_10;
  wire uut1_n_100;
  wire uut1_n_104;
  wire uut1_n_105;
  wire uut1_n_106;
  wire uut1_n_11;
  wire uut1_n_12;
  wire uut1_n_13;
  wire uut1_n_14;
  wire uut1_n_15;
  wire uut1_n_16;
  wire uut1_n_17;
  wire uut1_n_18;
  wire uut1_n_19;
  wire uut1_n_21;
  wire uut1_n_22;
  wire uut1_n_23;
  wire uut1_n_24;
  wire uut1_n_26;
  wire uut1_n_27;
  wire uut1_n_28;
  wire uut1_n_29;
  wire uut1_n_30;
  wire uut1_n_31;
  wire uut1_n_32;
  wire uut1_n_33;
  wire uut1_n_34;
  wire uut1_n_35;
  wire uut1_n_36;
  wire uut1_n_37;
  wire uut1_n_38;
  wire uut1_n_39;
  wire uut1_n_40;
  wire uut1_n_41;
  wire uut1_n_42;
  wire uut1_n_43;
  wire uut1_n_44;
  wire uut1_n_45;
  wire uut1_n_46;
  wire uut1_n_47;
  wire uut1_n_48;
  wire uut1_n_49;
  wire uut1_n_50;
  wire uut1_n_51;
  wire uut1_n_52;
  wire uut1_n_53;
  wire uut1_n_54;
  wire uut1_n_55;
  wire uut1_n_56;
  wire uut1_n_57;
  wire uut1_n_58;
  wire uut1_n_65;
  wire uut1_n_67;
  wire uut1_n_68;
  wire uut1_n_69;
  wire uut1_n_70;
  wire uut1_n_71;
  wire uut1_n_72;
  wire uut1_n_73;
  wire uut1_n_74;
  wire uut1_n_75;
  wire uut1_n_76;
  wire uut1_n_77;
  wire uut1_n_78;
  wire uut1_n_79;
  wire uut1_n_80;
  wire uut1_n_81;
  wire uut1_n_82;
  wire uut1_n_83;
  wire uut1_n_84;
  wire uut1_n_85;
  wire uut1_n_86;
  wire uut1_n_87;
  wire uut1_n_88;
  wire uut1_n_89;
  wire uut1_n_90;
  wire uut1_n_91;
  wire uut1_n_92;
  wire uut1_n_93;
  wire uut1_n_94;
  wire uut1_n_95;
  wire uut1_n_96;
  wire uut1_n_97;
  wire uut1_n_98;
  wire uut1_n_99;
  wire uut2_n_1;
  wire uut2_n_104;
  wire uut2_n_105;
  wire uut2_n_13;
  wire uut2_n_14;
  wire uut2_n_15;
  wire uut2_n_16;
  wire uut2_n_17;
  wire uut2_n_18;
  wire uut2_n_19;
  wire uut2_n_2;
  wire uut2_n_20;
  wire uut2_n_26;
  wire uut2_n_27;
  wire uut2_n_28;
  wire uut2_n_29;
  wire uut2_n_30;
  wire uut2_n_31;
  wire uut2_n_32;
  wire uut2_n_33;
  wire uut2_n_34;
  wire uut2_n_35;
  wire uut2_n_36;
  wire uut2_n_37;
  wire uut2_n_38;
  wire uut2_n_39;
  wire uut2_n_40;
  wire uut2_n_41;
  wire uut2_n_42;
  wire uut2_n_43;
  wire uut2_n_44;
  wire uut2_n_45;
  wire uut2_n_46;
  wire uut2_n_47;
  wire uut2_n_48;
  wire uut2_n_49;
  wire uut2_n_50;
  wire uut2_n_51;
  wire uut2_n_52;
  wire uut2_n_53;
  wire uut2_n_54;
  wire uut2_n_56;
  wire uut2_n_57;
  wire uut2_n_58;
  wire uut2_n_59;
  wire uut2_n_60;
  wire uut2_n_61;
  wire uut2_n_62;
  wire uut2_n_63;
  wire uut2_n_64;
  wire uut2_n_65;
  wire uut2_n_66;
  wire uut2_n_67;
  wire uut2_n_68;
  wire uut2_n_69;
  wire uut2_n_70;
  wire uut2_n_71;
  wire uut2_n_72;
  wire uut2_n_73;
  wire uut2_n_74;
  wire uut2_n_75;
  wire uut2_n_76;
  wire uut2_n_77;
  wire uut2_n_78;
  wire uut2_n_79;
  wire uut2_n_80;
  wire uut2_n_81;
  wire uut2_n_82;
  wire uut2_n_83;
  wire uut2_n_84;
  wire uut2_n_85;
  wire uut2_n_86;
  wire uut2_n_87;
  wire uut2_n_88;
  wire uut2_n_89;
  wire uut2_n_90;
  wire uut2_n_91;
  wire uut2_n_92;
  wire uut2_n_93;
  wire uut2_n_94;
  wire uut2_n_95;
  wire uut2_n_96;
  wire uut2_n_97;
  wire uut2_n_98;
  wire uut3_n_0;
  wire uut3_n_1;
  wire uut3_n_10;
  wire uut3_n_11;
  wire uut3_n_12;
  wire uut3_n_13;
  wire uut3_n_14;
  wire uut3_n_15;
  wire uut3_n_16;
  wire uut3_n_17;
  wire uut3_n_18;
  wire uut3_n_19;
  wire uut3_n_2;
  wire uut3_n_20;
  wire uut3_n_21;
  wire uut3_n_22;
  wire uut3_n_23;
  wire uut3_n_24;
  wire uut3_n_25;
  wire uut3_n_26;
  wire uut3_n_27;
  wire uut3_n_3;
  wire uut3_n_36;
  wire uut3_n_37;
  wire uut3_n_38;
  wire uut3_n_4;
  wire uut3_n_5;
  wire uut3_n_6;
  wire uut3_n_7;
  wire uut3_n_8;
  wire uut3_n_9;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter uut1
       (.CLK(CLK),
        .CO(is_trigger_volt630_in),
        .D(D),
        .DI({is_vertical_gridline1[5],uut1_n_21,uut1_n_22}),
        .O({uut3_n_25,uut3_n_26,uut3_n_27}),
        .Q(Q),
        .S({uut1_n_12,uut1_n_13,uut1_n_14,uut1_n_15}),
        .SR(SR),
        .\dc_bias[3]_i_12 (is_trigger_time1),
        .\dc_bias[3]_i_12_0 (uut2_n_13),
        .\dc_bias[3]_i_12_1 (is_trigger_time616_in),
        .\dc_bias[3]_i_12_2 (uut2_n_73),
        .\dc_bias[3]_i_14_0 (is_trigger_volt422_in),
        .\dc_bias[3]_i_14_1 (is_trigger_volt4),
        .\dc_bias[3]_i_14_2 (uut2_n_68),
        .\dc_bias[3]_i_14_3 (is_trigger_volt3),
        .\dc_bias[3]_i_14_4 (is_trigger_volt319_in),
        .\dc_bias[3]_i_28_0 (is_trigger_time5),
        .\dc_bias[3]_i_2__1 (uut2_n_57),
        .\dc_bias[3]_i_3__0 (uut2_n_59),
        .\dc_bias[3]_i_3__0_0 (uut2_n_66),
        .\dc_bias[3]_i_3__1_0 (uut3_n_38),
        .\dc_bias[3]_i_6_0 (is_trigger_volt629_in),
        .\dc_bias[3]_i_6_1 (is_trigger_volt1),
        .\dc_bias_reg[0] (uut2_n_56),
        .\dc_bias_reg[0]_0 ({row[9],\processQ_reg[5] [1:0]}),
        .\dc_bias_reg[1] (uut3_n_36),
        .\dc_bias_reg[1]_0 (uut2_n_2),
        .\dc_bias_reg[1]_1 (uut2_n_58),
        .\dc_bias_reg[3]_i_55_0 (\dc_bias_reg[3]_i_55 ),
        .\dc_bias_reg[3]_i_56_0 (\dc_bias_reg[3]_i_56 ),
        .\dc_bias_reg[3]_i_92_0 (\dc_bias_reg[3]_i_92 ),
        .\encoded_reg[0] (\encoded_reg[0] ),
        .\encoded_reg[9] (uut2_n_1),
        .i___30_carry__0_i_1_0(uut3_n_2),
        .\is_hash_mark2_inferred__0/i___21_carry ({uut3_n_0,uut3_n_1}),
        .\is_hash_mark2_inferred__0/i___30_carry__0 ({uut3_n_3,uut3_n_4,uut3_n_5,uut3_n_6}),
        .\is_trigger_time6_inferred__2/i__carry (\is_trigger_time6_inferred__2/i__carry ),
        .\is_trigger_time6_inferred__2/i__carry_0 (\is_trigger_time6_inferred__2/i__carry_0 ),
        .is_vertical_gridline0__20_carry(uut3_n_23),
        .is_vertical_gridline0__20_carry__0(uut3_n_24),
        .\processQ_reg[0]_0 (\processQ_reg[0]_0 ),
        .\processQ_reg[0]_1 (uut1_n_69),
        .\processQ_reg[1]_0 ({uut1_n_40,uut1_n_41,uut1_n_42}),
        .\processQ_reg[1]_1 (uut1_n_68),
        .\processQ_reg[1]_2 (uut1_n_74),
        .\processQ_reg[1]_3 (is_trigger_time6),
        .\processQ_reg[1]_4 (is_trigger_time35_in),
        .\processQ_reg[2]_0 ({uut1_n_57,uut1_n_58}),
        .\processQ_reg[3]_0 (uut1_n_11),
        .\processQ_reg[3]_1 ({uut1_n_43,uut1_n_44,uut1_n_45,uut1_n_46}),
        .\processQ_reg[4]_0 ({uut1_n_53,uut1_n_54,uut1_n_55,uut1_n_56}),
        .\processQ_reg[4]_1 (uut1_n_65),
        .\processQ_reg[4]_2 (\processQ_reg[4] ),
        .\processQ_reg[5]_0 (uut1_n_10),
        .\processQ_reg[5]_1 ({uut1_n_36,uut1_n_37,uut1_n_38,uut1_n_39}),
        .\processQ_reg[5]_2 (\processQ_reg[5]_1 ),
        .\processQ_reg[6]_0 ({uut1_n_16,uut1_n_17,uut1_n_18,uut1_n_19}),
        .\processQ_reg[6]_1 ({uut1_n_26,uut1_n_27}),
        .\processQ_reg[6]_2 ({uut1_n_88,uut1_n_89}),
        .\processQ_reg[7]_0 ({uut1_n_47,uut1_n_48,uut1_n_49,uut1_n_50}),
        .\processQ_reg[7]_1 (\processQ_reg[7] ),
        .\processQ_reg[7]_2 ({uut1_n_70,uut1_n_71,uut1_n_72,uut1_n_73}),
        .\processQ_reg[7]_3 ({uut1_n_75,uut1_n_76,uut1_n_77,uut1_n_78}),
        .\processQ_reg[8]_0 ({uut1_n_104,uut1_n_105,uut1_n_106}),
        .\processQ_reg[9]_0 ({uut1_n_23,uut1_n_24,is_vertical_gridline1[7]}),
        .\processQ_reg[9]_1 ({uut1_n_32,uut1_n_33,uut1_n_34,uut1_n_35}),
        .\processQ_reg[9]_2 ({uut1_n_51,uut1_n_52}),
        .\processQ_reg[9]_3 (uut1_n_67),
        .\processQ_reg[9]_4 ({uut1_n_83,uut1_n_84,uut1_n_85,uut1_n_86}),
        .\processQ_reg[9]_5 (uut1_n_87),
        .\processQ_reg[9]_6 (uut1_n_100),
        .\processQ_reg[9]_7 (is_trigger_time3),
        .s00_axi_aresetn(s00_axi_aresetn),
        .triggerTimeOut(triggerTimeOut),
        .\triggerTime_reg[7] ({uut1_n_90,uut1_n_91,uut1_n_92,uut1_n_93}),
        .\triggerTime_reg[7]_0 ({uut1_n_95,uut1_n_96,uut1_n_97,uut1_n_98}),
        .\triggerTime_reg[8] (uut1_n_99),
        .\triggerTime_reg[9] ({uut1_n_28,uut1_n_29,uut1_n_30,uut1_n_31}),
        .\triggerTime_reg[9]_0 ({uut1_n_79,uut1_n_80,uut1_n_81,uut1_n_82}),
        .\triggerTime_reg[9]_1 (uut1_n_94));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter__parameterized1 uut2
       (.CLK(CLK),
        .CO(is_trigger_volt5),
        .DI({uut2_n_49,uut2_n_50,uut2_n_51}),
        .DOADO(DOADO),
        .O({uut3_n_17,uut3_n_18,uut3_n_19}),
        .Q({row[9:6],\processQ_reg[5] [3],row[4:3],\processQ_reg[5] [2:0]}),
        .S({uut2_n_14,uut2_n_15,uut2_n_16,uut2_n_17}),
        .\dc_bias[3]_i_12_0 (is_trigger_time3),
        .\dc_bias[3]_i_12_1 (is_trigger_time35_in),
        .\dc_bias[3]_i_2 (uut1_n_67),
        .\dc_bias[3]_i_28 (is_trigger_time6),
        .\dc_bias[3]_i_28_0 (is_trigger_time613_in),
        .\dc_bias[3]_i_30 (is_trigger_volt627_in),
        .\dc_bias[3]_i_30_0 (Q[1:0]),
        .\dc_bias[3]_i_38 (uut2_n_83),
        .\dc_bias[3]_i_4_0 (S),
        .\dc_bias[3]_i_6 (uut1_n_74),
        .\dc_bias[3]_i_7__0_0 (\dc_bias[3]_i_7__0 ),
        .\dc_bias[3]_i_8__0 ({uut3_n_20,uut3_n_21,uut3_n_22}),
        .\dc_bias[3]_i_8__0_0 (uut3_n_37),
        .\dc_bias_reg[3]_i_15_0 (\dc_bias_reg[3]_i_15 ),
        .\dc_bias_reg[3]_i_31_0 (\dc_bias_reg[3]_i_31 ),
        .\dc_bias_reg[3]_i_62_0 (\dc_bias_reg[3]_i_62 ),
        .\dc_bias_reg[3]_i_66_0 (\dc_bias_reg[3]_i_66 ),
        .\dc_bias_reg[3]_i_9_0 (\dc_bias_reg[3]_i_9 ),
        .\dc_bias_reg[3]_i_9_1 (\dc_bias_reg[3]_i_9_0 ),
        .\encoded_reg[9] (uut1_n_69),
        .\encoded_reg[9]_0 (uut3_n_36),
        .\encoded_reg[9]_1 (uut1_n_65),
        .\is_hash_mark2_inferred__2/i___12_carry__0 ({uut3_n_7,uut3_n_8,uut3_n_9,uut3_n_10}),
        .\is_hash_mark2_inferred__2/i___12_carry__1 (uut3_n_11),
        .is_horizontal_gridline0__23_carry({uut3_n_14,uut3_n_15,uut3_n_16}),
        .is_horizontal_gridline0__23_carry_0(uut3_n_13),
        .is_horizontal_gridline0__29_carry(uut3_n_12),
        .is_horizontal_gridline0_carry__0(uut2_n_67),
        .is_horizontal_gridline0_carry__0_0({uut2_n_96,uut2_n_97,uut2_n_98}),
        .is_horizontal_gridline1(is_horizontal_gridline1),
        .\is_trigger_volt6_inferred__2/i__carry (\is_trigger_volt6_inferred__2/i__carry ),
        .\is_trigger_volt6_inferred__2/i__carry_0 (\is_trigger_volt6_inferred__2/i__carry_0 ),
        .\processQ_reg[0]_0 (\processQ_reg[0] ),
        .\processQ_reg[0]_1 (uut2_n_60),
        .\processQ_reg[0]_2 (uut2_n_68),
        .\processQ_reg[0]_3 (uut1_n_10),
        .\processQ_reg[1]_0 (uut2_n_13),
        .\processQ_reg[1]_1 (uut2_n_61),
        .\processQ_reg[1]_2 (is_trigger_volt319_in),
        .\processQ_reg[2]_0 ({uut2_n_52,uut2_n_53}),
        .\processQ_reg[2]_1 (uut2_n_73),
        .\processQ_reg[3]_0 ({uut2_n_36,uut2_n_37,uut2_n_38,uut2_n_39}),
        .\processQ_reg[3]_1 ({uut2_n_40,uut2_n_41,uut2_n_42,uut2_n_43}),
        .\processQ_reg[3]_2 (uut2_n_54),
        .\processQ_reg[4]_0 ({uut2_n_29,uut2_n_30,uut2_n_31}),
        .\processQ_reg[4]_1 (uut2_n_84),
        .\processQ_reg[5]_0 ({uut2_n_26,uut2_n_27,uut2_n_28}),
        .\processQ_reg[5]_1 (\processQ_reg[5]_0 ),
        .\processQ_reg[5]_2 (uut2_n_59),
        .\processQ_reg[7]_0 ({uut2_n_45,uut2_n_46,uut2_n_47,uut2_n_48}),
        .\processQ_reg[7]_1 ({uut2_n_62,uut2_n_63,uut2_n_64,uut2_n_65}),
        .\processQ_reg[7]_2 (uut2_n_66),
        .\processQ_reg[7]_3 ({uut2_n_69,uut2_n_70,uut2_n_71,uut2_n_72}),
        .\processQ_reg[8]_0 (uut2_n_44),
        .\processQ_reg[8]_1 (uut2_n_56),
        .\processQ_reg[8]_2 (uut2_n_89),
        .\processQ_reg[8]_3 ({uut2_n_104,uut2_n_105}),
        .\processQ_reg[9]_0 (uut2_n_1),
        .\processQ_reg[9]_1 ({uut2_n_18,uut2_n_19,uut2_n_20}),
        .\processQ_reg[9]_2 (uut2_n_57),
        .\processQ_reg[9]_3 ({uut2_n_78,uut2_n_79,uut2_n_80,uut2_n_81}),
        .\processQ_reg[9]_4 (uut2_n_82),
        .\processQ_reg[9]_5 (uut2_n_95),
        .\processQ_reg[9]_6 (is_trigger_volt4),
        .\processQ_reg[9]_7 (is_trigger_volt422_in),
        .\processQ_reg[9]_8 (is_trigger_volt3),
        .\processQ_reg[9]_9 (is_trigger_volt629_in),
        .s00_axi_aresetn(s00_axi_aresetn),
        .switch(switch),
        .switch_0_sp_1(uut2_n_58),
        .switch_1_sp_1(uut2_n_2),
        .triggerVoltOut(triggerVoltOut),
        .\triggerVolt_reg[7] ({uut2_n_85,uut2_n_86,uut2_n_87,uut2_n_88}),
        .\triggerVolt_reg[7]_0 ({uut2_n_90,uut2_n_91,uut2_n_92,uut2_n_93}),
        .\triggerVolt_reg[8] (uut2_n_94),
        .\triggerVolt_reg[9] ({uut2_n_32,uut2_n_33,uut2_n_34,uut2_n_35}),
        .\triggerVolt_reg[9]_0 ({uut2_n_74,uut2_n_75,uut2_n_76,uut2_n_77}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_scopeFace uut3
       (.CO(is_trigger_volt5),
        .DI({uut2_n_49,uut2_n_50,uut2_n_51}),
        .O({uut3_n_17,uut3_n_18,uut3_n_19}),
        .Q(Q[8:0]),
        .S({uut2_n_14,uut2_n_15,uut2_n_16,uut2_n_17}),
        .\dc_bias[3]_i_14 ({uut2_n_32,uut2_n_33,uut2_n_34,uut2_n_35}),
        .\dc_bias[3]_i_14_0 (uut2_n_61),
        .\dc_bias[3]_i_14_1 ({uut2_n_78,uut2_n_79,uut2_n_80,uut2_n_81}),
        .\dc_bias[3]_i_14_2 ({uut2_n_74,uut2_n_75,uut2_n_76,uut2_n_77}),
        .\dc_bias[3]_i_16__0_0 ({is_vertical_gridline1[5],uut1_n_21,uut1_n_22}),
        .\dc_bias[3]_i_16__0_1 ({uut1_n_26,uut1_n_27}),
        .\dc_bias[3]_i_17__0 (uut2_n_54),
        .\dc_bias[3]_i_17__0_0 ({uut2_n_26,uut2_n_27,uut2_n_28}),
        .\dc_bias[3]_i_18__0_0 ({uut1_n_43,uut1_n_44,uut1_n_45,uut1_n_46}),
        .\dc_bias[3]_i_23_0 ({uut2_n_45,uut2_n_46,uut2_n_47,uut2_n_48}),
        .\dc_bias[3]_i_28 ({uut1_n_28,uut1_n_29,uut1_n_30,uut1_n_31}),
        .\dc_bias[3]_i_28_0 (uut1_n_68),
        .\dc_bias[3]_i_28_1 ({uut1_n_83,uut1_n_84,uut1_n_85,uut1_n_86}),
        .\dc_bias[3]_i_28_2 ({uut1_n_79,uut1_n_80,uut1_n_81,uut1_n_82}),
        .\dc_bias[3]_i_38_0 ({uut2_n_52,uut2_n_53}),
        .\dc_bias[3]_i_38_1 ({uut2_n_36,uut2_n_37,uut2_n_38,uut2_n_39}),
        .\dc_bias[3]_i_40_0 ({uut1_n_47,uut1_n_48,uut1_n_49,uut1_n_50}),
        .\dc_bias[3]_i_41_0 ({uut1_n_51,uut1_n_52}),
        .\dc_bias[3]_i_4__0 (uut2_n_83),
        .\dc_bias[3]_i_4__0_0 (uut2_n_60),
        .\dc_bias[3]_i_51_0 ({uut2_n_40,uut2_n_41,uut2_n_42,uut2_n_43}),
        .\dc_bias[3]_i_52_0 (uut2_n_44),
        .\dc_bias[3]_i_57 (uut1_n_100),
        .\dc_bias[3]_i_57_0 (uut1_n_99),
        .\dc_bias[3]_i_58 (uut1_n_87),
        .\dc_bias[3]_i_58_0 (uut1_n_94),
        .\dc_bias[3]_i_61 (uut2_n_82),
        .\dc_bias[3]_i_61_0 (uut2_n_89),
        .\dc_bias[3]_i_61_1 (uut2_n_95),
        .\dc_bias[3]_i_61_2 (uut2_n_94),
        .\dc_bias[3]_i_8__0_0 ({uut1_n_11,uut1_n_57,uut1_n_58}),
        .\dc_bias[3]_i_8__0_1 ({uut1_n_53,uut1_n_54,uut1_n_55,uut1_n_56}),
        .i___12_carry__0_i_4({uut2_n_104,uut2_n_105}),
        .i___12_carry__1_i_1({row[9:6],\processQ_reg[5] [3],row[4:3],\processQ_reg[5] [2:0]}),
        .i___21_carry_i_2({uut1_n_32,uut1_n_33,uut1_n_34,uut1_n_35}),
        .i___30_carry_i_1({uut1_n_104,uut1_n_105,uut1_n_106}),
        .\is_hash_mark2_inferred__0/i__carry__0_0 ({uut1_n_40,uut1_n_41,uut1_n_42}),
        .\is_hash_mark2_inferred__0/i__carry__1_0 ({uut1_n_36,uut1_n_37,uut1_n_38,uut1_n_39}),
        .is_horizontal_gridline0__29_carry__0_i_5(uut2_n_67),
        .is_horizontal_gridline0__29_carry__0_i_5_0({uut2_n_96,uut2_n_97,uut2_n_98}),
        .is_horizontal_gridline0__29_carry_i_4({uut2_n_18,uut2_n_19,uut2_n_20}),
        .is_horizontal_gridline0__29_carry_i_5(uut2_n_84),
        .is_horizontal_gridline0_carry__0_0({uut2_n_29,uut2_n_30,uut2_n_31}),
        .is_horizontal_gridline1(is_horizontal_gridline1),
        .is_trigger_time5_carry__0_0({uut1_n_70,uut1_n_71,uut1_n_72,uut1_n_73}),
        .is_trigger_time5_carry__0_1({uut1_n_95,uut1_n_96,uut1_n_97,uut1_n_98}),
        .\is_trigger_time6_inferred__0/i__carry__0_0 ({uut1_n_75,uut1_n_76,uut1_n_77,uut1_n_78}),
        .\is_trigger_time6_inferred__0/i__carry__0_1 ({uut1_n_90,uut1_n_91,uut1_n_92,uut1_n_93}),
        .is_trigger_volt5_carry__0_0({uut2_n_62,uut2_n_63,uut2_n_64,uut2_n_65}),
        .is_trigger_volt5_carry__0_1({uut2_n_90,uut2_n_91,uut2_n_92,uut2_n_93}),
        .\is_trigger_volt6_inferred__0/i__carry__0_0 ({uut2_n_69,uut2_n_70,uut2_n_71,uut2_n_72}),
        .\is_trigger_volt6_inferred__0/i__carry__0_1 ({uut2_n_85,uut2_n_86,uut2_n_87,uut2_n_88}),
        .is_vertical_gridline0__20_carry__0_i_2({uut1_n_23,uut1_n_24,is_vertical_gridline1[7]}),
        .is_vertical_gridline0__20_carry_i_6({uut1_n_16,uut1_n_17,uut1_n_18,uut1_n_19}),
        .is_vertical_gridline0_carry__0_0({uut1_n_88,uut1_n_89}),
        .is_vertical_gridline0_carry__0_1({uut1_n_12,uut1_n_13,uut1_n_14,uut1_n_15}),
        .\processQ_reg[0] (uut3_n_23),
        .\processQ_reg[0]_0 (uut3_n_36),
        .\processQ_reg[1] (uut3_n_12),
        .\processQ_reg[1]_0 ({uut3_n_20,uut3_n_21,uut3_n_22}),
        .\processQ_reg[1]_1 (is_trigger_time616_in),
        .\processQ_reg[1]_2 (is_trigger_volt630_in),
        .\processQ_reg[1]_3 (uut3_n_37),
        .\processQ_reg[7] (uut3_n_38),
        .\processQ_reg[8] ({uut3_n_0,uut3_n_1}),
        .\processQ_reg[8]_0 (uut3_n_2),
        .\processQ_reg[8]_1 ({uut3_n_3,uut3_n_4,uut3_n_5,uut3_n_6}),
        .\processQ_reg[8]_2 ({uut3_n_7,uut3_n_8,uut3_n_9,uut3_n_10}),
        .\processQ_reg[9] (uut3_n_11),
        .\processQ_reg[9]_0 (uut3_n_13),
        .\processQ_reg[9]_1 ({uut3_n_14,uut3_n_15,uut3_n_16}),
        .\processQ_reg[9]_2 (uut3_n_24),
        .\processQ_reg[9]_3 ({uut3_n_25,uut3_n_26,uut3_n_27}),
        .\processQ_reg[9]_4 (is_trigger_time613_in),
        .\processQ_reg[9]_5 (is_trigger_time5),
        .\processQ_reg[9]_6 (is_trigger_volt627_in),
        .\triggerTime_reg[9] (is_trigger_time1),
        .\triggerVolt_reg[9] (is_trigger_volt1));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_audio_init
   (scl,
    sda,
    CLK,
    s00_axi_aresetn,
    SR);
  inout scl;
  inout sda;
  input CLK;
  input s00_axi_aresetn;
  input [0:0]SR;

  wire CLK;
  wire [0:0]SR;
  wire [6:6]data0;
  wire [7:0]data1;
  wire [7:0]data2;
  wire [7:0]data_i;
  wire \data_i[0]_i_1_n_0 ;
  wire \data_i[0]_i_2_n_0 ;
  wire \data_i[1]_i_1_n_0 ;
  wire \data_i[2]_i_1_n_0 ;
  wire \data_i[3]_i_1_n_0 ;
  wire \data_i[4]_i_1_n_0 ;
  wire \data_i[4]_i_2_n_0 ;
  wire \data_i[5]_i_1_n_0 ;
  wire \data_i[5]_i_2_n_0 ;
  wire \data_i[6]_i_1_n_0 ;
  wire \data_i[6]_i_2_n_0 ;
  wire \data_i[6]_i_3_n_0 ;
  wire \data_i[6]_i_4_n_0 ;
  wire \data_i[7]_i_1_n_0 ;
  wire delayEn;
  wire delayEn_i_1_n_0;
  wire [31:0]delaycnt;
  wire delaycnt0;
  wire delaycnt0_carry__0_i_1_n_0;
  wire delaycnt0_carry__0_i_2_n_0;
  wire delaycnt0_carry__0_i_3_n_0;
  wire delaycnt0_carry__0_i_4_n_0;
  wire delaycnt0_carry__0_n_0;
  wire delaycnt0_carry__0_n_1;
  wire delaycnt0_carry__0_n_2;
  wire delaycnt0_carry__0_n_3;
  wire delaycnt0_carry__0_n_4;
  wire delaycnt0_carry__0_n_5;
  wire delaycnt0_carry__0_n_6;
  wire delaycnt0_carry__0_n_7;
  wire delaycnt0_carry__1_i_1_n_0;
  wire delaycnt0_carry__1_i_2_n_0;
  wire delaycnt0_carry__1_i_3_n_0;
  wire delaycnt0_carry__1_i_4_n_0;
  wire delaycnt0_carry__1_n_0;
  wire delaycnt0_carry__1_n_1;
  wire delaycnt0_carry__1_n_2;
  wire delaycnt0_carry__1_n_3;
  wire delaycnt0_carry__1_n_4;
  wire delaycnt0_carry__1_n_5;
  wire delaycnt0_carry__1_n_6;
  wire delaycnt0_carry__1_n_7;
  wire delaycnt0_carry__2_i_1_n_0;
  wire delaycnt0_carry__2_i_2_n_0;
  wire delaycnt0_carry__2_i_3_n_0;
  wire delaycnt0_carry__2_i_4_n_0;
  wire delaycnt0_carry__2_n_0;
  wire delaycnt0_carry__2_n_1;
  wire delaycnt0_carry__2_n_2;
  wire delaycnt0_carry__2_n_3;
  wire delaycnt0_carry__2_n_4;
  wire delaycnt0_carry__2_n_5;
  wire delaycnt0_carry__2_n_6;
  wire delaycnt0_carry__2_n_7;
  wire delaycnt0_carry__3_i_1_n_0;
  wire delaycnt0_carry__3_i_2_n_0;
  wire delaycnt0_carry__3_i_3_n_0;
  wire delaycnt0_carry__3_i_4_n_0;
  wire delaycnt0_carry__3_n_0;
  wire delaycnt0_carry__3_n_1;
  wire delaycnt0_carry__3_n_2;
  wire delaycnt0_carry__3_n_3;
  wire delaycnt0_carry__3_n_4;
  wire delaycnt0_carry__3_n_5;
  wire delaycnt0_carry__3_n_6;
  wire delaycnt0_carry__3_n_7;
  wire delaycnt0_carry__4_i_1_n_0;
  wire delaycnt0_carry__4_i_2_n_0;
  wire delaycnt0_carry__4_i_3_n_0;
  wire delaycnt0_carry__4_i_4_n_0;
  wire delaycnt0_carry__4_n_0;
  wire delaycnt0_carry__4_n_1;
  wire delaycnt0_carry__4_n_2;
  wire delaycnt0_carry__4_n_3;
  wire delaycnt0_carry__4_n_4;
  wire delaycnt0_carry__4_n_5;
  wire delaycnt0_carry__4_n_6;
  wire delaycnt0_carry__4_n_7;
  wire delaycnt0_carry__5_i_1_n_0;
  wire delaycnt0_carry__5_i_2_n_0;
  wire delaycnt0_carry__5_i_3_n_0;
  wire delaycnt0_carry__5_i_4_n_0;
  wire delaycnt0_carry__5_n_0;
  wire delaycnt0_carry__5_n_1;
  wire delaycnt0_carry__5_n_2;
  wire delaycnt0_carry__5_n_3;
  wire delaycnt0_carry__5_n_4;
  wire delaycnt0_carry__5_n_5;
  wire delaycnt0_carry__5_n_6;
  wire delaycnt0_carry__5_n_7;
  wire delaycnt0_carry__6_i_1_n_0;
  wire delaycnt0_carry__6_i_2_n_0;
  wire delaycnt0_carry__6_i_3_n_0;
  wire delaycnt0_carry__6_n_2;
  wire delaycnt0_carry__6_n_3;
  wire delaycnt0_carry__6_n_5;
  wire delaycnt0_carry__6_n_6;
  wire delaycnt0_carry__6_n_7;
  wire delaycnt0_carry_i_1_n_0;
  wire delaycnt0_carry_i_2_n_0;
  wire delaycnt0_carry_i_3_n_0;
  wire delaycnt0_carry_i_4_n_0;
  wire delaycnt0_carry_n_0;
  wire delaycnt0_carry_n_1;
  wire delaycnt0_carry_n_2;
  wire delaycnt0_carry_n_3;
  wire delaycnt0_carry_n_4;
  wire delaycnt0_carry_n_5;
  wire delaycnt0_carry_n_6;
  wire delaycnt0_carry_n_7;
  wire \delaycnt[0]_i_1_n_0 ;
  wire \initA[0]_i_1_n_0 ;
  wire \initA[6]_i_3_n_0 ;
  wire \initA[6]_i_5_n_0 ;
  wire [6:0]initA_reg;
  wire initEn;
  wire initEn_i_3_n_0;
  wire \initWord[0]_i_1_n_0 ;
  wire \initWord[10]_i_1_n_0 ;
  wire \initWord[11]_i_1_n_0 ;
  wire \initWord[12]_i_1_n_0 ;
  wire \initWord[13]_i_1_n_0 ;
  wire \initWord[14]_i_1_n_0 ;
  wire \initWord[15]_i_1_n_0 ;
  wire \initWord[16]_i_1_n_0 ;
  wire \initWord[17]_i_1_n_0 ;
  wire \initWord[18]_i_1_n_0 ;
  wire \initWord[19]_i_1_n_0 ;
  wire \initWord[20]_i_1_n_0 ;
  wire \initWord[21]_i_1_n_0 ;
  wire \initWord[23]_i_1_n_0 ;
  wire \initWord[30]_i_1_n_0 ;
  wire \initWord[30]_i_2_n_0 ;
  wire \initWord[30]_i_3_n_0 ;
  wire \initWord[5]_i_1_n_0 ;
  wire \initWord[8]_i_1_n_0 ;
  wire \initWord[9]_i_1_n_0 ;
  wire \initWord_reg_n_0_[0] ;
  wire \initWord_reg_n_0_[5] ;
  wire msg_i_1_n_0;
  wire msg_reg_n_0;
  wire [6:1]p_1_in__0;
  wire s00_axi_aresetn;
  wire scl;
  wire sda;
  wire \state[1]_i_2_n_0 ;
  wire \state[1]_i_4_n_0 ;
  wire \state[1]_i_6_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[3]_i_10_n_0 ;
  wire \state[3]_i_11_n_0 ;
  wire \state[3]_i_12_n_0 ;
  wire \state[3]_i_13_n_0 ;
  wire \state[3]_i_3_n_0 ;
  wire \state[3]_i_4_n_0 ;
  wire \state[3]_i_6_n_0 ;
  wire \state[3]_i_7_n_0 ;
  wire \state[3]_i_8_n_0 ;
  wire \state[3]_i_9_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire \state_reg_n_0_[3] ;
  wire stb;
  wire stb_i_1_n_0;
  wire twi_controller_n_0;
  wire twi_controller_n_1;
  wire twi_controller_n_2;
  wire twi_controller_n_3;
  wire twi_controller_n_4;
  wire twi_controller_n_5;
  wire twi_controller_n_6;
  wire [3:2]NLW_delaycnt0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_delaycnt0_carry__6_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFFFF7F747F70)) 
    \data_i[0]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[3] ),
        .I4(data2[0]),
        .I5(\data_i[0]_i_2_n_0 ),
        .O(\data_i[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h74FF444474444444)) 
    \data_i[0]_i_2 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\initWord_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(data1[0]),
        .O(\data_i[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000A000C0000)) 
    \data_i[1]_i_1 
       (.I0(data2[1]),
        .I1(data1[1]),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[1] ),
        .O(\data_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hAAEEFAAA)) 
    \data_i[2]_i_1 
       (.I0(\data_i[5]_i_2_n_0 ),
        .I1(data1[2]),
        .I2(data2[2]),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\data_i[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAEEFAAA)) 
    \data_i[3]_i_1 
       (.I0(\data_i[5]_i_2_n_0 ),
        .I1(data1[3]),
        .I2(data2[3]),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\data_i[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCAA0000F0000000)) 
    \data_i[4]_i_1 
       (.I0(data1[4]),
        .I1(\initWord_reg_n_0_[5] ),
        .I2(data2[4]),
        .I3(\state_reg_n_0_[1] ),
        .I4(\data_i[4]_i_2_n_0 ),
        .I5(\state_reg_n_0_[0] ),
        .O(\data_i[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \data_i[4]_i_2 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[3] ),
        .O(\data_i[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAEEFAAA)) 
    \data_i[5]_i_1 
       (.I0(\data_i[5]_i_2_n_0 ),
        .I1(data1[5]),
        .I2(data2[5]),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\data_i[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h3EFCFCFC)) 
    \data_i[5]_i_2 
       (.I0(\initWord_reg_n_0_[5] ),
        .I1(\state_reg_n_0_[3] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .O(\data_i[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAEAAAEAAAEA)) 
    \data_i[6]_i_1 
       (.I0(\data_i[6]_i_2_n_0 ),
        .I1(data0),
        .I2(\data_i[6]_i_3_n_0 ),
        .I3(\state[3]_i_4_n_0 ),
        .I4(\data_i[6]_i_4_n_0 ),
        .I5(data2[6]),
        .O(\data_i[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0FC0000A00C0000)) 
    \data_i[6]_i_2 
       (.I0(\initWord_reg_n_0_[5] ),
        .I1(data0),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\data_i[4]_i_2_n_0 ),
        .I5(data1[7]),
        .O(\data_i[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \data_i[6]_i_3 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[3] ),
        .O(\data_i[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \data_i[6]_i_4 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[0] ),
        .O(\data_i[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000A000C0000)) 
    \data_i[7]_i_1 
       (.I0(data2[7]),
        .I1(data1[7]),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[1] ),
        .O(\data_i[7]_i_1_n_0 ));
  FDRE \data_i_reg[0] 
       (.C(CLK),
        .CE(s00_axi_aresetn),
        .D(\data_i[0]_i_1_n_0 ),
        .Q(data_i[0]),
        .R(1'b0));
  FDRE \data_i_reg[1] 
       (.C(CLK),
        .CE(s00_axi_aresetn),
        .D(\data_i[1]_i_1_n_0 ),
        .Q(data_i[1]),
        .R(1'b0));
  FDRE \data_i_reg[2] 
       (.C(CLK),
        .CE(s00_axi_aresetn),
        .D(\data_i[2]_i_1_n_0 ),
        .Q(data_i[2]),
        .R(1'b0));
  FDRE \data_i_reg[3] 
       (.C(CLK),
        .CE(s00_axi_aresetn),
        .D(\data_i[3]_i_1_n_0 ),
        .Q(data_i[3]),
        .R(1'b0));
  FDRE \data_i_reg[4] 
       (.C(CLK),
        .CE(s00_axi_aresetn),
        .D(\data_i[4]_i_1_n_0 ),
        .Q(data_i[4]),
        .R(1'b0));
  FDRE \data_i_reg[5] 
       (.C(CLK),
        .CE(s00_axi_aresetn),
        .D(\data_i[5]_i_1_n_0 ),
        .Q(data_i[5]),
        .R(1'b0));
  FDRE \data_i_reg[6] 
       (.C(CLK),
        .CE(s00_axi_aresetn),
        .D(\data_i[6]_i_1_n_0 ),
        .Q(data_i[6]),
        .R(1'b0));
  FDRE \data_i_reg[7] 
       (.C(CLK),
        .CE(s00_axi_aresetn),
        .D(\data_i[7]_i_1_n_0 ),
        .Q(data_i[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hABAAA8AA00000000)) 
    delayEn_i_1
       (.I0(delayEn),
        .I1(\state[3]_i_4_n_0 ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state[3]_i_3_n_0 ),
        .I5(s00_axi_aresetn),
        .O(delayEn_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    delayEn_reg
       (.C(CLK),
        .CE(1'b1),
        .D(delayEn_i_1_n_0),
        .Q(delayEn),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delaycnt0_carry
       (.CI(1'b0),
        .CO({delaycnt0_carry_n_0,delaycnt0_carry_n_1,delaycnt0_carry_n_2,delaycnt0_carry_n_3}),
        .CYINIT(delaycnt[0]),
        .DI(delaycnt[4:1]),
        .O({delaycnt0_carry_n_4,delaycnt0_carry_n_5,delaycnt0_carry_n_6,delaycnt0_carry_n_7}),
        .S({delaycnt0_carry_i_1_n_0,delaycnt0_carry_i_2_n_0,delaycnt0_carry_i_3_n_0,delaycnt0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delaycnt0_carry__0
       (.CI(delaycnt0_carry_n_0),
        .CO({delaycnt0_carry__0_n_0,delaycnt0_carry__0_n_1,delaycnt0_carry__0_n_2,delaycnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(delaycnt[8:5]),
        .O({delaycnt0_carry__0_n_4,delaycnt0_carry__0_n_5,delaycnt0_carry__0_n_6,delaycnt0_carry__0_n_7}),
        .S({delaycnt0_carry__0_i_1_n_0,delaycnt0_carry__0_i_2_n_0,delaycnt0_carry__0_i_3_n_0,delaycnt0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__0_i_1
       (.I0(delaycnt[8]),
        .O(delaycnt0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__0_i_2
       (.I0(delaycnt[7]),
        .O(delaycnt0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__0_i_3
       (.I0(delaycnt[6]),
        .O(delaycnt0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__0_i_4
       (.I0(delaycnt[5]),
        .O(delaycnt0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delaycnt0_carry__1
       (.CI(delaycnt0_carry__0_n_0),
        .CO({delaycnt0_carry__1_n_0,delaycnt0_carry__1_n_1,delaycnt0_carry__1_n_2,delaycnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(delaycnt[12:9]),
        .O({delaycnt0_carry__1_n_4,delaycnt0_carry__1_n_5,delaycnt0_carry__1_n_6,delaycnt0_carry__1_n_7}),
        .S({delaycnt0_carry__1_i_1_n_0,delaycnt0_carry__1_i_2_n_0,delaycnt0_carry__1_i_3_n_0,delaycnt0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__1_i_1
       (.I0(delaycnt[12]),
        .O(delaycnt0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__1_i_2
       (.I0(delaycnt[11]),
        .O(delaycnt0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__1_i_3
       (.I0(delaycnt[10]),
        .O(delaycnt0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__1_i_4
       (.I0(delaycnt[9]),
        .O(delaycnt0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delaycnt0_carry__2
       (.CI(delaycnt0_carry__1_n_0),
        .CO({delaycnt0_carry__2_n_0,delaycnt0_carry__2_n_1,delaycnt0_carry__2_n_2,delaycnt0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(delaycnt[16:13]),
        .O({delaycnt0_carry__2_n_4,delaycnt0_carry__2_n_5,delaycnt0_carry__2_n_6,delaycnt0_carry__2_n_7}),
        .S({delaycnt0_carry__2_i_1_n_0,delaycnt0_carry__2_i_2_n_0,delaycnt0_carry__2_i_3_n_0,delaycnt0_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__2_i_1
       (.I0(delaycnt[16]),
        .O(delaycnt0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__2_i_2
       (.I0(delaycnt[15]),
        .O(delaycnt0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__2_i_3
       (.I0(delaycnt[14]),
        .O(delaycnt0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__2_i_4
       (.I0(delaycnt[13]),
        .O(delaycnt0_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delaycnt0_carry__3
       (.CI(delaycnt0_carry__2_n_0),
        .CO({delaycnt0_carry__3_n_0,delaycnt0_carry__3_n_1,delaycnt0_carry__3_n_2,delaycnt0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(delaycnt[20:17]),
        .O({delaycnt0_carry__3_n_4,delaycnt0_carry__3_n_5,delaycnt0_carry__3_n_6,delaycnt0_carry__3_n_7}),
        .S({delaycnt0_carry__3_i_1_n_0,delaycnt0_carry__3_i_2_n_0,delaycnt0_carry__3_i_3_n_0,delaycnt0_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__3_i_1
       (.I0(delaycnt[20]),
        .O(delaycnt0_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__3_i_2
       (.I0(delaycnt[19]),
        .O(delaycnt0_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__3_i_3
       (.I0(delaycnt[18]),
        .O(delaycnt0_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__3_i_4
       (.I0(delaycnt[17]),
        .O(delaycnt0_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delaycnt0_carry__4
       (.CI(delaycnt0_carry__3_n_0),
        .CO({delaycnt0_carry__4_n_0,delaycnt0_carry__4_n_1,delaycnt0_carry__4_n_2,delaycnt0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(delaycnt[24:21]),
        .O({delaycnt0_carry__4_n_4,delaycnt0_carry__4_n_5,delaycnt0_carry__4_n_6,delaycnt0_carry__4_n_7}),
        .S({delaycnt0_carry__4_i_1_n_0,delaycnt0_carry__4_i_2_n_0,delaycnt0_carry__4_i_3_n_0,delaycnt0_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__4_i_1
       (.I0(delaycnt[24]),
        .O(delaycnt0_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__4_i_2
       (.I0(delaycnt[23]),
        .O(delaycnt0_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__4_i_3
       (.I0(delaycnt[22]),
        .O(delaycnt0_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__4_i_4
       (.I0(delaycnt[21]),
        .O(delaycnt0_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delaycnt0_carry__5
       (.CI(delaycnt0_carry__4_n_0),
        .CO({delaycnt0_carry__5_n_0,delaycnt0_carry__5_n_1,delaycnt0_carry__5_n_2,delaycnt0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(delaycnt[28:25]),
        .O({delaycnt0_carry__5_n_4,delaycnt0_carry__5_n_5,delaycnt0_carry__5_n_6,delaycnt0_carry__5_n_7}),
        .S({delaycnt0_carry__5_i_1_n_0,delaycnt0_carry__5_i_2_n_0,delaycnt0_carry__5_i_3_n_0,delaycnt0_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__5_i_1
       (.I0(delaycnt[28]),
        .O(delaycnt0_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__5_i_2
       (.I0(delaycnt[27]),
        .O(delaycnt0_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__5_i_3
       (.I0(delaycnt[26]),
        .O(delaycnt0_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__5_i_4
       (.I0(delaycnt[25]),
        .O(delaycnt0_carry__5_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delaycnt0_carry__6
       (.CI(delaycnt0_carry__5_n_0),
        .CO({NLW_delaycnt0_carry__6_CO_UNCONNECTED[3:2],delaycnt0_carry__6_n_2,delaycnt0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,delaycnt[30:29]}),
        .O({NLW_delaycnt0_carry__6_O_UNCONNECTED[3],delaycnt0_carry__6_n_5,delaycnt0_carry__6_n_6,delaycnt0_carry__6_n_7}),
        .S({1'b0,delaycnt0_carry__6_i_1_n_0,delaycnt0_carry__6_i_2_n_0,delaycnt0_carry__6_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__6_i_1
       (.I0(delaycnt[31]),
        .O(delaycnt0_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__6_i_2
       (.I0(delaycnt[30]),
        .O(delaycnt0_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry__6_i_3
       (.I0(delaycnt[29]),
        .O(delaycnt0_carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry_i_1
       (.I0(delaycnt[4]),
        .O(delaycnt0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry_i_2
       (.I0(delaycnt[3]),
        .O(delaycnt0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry_i_3
       (.I0(delaycnt[2]),
        .O(delaycnt0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    delaycnt0_carry_i_4
       (.I0(delaycnt[1]),
        .O(delaycnt0_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \delaycnt[0]_i_1 
       (.I0(delaycnt[0]),
        .O(\delaycnt[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \delaycnt[31]_i_1 
       (.I0(delayEn),
        .O(delaycnt0));
  FDRE \delaycnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\delaycnt[0]_i_1_n_0 ),
        .Q(delaycnt[0]),
        .R(delaycnt0));
  FDSE \delaycnt_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__1_n_6),
        .Q(delaycnt[10]),
        .S(delaycnt0));
  FDSE \delaycnt_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__1_n_5),
        .Q(delaycnt[11]),
        .S(delaycnt0));
  FDSE \delaycnt_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__1_n_4),
        .Q(delaycnt[12]),
        .S(delaycnt0));
  FDRE \delaycnt_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__2_n_7),
        .Q(delaycnt[13]),
        .R(delaycnt0));
  FDSE \delaycnt_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__2_n_6),
        .Q(delaycnt[14]),
        .S(delaycnt0));
  FDRE \delaycnt_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__2_n_5),
        .Q(delaycnt[15]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__2_n_4),
        .Q(delaycnt[16]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__3_n_7),
        .Q(delaycnt[17]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__3_n_6),
        .Q(delaycnt[18]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__3_n_5),
        .Q(delaycnt[19]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry_n_7),
        .Q(delaycnt[1]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__3_n_4),
        .Q(delaycnt[20]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__4_n_7),
        .Q(delaycnt[21]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__4_n_6),
        .Q(delaycnt[22]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__4_n_5),
        .Q(delaycnt[23]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__4_n_4),
        .Q(delaycnt[24]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__5_n_7),
        .Q(delaycnt[25]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__5_n_6),
        .Q(delaycnt[26]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__5_n_5),
        .Q(delaycnt[27]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__5_n_4),
        .Q(delaycnt[28]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__6_n_7),
        .Q(delaycnt[29]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry_n_6),
        .Q(delaycnt[2]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__6_n_6),
        .Q(delaycnt[30]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__6_n_5),
        .Q(delaycnt[31]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry_n_5),
        .Q(delaycnt[3]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry_n_4),
        .Q(delaycnt[4]),
        .R(delaycnt0));
  FDRE \delaycnt_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__0_n_7),
        .Q(delaycnt[5]),
        .R(delaycnt0));
  FDSE \delaycnt_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__0_n_6),
        .Q(delaycnt[6]),
        .S(delaycnt0));
  FDSE \delaycnt_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__0_n_5),
        .Q(delaycnt[7]),
        .S(delaycnt0));
  FDSE \delaycnt_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__0_n_4),
        .Q(delaycnt[8]),
        .S(delaycnt0));
  FDRE \delaycnt_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(delaycnt0_carry__1_n_7),
        .Q(delaycnt[9]),
        .R(delaycnt0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \initA[0]_i_1 
       (.I0(initA_reg[0]),
        .O(\initA[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \initA[1]_i_1 
       (.I0(initA_reg[1]),
        .I1(initA_reg[0]),
        .O(p_1_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \initA[2]_i_1 
       (.I0(initA_reg[1]),
        .I1(initA_reg[0]),
        .I2(initA_reg[2]),
        .O(p_1_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h6CCC)) 
    \initA[3]_i_1 
       (.I0(initA_reg[2]),
        .I1(initA_reg[3]),
        .I2(initA_reg[0]),
        .I3(initA_reg[1]),
        .O(p_1_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \initA[4]_i_1 
       (.I0(initA_reg[2]),
        .I1(initA_reg[3]),
        .I2(initA_reg[0]),
        .I3(initA_reg[1]),
        .I4(initA_reg[4]),
        .O(p_1_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \initA[5]_i_1 
       (.I0(initA_reg[1]),
        .I1(initA_reg[0]),
        .I2(initA_reg[3]),
        .I3(initA_reg[2]),
        .I4(initA_reg[4]),
        .I5(initA_reg[5]),
        .O(p_1_in__0[5]));
  LUT6 #(
    .INIT(64'hCCCC6CCCCCCCCCCC)) 
    \initA[6]_i_2 
       (.I0(initA_reg[5]),
        .I1(initA_reg[6]),
        .I2(initA_reg[2]),
        .I3(initA_reg[3]),
        .I4(\initWord[30]_i_3_n_0 ),
        .I5(initA_reg[4]),
        .O(p_1_in__0[6]));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \initA[6]_i_3 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(initEn),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[0] ),
        .I5(\state[3]_i_3_n_0 ),
        .O(\initA[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \initA[6]_i_5 
       (.I0(\state_reg_n_0_[3] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[0] ),
        .O(\initA[6]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \initA_reg[0] 
       (.C(CLK),
        .CE(twi_controller_n_4),
        .D(\initA[0]_i_1_n_0 ),
        .Q(initA_reg[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \initA_reg[1] 
       (.C(CLK),
        .CE(twi_controller_n_4),
        .D(p_1_in__0[1]),
        .Q(initA_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \initA_reg[2] 
       (.C(CLK),
        .CE(twi_controller_n_4),
        .D(p_1_in__0[2]),
        .Q(initA_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \initA_reg[3] 
       (.C(CLK),
        .CE(twi_controller_n_4),
        .D(p_1_in__0[3]),
        .Q(initA_reg[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \initA_reg[4] 
       (.C(CLK),
        .CE(twi_controller_n_4),
        .D(p_1_in__0[4]),
        .Q(initA_reg[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \initA_reg[5] 
       (.C(CLK),
        .CE(twi_controller_n_4),
        .D(p_1_in__0[5]),
        .Q(initA_reg[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \initA_reg[6] 
       (.C(CLK),
        .CE(twi_controller_n_4),
        .D(p_1_in__0[6]),
        .Q(initA_reg[6]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    initEn_i_3
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(initEn),
        .I3(s00_axi_aresetn),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[3] ),
        .O(initEn_i_3_n_0));
  FDRE initEn_reg
       (.C(CLK),
        .CE(1'b1),
        .D(twi_controller_n_6),
        .Q(initEn),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \initWord[0]_i_1 
       (.I0(initA_reg[1]),
        .I1(initA_reg[0]),
        .I2(initA_reg[5]),
        .O(\initWord[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000B004000080090)) 
    \initWord[10]_i_1 
       (.I0(initA_reg[0]),
        .I1(initA_reg[2]),
        .I2(initA_reg[3]),
        .I3(initA_reg[5]),
        .I4(initA_reg[4]),
        .I5(initA_reg[1]),
        .O(\initWord[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h000F0002)) 
    \initWord[11]_i_1 
       (.I0(initA_reg[3]),
        .I1(initA_reg[4]),
        .I2(initA_reg[0]),
        .I3(initA_reg[1]),
        .I4(initA_reg[5]),
        .O(\initWord[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100010000)) 
    \initWord[12]_i_1 
       (.I0(initA_reg[0]),
        .I1(initA_reg[1]),
        .I2(initA_reg[4]),
        .I3(initA_reg[5]),
        .I4(initA_reg[3]),
        .I5(initA_reg[2]),
        .O(\initWord[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA04BE01BA00BA00)) 
    \initWord[13]_i_1 
       (.I0(initA_reg[5]),
        .I1(initA_reg[2]),
        .I2(initA_reg[4]),
        .I3(initA_reg[1]),
        .I4(initA_reg[0]),
        .I5(initA_reg[3]),
        .O(\initWord[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0003004000400090)) 
    \initWord[14]_i_1 
       (.I0(initA_reg[0]),
        .I1(initA_reg[2]),
        .I2(initA_reg[3]),
        .I3(initA_reg[5]),
        .I4(initA_reg[4]),
        .I5(initA_reg[1]),
        .O(\initWord[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0100000902000008)) 
    \initWord[15]_i_1 
       (.I0(initA_reg[1]),
        .I1(initA_reg[4]),
        .I2(initA_reg[5]),
        .I3(initA_reg[3]),
        .I4(initA_reg[2]),
        .I5(initA_reg[0]),
        .O(\initWord[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000069E0838F)) 
    \initWord[16]_i_1 
       (.I0(initA_reg[2]),
        .I1(initA_reg[3]),
        .I2(initA_reg[0]),
        .I3(initA_reg[1]),
        .I4(initA_reg[4]),
        .I5(initA_reg[5]),
        .O(\initWord[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h474A454C454C4246)) 
    \initWord[17]_i_1 
       (.I0(initA_reg[1]),
        .I1(initA_reg[0]),
        .I2(initA_reg[5]),
        .I3(initA_reg[4]),
        .I4(initA_reg[2]),
        .I5(initA_reg[3]),
        .O(\initWord[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAEACA6A8AEA1ACA3)) 
    \initWord[18]_i_1 
       (.I0(initA_reg[1]),
        .I1(initA_reg[3]),
        .I2(initA_reg[5]),
        .I3(initA_reg[4]),
        .I4(initA_reg[0]),
        .I5(initA_reg[2]),
        .O(\initWord[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF6100F6FF6200E6)) 
    \initWord[19]_i_1 
       (.I0(initA_reg[2]),
        .I1(initA_reg[3]),
        .I2(initA_reg[4]),
        .I3(initA_reg[5]),
        .I4(initA_reg[1]),
        .I5(initA_reg[0]),
        .O(\initWord[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3002300330010313)) 
    \initWord[20]_i_1 
       (.I0(initA_reg[0]),
        .I1(initA_reg[5]),
        .I2(initA_reg[4]),
        .I3(initA_reg[3]),
        .I4(initA_reg[2]),
        .I5(initA_reg[1]),
        .O(\initWord[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F33E3328)) 
    \initWord[21]_i_1 
       (.I0(initA_reg[0]),
        .I1(initA_reg[4]),
        .I2(initA_reg[2]),
        .I3(initA_reg[3]),
        .I4(initA_reg[1]),
        .I5(initA_reg[5]),
        .O(\initWord[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0C00000800030008)) 
    \initWord[23]_i_1 
       (.I0(initA_reg[0]),
        .I1(initA_reg[1]),
        .I2(initA_reg[5]),
        .I3(initA_reg[4]),
        .I4(initA_reg[3]),
        .I5(initA_reg[2]),
        .O(\initWord[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000001000000FFFF)) 
    \initWord[30]_i_1 
       (.I0(initA_reg[3]),
        .I1(initA_reg[2]),
        .I2(initA_reg[4]),
        .I3(\initWord[30]_i_3_n_0 ),
        .I4(initA_reg[6]),
        .I5(initA_reg[5]),
        .O(\initWord[30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \initWord[30]_i_2 
       (.I0(initA_reg[1]),
        .I1(initA_reg[5]),
        .O(\initWord[30]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \initWord[30]_i_3 
       (.I0(initA_reg[0]),
        .I1(initA_reg[1]),
        .O(\initWord[30]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \initWord[5]_i_1 
       (.I0(initA_reg[1]),
        .I1(initA_reg[0]),
        .I2(initA_reg[5]),
        .O(\initWord[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAFF1CFDAAFFBC7D)) 
    \initWord[8]_i_1 
       (.I0(initA_reg[1]),
        .I1(initA_reg[2]),
        .I2(initA_reg[3]),
        .I3(initA_reg[0]),
        .I4(initA_reg[5]),
        .I5(initA_reg[4]),
        .O(\initWord[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000511A45F0)) 
    \initWord[9]_i_1 
       (.I0(initA_reg[4]),
        .I1(initA_reg[0]),
        .I2(initA_reg[3]),
        .I3(initA_reg[2]),
        .I4(initA_reg[1]),
        .I5(initA_reg[5]),
        .O(\initWord[9]_i_1_n_0 ));
  FDRE \initWord_reg[0] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[0]_i_1_n_0 ),
        .Q(\initWord_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \initWord_reg[10] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[10]_i_1_n_0 ),
        .Q(data2[2]),
        .R(1'b0));
  FDRE \initWord_reg[11] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[11]_i_1_n_0 ),
        .Q(data2[3]),
        .R(1'b0));
  FDRE \initWord_reg[12] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[12]_i_1_n_0 ),
        .Q(data2[4]),
        .R(1'b0));
  FDRE \initWord_reg[13] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[13]_i_1_n_0 ),
        .Q(data2[5]),
        .R(1'b0));
  FDRE \initWord_reg[14] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[14]_i_1_n_0 ),
        .Q(data2[6]),
        .R(1'b0));
  FDRE \initWord_reg[15] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[15]_i_1_n_0 ),
        .Q(data2[7]),
        .R(1'b0));
  FDRE \initWord_reg[16] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[16]_i_1_n_0 ),
        .Q(data1[0]),
        .R(1'b0));
  FDRE \initWord_reg[17] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[17]_i_1_n_0 ),
        .Q(data1[1]),
        .R(1'b0));
  FDRE \initWord_reg[18] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[18]_i_1_n_0 ),
        .Q(data1[2]),
        .R(1'b0));
  FDRE \initWord_reg[19] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[19]_i_1_n_0 ),
        .Q(data1[3]),
        .R(1'b0));
  FDRE \initWord_reg[20] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[20]_i_1_n_0 ),
        .Q(data1[4]),
        .R(1'b0));
  FDRE \initWord_reg[21] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[21]_i_1_n_0 ),
        .Q(data1[5]),
        .R(1'b0));
  FDRE \initWord_reg[23] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[23]_i_1_n_0 ),
        .Q(data1[7]),
        .R(1'b0));
  FDRE \initWord_reg[30] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[30]_i_2_n_0 ),
        .Q(data0),
        .R(1'b0));
  FDRE \initWord_reg[5] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[5]_i_1_n_0 ),
        .Q(\initWord_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \initWord_reg[8] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[8]_i_1_n_0 ),
        .Q(data2[0]),
        .R(1'b0));
  FDRE \initWord_reg[9] 
       (.C(CLK),
        .CE(\initWord[30]_i_1_n_0 ),
        .D(\initWord[9]_i_1_n_0 ),
        .Q(data2[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    msg_i_1
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .O(msg_i_1_n_0));
  FDRE msg_reg
       (.C(CLK),
        .CE(s00_axi_aresetn),
        .D(msg_i_1_n_0),
        .Q(msg_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \state[1]_i_2 
       (.I0(initA_reg[4]),
        .I1(initA_reg[2]),
        .I2(initA_reg[3]),
        .I3(initA_reg[1]),
        .I4(initA_reg[0]),
        .O(\state[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \state[1]_i_4 
       (.I0(\initWord_reg_n_0_[5] ),
        .I1(\initWord_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[0] ),
        .O(\state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \state[1]_i_6 
       (.I0(data1[3]),
        .I1(data1[4]),
        .I2(data1[1]),
        .I3(data1[2]),
        .I4(data1[7]),
        .I5(data1[5]),
        .O(\state[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F100)) 
    \state[2]_i_2 
       (.I0(\initWord_reg_n_0_[0] ),
        .I1(\initWord_reg_n_0_[5] ),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[3] ),
        .O(\state[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[3]_i_10 
       (.I0(delaycnt[13]),
        .I1(delaycnt[12]),
        .I2(delaycnt[15]),
        .I3(delaycnt[14]),
        .O(\state[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[3]_i_11 
       (.I0(delaycnt[5]),
        .I1(delaycnt[4]),
        .I2(delaycnt[7]),
        .I3(delaycnt[6]),
        .O(\state[3]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[3]_i_12 
       (.I0(delaycnt[29]),
        .I1(delaycnt[28]),
        .I2(delaycnt[31]),
        .I3(delaycnt[30]),
        .O(\state[3]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[3]_i_13 
       (.I0(delaycnt[21]),
        .I1(delaycnt[20]),
        .I2(delaycnt[23]),
        .I3(delaycnt[22]),
        .O(\state[3]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state[3]_i_3 
       (.I0(\state[3]_i_6_n_0 ),
        .I1(\state[3]_i_7_n_0 ),
        .I2(\state[3]_i_8_n_0 ),
        .I3(\state[3]_i_9_n_0 ),
        .O(\state[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \state[3]_i_4 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .O(\state[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \state[3]_i_6 
       (.I0(delaycnt[10]),
        .I1(delaycnt[11]),
        .I2(delaycnt[8]),
        .I3(delaycnt[9]),
        .I4(\state[3]_i_10_n_0 ),
        .O(\state[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \state[3]_i_7 
       (.I0(delaycnt[2]),
        .I1(delaycnt[3]),
        .I2(delaycnt[0]),
        .I3(delaycnt[1]),
        .I4(\state[3]_i_11_n_0 ),
        .O(\state[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \state[3]_i_8 
       (.I0(delaycnt[26]),
        .I1(delaycnt[27]),
        .I2(delaycnt[24]),
        .I3(delaycnt[25]),
        .I4(\state[3]_i_12_n_0 ),
        .O(\state[3]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \state[3]_i_9 
       (.I0(delaycnt[18]),
        .I1(delaycnt[19]),
        .I2(delaycnt[16]),
        .I3(delaycnt[17]),
        .I4(\state[3]_i_13_n_0 ),
        .O(\state[3]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(CLK),
        .CE(twi_controller_n_5),
        .D(twi_controller_n_3),
        .Q(\state_reg_n_0_[0] ),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[1] 
       (.C(CLK),
        .CE(twi_controller_n_5),
        .D(twi_controller_n_2),
        .Q(\state_reg_n_0_[1] ),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \state_reg[2] 
       (.C(CLK),
        .CE(twi_controller_n_5),
        .D(twi_controller_n_1),
        .Q(\state_reg_n_0_[2] ),
        .S(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(CLK),
        .CE(twi_controller_n_5),
        .D(twi_controller_n_0),
        .Q(\state_reg_n_0_[3] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h800F)) 
    stb_i_1
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[3] ),
        .I3(\state_reg_n_0_[2] ),
        .O(stb_i_1_n_0));
  FDRE stb_reg
       (.C(CLK),
        .CE(s00_axi_aresetn),
        .D(stb_i_1_n_0),
        .Q(stb),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TWICtl twi_controller
       (.CLK(CLK),
        .D({twi_controller_n_0,twi_controller_n_1,twi_controller_n_2,twi_controller_n_3}),
        .E(twi_controller_n_4),
        .\FSM_gray_state_reg[2]_0 (msg_reg_n_0),
        .Q(data_i),
        .\initA_reg[0] (\initA[6]_i_3_n_0 ),
        .\initA_reg[0]_0 ({data1[7],data1[5:0]}),
        .\initA_reg[0]_1 (\initA[6]_i_5_n_0 ),
        .initEn(initEn),
        .initEn_reg(\state[3]_i_3_n_0 ),
        .initEn_reg_0(initEn_i_3_n_0),
        .s00_axi_aresetn(s00_axi_aresetn),
        .scl(scl),
        .sda(sda),
        .\state_reg[0] (twi_controller_n_5),
        .\state_reg[1] (initA_reg[6:5]),
        .\state_reg[1]_0 (\state[1]_i_2_n_0 ),
        .\state_reg[1]_1 (\state[1]_i_4_n_0 ),
        .\state_reg[1]_2 (\state[1]_i_6_n_0 ),
        .\state_reg[1]_3 (\data_i[4]_i_2_n_0 ),
        .\state_reg[2] (twi_controller_n_6),
        .\state_reg[2]_0 (\state[2]_i_2_n_0 ),
        .\state_reg[2]_1 ({\state_reg_n_0_[3] ,\state_reg_n_0_[2] ,\state_reg_n_0_[1] ,\state_reg_n_0_[0] }),
        .\state_reg[3] (\state[3]_i_4_n_0 ),
        .stb(stb));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_0
   (clk_out1,
    clk_out2,
    clk_out3,
    resetn,
    clk_in1,
    lopt);
  output clk_out1;
  output clk_out2;
  output clk_out3;
  input resetn;
  input clk_in1;
  input lopt;

  wire clk_in1;
  wire clk_out1;
  wire clk_out2;
  wire clk_out3;
  wire lopt;
  wire resetn;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_0_clk_wiz inst
       (.clk_in1(clk_in1),
        .clk_out1(clk_out1),
        .clk_out2(clk_out2),
        .clk_out3(clk_out3),
        .lopt(lopt),
        .resetn(resetn));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_0_clk_wiz
   (clk_out1,
    clk_out2,
    clk_out3,
    resetn,
    clk_in1,
    lopt);
  output clk_out1;
  output clk_out2;
  output clk_out3;
  input resetn;
  input clk_in1;
  input lopt;

  wire clk_in1;
  wire clk_out1;
  wire clk_out1_clk_wiz_0;
  wire clk_out2;
  wire clk_out2_clk_wiz_0;
  wire clk_out3;
  wire clk_out3_clk_wiz_0;
  wire clkfbout_buf_clk_wiz_0;
  wire clkfbout_clk_wiz_0;
  wire lopt;
  wire reset_high;
  wire resetn;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_LOCKED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_clk_wiz_0),
        .O(clkfbout_buf_clk_wiz_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out1_clk_wiz_0),
        .O(clk_out1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout2_buf
       (.I(clk_out2_clk_wiz_0),
        .O(clk_out2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout3_buf
       (.I(clk_out3_clk_wiz_0),
        .O(clk_out3));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(10.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(40.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(8),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_clk_wiz_0),
        .CLKFBOUT(clkfbout_clk_wiz_0),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(lopt),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk_out1_clk_wiz_0),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(clk_out2_clk_wiz_0),
        .CLKOUT1B(clk_out3_clk_wiz_0),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(NLW_mmcm_adv_inst_LOCKED_UNCONNECTED),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(reset_high));
  LUT1 #(
    .INIT(2'h1)) 
    mmcm_adv_inst_i_1
       (.I0(resetn),
        .O(reset_high));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_1
   (clk_out1,
    clk_out2,
    resetn,
    clk_in1,
    lopt);
  output clk_out1;
  output clk_out2;
  input resetn;
  input clk_in1;
  output lopt;

  wire clk_in1;
  wire clk_out1;
  wire clk_out2;
  wire lopt;
  wire resetn;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_1_clk_wiz inst
       (.clk_in1(clk_in1),
        .clk_out1(clk_out1),
        .clk_out2(clk_out2),
        .lopt(lopt),
        .resetn(resetn));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_1_clk_wiz
   (clk_out1,
    clk_out2,
    resetn,
    clk_in1,
    lopt);
  output clk_out1;
  output clk_out2;
  input resetn;
  input clk_in1;
  output lopt;

  wire clk_in1;
  wire clk_in1_clk_wiz_1;
  wire clk_out1;
  wire clk_out1_clk_wiz_1;
  wire clk_out2;
  wire clk_out2_clk_wiz_1;
  wire clkfbout_buf_clk_wiz_1;
  wire clkfbout_clk_wiz_1;
  wire reset_high;
  wire resetn;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_LOCKED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  assign lopt = clk_in1_clk_wiz_1;
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_clk_wiz_1),
        .O(clkfbout_buf_clk_wiz_1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    clkin1_ibufg
       (.I(clk_in1),
        .O(clk_in1_clk_wiz_1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out1_clk_wiz_1),
        .O(clk_out1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout2_buf
       (.I(clk_out2_clk_wiz_1),
        .O(clk_out2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(10.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(81.375000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(20),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_clk_wiz_1),
        .CLKFBOUT(clkfbout_clk_wiz_1),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk_in1_clk_wiz_1),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk_out1_clk_wiz_1),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(clk_out2_clk_wiz_1),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(NLW_mmcm_adv_inst_LOCKED_UNCONNECTED),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(reset_high));
  LUT1 #(
    .INIT(2'h1)) 
    mmcm_adv_inst_i_1
       (.I0(resetn),
        .O(reset_high));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter
   (Q,
    \processQ_reg[5]_0 ,
    \processQ_reg[3]_0 ,
    S,
    \processQ_reg[6]_0 ,
    DI,
    \processQ_reg[9]_0 ,
    \processQ_reg[6]_1 ,
    \triggerTime_reg[9] ,
    \processQ_reg[9]_1 ,
    \processQ_reg[5]_1 ,
    \processQ_reg[1]_0 ,
    \processQ_reg[3]_1 ,
    \processQ_reg[7]_0 ,
    \processQ_reg[9]_2 ,
    \processQ_reg[4]_0 ,
    \processQ_reg[2]_0 ,
    D,
    \processQ_reg[5]_2 ,
    \processQ_reg[7]_1 ,
    SR,
    \processQ_reg[0]_0 ,
    \processQ_reg[4]_1 ,
    \processQ_reg[4]_2 ,
    \processQ_reg[9]_3 ,
    \processQ_reg[1]_1 ,
    \processQ_reg[0]_1 ,
    \processQ_reg[7]_2 ,
    \processQ_reg[1]_2 ,
    \processQ_reg[7]_3 ,
    \triggerTime_reg[9]_0 ,
    \processQ_reg[9]_4 ,
    \processQ_reg[9]_5 ,
    \processQ_reg[6]_2 ,
    \triggerTime_reg[7] ,
    \triggerTime_reg[9]_1 ,
    \triggerTime_reg[7]_0 ,
    \triggerTime_reg[8] ,
    \processQ_reg[9]_6 ,
    \processQ_reg[1]_3 ,
    \processQ_reg[9]_7 ,
    \processQ_reg[1]_4 ,
    \processQ_reg[8]_0 ,
    s00_axi_aresetn,
    O,
    is_vertical_gridline0__20_carry,
    triggerTimeOut,
    \is_hash_mark2_inferred__0/i___21_carry ,
    \is_hash_mark2_inferred__0/i___30_carry__0 ,
    \encoded_reg[0] ,
    \dc_bias_reg[0] ,
    \dc_bias_reg[0]_0 ,
    \dc_bias_reg[1] ,
    \dc_bias_reg[1]_0 ,
    \dc_bias_reg[1]_1 ,
    \encoded_reg[9] ,
    \dc_bias[3]_i_3__0 ,
    \dc_bias[3]_i_3__0_0 ,
    \dc_bias[3]_i_2__1 ,
    \dc_bias[3]_i_3__1_0 ,
    CO,
    \dc_bias[3]_i_6_0 ,
    \dc_bias[3]_i_6_1 ,
    \dc_bias[3]_i_14_0 ,
    \dc_bias[3]_i_14_1 ,
    \dc_bias[3]_i_14_2 ,
    \dc_bias[3]_i_12 ,
    \dc_bias[3]_i_12_0 ,
    \dc_bias[3]_i_12_1 ,
    \dc_bias[3]_i_12_2 ,
    \dc_bias[3]_i_28_0 ,
    \dc_bias[3]_i_14_3 ,
    \dc_bias[3]_i_14_4 ,
    \is_trigger_time6_inferred__2/i__carry ,
    \is_trigger_time6_inferred__2/i__carry_0 ,
    \dc_bias_reg[3]_i_92_0 ,
    \dc_bias_reg[3]_i_56_0 ,
    \dc_bias_reg[3]_i_55_0 ,
    is_vertical_gridline0__20_carry__0,
    i___30_carry__0_i_1_0,
    CLK);
  output [9:0]Q;
  output \processQ_reg[5]_0 ;
  output \processQ_reg[3]_0 ;
  output [3:0]S;
  output [3:0]\processQ_reg[6]_0 ;
  output [2:0]DI;
  output [2:0]\processQ_reg[9]_0 ;
  output [1:0]\processQ_reg[6]_1 ;
  output [3:0]\triggerTime_reg[9] ;
  output [3:0]\processQ_reg[9]_1 ;
  output [3:0]\processQ_reg[5]_1 ;
  output [2:0]\processQ_reg[1]_0 ;
  output [3:0]\processQ_reg[3]_1 ;
  output [3:0]\processQ_reg[7]_0 ;
  output [1:0]\processQ_reg[9]_2 ;
  output [3:0]\processQ_reg[4]_0 ;
  output [1:0]\processQ_reg[2]_0 ;
  output [1:0]D;
  output \processQ_reg[5]_2 ;
  output \processQ_reg[7]_1 ;
  output [0:0]SR;
  output \processQ_reg[0]_0 ;
  output \processQ_reg[4]_1 ;
  output \processQ_reg[4]_2 ;
  output \processQ_reg[9]_3 ;
  output \processQ_reg[1]_1 ;
  output \processQ_reg[0]_1 ;
  output [3:0]\processQ_reg[7]_2 ;
  output \processQ_reg[1]_2 ;
  output [3:0]\processQ_reg[7]_3 ;
  output [3:0]\triggerTime_reg[9]_0 ;
  output [3:0]\processQ_reg[9]_4 ;
  output [0:0]\processQ_reg[9]_5 ;
  output [1:0]\processQ_reg[6]_2 ;
  output [3:0]\triggerTime_reg[7] ;
  output [0:0]\triggerTime_reg[9]_1 ;
  output [3:0]\triggerTime_reg[7]_0 ;
  output [0:0]\triggerTime_reg[8] ;
  output [0:0]\processQ_reg[9]_6 ;
  output [0:0]\processQ_reg[1]_3 ;
  output [0:0]\processQ_reg[9]_7 ;
  output [0:0]\processQ_reg[1]_4 ;
  output [2:0]\processQ_reg[8]_0 ;
  input s00_axi_aresetn;
  input [2:0]O;
  input [0:0]is_vertical_gridline0__20_carry;
  input [7:0]triggerTimeOut;
  input [1:0]\is_hash_mark2_inferred__0/i___21_carry ;
  input [3:0]\is_hash_mark2_inferred__0/i___30_carry__0 ;
  input [0:0]\encoded_reg[0] ;
  input \dc_bias_reg[0] ;
  input [2:0]\dc_bias_reg[0]_0 ;
  input \dc_bias_reg[1] ;
  input \dc_bias_reg[1]_0 ;
  input \dc_bias_reg[1]_1 ;
  input \encoded_reg[9] ;
  input \dc_bias[3]_i_3__0 ;
  input \dc_bias[3]_i_3__0_0 ;
  input \dc_bias[3]_i_2__1 ;
  input \dc_bias[3]_i_3__1_0 ;
  input [0:0]CO;
  input [0:0]\dc_bias[3]_i_6_0 ;
  input [0:0]\dc_bias[3]_i_6_1 ;
  input [0:0]\dc_bias[3]_i_14_0 ;
  input [0:0]\dc_bias[3]_i_14_1 ;
  input \dc_bias[3]_i_14_2 ;
  input [0:0]\dc_bias[3]_i_12 ;
  input \dc_bias[3]_i_12_0 ;
  input [0:0]\dc_bias[3]_i_12_1 ;
  input \dc_bias[3]_i_12_2 ;
  input [0:0]\dc_bias[3]_i_28_0 ;
  input [0:0]\dc_bias[3]_i_14_3 ;
  input [0:0]\dc_bias[3]_i_14_4 ;
  input \is_trigger_time6_inferred__2/i__carry ;
  input \is_trigger_time6_inferred__2/i__carry_0 ;
  input \dc_bias_reg[3]_i_92_0 ;
  input \dc_bias_reg[3]_i_56_0 ;
  input \dc_bias_reg[3]_i_55_0 ;
  input [0:0]is_vertical_gridline0__20_carry__0;
  input [0:0]i___30_carry__0_i_1_0;
  input CLK;

  wire CLK;
  wire [0:0]CO;
  wire [1:0]D;
  wire [2:0]DI;
  wire [2:0]O;
  wire [9:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire \dc_bias[3]_i_10__0_n_0 ;
  wire [0:0]\dc_bias[3]_i_12 ;
  wire \dc_bias[3]_i_12_0 ;
  wire [0:0]\dc_bias[3]_i_12_1 ;
  wire \dc_bias[3]_i_12_2 ;
  wire \dc_bias[3]_i_132_n_0 ;
  wire \dc_bias[3]_i_133_n_0 ;
  wire \dc_bias[3]_i_134_n_0 ;
  wire \dc_bias[3]_i_135_n_0 ;
  wire \dc_bias[3]_i_136_n_0 ;
  wire \dc_bias[3]_i_137_n_0 ;
  wire \dc_bias[3]_i_138_n_0 ;
  wire \dc_bias[3]_i_139_n_0 ;
  wire \dc_bias[3]_i_13_n_0 ;
  wire \dc_bias[3]_i_140_n_0 ;
  wire \dc_bias[3]_i_141_n_0 ;
  wire \dc_bias[3]_i_142_n_0 ;
  wire \dc_bias[3]_i_143_n_0 ;
  wire \dc_bias[3]_i_144_n_0 ;
  wire \dc_bias[3]_i_145_n_0 ;
  wire \dc_bias[3]_i_146_n_0 ;
  wire \dc_bias[3]_i_147_n_0 ;
  wire \dc_bias[3]_i_148_n_0 ;
  wire \dc_bias[3]_i_149_n_0 ;
  wire [0:0]\dc_bias[3]_i_14_0 ;
  wire [0:0]\dc_bias[3]_i_14_1 ;
  wire \dc_bias[3]_i_14_2 ;
  wire [0:0]\dc_bias[3]_i_14_3 ;
  wire [0:0]\dc_bias[3]_i_14_4 ;
  wire \dc_bias[3]_i_14_n_0 ;
  wire \dc_bias[3]_i_152_n_0 ;
  wire \dc_bias[3]_i_154_n_0 ;
  wire \dc_bias[3]_i_155_n_0 ;
  wire \dc_bias[3]_i_157_n_0 ;
  wire \dc_bias[3]_i_158_n_0 ;
  wire \dc_bias[3]_i_159_n_0 ;
  wire \dc_bias[3]_i_15_n_0 ;
  wire \dc_bias[3]_i_160_n_0 ;
  wire \dc_bias[3]_i_161_n_0 ;
  wire \dc_bias[3]_i_162_n_0 ;
  wire \dc_bias[3]_i_163_n_0 ;
  wire \dc_bias[3]_i_164_n_0 ;
  wire \dc_bias[3]_i_17_n_0 ;
  wire \dc_bias[3]_i_199_n_0 ;
  wire \dc_bias[3]_i_200_n_0 ;
  wire \dc_bias[3]_i_201_n_0 ;
  wire \dc_bias[3]_i_202_n_0 ;
  wire \dc_bias[3]_i_203_n_0 ;
  wire \dc_bias[3]_i_204_n_0 ;
  wire \dc_bias[3]_i_205_n_0 ;
  wire \dc_bias[3]_i_206_n_0 ;
  wire \dc_bias[3]_i_207_n_0 ;
  wire \dc_bias[3]_i_208_n_0 ;
  wire \dc_bias[3]_i_209_n_0 ;
  wire \dc_bias[3]_i_20__0_n_0 ;
  wire \dc_bias[3]_i_20_n_0 ;
  wire \dc_bias[3]_i_210_n_0 ;
  wire \dc_bias[3]_i_211_n_0 ;
  wire \dc_bias[3]_i_212_n_0 ;
  wire \dc_bias[3]_i_213_n_0 ;
  wire \dc_bias[3]_i_214_n_0 ;
  wire \dc_bias[3]_i_215_n_0 ;
  wire \dc_bias[3]_i_216_n_0 ;
  wire \dc_bias[3]_i_217_n_0 ;
  wire \dc_bias[3]_i_218_n_0 ;
  wire \dc_bias[3]_i_219_n_0 ;
  wire \dc_bias[3]_i_21_n_0 ;
  wire \dc_bias[3]_i_22_n_0 ;
  wire \dc_bias[3]_i_24_n_0 ;
  wire \dc_bias[3]_i_25_n_0 ;
  wire \dc_bias[3]_i_26_n_0 ;
  wire [0:0]\dc_bias[3]_i_28_0 ;
  wire \dc_bias[3]_i_2__1 ;
  wire \dc_bias[3]_i_30_n_0 ;
  wire \dc_bias[3]_i_32_n_0 ;
  wire \dc_bias[3]_i_33_n_0 ;
  wire \dc_bias[3]_i_3__0 ;
  wire \dc_bias[3]_i_3__0_0 ;
  wire \dc_bias[3]_i_3__1_0 ;
  wire \dc_bias[3]_i_45_n_0 ;
  wire \dc_bias[3]_i_46_n_0 ;
  wire \dc_bias[3]_i_47_n_0 ;
  wire \dc_bias[3]_i_48_n_0 ;
  wire \dc_bias[3]_i_49_n_0 ;
  wire \dc_bias[3]_i_53_n_0 ;
  wire \dc_bias[3]_i_57_n_0 ;
  wire \dc_bias[3]_i_5__0_n_0 ;
  wire [0:0]\dc_bias[3]_i_6_0 ;
  wire [0:0]\dc_bias[3]_i_6_1 ;
  wire \dc_bias[3]_i_6__0_n_0 ;
  wire \dc_bias[3]_i_76_n_0 ;
  wire \dc_bias[3]_i_77_n_0 ;
  wire \dc_bias[3]_i_78_n_0 ;
  wire \dc_bias[3]_i_79_n_0 ;
  wire \dc_bias[3]_i_7_n_0 ;
  wire \dc_bias[3]_i_80_n_0 ;
  wire \dc_bias[3]_i_81_n_0 ;
  wire \dc_bias[3]_i_82_n_0 ;
  wire \dc_bias[3]_i_84_n_0 ;
  wire \dc_bias[3]_i_85_n_0 ;
  wire \dc_bias[3]_i_86_n_0 ;
  wire \dc_bias[3]_i_87_n_0 ;
  wire \dc_bias[3]_i_88_n_0 ;
  wire \dc_bias[3]_i_89_n_0 ;
  wire \dc_bias[3]_i_8_n_0 ;
  wire \dc_bias[3]_i_90_n_0 ;
  wire \dc_bias[3]_i_91_n_0 ;
  wire \dc_bias[3]_i_93_n_0 ;
  wire \dc_bias[3]_i_94_n_0 ;
  wire \dc_bias[3]_i_9_n_0 ;
  wire \dc_bias_reg[0] ;
  wire [2:0]\dc_bias_reg[0]_0 ;
  wire \dc_bias_reg[1] ;
  wire \dc_bias_reg[1]_0 ;
  wire \dc_bias_reg[1]_1 ;
  wire \dc_bias_reg[3]_i_151_n_0 ;
  wire \dc_bias_reg[3]_i_151_n_1 ;
  wire \dc_bias_reg[3]_i_151_n_2 ;
  wire \dc_bias_reg[3]_i_151_n_3 ;
  wire \dc_bias_reg[3]_i_153_n_0 ;
  wire \dc_bias_reg[3]_i_153_n_1 ;
  wire \dc_bias_reg[3]_i_153_n_2 ;
  wire \dc_bias_reg[3]_i_153_n_3 ;
  wire \dc_bias_reg[3]_i_156_n_0 ;
  wire \dc_bias_reg[3]_i_156_n_1 ;
  wire \dc_bias_reg[3]_i_156_n_2 ;
  wire \dc_bias_reg[3]_i_156_n_3 ;
  wire \dc_bias_reg[3]_i_55_0 ;
  wire \dc_bias_reg[3]_i_55_n_1 ;
  wire \dc_bias_reg[3]_i_55_n_2 ;
  wire \dc_bias_reg[3]_i_55_n_3 ;
  wire \dc_bias_reg[3]_i_56_0 ;
  wire \dc_bias_reg[3]_i_83_n_0 ;
  wire \dc_bias_reg[3]_i_83_n_1 ;
  wire \dc_bias_reg[3]_i_83_n_2 ;
  wire \dc_bias_reg[3]_i_83_n_3 ;
  wire \dc_bias_reg[3]_i_92_0 ;
  wire \dc_bias_reg[3]_i_92_n_0 ;
  wire \dc_bias_reg[3]_i_92_n_1 ;
  wire \dc_bias_reg[3]_i_92_n_2 ;
  wire \dc_bias_reg[3]_i_92_n_3 ;
  wire \dc_bias_reg[3]_i_98_n_1 ;
  wire \dc_bias_reg[3]_i_98_n_2 ;
  wire \dc_bias_reg[3]_i_98_n_3 ;
  wire \encoded[2]_i_3_n_0 ;
  wire [0:0]\encoded_reg[0] ;
  wire \encoded_reg[9] ;
  wire [0:0]i___30_carry__0_i_1_0;
  wire i___30_carry__0_i_5_n_3;
  wire [1:0]\is_hash_mark2_inferred__0/i___21_carry ;
  wire [3:0]\is_hash_mark2_inferred__0/i___30_carry__0 ;
  wire \is_trigger_time6_inferred__2/i__carry ;
  wire \is_trigger_time6_inferred__2/i__carry_0 ;
  wire [0:0]is_vertical_gridline0__20_carry;
  wire [0:0]is_vertical_gridline0__20_carry__0;
  wire is_vertical_gridline0__20_carry__0_i_4_n_0;
  wire is_vertical_gridline0_carry__0_i_8_n_0;
  wire is_vertical_gridline0_carry__0_i_9_n_0;
  wire [9:1]plusOp;
  wire processQ0;
  wire \processQ[0]_i_1__0_n_0 ;
  wire \processQ[4]_i_1__1_n_0 ;
  wire \processQ[7]_i_1__1_n_0 ;
  wire \processQ[8]_i_2_n_0 ;
  wire \processQ[9]_i_1__0_n_0 ;
  wire \processQ[9]_i_5_n_0 ;
  wire \processQ[9]_i_6_n_0 ;
  wire \processQ_reg[0]_0 ;
  wire \processQ_reg[0]_1 ;
  wire [2:0]\processQ_reg[1]_0 ;
  wire \processQ_reg[1]_1 ;
  wire \processQ_reg[1]_2 ;
  wire [0:0]\processQ_reg[1]_3 ;
  wire [0:0]\processQ_reg[1]_4 ;
  wire [1:0]\processQ_reg[2]_0 ;
  wire \processQ_reg[3]_0 ;
  wire [3:0]\processQ_reg[3]_1 ;
  wire [3:0]\processQ_reg[4]_0 ;
  wire \processQ_reg[4]_1 ;
  wire \processQ_reg[4]_2 ;
  wire \processQ_reg[5]_0 ;
  wire [3:0]\processQ_reg[5]_1 ;
  wire \processQ_reg[5]_2 ;
  wire [3:0]\processQ_reg[6]_0 ;
  wire [1:0]\processQ_reg[6]_1 ;
  wire [1:0]\processQ_reg[6]_2 ;
  wire [3:0]\processQ_reg[7]_0 ;
  wire \processQ_reg[7]_1 ;
  wire [3:0]\processQ_reg[7]_2 ;
  wire [3:0]\processQ_reg[7]_3 ;
  wire [2:0]\processQ_reg[8]_0 ;
  wire [2:0]\processQ_reg[9]_0 ;
  wire [3:0]\processQ_reg[9]_1 ;
  wire [1:0]\processQ_reg[9]_2 ;
  wire \processQ_reg[9]_3 ;
  wire [3:0]\processQ_reg[9]_4 ;
  wire [0:0]\processQ_reg[9]_5 ;
  wire [0:0]\processQ_reg[9]_6 ;
  wire [0:0]\processQ_reg[9]_7 ;
  wire s00_axi_aresetn;
  wire [7:0]triggerTimeOut;
  wire [3:0]\triggerTime_reg[7] ;
  wire [3:0]\triggerTime_reg[7]_0 ;
  wire [0:0]\triggerTime_reg[8] ;
  wire [3:0]\triggerTime_reg[9] ;
  wire [3:0]\triggerTime_reg[9]_0 ;
  wire [0:0]\triggerTime_reg[9]_1 ;
  wire \uut3/is_trigger_time4 ;
  wire \uut3/is_trigger_time48_in ;
  wire \uut3/is_trigger_time510_in ;
  wire \uut3/is_trigger_time615_in ;
  wire [6:6]\uut3/is_vertical_gridline1 ;
  wire [3:0]\NLW_dc_bias_reg[3]_i_151_O_UNCONNECTED ;
  wire [3:0]\NLW_dc_bias_reg[3]_i_153_O_UNCONNECTED ;
  wire [3:0]\NLW_dc_bias_reg[3]_i_156_O_UNCONNECTED ;
  wire [3:1]\NLW_dc_bias_reg[3]_i_54_CO_UNCONNECTED ;
  wire [3:0]\NLW_dc_bias_reg[3]_i_54_O_UNCONNECTED ;
  wire [3:0]\NLW_dc_bias_reg[3]_i_55_O_UNCONNECTED ;
  wire [3:1]\NLW_dc_bias_reg[3]_i_56_CO_UNCONNECTED ;
  wire [3:0]\NLW_dc_bias_reg[3]_i_56_O_UNCONNECTED ;
  wire [3:0]\NLW_dc_bias_reg[3]_i_83_O_UNCONNECTED ;
  wire [3:0]\NLW_dc_bias_reg[3]_i_92_O_UNCONNECTED ;
  wire [3:1]\NLW_dc_bias_reg[3]_i_95_CO_UNCONNECTED ;
  wire [3:0]\NLW_dc_bias_reg[3]_i_95_O_UNCONNECTED ;
  wire [3:1]\NLW_dc_bias_reg[3]_i_96_CO_UNCONNECTED ;
  wire [3:0]\NLW_dc_bias_reg[3]_i_96_O_UNCONNECTED ;
  wire [3:1]\NLW_dc_bias_reg[3]_i_97_CO_UNCONNECTED ;
  wire [3:0]\NLW_dc_bias_reg[3]_i_97_O_UNCONNECTED ;
  wire [3:0]\NLW_dc_bias_reg[3]_i_98_O_UNCONNECTED ;
  wire [3:1]NLW_i___30_carry__0_i_5_CO_UNCONNECTED;
  wire [3:0]NLW_i___30_carry__0_i_5_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \dc_bias[3]_i_1 
       (.I0(\processQ_reg[7]_1 ),
        .O(SR));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDCDF)) 
    \dc_bias[3]_i_10 
       (.I0(\dc_bias[3]_i_15_n_0 ),
        .I1(\dc_bias[3]_i_3__0 ),
        .I2(Q[9]),
        .I3(\dc_bias[3]_i_17_n_0 ),
        .I4(\dc_bias_reg[0]_0 [2]),
        .I5(\dc_bias[3]_i_3__0_0 ),
        .O(\processQ_reg[9]_3 ));
  LUT6 #(
    .INIT(64'hFFFFBEFFFFEFFBFF)) 
    \dc_bias[3]_i_10__0 
       (.I0(\dc_bias[3]_i_3__1_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\dc_bias[3]_i_24_n_0 ),
        .I4(\dc_bias[3]_i_25_n_0 ),
        .I5(\dc_bias[3]_i_26_n_0 ),
        .O(\dc_bias[3]_i_10__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \dc_bias[3]_i_13 
       (.I0(Q[7]),
        .I1(Q[8]),
        .O(\dc_bias[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h5556555655565656)) 
    \dc_bias[3]_i_132 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\dc_bias[3]_i_132_n_0 ));
  LUT6 #(
    .INIT(64'h3D95959595959594)) 
    \dc_bias[3]_i_133 
       (.I0(Q[6]),
        .I1(is_vertical_gridline0_carry__0_i_8_n_0),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\dc_bias[3]_i_133_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \dc_bias[3]_i_134 
       (.I0(Q[7]),
        .I1(triggerTimeOut[5]),
        .I2(triggerTimeOut[4]),
        .I3(Q[6]),
        .O(\dc_bias[3]_i_134_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \dc_bias[3]_i_135 
       (.I0(Q[5]),
        .I1(triggerTimeOut[3]),
        .I2(triggerTimeOut[2]),
        .I3(Q[4]),
        .O(\dc_bias[3]_i_135_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \dc_bias[3]_i_136 
       (.I0(Q[3]),
        .I1(triggerTimeOut[1]),
        .I2(triggerTimeOut[0]),
        .I3(Q[2]),
        .O(\dc_bias[3]_i_136_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \dc_bias[3]_i_137 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\dc_bias[3]_i_137_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \dc_bias[3]_i_138 
       (.I0(triggerTimeOut[5]),
        .I1(Q[7]),
        .I2(triggerTimeOut[4]),
        .I3(Q[6]),
        .O(\dc_bias[3]_i_138_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \dc_bias[3]_i_139 
       (.I0(triggerTimeOut[3]),
        .I1(Q[5]),
        .I2(triggerTimeOut[2]),
        .I3(Q[4]),
        .O(\dc_bias[3]_i_139_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55554055)) 
    \dc_bias[3]_i_14 
       (.I0(\dc_bias[3]_i_30_n_0 ),
        .I1(CO),
        .I2(\dc_bias[3]_i_6_0 ),
        .I3(\dc_bias[3]_i_32_n_0 ),
        .I4(\dc_bias[3]_i_6_1 ),
        .I5(\dc_bias[3]_i_33_n_0 ),
        .O(\dc_bias[3]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \dc_bias[3]_i_140 
       (.I0(triggerTimeOut[0]),
        .I1(Q[2]),
        .I2(triggerTimeOut[1]),
        .I3(Q[3]),
        .O(\dc_bias[3]_i_140_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dc_bias[3]_i_141 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\dc_bias[3]_i_141_n_0 ));
  LUT5 #(
    .INIT(32'h15403D54)) 
    \dc_bias[3]_i_142 
       (.I0(Q[7]),
        .I1(\dc_bias_reg[3]_i_92_0 ),
        .I2(triggerTimeOut[4]),
        .I3(triggerTimeOut[5]),
        .I4(Q[6]),
        .O(\dc_bias[3]_i_142_n_0 ));
  LUT6 #(
    .INIT(64'h155540003FD55540)) 
    \dc_bias[3]_i_143 
       (.I0(Q[5]),
        .I1(triggerTimeOut[1]),
        .I2(triggerTimeOut[0]),
        .I3(triggerTimeOut[2]),
        .I4(triggerTimeOut[3]),
        .I5(Q[4]),
        .O(\dc_bias[3]_i_143_n_0 ));
  LUT4 #(
    .INIT(16'h114D)) 
    \dc_bias[3]_i_144 
       (.I0(Q[3]),
        .I1(triggerTimeOut[1]),
        .I2(Q[2]),
        .I3(triggerTimeOut[0]),
        .O(\dc_bias[3]_i_144_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \dc_bias[3]_i_145 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\dc_bias[3]_i_145_n_0 ));
  LUT5 #(
    .INIT(32'h09906009)) 
    \dc_bias[3]_i_146 
       (.I0(triggerTimeOut[5]),
        .I1(Q[7]),
        .I2(triggerTimeOut[4]),
        .I3(\dc_bias_reg[3]_i_92_0 ),
        .I4(Q[6]),
        .O(\dc_bias[3]_i_146_n_0 ));
  LUT6 #(
    .INIT(64'h0990909060090909)) 
    \dc_bias[3]_i_147 
       (.I0(triggerTimeOut[3]),
        .I1(Q[5]),
        .I2(triggerTimeOut[2]),
        .I3(triggerTimeOut[1]),
        .I4(triggerTimeOut[0]),
        .I5(Q[4]),
        .O(\dc_bias[3]_i_147_n_0 ));
  LUT4 #(
    .INIT(16'h2442)) 
    \dc_bias[3]_i_148 
       (.I0(Q[2]),
        .I1(triggerTimeOut[0]),
        .I2(triggerTimeOut[1]),
        .I3(Q[3]),
        .O(\dc_bias[3]_i_148_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dc_bias[3]_i_149 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\dc_bias[3]_i_149_n_0 ));
  LUT6 #(
    .INIT(64'h00B0F0F0F0F0F0F0)) 
    \dc_bias[3]_i_15 
       (.I0(\dc_bias[3]_i_32_n_0 ),
        .I1(\dc_bias[3]_i_20_n_0 ),
        .I2(\dc_bias[3]_i_13_n_0 ),
        .I3(Q[4]),
        .I4(Q[6]),
        .I5(Q[5]),
        .O(\dc_bias[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h9006909009900909)) 
    \dc_bias[3]_i_152 
       (.I0(triggerTimeOut[7]),
        .I1(Q[9]),
        .I2(triggerTimeOut[6]),
        .I3(triggerTimeOut[0]),
        .I4(\is_trigger_time6_inferred__2/i__carry_0 ),
        .I5(Q[8]),
        .O(\dc_bias[3]_i_152_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \dc_bias[3]_i_154 
       (.I0(Q[9]),
        .I1(triggerTimeOut[7]),
        .I2(triggerTimeOut[6]),
        .I3(Q[8]),
        .O(\dc_bias[3]_i_154_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \dc_bias[3]_i_155 
       (.I0(triggerTimeOut[6]),
        .I1(Q[8]),
        .I2(triggerTimeOut[7]),
        .I3(Q[9]),
        .O(\dc_bias[3]_i_155_n_0 ));
  LUT6 #(
    .INIT(64'h9006909009900909)) 
    \dc_bias[3]_i_157 
       (.I0(triggerTimeOut[7]),
        .I1(Q[9]),
        .I2(triggerTimeOut[6]),
        .I3(triggerTimeOut[0]),
        .I4(\is_trigger_time6_inferred__2/i__carry_0 ),
        .I5(Q[8]),
        .O(\dc_bias[3]_i_157_n_0 ));
  LUT5 #(
    .INIT(32'h15403D54)) 
    \dc_bias[3]_i_158 
       (.I0(Q[9]),
        .I1(\dc_bias_reg[3]_i_56_0 ),
        .I2(triggerTimeOut[6]),
        .I3(triggerTimeOut[7]),
        .I4(Q[8]),
        .O(\dc_bias[3]_i_158_n_0 ));
  LUT5 #(
    .INIT(32'h15403D54)) 
    \dc_bias[3]_i_159 
       (.I0(Q[7]),
        .I1(\dc_bias_reg[3]_i_92_0 ),
        .I2(triggerTimeOut[4]),
        .I3(triggerTimeOut[5]),
        .I4(Q[6]),
        .O(\dc_bias[3]_i_159_n_0 ));
  LUT4 #(
    .INIT(16'h114D)) 
    \dc_bias[3]_i_160 
       (.I0(Q[3]),
        .I1(triggerTimeOut[1]),
        .I2(Q[2]),
        .I3(triggerTimeOut[0]),
        .O(\dc_bias[3]_i_160_n_0 ));
  LUT5 #(
    .INIT(32'h09906009)) 
    \dc_bias[3]_i_161 
       (.I0(triggerTimeOut[7]),
        .I1(Q[9]),
        .I2(triggerTimeOut[6]),
        .I3(\dc_bias_reg[3]_i_56_0 ),
        .I4(Q[8]),
        .O(\dc_bias[3]_i_161_n_0 ));
  LUT5 #(
    .INIT(32'h09906009)) 
    \dc_bias[3]_i_162 
       (.I0(triggerTimeOut[5]),
        .I1(Q[7]),
        .I2(triggerTimeOut[4]),
        .I3(\dc_bias_reg[3]_i_92_0 ),
        .I4(Q[6]),
        .O(\dc_bias[3]_i_162_n_0 ));
  LUT6 #(
    .INIT(64'h0990909060090909)) 
    \dc_bias[3]_i_163 
       (.I0(triggerTimeOut[3]),
        .I1(Q[5]),
        .I2(triggerTimeOut[2]),
        .I3(triggerTimeOut[1]),
        .I4(triggerTimeOut[0]),
        .I5(Q[4]),
        .O(\dc_bias[3]_i_163_n_0 ));
  LUT4 #(
    .INIT(16'h2442)) 
    \dc_bias[3]_i_164 
       (.I0(Q[2]),
        .I1(triggerTimeOut[0]),
        .I2(triggerTimeOut[1]),
        .I3(Q[3]),
        .O(\dc_bias[3]_i_164_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \dc_bias[3]_i_17 
       (.I0(Q[8]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(Q[5]),
        .I4(is_vertical_gridline0_carry__0_i_8_n_0),
        .O(\dc_bias[3]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h8AE308A2)) 
    \dc_bias[3]_i_199 
       (.I0(Q[7]),
        .I1(\dc_bias_reg[3]_i_55_0 ),
        .I2(triggerTimeOut[4]),
        .I3(triggerTimeOut[5]),
        .I4(Q[6]),
        .O(\dc_bias[3]_i_199_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000AE)) 
    \dc_bias[3]_i_2 
       (.I0(\dc_bias_reg[1] ),
        .I1(\dc_bias[3]_i_9_n_0 ),
        .I2(\dc_bias[3]_i_10__0_n_0 ),
        .I3(\dc_bias_reg[1]_0 ),
        .I4(\dc_bias_reg[1]_1 ),
        .I5(\processQ_reg[4]_1 ),
        .O(\processQ_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dc_bias[3]_i_20 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\dc_bias[3]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hB288)) 
    \dc_bias[3]_i_200 
       (.I0(Q[3]),
        .I1(triggerTimeOut[1]),
        .I2(Q[2]),
        .I3(triggerTimeOut[0]),
        .O(\dc_bias[3]_i_200_n_0 ));
  LUT5 #(
    .INIT(32'h06909009)) 
    \dc_bias[3]_i_201 
       (.I0(triggerTimeOut[5]),
        .I1(Q[7]),
        .I2(triggerTimeOut[4]),
        .I3(\dc_bias_reg[3]_i_55_0 ),
        .I4(Q[6]),
        .O(\dc_bias[3]_i_201_n_0 ));
  LUT6 #(
    .INIT(64'h8484844221212118)) 
    \dc_bias[3]_i_202 
       (.I0(Q[4]),
        .I1(triggerTimeOut[3]),
        .I2(triggerTimeOut[2]),
        .I3(triggerTimeOut[0]),
        .I4(triggerTimeOut[1]),
        .I5(Q[5]),
        .O(\dc_bias[3]_i_202_n_0 ));
  LUT4 #(
    .INIT(16'h4224)) 
    \dc_bias[3]_i_203 
       (.I0(Q[2]),
        .I1(triggerTimeOut[0]),
        .I2(triggerTimeOut[1]),
        .I3(Q[3]),
        .O(\dc_bias[3]_i_203_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dc_bias[3]_i_204 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\dc_bias[3]_i_204_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \dc_bias[3]_i_205 
       (.I0(Q[7]),
        .I1(triggerTimeOut[5]),
        .I2(triggerTimeOut[4]),
        .I3(Q[6]),
        .O(\dc_bias[3]_i_205_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \dc_bias[3]_i_206 
       (.I0(Q[5]),
        .I1(triggerTimeOut[3]),
        .I2(triggerTimeOut[2]),
        .I3(Q[4]),
        .O(\dc_bias[3]_i_206_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \dc_bias[3]_i_207 
       (.I0(Q[3]),
        .I1(triggerTimeOut[1]),
        .I2(triggerTimeOut[0]),
        .I3(Q[2]),
        .O(\dc_bias[3]_i_207_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dc_bias[3]_i_208 
       (.I0(Q[1]),
        .O(\dc_bias[3]_i_208_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \dc_bias[3]_i_209 
       (.I0(triggerTimeOut[5]),
        .I1(Q[7]),
        .I2(triggerTimeOut[4]),
        .I3(Q[6]),
        .O(\dc_bias[3]_i_209_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \dc_bias[3]_i_20__0 
       (.I0(Q[4]),
        .I1(\dc_bias[3]_i_45_n_0 ),
        .I2(Q[3]),
        .I3(\dc_bias[3]_i_46_n_0 ),
        .O(\dc_bias[3]_i_20__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAEAAAA8AAAAAAA)) 
    \dc_bias[3]_i_21 
       (.I0(\dc_bias[3]_i_47_n_0 ),
        .I1(\dc_bias[3]_i_48_n_0 ),
        .I2(\dc_bias[3]_i_46_n_0 ),
        .I3(\dc_bias[3]_i_49_n_0 ),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\dc_bias[3]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \dc_bias[3]_i_210 
       (.I0(triggerTimeOut[3]),
        .I1(Q[5]),
        .I2(triggerTimeOut[2]),
        .I3(Q[4]),
        .O(\dc_bias[3]_i_210_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \dc_bias[3]_i_211 
       (.I0(triggerTimeOut[0]),
        .I1(Q[2]),
        .I2(triggerTimeOut[1]),
        .I3(Q[3]),
        .O(\dc_bias[3]_i_211_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dc_bias[3]_i_212 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\dc_bias[3]_i_212_n_0 ));
  LUT5 #(
    .INIT(32'h8AE308A2)) 
    \dc_bias[3]_i_213 
       (.I0(Q[7]),
        .I1(\dc_bias_reg[3]_i_55_0 ),
        .I2(triggerTimeOut[4]),
        .I3(triggerTimeOut[5]),
        .I4(Q[6]),
        .O(\dc_bias[3]_i_213_n_0 ));
  LUT4 #(
    .INIT(16'hB288)) 
    \dc_bias[3]_i_214 
       (.I0(Q[3]),
        .I1(triggerTimeOut[1]),
        .I2(Q[2]),
        .I3(triggerTimeOut[0]),
        .O(\dc_bias[3]_i_214_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \dc_bias[3]_i_215 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\dc_bias[3]_i_215_n_0 ));
  LUT5 #(
    .INIT(32'h06909009)) 
    \dc_bias[3]_i_216 
       (.I0(triggerTimeOut[5]),
        .I1(Q[7]),
        .I2(triggerTimeOut[4]),
        .I3(\dc_bias_reg[3]_i_55_0 ),
        .I4(Q[6]),
        .O(\dc_bias[3]_i_216_n_0 ));
  LUT6 #(
    .INIT(64'h8484844221212118)) 
    \dc_bias[3]_i_217 
       (.I0(Q[4]),
        .I1(triggerTimeOut[3]),
        .I2(triggerTimeOut[2]),
        .I3(triggerTimeOut[0]),
        .I4(triggerTimeOut[1]),
        .I5(Q[5]),
        .O(\dc_bias[3]_i_217_n_0 ));
  LUT4 #(
    .INIT(16'h4224)) 
    \dc_bias[3]_i_218 
       (.I0(Q[2]),
        .I1(triggerTimeOut[0]),
        .I2(triggerTimeOut[1]),
        .I3(Q[3]),
        .O(\dc_bias[3]_i_218_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dc_bias[3]_i_219 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\dc_bias[3]_i_219_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \dc_bias[3]_i_22 
       (.I0(Q[3]),
        .I1(\dc_bias[3]_i_46_n_0 ),
        .O(\dc_bias[3]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \dc_bias[3]_i_24 
       (.I0(Q[2]),
        .I1(\dc_bias[3]_i_21_n_0 ),
        .I2(Q[1]),
        .O(\dc_bias[3]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hE178)) 
    \dc_bias[3]_i_25 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(\dc_bias[3]_i_22_n_0 ),
        .I3(\dc_bias[3]_i_21_n_0 ),
        .O(\dc_bias[3]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hD0F0F0F0F0F0F0F4)) 
    \dc_bias[3]_i_26 
       (.I0(\dc_bias[3]_i_20__0_n_0 ),
        .I1(\dc_bias[3]_i_21_n_0 ),
        .I2(\dc_bias[3]_i_53_n_0 ),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\dc_bias[3]_i_22_n_0 ),
        .O(\dc_bias[3]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FBBB)) 
    \dc_bias[3]_i_28 
       (.I0(\dc_bias[3]_i_12 ),
        .I1(\dc_bias[3]_i_12_0 ),
        .I2(\uut3/is_trigger_time615_in ),
        .I3(\dc_bias[3]_i_12_1 ),
        .I4(\dc_bias[3]_i_57_n_0 ),
        .I5(\dc_bias[3]_i_12_2 ),
        .O(\processQ_reg[1]_2 ));
  LUT5 #(
    .INIT(32'h0000001F)) 
    \dc_bias[3]_i_3 
       (.I0(Q[7]),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(\dc_bias_reg[0] ),
        .I4(\dc_bias_reg[0]_0 [2]),
        .O(\processQ_reg[7]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF2AFFFF)) 
    \dc_bias[3]_i_30 
       (.I0(\processQ_reg[1]_1 ),
        .I1(\dc_bias[3]_i_14_0 ),
        .I2(\dc_bias[3]_i_14_1 ),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(\dc_bias[3]_i_14_2 ),
        .O(\dc_bias[3]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \dc_bias[3]_i_32 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\dc_bias[3]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \dc_bias[3]_i_33 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(\dc_bias[3]_i_14_3 ),
        .I3(\dc_bias[3]_i_14_4 ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\dc_bias[3]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h008A008A00000002)) 
    \dc_bias[3]_i_3__1 
       (.I0(\dc_bias[3]_i_9_n_0 ),
        .I1(\dc_bias[3]_i_26_n_0 ),
        .I2(\dc_bias[3]_i_5__0_n_0 ),
        .I3(\dc_bias[3]_i_6__0_n_0 ),
        .I4(\dc_bias[3]_i_7_n_0 ),
        .I5(\dc_bias[3]_i_8_n_0 ),
        .O(\processQ_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hA2AAAAAAAAAAAAAE)) 
    \dc_bias[3]_i_45 
       (.I0(\dc_bias[3]_i_76_n_0 ),
        .I1(\dc_bias[3]_i_77_n_0 ),
        .I2(\dc_bias[3]_i_78_n_0 ),
        .I3(is_vertical_gridline0__20_carry__0_i_4_n_0),
        .I4(\dc_bias[3]_i_79_n_0 ),
        .I5(\processQ_reg[3]_0 ),
        .O(\dc_bias[3]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h0000FF7F0100FFFF)) 
    \dc_bias[3]_i_46 
       (.I0(\dc_bias[3]_i_80_n_0 ),
        .I1(\dc_bias[3]_i_45_n_0 ),
        .I2(\processQ_reg[3]_0 ),
        .I3(DI[0]),
        .I4(\dc_bias[3]_i_81_n_0 ),
        .I5(\dc_bias[3]_i_82_n_0 ),
        .O(\dc_bias[3]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h9AA6AAAAAAAA9AA6)) 
    \dc_bias[3]_i_47 
       (.I0(\dc_bias[3]_i_82_n_0 ),
        .I1(DI[0]),
        .I2(\processQ_reg[3]_0 ),
        .I3(\dc_bias[3]_i_45_n_0 ),
        .I4(is_vertical_gridline0__20_carry__0_i_4_n_0),
        .I5(\dc_bias[3]_i_79_n_0 ),
        .O(\dc_bias[3]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h9999966669999999)) 
    \dc_bias[3]_i_48 
       (.I0(\dc_bias[3]_i_79_n_0 ),
        .I1(Q[5]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(\dc_bias[3]_i_45_n_0 ),
        .O(\dc_bias[3]_i_48_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h956A)) 
    \dc_bias[3]_i_49 
       (.I0(\dc_bias[3]_i_45_n_0 ),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[4]),
        .O(\dc_bias[3]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFEFEFFFE)) 
    \dc_bias[3]_i_4__0 
       (.I0(\processQ_reg[4]_1 ),
        .I1(\dc_bias_reg[1]_0 ),
        .I2(\dc_bias_reg[1] ),
        .I3(\dc_bias[3]_i_9_n_0 ),
        .I4(\dc_bias[3]_i_10__0_n_0 ),
        .I5(\encoded_reg[9] ),
        .O(\processQ_reg[4]_2 ));
  LUT6 #(
    .INIT(64'hEFDFBF7F10204080)) 
    \dc_bias[3]_i_53 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(\dc_bias[3]_i_45_n_0 ),
        .I4(\dc_bias[3]_i_46_n_0 ),
        .I5(\dc_bias[3]_i_48_n_0 ),
        .O(\dc_bias[3]_i_53_n_0 ));
  LUT6 #(
    .INIT(64'h0FFF000077770000)) 
    \dc_bias[3]_i_57 
       (.I0(\dc_bias[3]_i_28_0 ),
        .I1(\uut3/is_trigger_time510_in ),
        .I2(\uut3/is_trigger_time4 ),
        .I3(\uut3/is_trigger_time48_in ),
        .I4(\dc_bias_reg[0]_0 [1]),
        .I5(\dc_bias_reg[0]_0 [0]),
        .O(\dc_bias[3]_i_57_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \dc_bias[3]_i_5__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\dc_bias[3]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAAAAA)) 
    \dc_bias[3]_i_6 
       (.I0(\dc_bias[3]_i_2__1 ),
        .I1(\dc_bias[3]_i_13_n_0 ),
        .I2(is_vertical_gridline0_carry__0_i_9_n_0),
        .I3(Q[4]),
        .I4(Q[9]),
        .I5(\dc_bias[3]_i_14_n_0 ),
        .O(\processQ_reg[4]_1 ));
  LUT6 #(
    .INIT(64'hFFABFAFFAAFAABAA)) 
    \dc_bias[3]_i_6__0 
       (.I0(\dc_bias[3]_i_3__1_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\dc_bias[3]_i_21_n_0 ),
        .I4(Q[2]),
        .I5(\dc_bias[3]_i_22_n_0 ),
        .O(\dc_bias[3]_i_6__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h540A0554)) 
    \dc_bias[3]_i_7 
       (.I0(\dc_bias[3]_i_22_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\dc_bias[3]_i_21_n_0 ),
        .O(\dc_bias[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h95D5D55595555555)) 
    \dc_bias[3]_i_76 
       (.I0(Q[8]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(is_vertical_gridline0_carry__0_i_8_n_0),
        .I4(Q[5]),
        .I5(Q[9]),
        .O(\dc_bias[3]_i_76_n_0 ));
  LUT6 #(
    .INIT(64'hFF00E00000FF1FFF)) 
    \dc_bias[3]_i_77 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[6]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(\dc_bias[3]_i_77_n_0 ));
  LUT6 #(
    .INIT(64'h808080FFFFFFFF01)) 
    \dc_bias[3]_i_78 
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(Q[7]),
        .I3(Q[5]),
        .I4(is_vertical_gridline0_carry__0_i_8_n_0),
        .I5(Q[6]),
        .O(\dc_bias[3]_i_78_n_0 ));
  LUT6 #(
    .INIT(64'h5F7FFFFF80000000)) 
    \dc_bias[3]_i_79 
       (.I0(Q[8]),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(is_vertical_gridline0_carry__0_i_8_n_0),
        .I4(Q[7]),
        .I5(Q[9]),
        .O(\dc_bias[3]_i_79_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h6009)) 
    \dc_bias[3]_i_8 
       (.I0(Q[2]),
        .I1(\dc_bias[3]_i_21_n_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\dc_bias[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'hAAA95556)) 
    \dc_bias[3]_i_80 
       (.I0(\dc_bias[3]_i_79_n_0 ),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[5]),
        .O(\dc_bias[3]_i_80_n_0 ));
  LUT6 #(
    .INIT(64'h0071FF8EFF8E0071)) 
    \dc_bias[3]_i_81 
       (.I0(\processQ_reg[3]_0 ),
        .I1(\dc_bias[3]_i_79_n_0 ),
        .I2(is_vertical_gridline0__20_carry__0_i_4_n_0),
        .I3(\dc_bias[3]_i_78_n_0 ),
        .I4(\uut3/is_vertical_gridline1 ),
        .I5(\dc_bias[3]_i_132_n_0 ),
        .O(\dc_bias[3]_i_81_n_0 ));
  LUT6 #(
    .INIT(64'h9A9A9A6A6A6A6AA9)) 
    \dc_bias[3]_i_82 
       (.I0(\dc_bias[3]_i_133_n_0 ),
        .I1(\dc_bias[3]_i_79_n_0 ),
        .I2(Q[5]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\dc_bias[3]_i_82_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \dc_bias[3]_i_84 
       (.I0(Q[9]),
        .I1(triggerTimeOut[7]),
        .I2(triggerTimeOut[6]),
        .I3(Q[8]),
        .O(\dc_bias[3]_i_84_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \dc_bias[3]_i_85 
       (.I0(triggerTimeOut[6]),
        .I1(Q[8]),
        .I2(triggerTimeOut[7]),
        .I3(Q[9]),
        .O(\dc_bias[3]_i_85_n_0 ));
  LUT5 #(
    .INIT(32'h8AE308A2)) 
    \dc_bias[3]_i_86 
       (.I0(Q[7]),
        .I1(\dc_bias_reg[3]_i_55_0 ),
        .I2(triggerTimeOut[4]),
        .I3(triggerTimeOut[5]),
        .I4(Q[6]),
        .O(\dc_bias[3]_i_86_n_0 ));
  LUT4 #(
    .INIT(16'hB288)) 
    \dc_bias[3]_i_87 
       (.I0(Q[3]),
        .I1(triggerTimeOut[1]),
        .I2(Q[2]),
        .I3(triggerTimeOut[0]),
        .O(\dc_bias[3]_i_87_n_0 ));
  LUT6 #(
    .INIT(64'h9006909009900909)) 
    \dc_bias[3]_i_88 
       (.I0(triggerTimeOut[7]),
        .I1(Q[9]),
        .I2(triggerTimeOut[6]),
        .I3(triggerTimeOut[0]),
        .I4(\is_trigger_time6_inferred__2/i__carry_0 ),
        .I5(Q[8]),
        .O(\dc_bias[3]_i_88_n_0 ));
  LUT5 #(
    .INIT(32'h06909009)) 
    \dc_bias[3]_i_89 
       (.I0(triggerTimeOut[5]),
        .I1(Q[7]),
        .I2(triggerTimeOut[4]),
        .I3(\dc_bias_reg[3]_i_55_0 ),
        .I4(Q[6]),
        .O(\dc_bias[3]_i_89_n_0 ));
  LUT6 #(
    .INIT(64'hA69AAA99AA999AA9)) 
    \dc_bias[3]_i_9 
       (.I0(Q[0]),
        .I1(\dc_bias[3]_i_20__0_n_0 ),
        .I2(\dc_bias[3]_i_21_n_0 ),
        .I3(\dc_bias[3]_i_22_n_0 ),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\dc_bias[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h8484844221212118)) 
    \dc_bias[3]_i_90 
       (.I0(Q[4]),
        .I1(triggerTimeOut[3]),
        .I2(triggerTimeOut[2]),
        .I3(triggerTimeOut[0]),
        .I4(triggerTimeOut[1]),
        .I5(Q[5]),
        .O(\dc_bias[3]_i_90_n_0 ));
  LUT4 #(
    .INIT(16'h4224)) 
    \dc_bias[3]_i_91 
       (.I0(Q[2]),
        .I1(triggerTimeOut[0]),
        .I2(triggerTimeOut[1]),
        .I3(Q[3]),
        .O(\dc_bias[3]_i_91_n_0 ));
  LUT5 #(
    .INIT(32'h15403D54)) 
    \dc_bias[3]_i_93 
       (.I0(Q[9]),
        .I1(\dc_bias_reg[3]_i_56_0 ),
        .I2(triggerTimeOut[6]),
        .I3(triggerTimeOut[7]),
        .I4(Q[8]),
        .O(\dc_bias[3]_i_93_n_0 ));
  LUT5 #(
    .INIT(32'h09906009)) 
    \dc_bias[3]_i_94 
       (.I0(triggerTimeOut[7]),
        .I1(Q[9]),
        .I2(triggerTimeOut[6]),
        .I3(\dc_bias_reg[3]_i_56_0 ),
        .I4(Q[8]),
        .O(\dc_bias[3]_i_94_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \dc_bias_reg[3]_i_151 
       (.CI(1'b0),
        .CO({\dc_bias_reg[3]_i_151_n_0 ,\dc_bias_reg[3]_i_151_n_1 ,\dc_bias_reg[3]_i_151_n_2 ,\dc_bias_reg[3]_i_151_n_3 }),
        .CYINIT(1'b1),
        .DI({\dc_bias[3]_i_199_n_0 ,\processQ_reg[7]_3 [2],\dc_bias[3]_i_200_n_0 ,Q[1]}),
        .O(\NLW_dc_bias_reg[3]_i_151_O_UNCONNECTED [3:0]),
        .S({\dc_bias[3]_i_201_n_0 ,\dc_bias[3]_i_202_n_0 ,\dc_bias[3]_i_203_n_0 ,\dc_bias[3]_i_204_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \dc_bias_reg[3]_i_153 
       (.CI(1'b0),
        .CO({\dc_bias_reg[3]_i_153_n_0 ,\dc_bias_reg[3]_i_153_n_1 ,\dc_bias_reg[3]_i_153_n_2 ,\dc_bias_reg[3]_i_153_n_3 }),
        .CYINIT(1'b1),
        .DI({\dc_bias[3]_i_205_n_0 ,\dc_bias[3]_i_206_n_0 ,\dc_bias[3]_i_207_n_0 ,\dc_bias[3]_i_208_n_0 }),
        .O(\NLW_dc_bias_reg[3]_i_153_O_UNCONNECTED [3:0]),
        .S({\dc_bias[3]_i_209_n_0 ,\dc_bias[3]_i_210_n_0 ,\dc_bias[3]_i_211_n_0 ,\dc_bias[3]_i_212_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \dc_bias_reg[3]_i_156 
       (.CI(1'b0),
        .CO({\dc_bias_reg[3]_i_156_n_0 ,\dc_bias_reg[3]_i_156_n_1 ,\dc_bias_reg[3]_i_156_n_2 ,\dc_bias_reg[3]_i_156_n_3 }),
        .CYINIT(1'b1),
        .DI({\dc_bias[3]_i_213_n_0 ,\processQ_reg[7]_3 [2],\dc_bias[3]_i_214_n_0 ,\dc_bias[3]_i_215_n_0 }),
        .O(\NLW_dc_bias_reg[3]_i_156_O_UNCONNECTED [3:0]),
        .S({\dc_bias[3]_i_216_n_0 ,\dc_bias[3]_i_217_n_0 ,\dc_bias[3]_i_218_n_0 ,\dc_bias[3]_i_219_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \dc_bias_reg[3]_i_54 
       (.CI(\dc_bias_reg[3]_i_83_n_0 ),
        .CO({\NLW_dc_bias_reg[3]_i_54_CO_UNCONNECTED [3:1],\processQ_reg[9]_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\dc_bias[3]_i_84_n_0 }),
        .O(\NLW_dc_bias_reg[3]_i_54_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\dc_bias[3]_i_85_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \dc_bias_reg[3]_i_55 
       (.CI(1'b0),
        .CO({\processQ_reg[1]_4 ,\dc_bias_reg[3]_i_55_n_1 ,\dc_bias_reg[3]_i_55_n_2 ,\dc_bias_reg[3]_i_55_n_3 }),
        .CYINIT(\processQ_reg[1]_1 ),
        .DI({\processQ_reg[9]_5 ,\dc_bias[3]_i_86_n_0 ,\processQ_reg[7]_3 [2],\dc_bias[3]_i_87_n_0 }),
        .O(\NLW_dc_bias_reg[3]_i_55_O_UNCONNECTED [3:0]),
        .S({\dc_bias[3]_i_88_n_0 ,\dc_bias[3]_i_89_n_0 ,\dc_bias[3]_i_90_n_0 ,\dc_bias[3]_i_91_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \dc_bias_reg[3]_i_56 
       (.CI(\dc_bias_reg[3]_i_92_n_0 ),
        .CO({\NLW_dc_bias_reg[3]_i_56_CO_UNCONNECTED [3:1],\uut3/is_trigger_time615_in }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\dc_bias[3]_i_93_n_0 }),
        .O(\NLW_dc_bias_reg[3]_i_56_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\dc_bias[3]_i_94_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \dc_bias_reg[3]_i_83 
       (.CI(1'b0),
        .CO({\dc_bias_reg[3]_i_83_n_0 ,\dc_bias_reg[3]_i_83_n_1 ,\dc_bias_reg[3]_i_83_n_2 ,\dc_bias_reg[3]_i_83_n_3 }),
        .CYINIT(1'b1),
        .DI({\dc_bias[3]_i_134_n_0 ,\dc_bias[3]_i_135_n_0 ,\dc_bias[3]_i_136_n_0 ,\dc_bias[3]_i_137_n_0 }),
        .O(\NLW_dc_bias_reg[3]_i_83_O_UNCONNECTED [3:0]),
        .S({\dc_bias[3]_i_138_n_0 ,\dc_bias[3]_i_139_n_0 ,\dc_bias[3]_i_140_n_0 ,\dc_bias[3]_i_141_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \dc_bias_reg[3]_i_92 
       (.CI(1'b0),
        .CO({\dc_bias_reg[3]_i_92_n_0 ,\dc_bias_reg[3]_i_92_n_1 ,\dc_bias_reg[3]_i_92_n_2 ,\dc_bias_reg[3]_i_92_n_3 }),
        .CYINIT(1'b1),
        .DI({\dc_bias[3]_i_142_n_0 ,\dc_bias[3]_i_143_n_0 ,\dc_bias[3]_i_144_n_0 ,\dc_bias[3]_i_145_n_0 }),
        .O(\NLW_dc_bias_reg[3]_i_92_O_UNCONNECTED [3:0]),
        .S({\dc_bias[3]_i_146_n_0 ,\dc_bias[3]_i_147_n_0 ,\dc_bias[3]_i_148_n_0 ,\dc_bias[3]_i_149_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \dc_bias_reg[3]_i_95 
       (.CI(\dc_bias_reg[3]_i_151_n_0 ),
        .CO({\NLW_dc_bias_reg[3]_i_95_CO_UNCONNECTED [3:1],\uut3/is_trigger_time510_in }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\processQ_reg[9]_5 }),
        .O(\NLW_dc_bias_reg[3]_i_95_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\dc_bias[3]_i_152_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \dc_bias_reg[3]_i_96 
       (.CI(\dc_bias_reg[3]_i_153_n_0 ),
        .CO({\NLW_dc_bias_reg[3]_i_96_CO_UNCONNECTED [3:1],\uut3/is_trigger_time4 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\dc_bias[3]_i_154_n_0 }),
        .O(\NLW_dc_bias_reg[3]_i_96_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\dc_bias[3]_i_155_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \dc_bias_reg[3]_i_97 
       (.CI(\dc_bias_reg[3]_i_156_n_0 ),
        .CO({\NLW_dc_bias_reg[3]_i_97_CO_UNCONNECTED [3:1],\uut3/is_trigger_time48_in }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\processQ_reg[9]_5 }),
        .O(\NLW_dc_bias_reg[3]_i_97_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\dc_bias[3]_i_157_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \dc_bias_reg[3]_i_98 
       (.CI(1'b0),
        .CO({\processQ_reg[1]_3 ,\dc_bias_reg[3]_i_98_n_1 ,\dc_bias_reg[3]_i_98_n_2 ,\dc_bias_reg[3]_i_98_n_3 }),
        .CYINIT(\dc_bias[3]_i_32_n_0 ),
        .DI({\dc_bias[3]_i_158_n_0 ,\dc_bias[3]_i_159_n_0 ,\dc_bias[3]_i_143_n_0 ,\dc_bias[3]_i_160_n_0 }),
        .O(\NLW_dc_bias_reg[3]_i_98_O_UNCONNECTED [3:0]),
        .S({\dc_bias[3]_i_161_n_0 ,\dc_bias[3]_i_162_n_0 ,\dc_bias[3]_i_163_n_0 ,\dc_bias[3]_i_164_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hC5)) 
    \encoded[0]_i_1 
       (.I0(\processQ_reg[5]_2 ),
        .I1(\encoded_reg[0] ),
        .I2(\processQ_reg[7]_1 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \encoded[2]_i_1 
       (.I0(\processQ_reg[5]_2 ),
        .I1(\encoded_reg[0] ),
        .I2(\processQ_reg[7]_1 ),
        .O(D[1]));
  LUT4 #(
    .INIT(16'h1554)) 
    \encoded[2]_i_2 
       (.I0(\encoded[2]_i_3_n_0 ),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(Q[4]),
        .O(\processQ_reg[5]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \encoded[2]_i_3 
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(s00_axi_aresetn),
        .I3(Q[7]),
        .O(\encoded[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    i___21_carry_i_1
       (.I0(\is_hash_mark2_inferred__0/i___21_carry [0]),
        .I1(\is_hash_mark2_inferred__0/i___21_carry [1]),
        .O(\processQ_reg[8]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    i___21_carry_i_2
       (.I0(\is_hash_mark2_inferred__0/i___21_carry [0]),
        .I1(\is_hash_mark2_inferred__0/i___21_carry [1]),
        .O(\processQ_reg[8]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    i___21_carry_i_3
       (.I0(\is_hash_mark2_inferred__0/i___21_carry [0]),
        .I1(\is_hash_mark2_inferred__0/i___21_carry [1]),
        .O(\processQ_reg[8]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    i___30_carry__0_i_1
       (.I0(Q[7]),
        .I1(i___30_carry__0_i_5_n_3),
        .O(\processQ_reg[7]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    i___30_carry__0_i_2
       (.I0(Q[6]),
        .I1(\is_hash_mark2_inferred__0/i___30_carry__0 [3]),
        .O(\processQ_reg[7]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    i___30_carry__0_i_3
       (.I0(Q[5]),
        .I1(\is_hash_mark2_inferred__0/i___30_carry__0 [2]),
        .O(\processQ_reg[7]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    i___30_carry__0_i_4
       (.I0(Q[4]),
        .I1(\is_hash_mark2_inferred__0/i___30_carry__0 [1]),
        .O(\processQ_reg[7]_0 [0]));
  CARRY4 i___30_carry__0_i_5
       (.CI(i___30_carry__0_i_1_0),
        .CO({NLW_i___30_carry__0_i_5_CO_UNCONNECTED[3:1],i___30_carry__0_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_i___30_carry__0_i_5_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT2 #(
    .INIT(4'h9)) 
    i___30_carry__1_i_1
       (.I0(Q[9]),
        .I1(\is_hash_mark2_inferred__0/i___21_carry [1]),
        .O(\processQ_reg[9]_2 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    i___30_carry__1_i_2
       (.I0(Q[8]),
        .I1(\is_hash_mark2_inferred__0/i___21_carry [0]),
        .O(\processQ_reg[9]_2 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    i___30_carry_i_1
       (.I0(Q[3]),
        .I1(\is_hash_mark2_inferred__0/i___30_carry__0 [0]),
        .O(\processQ_reg[3]_1 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    i___30_carry_i_2
       (.I0(Q[2]),
        .I1(\is_hash_mark2_inferred__0/i___21_carry [0]),
        .O(\processQ_reg[3]_1 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    i___30_carry_i_3
       (.I0(Q[1]),
        .I1(\is_hash_mark2_inferred__0/i___21_carry [1]),
        .O(\processQ_reg[3]_1 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    i___30_carry_i_4
       (.I0(Q[0]),
        .I1(\is_hash_mark2_inferred__0/i___21_carry [0]),
        .O(\processQ_reg[3]_1 [0]));
  LUT6 #(
    .INIT(64'h22A2BBCB0020AA8A)) 
    i__carry__0_i_1
       (.I0(Q[9]),
        .I1(triggerTimeOut[6]),
        .I2(\is_trigger_time6_inferred__2/i__carry_0 ),
        .I3(triggerTimeOut[0]),
        .I4(triggerTimeOut[7]),
        .I5(Q[8]),
        .O(\processQ_reg[9]_5 ));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__1
       (.I0(Q[5]),
        .I1(Q[7]),
        .O(\processQ_reg[5]_1 [3]));
  LUT6 #(
    .INIT(64'h9006909009900909)) 
    i__carry__0_i_2
       (.I0(triggerTimeOut[7]),
        .I1(Q[9]),
        .I2(triggerTimeOut[6]),
        .I3(triggerTimeOut[0]),
        .I4(\is_trigger_time6_inferred__2/i__carry_0 ),
        .I5(Q[8]),
        .O(\triggerTime_reg[9]_1 ));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__1
       (.I0(Q[4]),
        .I1(Q[6]),
        .O(\processQ_reg[5]_1 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3__1
       (.I0(Q[3]),
        .I1(Q[5]),
        .O(\processQ_reg[5]_1 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4
       (.I0(Q[2]),
        .I1(Q[4]),
        .O(\processQ_reg[5]_1 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_1
       (.I0(Q[9]),
        .O(\processQ_reg[9]_1 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__1_i_2
       (.I0(Q[8]),
        .O(\processQ_reg[9]_1 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_3
       (.I0(Q[7]),
        .I1(Q[9]),
        .O(\processQ_reg[9]_1 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_4
       (.I0(Q[6]),
        .I1(Q[8]),
        .O(\processQ_reg[9]_1 [0]));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\processQ_reg[1]_1 ));
  LUT5 #(
    .INIT(32'h8AE308A2)) 
    i__carry_i_1__1
       (.I0(Q[7]),
        .I1(\dc_bias_reg[3]_i_55_0 ),
        .I2(triggerTimeOut[4]),
        .I3(triggerTimeOut[5]),
        .I4(Q[6]),
        .O(\processQ_reg[7]_3 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1__3
       (.I0(Q[1]),
        .I1(Q[3]),
        .O(\processQ_reg[1]_0 [2]));
  LUT5 #(
    .INIT(32'h8AE308A2)) 
    i__carry_i_2
       (.I0(Q[9]),
        .I1(\is_trigger_time6_inferred__2/i__carry_0 ),
        .I2(triggerTimeOut[6]),
        .I3(triggerTimeOut[7]),
        .I4(Q[8]),
        .O(\processQ_reg[9]_4 [3]));
  LUT6 #(
    .INIT(64'h02AAABFC0002AAA8)) 
    i__carry_i_2__2
       (.I0(Q[5]),
        .I1(triggerTimeOut[1]),
        .I2(triggerTimeOut[0]),
        .I3(triggerTimeOut[2]),
        .I4(triggerTimeOut[3]),
        .I5(Q[4]),
        .O(\processQ_reg[7]_3 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2__4
       (.I0(Q[0]),
        .I1(Q[2]),
        .O(\processQ_reg[1]_0 [1]));
  LUT5 #(
    .INIT(32'h8AE308A2)) 
    i__carry_i_3
       (.I0(Q[7]),
        .I1(\is_trigger_time6_inferred__2/i__carry ),
        .I2(triggerTimeOut[4]),
        .I3(triggerTimeOut[5]),
        .I4(Q[6]),
        .O(\processQ_reg[9]_4 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3__1
       (.I0(Q[1]),
        .O(\processQ_reg[1]_0 [0]));
  LUT4 #(
    .INIT(16'hB288)) 
    i__carry_i_3__2
       (.I0(Q[3]),
        .I1(triggerTimeOut[1]),
        .I2(Q[2]),
        .I3(triggerTimeOut[0]),
        .O(\processQ_reg[7]_3 [1]));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_4
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\processQ_reg[7]_3 [0]));
  LUT5 #(
    .INIT(32'h2ABC02A8)) 
    i__carry_i_4__0
       (.I0(Q[5]),
        .I1(triggerTimeOut[2]),
        .I2(triggerTimeOut[1]),
        .I3(triggerTimeOut[3]),
        .I4(Q[4]),
        .O(\processQ_reg[9]_4 [1]));
  LUT4 #(
    .INIT(16'hF440)) 
    i__carry_i_5
       (.I0(triggerTimeOut[0]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(triggerTimeOut[1]),
        .O(\processQ_reg[9]_4 [0]));
  LUT5 #(
    .INIT(32'h06909009)) 
    i__carry_i_5__1
       (.I0(triggerTimeOut[5]),
        .I1(Q[7]),
        .I2(triggerTimeOut[4]),
        .I3(\dc_bias_reg[3]_i_55_0 ),
        .I4(Q[6]),
        .O(\triggerTime_reg[7] [3]));
  LUT5 #(
    .INIT(32'h06909009)) 
    i__carry_i_6
       (.I0(triggerTimeOut[7]),
        .I1(Q[9]),
        .I2(triggerTimeOut[6]),
        .I3(\is_trigger_time6_inferred__2/i__carry_0 ),
        .I4(Q[8]),
        .O(\triggerTime_reg[9]_0 [3]));
  LUT6 #(
    .INIT(64'h8484844221212118)) 
    i__carry_i_6__1
       (.I0(Q[4]),
        .I1(triggerTimeOut[3]),
        .I2(triggerTimeOut[2]),
        .I3(triggerTimeOut[0]),
        .I4(triggerTimeOut[1]),
        .I5(Q[5]),
        .O(\triggerTime_reg[7] [2]));
  LUT5 #(
    .INIT(32'h06909009)) 
    i__carry_i_7
       (.I0(triggerTimeOut[5]),
        .I1(Q[7]),
        .I2(triggerTimeOut[4]),
        .I3(\is_trigger_time6_inferred__2/i__carry ),
        .I4(Q[6]),
        .O(\triggerTime_reg[9]_0 [2]));
  LUT4 #(
    .INIT(16'h4224)) 
    i__carry_i_7__1
       (.I0(Q[2]),
        .I1(triggerTimeOut[0]),
        .I2(triggerTimeOut[1]),
        .I3(Q[3]),
        .O(\triggerTime_reg[7] [1]));
  LUT5 #(
    .INIT(32'h90060990)) 
    i__carry_i_8
       (.I0(triggerTimeOut[3]),
        .I1(Q[5]),
        .I2(triggerTimeOut[2]),
        .I3(triggerTimeOut[1]),
        .I4(Q[4]),
        .O(\triggerTime_reg[9]_0 [1]));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_8__1
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\triggerTime_reg[7] [0]));
  LUT4 #(
    .INIT(16'h6006)) 
    i__carry_i_9
       (.I0(triggerTimeOut[1]),
        .I1(Q[3]),
        .I2(triggerTimeOut[0]),
        .I3(Q[2]),
        .O(\triggerTime_reg[9]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    is_trigger_time1_carry_i_1
       (.I0(triggerTimeOut[7]),
        .I1(Q[9]),
        .O(\triggerTime_reg[9] [3]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    is_trigger_time1_carry_i_2
       (.I0(triggerTimeOut[6]),
        .I1(Q[8]),
        .I2(Q[6]),
        .I3(triggerTimeOut[4]),
        .I4(Q[7]),
        .I5(triggerTimeOut[5]),
        .O(\triggerTime_reg[9] [2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    is_trigger_time1_carry_i_3
       (.I0(Q[4]),
        .I1(triggerTimeOut[2]),
        .I2(Q[5]),
        .I3(triggerTimeOut[3]),
        .I4(triggerTimeOut[1]),
        .I5(Q[3]),
        .O(\triggerTime_reg[9] [1]));
  LUT4 #(
    .INIT(16'h1001)) 
    is_trigger_time1_carry_i_4
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(triggerTimeOut[0]),
        .I3(Q[2]),
        .O(\triggerTime_reg[9] [0]));
  LUT4 #(
    .INIT(16'h44D4)) 
    is_trigger_time5_carry__0_i_1
       (.I0(Q[9]),
        .I1(triggerTimeOut[7]),
        .I2(triggerTimeOut[6]),
        .I3(Q[8]),
        .O(\processQ_reg[9]_6 ));
  LUT4 #(
    .INIT(16'h9009)) 
    is_trigger_time5_carry__0_i_2
       (.I0(triggerTimeOut[6]),
        .I1(Q[8]),
        .I2(triggerTimeOut[7]),
        .I3(Q[9]),
        .O(\triggerTime_reg[8] ));
  LUT4 #(
    .INIT(16'h44D4)) 
    is_trigger_time5_carry_i_1
       (.I0(Q[7]),
        .I1(triggerTimeOut[5]),
        .I2(triggerTimeOut[4]),
        .I3(Q[6]),
        .O(\processQ_reg[7]_2 [3]));
  LUT4 #(
    .INIT(16'h44D4)) 
    is_trigger_time5_carry_i_2
       (.I0(Q[5]),
        .I1(triggerTimeOut[3]),
        .I2(triggerTimeOut[2]),
        .I3(Q[4]),
        .O(\processQ_reg[7]_2 [2]));
  LUT4 #(
    .INIT(16'h44D4)) 
    is_trigger_time5_carry_i_3
       (.I0(Q[3]),
        .I1(triggerTimeOut[1]),
        .I2(triggerTimeOut[0]),
        .I3(Q[2]),
        .O(\processQ_reg[7]_2 [1]));
  LUT2 #(
    .INIT(4'h7)) 
    is_trigger_time5_carry_i_4
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\processQ_reg[7]_2 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    is_trigger_time5_carry_i_5
       (.I0(triggerTimeOut[5]),
        .I1(Q[7]),
        .I2(triggerTimeOut[4]),
        .I3(Q[6]),
        .O(\triggerTime_reg[7]_0 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    is_trigger_time5_carry_i_6
       (.I0(triggerTimeOut[3]),
        .I1(Q[5]),
        .I2(triggerTimeOut[2]),
        .I3(Q[4]),
        .O(\triggerTime_reg[7]_0 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    is_trigger_time5_carry_i_7
       (.I0(triggerTimeOut[0]),
        .I1(Q[2]),
        .I2(triggerTimeOut[1]),
        .I3(Q[3]),
        .O(\triggerTime_reg[7]_0 [1]));
  LUT2 #(
    .INIT(4'h8)) 
    is_trigger_time5_carry_i_8
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\triggerTime_reg[7]_0 [0]));
  LUT6 #(
    .INIT(64'h96969696969696A5)) 
    is_vertical_gridline0__20_carry__0_i_1
       (.I0(\uut3/is_vertical_gridline1 ),
        .I1(is_vertical_gridline0__20_carry),
        .I2(is_vertical_gridline0__20_carry__0),
        .I3(O[1]),
        .I4(O[0]),
        .I5(O[2]),
        .O(\processQ_reg[6]_1 [1]));
  LUT5 #(
    .INIT(32'hAAA95556)) 
    is_vertical_gridline0__20_carry__0_i_2
       (.I0(is_vertical_gridline0__20_carry__0_i_4_n_0),
        .I1(O[0]),
        .I2(is_vertical_gridline0__20_carry),
        .I3(O[1]),
        .I4(O[2]),
        .O(\processQ_reg[6]_1 [0]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'hAAAA9995)) 
    is_vertical_gridline0__20_carry__0_i_3
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[5]),
        .O(\uut3/is_vertical_gridline1 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h56AA)) 
    is_vertical_gridline0__20_carry__0_i_4
       (.I0(Q[5]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[4]),
        .O(is_vertical_gridline0__20_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h1E)) 
    is_vertical_gridline0__20_carry_i_1
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[4]),
        .O(\processQ_reg[3]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    is_vertical_gridline0__20_carry_i_2
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\processQ_reg[2]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    is_vertical_gridline0__20_carry_i_3
       (.I0(Q[2]),
        .O(\processQ_reg[2]_0 [0]));
  LUT6 #(
    .INIT(64'hA9A9A956565656A9)) 
    is_vertical_gridline0__20_carry_i_4
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(is_vertical_gridline0__20_carry),
        .I4(O[0]),
        .I5(O[1]),
        .O(\processQ_reg[4]_0 [3]));
  LUT4 #(
    .INIT(16'h6996)) 
    is_vertical_gridline0__20_carry_i_5
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(O[0]),
        .I3(is_vertical_gridline0__20_carry),
        .O(\processQ_reg[4]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    is_vertical_gridline0__20_carry_i_6
       (.I0(Q[2]),
        .I1(is_vertical_gridline0__20_carry),
        .O(\processQ_reg[4]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    is_vertical_gridline0__20_carry_i_7
       (.I0(Q[1]),
        .O(\processQ_reg[4]_0 [0]));
  LUT4 #(
    .INIT(16'hA857)) 
    is_vertical_gridline0_carry__0_i_1
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[5]),
        .O(DI[2]));
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    is_vertical_gridline0_carry__0_i_2
       (.I0(Q[8]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(Q[5]),
        .I4(is_vertical_gridline0_carry__0_i_8_n_0),
        .O(DI[1]));
  LUT2 #(
    .INIT(4'h9)) 
    is_vertical_gridline0_carry__0_i_3
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(DI[0]));
  LUT5 #(
    .INIT(32'hAAAA9995)) 
    is_vertical_gridline0_carry__0_i_4
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[5]),
        .O(\processQ_reg[6]_0 [3]));
  LUT6 #(
    .INIT(64'h00FFFF00FF0001FE)) 
    is_vertical_gridline0_carry__0_i_5
       (.I0(Q[8]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(Q[9]),
        .I4(is_vertical_gridline0_carry__0_i_8_n_0),
        .I5(Q[5]),
        .O(\processQ_reg[6]_0 [2]));
  LUT6 #(
    .INIT(64'hF01EF01EF01E1EE1)) 
    is_vertical_gridline0_carry__0_i_6
       (.I0(is_vertical_gridline0_carry__0_i_9_n_0),
        .I1(Q[7]),
        .I2(Q[8]),
        .I3(Q[4]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\processQ_reg[6]_0 [1]));
  LUT6 #(
    .INIT(64'h01FEFE01FE0103FC)) 
    is_vertical_gridline0_carry__0_i_7
       (.I0(Q[4]),
        .I1(Q[6]),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\processQ_reg[6]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    is_vertical_gridline0_carry__0_i_8
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .O(is_vertical_gridline0_carry__0_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'hE)) 
    is_vertical_gridline0_carry__0_i_9
       (.I0(Q[5]),
        .I1(Q[6]),
        .O(is_vertical_gridline0_carry__0_i_9_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    is_vertical_gridline0_carry__1_i_1
       (.I0(Q[9]),
        .I1(is_vertical_gridline0_carry__0_i_8_n_0),
        .I2(Q[5]),
        .I3(Q[6]),
        .I4(Q[7]),
        .I5(Q[8]),
        .O(\processQ_reg[9]_0 [2]));
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    is_vertical_gridline0_carry__1_i_2
       (.I0(Q[8]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(Q[5]),
        .I4(is_vertical_gridline0_carry__0_i_8_n_0),
        .O(\processQ_reg[9]_0 [1]));
  LUT6 #(
    .INIT(64'hFFFFFFE00000001F)) 
    is_vertical_gridline0_carry__1_i_3
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[6]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(\processQ_reg[9]_0 [0]));
  LUT5 #(
    .INIT(32'hAAAA9995)) 
    is_vertical_gridline0_carry_i_1
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[5]),
        .O(\processQ_reg[6]_2 [1]));
  LUT4 #(
    .INIT(16'hA857)) 
    is_vertical_gridline0_carry_i_2
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[5]),
        .O(\processQ_reg[6]_2 [0]));
  LUT5 #(
    .INIT(32'hFA0515EA)) 
    is_vertical_gridline0_carry_i_3
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[6]),
        .I4(Q[2]),
        .O(S[3]));
  LUT5 #(
    .INIT(32'h57A8A857)) 
    is_vertical_gridline0_carry_i_4
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[5]),
        .I4(Q[1]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'hA956)) 
    is_vertical_gridline0_carry_i_5
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h9)) 
    is_vertical_gridline0_carry_i_6
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \processQ[0]_i_1__0 
       (.I0(Q[0]),
        .O(\processQ[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \processQ[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \processQ[2]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \processQ[3]_i_1__0 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \processQ[4]_i_1__1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\processQ[4]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \processQ[5]_i_1__0 
       (.I0(Q[5]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(plusOp[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \processQ[6]_i_1__0 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\processQ_reg[1]_1 ),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'hAAAA6AAA)) 
    \processQ[7]_i_1__1 
       (.I0(Q[7]),
        .I1(Q[4]),
        .I2(Q[6]),
        .I3(Q[5]),
        .I4(\processQ[8]_i_2_n_0 ),
        .O(\processQ[7]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h9AAAAAAAAAAAAAAA)) 
    \processQ[8]_i_1__1 
       (.I0(Q[8]),
        .I1(\processQ[8]_i_2_n_0 ),
        .I2(Q[5]),
        .I3(Q[6]),
        .I4(Q[4]),
        .I5(Q[7]),
        .O(plusOp[8]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \processQ[8]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(\processQ[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \processQ[9]_i_1__0 
       (.I0(\processQ_reg[5]_0 ),
        .I1(s00_axi_aresetn),
        .O(\processQ[9]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h777777777777777F)) 
    \processQ[9]_i_2__1 
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(\processQ[9]_i_5_n_0 ),
        .I3(Q[7]),
        .I4(Q[6]),
        .I5(Q[5]),
        .O(processQ0));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hAA6A)) 
    \processQ[9]_i_3__1 
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(Q[7]),
        .I3(\processQ[9]_i_6_n_0 ),
        .O(plusOp[9]));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \processQ[9]_i_4__0 
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(\processQ[9]_i_5_n_0 ),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\processQ_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \processQ[9]_i_5 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\processQ[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \processQ[9]_i_6 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(\processQ_reg[1]_1 ),
        .I3(Q[5]),
        .I4(Q[6]),
        .I5(Q[4]),
        .O(\processQ[9]_i_6_n_0 ));
  FDRE \processQ_reg[0] 
       (.C(CLK),
        .CE(processQ0),
        .D(\processQ[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .R(\processQ[9]_i_1__0_n_0 ));
  FDRE \processQ_reg[1] 
       (.C(CLK),
        .CE(processQ0),
        .D(plusOp[1]),
        .Q(Q[1]),
        .R(\processQ[9]_i_1__0_n_0 ));
  FDRE \processQ_reg[2] 
       (.C(CLK),
        .CE(processQ0),
        .D(plusOp[2]),
        .Q(Q[2]),
        .R(\processQ[9]_i_1__0_n_0 ));
  FDRE \processQ_reg[3] 
       (.C(CLK),
        .CE(processQ0),
        .D(plusOp[3]),
        .Q(Q[3]),
        .R(\processQ[9]_i_1__0_n_0 ));
  FDRE \processQ_reg[4] 
       (.C(CLK),
        .CE(processQ0),
        .D(\processQ[4]_i_1__1_n_0 ),
        .Q(Q[4]),
        .R(\processQ[9]_i_1__0_n_0 ));
  FDRE \processQ_reg[5] 
       (.C(CLK),
        .CE(processQ0),
        .D(plusOp[5]),
        .Q(Q[5]),
        .R(\processQ[9]_i_1__0_n_0 ));
  FDRE \processQ_reg[6] 
       (.C(CLK),
        .CE(processQ0),
        .D(plusOp[6]),
        .Q(Q[6]),
        .R(\processQ[9]_i_1__0_n_0 ));
  FDRE \processQ_reg[7] 
       (.C(CLK),
        .CE(processQ0),
        .D(\processQ[7]_i_1__1_n_0 ),
        .Q(Q[7]),
        .R(\processQ[9]_i_1__0_n_0 ));
  FDRE \processQ_reg[8] 
       (.C(CLK),
        .CE(processQ0),
        .D(plusOp[8]),
        .Q(Q[8]),
        .R(\processQ[9]_i_1__0_n_0 ));
  FDRE \processQ_reg[9] 
       (.C(CLK),
        .CE(processQ0),
        .D(plusOp[9]),
        .Q(Q[9]),
        .R(\processQ[9]_i_1__0_n_0 ));
endmodule

(* ORIG_REF_NAME = "counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter__parameterized1
   (\processQ_reg[0]_0 ,
    \processQ_reg[9]_0 ,
    switch_1_sp_1,
    Q,
    \processQ_reg[1]_0 ,
    S,
    \processQ_reg[9]_1 ,
    is_horizontal_gridline1,
    \processQ_reg[5]_0 ,
    \processQ_reg[4]_0 ,
    \triggerVolt_reg[9] ,
    \processQ_reg[3]_0 ,
    \processQ_reg[3]_1 ,
    \processQ_reg[8]_0 ,
    \processQ_reg[7]_0 ,
    DI,
    \processQ_reg[2]_0 ,
    \processQ_reg[3]_2 ,
    \processQ_reg[5]_1 ,
    \processQ_reg[8]_1 ,
    \processQ_reg[9]_2 ,
    switch_0_sp_1,
    \processQ_reg[5]_2 ,
    \processQ_reg[0]_1 ,
    \processQ_reg[1]_1 ,
    \processQ_reg[7]_1 ,
    \processQ_reg[7]_2 ,
    is_horizontal_gridline0_carry__0,
    \processQ_reg[0]_2 ,
    \processQ_reg[7]_3 ,
    \processQ_reg[2]_1 ,
    \triggerVolt_reg[9]_0 ,
    \processQ_reg[9]_3 ,
    \processQ_reg[9]_4 ,
    \dc_bias[3]_i_38 ,
    \processQ_reg[4]_1 ,
    \triggerVolt_reg[7] ,
    \processQ_reg[8]_2 ,
    \triggerVolt_reg[7]_0 ,
    \triggerVolt_reg[8] ,
    \processQ_reg[9]_5 ,
    is_horizontal_gridline0_carry__0_0,
    \processQ_reg[9]_6 ,
    \processQ_reg[9]_7 ,
    \processQ_reg[9]_8 ,
    \processQ_reg[1]_2 ,
    \processQ_reg[9]_9 ,
    \processQ_reg[8]_3 ,
    \encoded_reg[9] ,
    \encoded_reg[9]_0 ,
    \encoded_reg[9]_1 ,
    \processQ_reg[0]_3 ,
    s00_axi_aresetn,
    O,
    triggerVoltOut,
    is_horizontal_gridline0__23_carry,
    \is_hash_mark2_inferred__2/i___12_carry__1 ,
    \is_hash_mark2_inferred__2/i___12_carry__0 ,
    is_horizontal_gridline0__29_carry,
    \dc_bias[3]_i_4_0 ,
    \dc_bias[3]_i_7__0_0 ,
    \dc_bias_reg[3]_i_15_0 ,
    DOADO,
    \dc_bias_reg[3]_i_9_0 ,
    \dc_bias_reg[3]_i_9_1 ,
    switch,
    \dc_bias[3]_i_2 ,
    \dc_bias[3]_i_6 ,
    CO,
    \dc_bias[3]_i_30 ,
    \dc_bias[3]_i_30_0 ,
    \dc_bias[3]_i_12_0 ,
    \dc_bias[3]_i_12_1 ,
    \dc_bias[3]_i_28 ,
    \dc_bias[3]_i_28_0 ,
    \is_trigger_volt6_inferred__2/i__carry ,
    \is_trigger_volt6_inferred__2/i__carry_0 ,
    \dc_bias_reg[3]_i_62_0 ,
    \dc_bias_reg[3]_i_31_0 ,
    \dc_bias_reg[3]_i_66_0 ,
    \dc_bias[3]_i_8__0 ,
    \dc_bias[3]_i_8__0_0 ,
    is_horizontal_gridline0__23_carry_0,
    CLK);
  output \processQ_reg[0]_0 ;
  output \processQ_reg[9]_0 ;
  output switch_1_sp_1;
  output [9:0]Q;
  output \processQ_reg[1]_0 ;
  output [3:0]S;
  output [2:0]\processQ_reg[9]_1 ;
  output [4:0]is_horizontal_gridline1;
  output [2:0]\processQ_reg[5]_0 ;
  output [2:0]\processQ_reg[4]_0 ;
  output [3:0]\triggerVolt_reg[9] ;
  output [3:0]\processQ_reg[3]_0 ;
  output [3:0]\processQ_reg[3]_1 ;
  output [0:0]\processQ_reg[8]_0 ;
  output [3:0]\processQ_reg[7]_0 ;
  output [2:0]DI;
  output [1:0]\processQ_reg[2]_0 ;
  output [0:0]\processQ_reg[3]_2 ;
  output \processQ_reg[5]_1 ;
  output \processQ_reg[8]_1 ;
  output \processQ_reg[9]_2 ;
  output switch_0_sp_1;
  output \processQ_reg[5]_2 ;
  output \processQ_reg[0]_1 ;
  output \processQ_reg[1]_1 ;
  output [3:0]\processQ_reg[7]_1 ;
  output \processQ_reg[7]_2 ;
  output [0:0]is_horizontal_gridline0_carry__0;
  output \processQ_reg[0]_2 ;
  output [3:0]\processQ_reg[7]_3 ;
  output \processQ_reg[2]_1 ;
  output [3:0]\triggerVolt_reg[9]_0 ;
  output [3:0]\processQ_reg[9]_3 ;
  output [0:0]\processQ_reg[9]_4 ;
  output \dc_bias[3]_i_38 ;
  output [0:0]\processQ_reg[4]_1 ;
  output [3:0]\triggerVolt_reg[7] ;
  output [0:0]\processQ_reg[8]_2 ;
  output [3:0]\triggerVolt_reg[7]_0 ;
  output [0:0]\triggerVolt_reg[8] ;
  output [0:0]\processQ_reg[9]_5 ;
  output [2:0]is_horizontal_gridline0_carry__0_0;
  output [0:0]\processQ_reg[9]_6 ;
  output [0:0]\processQ_reg[9]_7 ;
  output [0:0]\processQ_reg[9]_8 ;
  output [0:0]\processQ_reg[1]_2 ;
  output [0:0]\processQ_reg[9]_9 ;
  output [1:0]\processQ_reg[8]_3 ;
  input \encoded_reg[9] ;
  input \encoded_reg[9]_0 ;
  input \encoded_reg[9]_1 ;
  input \processQ_reg[0]_3 ;
  input s00_axi_aresetn;
  input [2:0]O;
  input [7:0]triggerVoltOut;
  input [2:0]is_horizontal_gridline0__23_carry;
  input [0:0]\is_hash_mark2_inferred__2/i___12_carry__1 ;
  input [3:0]\is_hash_mark2_inferred__2/i___12_carry__0 ;
  input [0:0]is_horizontal_gridline0__29_carry;
  input [0:0]\dc_bias[3]_i_4_0 ;
  input [0:0]\dc_bias[3]_i_7__0_0 ;
  input \dc_bias_reg[3]_i_15_0 ;
  input [3:0]DOADO;
  input \dc_bias_reg[3]_i_9_0 ;
  input [3:0]\dc_bias_reg[3]_i_9_1 ;
  input [1:0]switch;
  input \dc_bias[3]_i_2 ;
  input \dc_bias[3]_i_6 ;
  input [0:0]CO;
  input [0:0]\dc_bias[3]_i_30 ;
  input [1:0]\dc_bias[3]_i_30_0 ;
  input [0:0]\dc_bias[3]_i_12_0 ;
  input [0:0]\dc_bias[3]_i_12_1 ;
  input [0:0]\dc_bias[3]_i_28 ;
  input [0:0]\dc_bias[3]_i_28_0 ;
  input \is_trigger_volt6_inferred__2/i__carry ;
  input \is_trigger_volt6_inferred__2/i__carry_0 ;
  input \dc_bias_reg[3]_i_62_0 ;
  input \dc_bias_reg[3]_i_31_0 ;
  input \dc_bias_reg[3]_i_66_0 ;
  input [2:0]\dc_bias[3]_i_8__0 ;
  input \dc_bias[3]_i_8__0_0 ;
  input [0:0]is_horizontal_gridline0__23_carry_0;
  input CLK;

  wire CLK;
  wire [0:0]CO;
  wire [2:0]DI;
  wire [3:0]DOADO;
  wire [2:0]O;
  wire [9:0]Q;
  wire [3:0]S;
  wire ch1;
  wire ch2;
  wire \dc_bias[3]_i_100_n_0 ;
  wire \dc_bias[3]_i_102_n_0 ;
  wire \dc_bias[3]_i_103_n_0 ;
  wire \dc_bias[3]_i_106_n_0 ;
  wire \dc_bias[3]_i_107_n_0 ;
  wire \dc_bias[3]_i_108_n_0 ;
  wire \dc_bias[3]_i_109_n_0 ;
  wire \dc_bias[3]_i_110_n_0 ;
  wire \dc_bias[3]_i_111_n_0 ;
  wire \dc_bias[3]_i_112_n_0 ;
  wire \dc_bias[3]_i_113_n_0 ;
  wire \dc_bias[3]_i_116_n_0 ;
  wire \dc_bias[3]_i_117_n_0 ;
  wire \dc_bias[3]_i_118_n_0 ;
  wire \dc_bias[3]_i_119_n_0 ;
  wire \dc_bias[3]_i_11__0_n_0 ;
  wire \dc_bias[3]_i_120_n_0 ;
  wire \dc_bias[3]_i_121_n_0 ;
  wire \dc_bias[3]_i_122_n_0 ;
  wire \dc_bias[3]_i_123_n_0 ;
  wire \dc_bias[3]_i_124_n_0 ;
  wire \dc_bias[3]_i_125_n_0 ;
  wire \dc_bias[3]_i_126_n_0 ;
  wire \dc_bias[3]_i_127_n_0 ;
  wire \dc_bias[3]_i_128_n_0 ;
  wire \dc_bias[3]_i_129_n_0 ;
  wire [0:0]\dc_bias[3]_i_12_0 ;
  wire [0:0]\dc_bias[3]_i_12_1 ;
  wire \dc_bias[3]_i_12__0_n_0 ;
  wire \dc_bias[3]_i_130_n_0 ;
  wire \dc_bias[3]_i_131_n_0 ;
  wire \dc_bias[3]_i_13__0_n_0 ;
  wire \dc_bias[3]_i_165_n_0 ;
  wire \dc_bias[3]_i_166_n_0 ;
  wire \dc_bias[3]_i_167_n_0 ;
  wire \dc_bias[3]_i_168_n_0 ;
  wire \dc_bias[3]_i_169_n_0 ;
  wire \dc_bias[3]_i_170_n_0 ;
  wire \dc_bias[3]_i_171_n_0 ;
  wire \dc_bias[3]_i_172_n_0 ;
  wire \dc_bias[3]_i_173_n_0 ;
  wire \dc_bias[3]_i_174_n_0 ;
  wire \dc_bias[3]_i_175_n_0 ;
  wire \dc_bias[3]_i_176_n_0 ;
  wire \dc_bias[3]_i_177_n_0 ;
  wire \dc_bias[3]_i_178_n_0 ;
  wire \dc_bias[3]_i_179_n_0 ;
  wire \dc_bias[3]_i_181_n_0 ;
  wire \dc_bias[3]_i_182_n_0 ;
  wire \dc_bias[3]_i_183_n_0 ;
  wire \dc_bias[3]_i_184_n_0 ;
  wire \dc_bias[3]_i_185_n_0 ;
  wire \dc_bias[3]_i_186_n_0 ;
  wire \dc_bias[3]_i_187_n_0 ;
  wire \dc_bias[3]_i_188_n_0 ;
  wire \dc_bias[3]_i_190_n_0 ;
  wire \dc_bias[3]_i_191_n_0 ;
  wire \dc_bias[3]_i_192_n_0 ;
  wire \dc_bias[3]_i_193_n_0 ;
  wire \dc_bias[3]_i_194_n_0 ;
  wire \dc_bias[3]_i_195_n_0 ;
  wire \dc_bias[3]_i_196_n_0 ;
  wire \dc_bias[3]_i_197_n_0 ;
  wire \dc_bias[3]_i_2 ;
  wire \dc_bias[3]_i_21__0_n_0 ;
  wire \dc_bias[3]_i_220_n_0 ;
  wire \dc_bias[3]_i_221_n_0 ;
  wire \dc_bias[3]_i_222_n_0 ;
  wire \dc_bias[3]_i_223_n_0 ;
  wire \dc_bias[3]_i_224_n_0 ;
  wire \dc_bias[3]_i_225_n_0 ;
  wire \dc_bias[3]_i_27_n_0 ;
  wire [0:0]\dc_bias[3]_i_28 ;
  wire [0:0]\dc_bias[3]_i_28_0 ;
  wire \dc_bias[3]_i_29_n_0 ;
  wire [0:0]\dc_bias[3]_i_30 ;
  wire [1:0]\dc_bias[3]_i_30_0 ;
  wire \dc_bias[3]_i_34_n_0 ;
  wire \dc_bias[3]_i_35_n_0 ;
  wire \dc_bias[3]_i_36_n_0 ;
  wire \dc_bias[3]_i_38 ;
  wire \dc_bias[3]_i_42_n_0 ;
  wire \dc_bias[3]_i_43_n_0 ;
  wire \dc_bias[3]_i_44_n_0 ;
  wire [0:0]\dc_bias[3]_i_4_0 ;
  wire \dc_bias[3]_i_4_n_0 ;
  wire \dc_bias[3]_i_6 ;
  wire \dc_bias[3]_i_63_n_0 ;
  wire \dc_bias[3]_i_64_n_0 ;
  wire \dc_bias[3]_i_67_n_0 ;
  wire \dc_bias[3]_i_71_n_0 ;
  wire \dc_bias[3]_i_72_n_0 ;
  wire \dc_bias[3]_i_73_n_0 ;
  wire \dc_bias[3]_i_74_n_0 ;
  wire \dc_bias[3]_i_75_n_0 ;
  wire [0:0]\dc_bias[3]_i_7__0_0 ;
  wire [2:0]\dc_bias[3]_i_8__0 ;
  wire \dc_bias[3]_i_8__0_0 ;
  wire \dc_bias_reg[3]_i_101_n_0 ;
  wire \dc_bias_reg[3]_i_101_n_1 ;
  wire \dc_bias_reg[3]_i_101_n_2 ;
  wire \dc_bias_reg[3]_i_101_n_3 ;
  wire \dc_bias_reg[3]_i_105_n_1 ;
  wire \dc_bias_reg[3]_i_105_n_2 ;
  wire \dc_bias_reg[3]_i_105_n_3 ;
  wire \dc_bias_reg[3]_i_115_n_0 ;
  wire \dc_bias_reg[3]_i_115_n_1 ;
  wire \dc_bias_reg[3]_i_115_n_2 ;
  wire \dc_bias_reg[3]_i_115_n_3 ;
  wire \dc_bias_reg[3]_i_15_0 ;
  wire \dc_bias_reg[3]_i_15_n_1 ;
  wire \dc_bias_reg[3]_i_15_n_2 ;
  wire \dc_bias_reg[3]_i_15_n_3 ;
  wire \dc_bias_reg[3]_i_180_n_0 ;
  wire \dc_bias_reg[3]_i_180_n_1 ;
  wire \dc_bias_reg[3]_i_180_n_2 ;
  wire \dc_bias_reg[3]_i_180_n_3 ;
  wire \dc_bias_reg[3]_i_31_0 ;
  wire \dc_bias_reg[3]_i_62_0 ;
  wire \dc_bias_reg[3]_i_62_n_0 ;
  wire \dc_bias_reg[3]_i_62_n_1 ;
  wire \dc_bias_reg[3]_i_62_n_2 ;
  wire \dc_bias_reg[3]_i_62_n_3 ;
  wire \dc_bias_reg[3]_i_66_0 ;
  wire \dc_bias_reg[3]_i_66_n_1 ;
  wire \dc_bias_reg[3]_i_66_n_2 ;
  wire \dc_bias_reg[3]_i_66_n_3 ;
  wire \dc_bias_reg[3]_i_99_n_0 ;
  wire \dc_bias_reg[3]_i_99_n_1 ;
  wire \dc_bias_reg[3]_i_99_n_2 ;
  wire \dc_bias_reg[3]_i_99_n_3 ;
  wire \dc_bias_reg[3]_i_9_0 ;
  wire [3:0]\dc_bias_reg[3]_i_9_1 ;
  wire \dc_bias_reg[3]_i_9_n_1 ;
  wire \dc_bias_reg[3]_i_9_n_2 ;
  wire \dc_bias_reg[3]_i_9_n_3 ;
  wire \encoded[9]_i_4_n_0 ;
  wire \encoded_reg[9] ;
  wire \encoded_reg[9]_0 ;
  wire \encoded_reg[9]_1 ;
  wire [3:0]\is_hash_mark2_inferred__2/i___12_carry__0 ;
  wire [0:0]\is_hash_mark2_inferred__2/i___12_carry__1 ;
  wire [2:0]is_horizontal_gridline0__23_carry;
  wire [0:0]is_horizontal_gridline0__23_carry_0;
  wire [0:0]is_horizontal_gridline0__29_carry;
  wire [0:0]is_horizontal_gridline0_carry__0;
  wire [2:0]is_horizontal_gridline0_carry__0_0;
  wire is_horizontal_gridline0_carry__0_i_9_n_0;
  wire [4:0]is_horizontal_gridline1;
  wire \is_trigger_volt6_inferred__2/i__carry ;
  wire \is_trigger_volt6_inferred__2/i__carry_0 ;
  wire [9:1]plusOp__0;
  wire processQ0;
  wire \processQ[0]_i_1__1_n_0 ;
  wire \processQ[9]_i_1__1_n_0 ;
  wire \processQ[9]_i_4__1_n_0 ;
  wire \processQ[9]_i_5__0_n_0 ;
  wire \processQ[9]_i_7_n_0 ;
  wire \processQ_reg[0]_0 ;
  wire \processQ_reg[0]_1 ;
  wire \processQ_reg[0]_2 ;
  wire \processQ_reg[0]_3 ;
  wire \processQ_reg[1]_0 ;
  wire \processQ_reg[1]_1 ;
  wire [0:0]\processQ_reg[1]_2 ;
  wire [1:0]\processQ_reg[2]_0 ;
  wire \processQ_reg[2]_1 ;
  wire [3:0]\processQ_reg[3]_0 ;
  wire [3:0]\processQ_reg[3]_1 ;
  wire [0:0]\processQ_reg[3]_2 ;
  wire [2:0]\processQ_reg[4]_0 ;
  wire [0:0]\processQ_reg[4]_1 ;
  wire [2:0]\processQ_reg[5]_0 ;
  wire \processQ_reg[5]_1 ;
  wire \processQ_reg[5]_2 ;
  wire [3:0]\processQ_reg[7]_0 ;
  wire [3:0]\processQ_reg[7]_1 ;
  wire \processQ_reg[7]_2 ;
  wire [3:0]\processQ_reg[7]_3 ;
  wire [0:0]\processQ_reg[8]_0 ;
  wire \processQ_reg[8]_1 ;
  wire [0:0]\processQ_reg[8]_2 ;
  wire [1:0]\processQ_reg[8]_3 ;
  wire \processQ_reg[9]_0 ;
  wire [2:0]\processQ_reg[9]_1 ;
  wire \processQ_reg[9]_2 ;
  wire [3:0]\processQ_reg[9]_3 ;
  wire [0:0]\processQ_reg[9]_4 ;
  wire [0:0]\processQ_reg[9]_5 ;
  wire [0:0]\processQ_reg[9]_6 ;
  wire [0:0]\processQ_reg[9]_7 ;
  wire [0:0]\processQ_reg[9]_8 ;
  wire [0:0]\processQ_reg[9]_9 ;
  wire s00_axi_aresetn;
  wire [1:0]switch;
  wire switch_0_sn_1;
  wire switch_1_sn_1;
  wire [7:0]triggerVoltOut;
  wire [3:0]\triggerVolt_reg[7] ;
  wire [3:0]\triggerVolt_reg[7]_0 ;
  wire [0:0]\triggerVolt_reg[8] ;
  wire [3:0]\triggerVolt_reg[9] ;
  wire [3:0]\triggerVolt_reg[9]_0 ;
  wire \uut3/is_trigger_volt524_in ;
  wire \uut3/is_trigger_volt6 ;
  wire [3:0]\NLW_dc_bias_reg[3]_i_101_O_UNCONNECTED ;
  wire [3:1]\NLW_dc_bias_reg[3]_i_104_CO_UNCONNECTED ;
  wire [3:0]\NLW_dc_bias_reg[3]_i_104_O_UNCONNECTED ;
  wire [3:0]\NLW_dc_bias_reg[3]_i_105_O_UNCONNECTED ;
  wire [3:0]\NLW_dc_bias_reg[3]_i_115_O_UNCONNECTED ;
  wire [3:0]\NLW_dc_bias_reg[3]_i_15_O_UNCONNECTED ;
  wire [3:0]\NLW_dc_bias_reg[3]_i_180_O_UNCONNECTED ;
  wire [3:1]\NLW_dc_bias_reg[3]_i_31_CO_UNCONNECTED ;
  wire [3:0]\NLW_dc_bias_reg[3]_i_31_O_UNCONNECTED ;
  wire [3:1]\NLW_dc_bias_reg[3]_i_59_CO_UNCONNECTED ;
  wire [3:0]\NLW_dc_bias_reg[3]_i_59_O_UNCONNECTED ;
  wire [3:1]\NLW_dc_bias_reg[3]_i_60_CO_UNCONNECTED ;
  wire [3:0]\NLW_dc_bias_reg[3]_i_60_O_UNCONNECTED ;
  wire [3:0]\NLW_dc_bias_reg[3]_i_62_O_UNCONNECTED ;
  wire [3:1]\NLW_dc_bias_reg[3]_i_65_CO_UNCONNECTED ;
  wire [3:0]\NLW_dc_bias_reg[3]_i_65_O_UNCONNECTED ;
  wire [3:0]\NLW_dc_bias_reg[3]_i_66_O_UNCONNECTED ;
  wire [3:0]\NLW_dc_bias_reg[3]_i_9_O_UNCONNECTED ;
  wire [3:0]\NLW_dc_bias_reg[3]_i_99_O_UNCONNECTED ;

  assign switch_0_sp_1 = switch_0_sn_1;
  assign switch_1_sp_1 = switch_1_sn_1;
  LUT6 #(
    .INIT(64'h8488424421221811)) 
    \dc_bias[3]_i_100 
       (.I0(Q[8]),
        .I1(triggerVoltOut[7]),
        .I2(triggerVoltOut[0]),
        .I3(\is_trigger_volt6_inferred__2/i__carry_0 ),
        .I4(triggerVoltOut[6]),
        .I5(Q[9]),
        .O(\dc_bias[3]_i_100_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \dc_bias[3]_i_102 
       (.I0(Q[9]),
        .I1(triggerVoltOut[7]),
        .I2(triggerVoltOut[6]),
        .I3(Q[8]),
        .O(\dc_bias[3]_i_102_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \dc_bias[3]_i_103 
       (.I0(triggerVoltOut[6]),
        .I1(Q[8]),
        .I2(triggerVoltOut[7]),
        .I3(Q[9]),
        .O(\dc_bias[3]_i_103_n_0 ));
  LUT5 #(
    .INIT(32'h15403D54)) 
    \dc_bias[3]_i_106 
       (.I0(Q[7]),
        .I1(\dc_bias_reg[3]_i_62_0 ),
        .I2(triggerVoltOut[4]),
        .I3(triggerVoltOut[5]),
        .I4(Q[6]),
        .O(\dc_bias[3]_i_106_n_0 ));
  LUT6 #(
    .INIT(64'h155540003FD55540)) 
    \dc_bias[3]_i_107 
       (.I0(Q[5]),
        .I1(triggerVoltOut[1]),
        .I2(triggerVoltOut[0]),
        .I3(triggerVoltOut[2]),
        .I4(triggerVoltOut[3]),
        .I5(Q[4]),
        .O(\dc_bias[3]_i_107_n_0 ));
  LUT4 #(
    .INIT(16'h114D)) 
    \dc_bias[3]_i_108 
       (.I0(Q[3]),
        .I1(triggerVoltOut[1]),
        .I2(Q[2]),
        .I3(triggerVoltOut[0]),
        .O(\dc_bias[3]_i_108_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \dc_bias[3]_i_109 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\dc_bias[3]_i_109_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \dc_bias[3]_i_11 
       (.I0(\processQ_reg[9]_2 ),
        .I1(switch_0_sn_1),
        .O(\processQ_reg[9]_0 ));
  LUT5 #(
    .INIT(32'h09906009)) 
    \dc_bias[3]_i_110 
       (.I0(triggerVoltOut[5]),
        .I1(Q[7]),
        .I2(triggerVoltOut[4]),
        .I3(\dc_bias_reg[3]_i_62_0 ),
        .I4(Q[6]),
        .O(\dc_bias[3]_i_110_n_0 ));
  LUT6 #(
    .INIT(64'h0990909060090909)) 
    \dc_bias[3]_i_111 
       (.I0(triggerVoltOut[3]),
        .I1(Q[5]),
        .I2(triggerVoltOut[2]),
        .I3(triggerVoltOut[1]),
        .I4(triggerVoltOut[0]),
        .I5(Q[4]),
        .O(\dc_bias[3]_i_111_n_0 ));
  LUT4 #(
    .INIT(16'h2442)) 
    \dc_bias[3]_i_112 
       (.I0(Q[2]),
        .I1(triggerVoltOut[0]),
        .I2(triggerVoltOut[1]),
        .I3(Q[3]),
        .O(\dc_bias[3]_i_112_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dc_bias[3]_i_113 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\dc_bias[3]_i_113_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \dc_bias[3]_i_116 
       (.I0(Q[9]),
        .I1(triggerVoltOut[7]),
        .I2(triggerVoltOut[6]),
        .I3(Q[8]),
        .O(\dc_bias[3]_i_116_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \dc_bias[3]_i_117 
       (.I0(triggerVoltOut[6]),
        .I1(Q[8]),
        .I2(triggerVoltOut[7]),
        .I3(Q[9]),
        .O(\dc_bias[3]_i_117_n_0 ));
  LUT5 #(
    .INIT(32'h8AE308A2)) 
    \dc_bias[3]_i_118 
       (.I0(Q[7]),
        .I1(\dc_bias_reg[3]_i_66_0 ),
        .I2(triggerVoltOut[4]),
        .I3(triggerVoltOut[5]),
        .I4(Q[6]),
        .O(\dc_bias[3]_i_118_n_0 ));
  LUT4 #(
    .INIT(16'hB288)) 
    \dc_bias[3]_i_119 
       (.I0(Q[3]),
        .I1(triggerVoltOut[1]),
        .I2(Q[2]),
        .I3(triggerVoltOut[0]),
        .O(\dc_bias[3]_i_119_n_0 ));
  LUT5 #(
    .INIT(32'h0007FFF8)) 
    \dc_bias[3]_i_11__0 
       (.I0(\dc_bias[3]_i_67_n_0 ),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(Q[8]),
        .I4(Q[9]),
        .O(\dc_bias[3]_i_11__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000E0000)) 
    \dc_bias[3]_i_12 
       (.I0(\dc_bias[3]_i_27_n_0 ),
        .I1(\dc_bias[3]_i_6 ),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(Q[4]),
        .I5(\dc_bias[3]_i_29_n_0 ),
        .O(\processQ_reg[9]_2 ));
  LUT6 #(
    .INIT(64'h8488424421221811)) 
    \dc_bias[3]_i_120 
       (.I0(Q[8]),
        .I1(triggerVoltOut[7]),
        .I2(triggerVoltOut[0]),
        .I3(\is_trigger_volt6_inferred__2/i__carry_0 ),
        .I4(triggerVoltOut[6]),
        .I5(Q[9]),
        .O(\dc_bias[3]_i_120_n_0 ));
  LUT5 #(
    .INIT(32'h06909009)) 
    \dc_bias[3]_i_121 
       (.I0(triggerVoltOut[5]),
        .I1(Q[7]),
        .I2(triggerVoltOut[4]),
        .I3(\dc_bias_reg[3]_i_66_0 ),
        .I4(Q[6]),
        .O(\dc_bias[3]_i_121_n_0 ));
  LUT6 #(
    .INIT(64'h8484844221212118)) 
    \dc_bias[3]_i_122 
       (.I0(Q[4]),
        .I1(triggerVoltOut[3]),
        .I2(triggerVoltOut[2]),
        .I3(triggerVoltOut[0]),
        .I4(triggerVoltOut[1]),
        .I5(Q[5]),
        .O(\dc_bias[3]_i_122_n_0 ));
  LUT4 #(
    .INIT(16'h4224)) 
    \dc_bias[3]_i_123 
       (.I0(Q[2]),
        .I1(triggerVoltOut[0]),
        .I2(triggerVoltOut[1]),
        .I3(Q[3]),
        .O(\dc_bias[3]_i_123_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h56AA)) 
    \dc_bias[3]_i_124 
       (.I0(Q[5]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[4]),
        .O(\dc_bias[3]_i_124_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h1E)) 
    \dc_bias[3]_i_125 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[4]),
        .O(\dc_bias[3]_i_125_n_0 ));
  LUT6 #(
    .INIT(64'h659A9A1818E7E7A6)) 
    \dc_bias[3]_i_126 
       (.I0(Q[8]),
        .I1(Q[7]),
        .I2(Q[9]),
        .I3(Q[5]),
        .I4(is_horizontal_gridline0_carry__0_i_9_n_0),
        .I5(Q[6]),
        .O(\dc_bias[3]_i_126_n_0 ));
  LUT6 #(
    .INIT(64'h42AAABD55542AAAA)) 
    \dc_bias[3]_i_127 
       (.I0(Q[9]),
        .I1(is_horizontal_gridline0_carry__0_i_9_n_0),
        .I2(Q[5]),
        .I3(Q[6]),
        .I4(Q[7]),
        .I5(Q[8]),
        .O(\dc_bias[3]_i_127_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \dc_bias[3]_i_128 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\dc_bias[3]_i_128_n_0 ));
  LUT6 #(
    .INIT(64'hFD5554000002AAAB)) 
    \dc_bias[3]_i_129 
       (.I0(Q[9]),
        .I1(is_horizontal_gridline0_carry__0_i_9_n_0),
        .I2(Q[5]),
        .I3(Q[6]),
        .I4(Q[7]),
        .I5(Q[8]),
        .O(\dc_bias[3]_i_129_n_0 ));
  LUT6 #(
    .INIT(64'h0401028002800140)) 
    \dc_bias[3]_i_12__0 
       (.I0(\dc_bias_reg[3]_i_9_1 [2]),
        .I1(\dc_bias_reg[3]_i_9_1 [3]),
        .I2(Q[8]),
        .I3(Q[7]),
        .I4(Q[6]),
        .I5(\dc_bias[3]_i_67_n_0 ),
        .O(\dc_bias[3]_i_12__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'h5555666A)) 
    \dc_bias[3]_i_130 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[5]),
        .O(\dc_bias[3]_i_130_n_0 ));
  LUT6 #(
    .INIT(64'hA95556AAA957FC01)) 
    \dc_bias[3]_i_131 
       (.I0(Q[9]),
        .I1(is_horizontal_gridline0_carry__0_i_9_n_0),
        .I2(Q[5]),
        .I3(Q[6]),
        .I4(Q[7]),
        .I5(Q[8]),
        .O(\dc_bias[3]_i_131_n_0 ));
  LUT6 #(
    .INIT(64'h4020100880402010)) 
    \dc_bias[3]_i_13__0 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(\dc_bias_reg[3]_i_9_0 ),
        .I3(\dc_bias_reg[3]_i_9_1 [0]),
        .I4(\dc_bias_reg[3]_i_9_1 [1]),
        .I5(Q[2]),
        .O(\dc_bias[3]_i_13__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'hA8000000)) 
    \dc_bias[3]_i_16 
       (.I0(\dc_bias[3]_i_21__0_n_0 ),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\processQ_reg[5]_2 ));
  LUT5 #(
    .INIT(32'h8AE308A2)) 
    \dc_bias[3]_i_165 
       (.I0(Q[7]),
        .I1(\dc_bias_reg[3]_i_66_0 ),
        .I2(triggerVoltOut[4]),
        .I3(triggerVoltOut[5]),
        .I4(Q[6]),
        .O(\dc_bias[3]_i_165_n_0 ));
  LUT4 #(
    .INIT(16'hB288)) 
    \dc_bias[3]_i_166 
       (.I0(Q[3]),
        .I1(triggerVoltOut[1]),
        .I2(Q[2]),
        .I3(triggerVoltOut[0]),
        .O(\dc_bias[3]_i_166_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \dc_bias[3]_i_167 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\dc_bias[3]_i_167_n_0 ));
  LUT5 #(
    .INIT(32'h06909009)) 
    \dc_bias[3]_i_168 
       (.I0(triggerVoltOut[5]),
        .I1(Q[7]),
        .I2(triggerVoltOut[4]),
        .I3(\dc_bias_reg[3]_i_66_0 ),
        .I4(Q[6]),
        .O(\dc_bias[3]_i_168_n_0 ));
  LUT6 #(
    .INIT(64'h8484844221212118)) 
    \dc_bias[3]_i_169 
       (.I0(Q[4]),
        .I1(triggerVoltOut[3]),
        .I2(triggerVoltOut[2]),
        .I3(triggerVoltOut[0]),
        .I4(triggerVoltOut[1]),
        .I5(Q[5]),
        .O(\dc_bias[3]_i_169_n_0 ));
  LUT4 #(
    .INIT(16'h4224)) 
    \dc_bias[3]_i_170 
       (.I0(Q[2]),
        .I1(triggerVoltOut[0]),
        .I2(triggerVoltOut[1]),
        .I3(Q[3]),
        .O(\dc_bias[3]_i_170_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dc_bias[3]_i_171 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\dc_bias[3]_i_171_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \dc_bias[3]_i_172 
       (.I0(Q[7]),
        .I1(triggerVoltOut[5]),
        .I2(triggerVoltOut[4]),
        .I3(Q[6]),
        .O(\dc_bias[3]_i_172_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \dc_bias[3]_i_173 
       (.I0(Q[5]),
        .I1(triggerVoltOut[3]),
        .I2(triggerVoltOut[2]),
        .I3(Q[4]),
        .O(\dc_bias[3]_i_173_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \dc_bias[3]_i_174 
       (.I0(Q[3]),
        .I1(triggerVoltOut[1]),
        .I2(triggerVoltOut[0]),
        .I3(Q[2]),
        .O(\dc_bias[3]_i_174_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dc_bias[3]_i_175 
       (.I0(Q[1]),
        .O(\dc_bias[3]_i_175_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \dc_bias[3]_i_176 
       (.I0(triggerVoltOut[5]),
        .I1(Q[7]),
        .I2(triggerVoltOut[4]),
        .I3(Q[6]),
        .O(\dc_bias[3]_i_176_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \dc_bias[3]_i_177 
       (.I0(triggerVoltOut[3]),
        .I1(Q[5]),
        .I2(triggerVoltOut[2]),
        .I3(Q[4]),
        .O(\dc_bias[3]_i_177_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \dc_bias[3]_i_178 
       (.I0(triggerVoltOut[0]),
        .I1(Q[2]),
        .I2(triggerVoltOut[1]),
        .I3(Q[3]),
        .O(\dc_bias[3]_i_178_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dc_bias[3]_i_179 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\dc_bias[3]_i_179_n_0 ));
  LUT4 #(
    .INIT(16'h00F1)) 
    \dc_bias[3]_i_17__0 
       (.I0(\dc_bias[3]_i_8__0 [1]),
        .I1(\dc_bias[3]_i_8__0 [2]),
        .I2(\dc_bias[3]_i_8__0 [0]),
        .I3(\dc_bias[3]_i_8__0_0 ),
        .O(\dc_bias[3]_i_38 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \dc_bias[3]_i_18 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(Q[5]),
        .I3(is_horizontal_gridline0_carry__0_i_9_n_0),
        .I4(Q[8]),
        .O(\processQ_reg[7]_2 ));
  LUT6 #(
    .INIT(64'h8488424421221811)) 
    \dc_bias[3]_i_181 
       (.I0(Q[8]),
        .I1(triggerVoltOut[7]),
        .I2(triggerVoltOut[0]),
        .I3(\is_trigger_volt6_inferred__2/i__carry_0 ),
        .I4(triggerVoltOut[6]),
        .I5(Q[9]),
        .O(\dc_bias[3]_i_181_n_0 ));
  LUT5 #(
    .INIT(32'h15403D54)) 
    \dc_bias[3]_i_182 
       (.I0(Q[9]),
        .I1(\dc_bias_reg[3]_i_31_0 ),
        .I2(triggerVoltOut[6]),
        .I3(triggerVoltOut[7]),
        .I4(Q[8]),
        .O(\dc_bias[3]_i_182_n_0 ));
  LUT5 #(
    .INIT(32'h15403D54)) 
    \dc_bias[3]_i_183 
       (.I0(Q[7]),
        .I1(\dc_bias_reg[3]_i_62_0 ),
        .I2(triggerVoltOut[4]),
        .I3(triggerVoltOut[5]),
        .I4(Q[6]),
        .O(\dc_bias[3]_i_183_n_0 ));
  LUT4 #(
    .INIT(16'h114D)) 
    \dc_bias[3]_i_184 
       (.I0(Q[3]),
        .I1(triggerVoltOut[1]),
        .I2(Q[2]),
        .I3(triggerVoltOut[0]),
        .O(\dc_bias[3]_i_184_n_0 ));
  LUT5 #(
    .INIT(32'h09906009)) 
    \dc_bias[3]_i_185 
       (.I0(triggerVoltOut[7]),
        .I1(Q[9]),
        .I2(triggerVoltOut[6]),
        .I3(\dc_bias_reg[3]_i_31_0 ),
        .I4(Q[8]),
        .O(\dc_bias[3]_i_185_n_0 ));
  LUT5 #(
    .INIT(32'h09906009)) 
    \dc_bias[3]_i_186 
       (.I0(triggerVoltOut[5]),
        .I1(Q[7]),
        .I2(triggerVoltOut[4]),
        .I3(\dc_bias_reg[3]_i_62_0 ),
        .I4(Q[6]),
        .O(\dc_bias[3]_i_186_n_0 ));
  LUT6 #(
    .INIT(64'h0990909060090909)) 
    \dc_bias[3]_i_187 
       (.I0(triggerVoltOut[3]),
        .I1(Q[5]),
        .I2(triggerVoltOut[2]),
        .I3(triggerVoltOut[1]),
        .I4(triggerVoltOut[0]),
        .I5(Q[4]),
        .O(\dc_bias[3]_i_187_n_0 ));
  LUT4 #(
    .INIT(16'h2442)) 
    \dc_bias[3]_i_188 
       (.I0(Q[2]),
        .I1(triggerVoltOut[0]),
        .I2(triggerVoltOut[1]),
        .I3(Q[3]),
        .O(\dc_bias[3]_i_188_n_0 ));
  LUT6 #(
    .INIT(64'h0100004040000001)) 
    \dc_bias[3]_i_19 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\dc_bias[3]_i_42_n_0 ),
        .I3(Q[2]),
        .I4(\dc_bias[3]_i_43_n_0 ),
        .I5(\dc_bias[3]_i_44_n_0 ),
        .O(\processQ_reg[0]_1 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \dc_bias[3]_i_190 
       (.I0(Q[7]),
        .I1(triggerVoltOut[5]),
        .I2(triggerVoltOut[4]),
        .I3(Q[6]),
        .O(\dc_bias[3]_i_190_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \dc_bias[3]_i_191 
       (.I0(Q[5]),
        .I1(triggerVoltOut[3]),
        .I2(triggerVoltOut[2]),
        .I3(Q[4]),
        .O(\dc_bias[3]_i_191_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \dc_bias[3]_i_192 
       (.I0(Q[3]),
        .I1(triggerVoltOut[1]),
        .I2(triggerVoltOut[0]),
        .I3(Q[2]),
        .O(\dc_bias[3]_i_192_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \dc_bias[3]_i_193 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\dc_bias[3]_i_193_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \dc_bias[3]_i_194 
       (.I0(triggerVoltOut[5]),
        .I1(Q[7]),
        .I2(triggerVoltOut[4]),
        .I3(Q[6]),
        .O(\dc_bias[3]_i_194_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \dc_bias[3]_i_195 
       (.I0(triggerVoltOut[3]),
        .I1(Q[5]),
        .I2(triggerVoltOut[2]),
        .I3(Q[4]),
        .O(\dc_bias[3]_i_195_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \dc_bias[3]_i_196 
       (.I0(triggerVoltOut[0]),
        .I1(Q[2]),
        .I2(triggerVoltOut[1]),
        .I3(Q[3]),
        .O(\dc_bias[3]_i_196_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dc_bias[3]_i_197 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\dc_bias[3]_i_197_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFE0)) 
    \dc_bias[3]_i_21__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[6]),
        .O(\dc_bias[3]_i_21__0_n_0 ));
  LUT5 #(
    .INIT(32'h8AE308A2)) 
    \dc_bias[3]_i_220 
       (.I0(Q[7]),
        .I1(\dc_bias_reg[3]_i_66_0 ),
        .I2(triggerVoltOut[4]),
        .I3(triggerVoltOut[5]),
        .I4(Q[6]),
        .O(\dc_bias[3]_i_220_n_0 ));
  LUT4 #(
    .INIT(16'hB288)) 
    \dc_bias[3]_i_221 
       (.I0(Q[3]),
        .I1(triggerVoltOut[1]),
        .I2(Q[2]),
        .I3(triggerVoltOut[0]),
        .O(\dc_bias[3]_i_221_n_0 ));
  LUT5 #(
    .INIT(32'h06909009)) 
    \dc_bias[3]_i_222 
       (.I0(triggerVoltOut[5]),
        .I1(Q[7]),
        .I2(triggerVoltOut[4]),
        .I3(\dc_bias_reg[3]_i_66_0 ),
        .I4(Q[6]),
        .O(\dc_bias[3]_i_222_n_0 ));
  LUT6 #(
    .INIT(64'h8484844221212118)) 
    \dc_bias[3]_i_223 
       (.I0(Q[4]),
        .I1(triggerVoltOut[3]),
        .I2(triggerVoltOut[2]),
        .I3(triggerVoltOut[0]),
        .I4(triggerVoltOut[1]),
        .I5(Q[5]),
        .O(\dc_bias[3]_i_223_n_0 ));
  LUT4 #(
    .INIT(16'h4224)) 
    \dc_bias[3]_i_224 
       (.I0(Q[2]),
        .I1(triggerVoltOut[0]),
        .I2(triggerVoltOut[1]),
        .I3(Q[3]),
        .O(\dc_bias[3]_i_224_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \dc_bias[3]_i_225 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\dc_bias[3]_i_225_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \dc_bias[3]_i_27 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(\dc_bias[3]_i_12_0 ),
        .I3(\dc_bias[3]_i_12_1 ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\dc_bias[3]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \dc_bias[3]_i_29 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(Q[5]),
        .O(\dc_bias[3]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AAAB)) 
    \dc_bias[3]_i_2__1 
       (.I0(\processQ_reg[9]_0 ),
        .I1(\encoded_reg[9] ),
        .I2(\encoded_reg[9]_0 ),
        .I3(switch_1_sn_1),
        .I4(\encoded_reg[9]_1 ),
        .I5(\dc_bias[3]_i_4_n_0 ),
        .O(\processQ_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h0007FFF8)) 
    \dc_bias[3]_i_34 
       (.I0(\dc_bias[3]_i_67_n_0 ),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(Q[8]),
        .I4(Q[9]),
        .O(\dc_bias[3]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0401028002800140)) 
    \dc_bias[3]_i_35 
       (.I0(DOADO[2]),
        .I1(DOADO[3]),
        .I2(Q[8]),
        .I3(Q[7]),
        .I4(Q[6]),
        .I5(\dc_bias[3]_i_67_n_0 ),
        .O(\dc_bias[3]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h4020100880402010)) 
    \dc_bias[3]_i_36 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(\dc_bias_reg[3]_i_15_0 ),
        .I3(DOADO[0]),
        .I4(DOADO[1]),
        .I5(Q[2]),
        .O(\dc_bias[3]_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \dc_bias[3]_i_3__0 
       (.I0(switch[0]),
        .I1(ch1),
        .I2(\dc_bias[3]_i_2 ),
        .O(switch_0_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \dc_bias[3]_i_4 
       (.I0(switch[0]),
        .I1(ch1),
        .I2(\dc_bias[3]_i_2 ),
        .O(\dc_bias[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEEB7EA366CA24822)) 
    \dc_bias[3]_i_42 
       (.I0(\dc_bias[3]_i_71_n_0 ),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(\dc_bias[3]_i_72_n_0 ),
        .I4(Q[1]),
        .I5(\dc_bias[3]_i_73_n_0 ),
        .O(\dc_bias[3]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h80555640D57777E9)) 
    \dc_bias[3]_i_43 
       (.I0(\dc_bias[3]_i_74_n_0 ),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(\dc_bias[3]_i_75_n_0 ),
        .I4(Q[4]),
        .I5(\dc_bias[3]_i_72_n_0 ),
        .O(\dc_bias[3]_i_43_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \dc_bias[3]_i_44 
       (.I0(Q[3]),
        .I1(\dc_bias[3]_i_72_n_0 ),
        .O(\dc_bias[3]_i_44_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \dc_bias[3]_i_5 
       (.I0(Q[8]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(Q[5]),
        .O(\processQ_reg[8]_1 ));
  LUT6 #(
    .INIT(64'hDDDDDDDDDFFFDDDD)) 
    \dc_bias[3]_i_58 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(\dc_bias[3]_i_28 ),
        .I3(\dc_bias[3]_i_28_0 ),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\processQ_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h000077770FFF0000)) 
    \dc_bias[3]_i_61 
       (.I0(CO),
        .I1(\uut3/is_trigger_volt524_in ),
        .I2(\uut3/is_trigger_volt6 ),
        .I3(\dc_bias[3]_i_30 ),
        .I4(\dc_bias[3]_i_30_0 [0]),
        .I5(\dc_bias[3]_i_30_0 [1]),
        .O(\processQ_reg[0]_2 ));
  LUT5 #(
    .INIT(32'h15403D54)) 
    \dc_bias[3]_i_63 
       (.I0(Q[9]),
        .I1(\dc_bias_reg[3]_i_31_0 ),
        .I2(triggerVoltOut[6]),
        .I3(triggerVoltOut[7]),
        .I4(Q[8]),
        .O(\dc_bias[3]_i_63_n_0 ));
  LUT5 #(
    .INIT(32'h09906009)) 
    \dc_bias[3]_i_64 
       (.I0(triggerVoltOut[7]),
        .I1(Q[9]),
        .I2(triggerVoltOut[6]),
        .I3(\dc_bias_reg[3]_i_31_0 ),
        .I4(Q[8]),
        .O(\dc_bias[3]_i_64_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    \dc_bias[3]_i_67 
       (.I0(Q[5]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[4]),
        .O(\dc_bias[3]_i_67_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \dc_bias[3]_i_71 
       (.I0(Q[4]),
        .I1(\dc_bias[3]_i_75_n_0 ),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\dc_bias[3]_i_71_n_0 ));
  LUT6 #(
    .INIT(64'h1A079FE718061FA7)) 
    \dc_bias[3]_i_72 
       (.I0(\dc_bias[3]_i_124_n_0 ),
        .I1(\dc_bias[3]_i_125_n_0 ),
        .I2(\dc_bias[3]_i_126_n_0 ),
        .I3(\dc_bias[3]_i_127_n_0 ),
        .I4(\dc_bias[3]_i_75_n_0 ),
        .I5(\dc_bias[3]_i_128_n_0 ),
        .O(\dc_bias[3]_i_72_n_0 ));
  LUT6 #(
    .INIT(64'h9666666666666999)) 
    \dc_bias[3]_i_73 
       (.I0(\dc_bias[3]_i_127_n_0 ),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(\dc_bias[3]_i_75_n_0 ),
        .I5(Q[4]),
        .O(\dc_bias[3]_i_73_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'h66666669)) 
    \dc_bias[3]_i_74 
       (.I0(\dc_bias[3]_i_127_n_0 ),
        .I1(Q[5]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\dc_bias[3]_i_74_n_0 ));
  LUT6 #(
    .INIT(64'h030043DCC43DFF3F)) 
    \dc_bias[3]_i_75 
       (.I0(\dc_bias[3]_i_125_n_0 ),
        .I1(\dc_bias[3]_i_129_n_0 ),
        .I2(\dc_bias[3]_i_124_n_0 ),
        .I3(\dc_bias[3]_i_130_n_0 ),
        .I4(\dc_bias[3]_i_127_n_0 ),
        .I5(\dc_bias[3]_i_131_n_0 ),
        .O(\dc_bias[3]_i_75_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \dc_bias[3]_i_7__0 
       (.I0(ch2),
        .I1(switch[1]),
        .O(switch_1_sn_1));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \dc_bias_reg[3]_i_101 
       (.CI(1'b0),
        .CO({\dc_bias_reg[3]_i_101_n_0 ,\dc_bias_reg[3]_i_101_n_1 ,\dc_bias_reg[3]_i_101_n_2 ,\dc_bias_reg[3]_i_101_n_3 }),
        .CYINIT(1'b1),
        .DI({\dc_bias[3]_i_172_n_0 ,\dc_bias[3]_i_173_n_0 ,\dc_bias[3]_i_174_n_0 ,\dc_bias[3]_i_175_n_0 }),
        .O(\NLW_dc_bias_reg[3]_i_101_O_UNCONNECTED [3:0]),
        .S({\dc_bias[3]_i_176_n_0 ,\dc_bias[3]_i_177_n_0 ,\dc_bias[3]_i_178_n_0 ,\dc_bias[3]_i_179_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \dc_bias_reg[3]_i_104 
       (.CI(\dc_bias_reg[3]_i_180_n_0 ),
        .CO({\NLW_dc_bias_reg[3]_i_104_CO_UNCONNECTED [3:1],\uut3/is_trigger_volt524_in }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\processQ_reg[9]_4 }),
        .O(\NLW_dc_bias_reg[3]_i_104_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\dc_bias[3]_i_181_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \dc_bias_reg[3]_i_105 
       (.CI(1'b0),
        .CO({\uut3/is_trigger_volt6 ,\dc_bias_reg[3]_i_105_n_1 ,\dc_bias_reg[3]_i_105_n_2 ,\dc_bias_reg[3]_i_105_n_3 }),
        .CYINIT(\processQ_reg[1]_0 ),
        .DI({\dc_bias[3]_i_182_n_0 ,\dc_bias[3]_i_183_n_0 ,\dc_bias[3]_i_107_n_0 ,\dc_bias[3]_i_184_n_0 }),
        .O(\NLW_dc_bias_reg[3]_i_105_O_UNCONNECTED [3:0]),
        .S({\dc_bias[3]_i_185_n_0 ,\dc_bias[3]_i_186_n_0 ,\dc_bias[3]_i_187_n_0 ,\dc_bias[3]_i_188_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \dc_bias_reg[3]_i_115 
       (.CI(1'b0),
        .CO({\dc_bias_reg[3]_i_115_n_0 ,\dc_bias_reg[3]_i_115_n_1 ,\dc_bias_reg[3]_i_115_n_2 ,\dc_bias_reg[3]_i_115_n_3 }),
        .CYINIT(1'b1),
        .DI({\dc_bias[3]_i_190_n_0 ,\dc_bias[3]_i_191_n_0 ,\dc_bias[3]_i_192_n_0 ,\dc_bias[3]_i_193_n_0 }),
        .O(\NLW_dc_bias_reg[3]_i_115_O_UNCONNECTED [3:0]),
        .S({\dc_bias[3]_i_194_n_0 ,\dc_bias[3]_i_195_n_0 ,\dc_bias[3]_i_196_n_0 ,\dc_bias[3]_i_197_n_0 }));
  CARRY4 \dc_bias_reg[3]_i_15 
       (.CI(1'b0),
        .CO({ch2,\dc_bias_reg[3]_i_15_n_1 ,\dc_bias_reg[3]_i_15_n_2 ,\dc_bias_reg[3]_i_15_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_dc_bias_reg[3]_i_15_O_UNCONNECTED [3:0]),
        .S({\dc_bias[3]_i_34_n_0 ,\dc_bias[3]_i_35_n_0 ,\dc_bias[3]_i_36_n_0 ,\dc_bias[3]_i_7__0_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \dc_bias_reg[3]_i_180 
       (.CI(1'b0),
        .CO({\dc_bias_reg[3]_i_180_n_0 ,\dc_bias_reg[3]_i_180_n_1 ,\dc_bias_reg[3]_i_180_n_2 ,\dc_bias_reg[3]_i_180_n_3 }),
        .CYINIT(1'b1),
        .DI({\dc_bias[3]_i_220_n_0 ,\processQ_reg[7]_3 [2],\dc_bias[3]_i_221_n_0 ,Q[1]}),
        .O(\NLW_dc_bias_reg[3]_i_180_O_UNCONNECTED [3:0]),
        .S({\dc_bias[3]_i_222_n_0 ,\dc_bias[3]_i_223_n_0 ,\dc_bias[3]_i_224_n_0 ,\dc_bias[3]_i_225_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \dc_bias_reg[3]_i_31 
       (.CI(\dc_bias_reg[3]_i_62_n_0 ),
        .CO({\NLW_dc_bias_reg[3]_i_31_CO_UNCONNECTED [3:1],\processQ_reg[9]_9 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\dc_bias[3]_i_63_n_0 }),
        .O(\NLW_dc_bias_reg[3]_i_31_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\dc_bias[3]_i_64_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \dc_bias_reg[3]_i_59 
       (.CI(\dc_bias_reg[3]_i_99_n_0 ),
        .CO({\NLW_dc_bias_reg[3]_i_59_CO_UNCONNECTED [3:1],\processQ_reg[9]_7 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\processQ_reg[9]_4 }),
        .O(\NLW_dc_bias_reg[3]_i_59_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\dc_bias[3]_i_100_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \dc_bias_reg[3]_i_60 
       (.CI(\dc_bias_reg[3]_i_101_n_0 ),
        .CO({\NLW_dc_bias_reg[3]_i_60_CO_UNCONNECTED [3:1],\processQ_reg[9]_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\dc_bias[3]_i_102_n_0 }),
        .O(\NLW_dc_bias_reg[3]_i_60_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\dc_bias[3]_i_103_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \dc_bias_reg[3]_i_62 
       (.CI(1'b0),
        .CO({\dc_bias_reg[3]_i_62_n_0 ,\dc_bias_reg[3]_i_62_n_1 ,\dc_bias_reg[3]_i_62_n_2 ,\dc_bias_reg[3]_i_62_n_3 }),
        .CYINIT(1'b1),
        .DI({\dc_bias[3]_i_106_n_0 ,\dc_bias[3]_i_107_n_0 ,\dc_bias[3]_i_108_n_0 ,\dc_bias[3]_i_109_n_0 }),
        .O(\NLW_dc_bias_reg[3]_i_62_O_UNCONNECTED [3:0]),
        .S({\dc_bias[3]_i_110_n_0 ,\dc_bias[3]_i_111_n_0 ,\dc_bias[3]_i_112_n_0 ,\dc_bias[3]_i_113_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \dc_bias_reg[3]_i_65 
       (.CI(\dc_bias_reg[3]_i_115_n_0 ),
        .CO({\NLW_dc_bias_reg[3]_i_65_CO_UNCONNECTED [3:1],\processQ_reg[9]_8 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\dc_bias[3]_i_116_n_0 }),
        .O(\NLW_dc_bias_reg[3]_i_65_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\dc_bias[3]_i_117_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \dc_bias_reg[3]_i_66 
       (.CI(1'b0),
        .CO({\processQ_reg[1]_2 ,\dc_bias_reg[3]_i_66_n_1 ,\dc_bias_reg[3]_i_66_n_2 ,\dc_bias_reg[3]_i_66_n_3 }),
        .CYINIT(\processQ_reg[1]_1 ),
        .DI({\processQ_reg[9]_4 ,\dc_bias[3]_i_118_n_0 ,\processQ_reg[7]_3 [2],\dc_bias[3]_i_119_n_0 }),
        .O(\NLW_dc_bias_reg[3]_i_66_O_UNCONNECTED [3:0]),
        .S({\dc_bias[3]_i_120_n_0 ,\dc_bias[3]_i_121_n_0 ,\dc_bias[3]_i_122_n_0 ,\dc_bias[3]_i_123_n_0 }));
  CARRY4 \dc_bias_reg[3]_i_9 
       (.CI(1'b0),
        .CO({ch1,\dc_bias_reg[3]_i_9_n_1 ,\dc_bias_reg[3]_i_9_n_2 ,\dc_bias_reg[3]_i_9_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_dc_bias_reg[3]_i_9_O_UNCONNECTED [3:0]),
        .S({\dc_bias[3]_i_11__0_n_0 ,\dc_bias[3]_i_12__0_n_0 ,\dc_bias[3]_i_13__0_n_0 ,\dc_bias[3]_i_4_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \dc_bias_reg[3]_i_99 
       (.CI(1'b0),
        .CO({\dc_bias_reg[3]_i_99_n_0 ,\dc_bias_reg[3]_i_99_n_1 ,\dc_bias_reg[3]_i_99_n_2 ,\dc_bias_reg[3]_i_99_n_3 }),
        .CYINIT(1'b1),
        .DI({\dc_bias[3]_i_165_n_0 ,\processQ_reg[7]_3 [2],\dc_bias[3]_i_166_n_0 ,\dc_bias[3]_i_167_n_0 }),
        .O(\NLW_dc_bias_reg[3]_i_99_O_UNCONNECTED [3:0]),
        .S({\dc_bias[3]_i_168_n_0 ,\dc_bias[3]_i_169_n_0 ,\dc_bias[3]_i_170_n_0 ,\dc_bias[3]_i_171_n_0 }));
  LUT5 #(
    .INIT(32'h00008000)) 
    \encoded[9]_i_2 
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(Q[8]),
        .I4(\encoded[9]_i_4_n_0 ),
        .O(\processQ_reg[5]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \encoded[9]_i_4 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[9]),
        .I3(s00_axi_aresetn),
        .I4(Q[4]),
        .I5(Q[3]),
        .O(\encoded[9]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    i___12_carry__0_i_1
       (.I0(Q[7]),
        .I1(\is_hash_mark2_inferred__2/i___12_carry__0 [3]),
        .O(\processQ_reg[7]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    i___12_carry__0_i_2
       (.I0(Q[6]),
        .I1(\is_hash_mark2_inferred__2/i___12_carry__0 [2]),
        .O(\processQ_reg[7]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    i___12_carry__0_i_3
       (.I0(Q[5]),
        .I1(\is_hash_mark2_inferred__2/i___12_carry__0 [1]),
        .O(\processQ_reg[7]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    i___12_carry__0_i_4
       (.I0(Q[4]),
        .I1(\is_hash_mark2_inferred__2/i___12_carry__0 [0]),
        .O(\processQ_reg[7]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    i___12_carry__1_i_1
       (.I0(Q[8]),
        .I1(\is_hash_mark2_inferred__2/i___12_carry__1 ),
        .O(\processQ_reg[8]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    i___12_carry_i_1
       (.I0(Q[3]),
        .I1(Q[8]),
        .O(\processQ_reg[3]_1 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    i___12_carry_i_2
       (.I0(Q[2]),
        .O(\processQ_reg[3]_1 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    i___12_carry_i_3
       (.I0(Q[1]),
        .I1(Q[9]),
        .O(\processQ_reg[3]_1 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    i___12_carry_i_4
       (.I0(Q[0]),
        .I1(Q[8]),
        .O(\processQ_reg[3]_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    i___2_carry_i_1
       (.I0(Q[8]),
        .I1(Q[9]),
        .O(\processQ_reg[8]_3 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    i___2_carry_i_2
       (.I0(Q[8]),
        .I1(Q[9]),
        .O(\processQ_reg[8]_3 [0]));
  LUT6 #(
    .INIT(64'h22A2BBCB0020AA8A)) 
    i__carry__0_i_1__0
       (.I0(Q[9]),
        .I1(triggerVoltOut[6]),
        .I2(\is_trigger_volt6_inferred__2/i__carry_0 ),
        .I3(triggerVoltOut[0]),
        .I4(triggerVoltOut[7]),
        .I5(Q[8]),
        .O(\processQ_reg[9]_4 ));
  LUT6 #(
    .INIT(64'h8488424421221811)) 
    i__carry__0_i_2__0
       (.I0(Q[8]),
        .I1(triggerVoltOut[7]),
        .I2(triggerVoltOut[0]),
        .I3(\is_trigger_volt6_inferred__2/i__carry_0 ),
        .I4(triggerVoltOut[6]),
        .I5(Q[9]),
        .O(\processQ_reg[8]_2 ));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_1__0
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\processQ_reg[1]_1 ));
  LUT5 #(
    .INIT(32'h8AE308A2)) 
    i__carry_i_1__2
       (.I0(Q[7]),
        .I1(\dc_bias_reg[3]_i_66_0 ),
        .I2(triggerVoltOut[4]),
        .I3(triggerVoltOut[5]),
        .I4(Q[6]),
        .O(\processQ_reg[7]_3 [3]));
  LUT5 #(
    .INIT(32'h8AE308A2)) 
    i__carry_i_2__0
       (.I0(Q[9]),
        .I1(\is_trigger_volt6_inferred__2/i__carry_0 ),
        .I2(triggerVoltOut[6]),
        .I3(triggerVoltOut[7]),
        .I4(Q[8]),
        .O(\processQ_reg[9]_3 [3]));
  LUT6 #(
    .INIT(64'h02AAABFC0002AAA8)) 
    i__carry_i_2__1
       (.I0(Q[5]),
        .I1(triggerVoltOut[1]),
        .I2(triggerVoltOut[0]),
        .I3(triggerVoltOut[2]),
        .I4(triggerVoltOut[3]),
        .I5(Q[4]),
        .O(\processQ_reg[7]_3 [2]));
  LUT5 #(
    .INIT(32'h8AE308A2)) 
    i__carry_i_3__0
       (.I0(Q[7]),
        .I1(\is_trigger_volt6_inferred__2/i__carry ),
        .I2(triggerVoltOut[4]),
        .I3(triggerVoltOut[5]),
        .I4(Q[6]),
        .O(\processQ_reg[9]_3 [2]));
  LUT4 #(
    .INIT(16'hB288)) 
    i__carry_i_3__3
       (.I0(Q[3]),
        .I1(triggerVoltOut[1]),
        .I2(Q[2]),
        .I3(triggerVoltOut[0]),
        .O(\processQ_reg[7]_3 [1]));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_4__1
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\processQ_reg[7]_3 [0]));
  LUT5 #(
    .INIT(32'h2ABC02A8)) 
    i__carry_i_4__2
       (.I0(Q[5]),
        .I1(triggerVoltOut[2]),
        .I2(triggerVoltOut[1]),
        .I3(triggerVoltOut[3]),
        .I4(Q[4]),
        .O(\processQ_reg[9]_3 [1]));
  LUT4 #(
    .INIT(16'hF440)) 
    i__carry_i_5__0
       (.I0(triggerVoltOut[0]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(triggerVoltOut[1]),
        .O(\processQ_reg[9]_3 [0]));
  LUT5 #(
    .INIT(32'h06909009)) 
    i__carry_i_5__2
       (.I0(triggerVoltOut[5]),
        .I1(Q[7]),
        .I2(triggerVoltOut[4]),
        .I3(\dc_bias_reg[3]_i_66_0 ),
        .I4(Q[6]),
        .O(\triggerVolt_reg[7] [3]));
  LUT5 #(
    .INIT(32'h06909009)) 
    i__carry_i_6__0
       (.I0(triggerVoltOut[7]),
        .I1(Q[9]),
        .I2(triggerVoltOut[6]),
        .I3(\is_trigger_volt6_inferred__2/i__carry_0 ),
        .I4(Q[8]),
        .O(\triggerVolt_reg[9]_0 [3]));
  LUT6 #(
    .INIT(64'h8484844221212118)) 
    i__carry_i_6__2
       (.I0(Q[4]),
        .I1(triggerVoltOut[3]),
        .I2(triggerVoltOut[2]),
        .I3(triggerVoltOut[0]),
        .I4(triggerVoltOut[1]),
        .I5(Q[5]),
        .O(\triggerVolt_reg[7] [2]));
  LUT5 #(
    .INIT(32'h06909009)) 
    i__carry_i_7__0
       (.I0(triggerVoltOut[5]),
        .I1(Q[7]),
        .I2(triggerVoltOut[4]),
        .I3(\is_trigger_volt6_inferred__2/i__carry ),
        .I4(Q[6]),
        .O(\triggerVolt_reg[9]_0 [2]));
  LUT4 #(
    .INIT(16'h4224)) 
    i__carry_i_7__2
       (.I0(Q[2]),
        .I1(triggerVoltOut[0]),
        .I2(triggerVoltOut[1]),
        .I3(Q[3]),
        .O(\triggerVolt_reg[7] [1]));
  LUT5 #(
    .INIT(32'h90060990)) 
    i__carry_i_8__0
       (.I0(triggerVoltOut[3]),
        .I1(Q[5]),
        .I2(triggerVoltOut[2]),
        .I3(triggerVoltOut[1]),
        .I4(Q[4]),
        .O(\triggerVolt_reg[9]_0 [1]));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_8__2
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\triggerVolt_reg[7] [0]));
  LUT4 #(
    .INIT(16'h6006)) 
    i__carry_i_9__0
       (.I0(triggerVoltOut[1]),
        .I1(Q[3]),
        .I2(triggerVoltOut[0]),
        .I3(Q[2]),
        .O(\triggerVolt_reg[9]_0 [0]));
  LUT2 #(
    .INIT(4'hB)) 
    is_horizontal_gridline0__23_carry_i_1
       (.I0(is_horizontal_gridline0__23_carry[2]),
        .I1(is_horizontal_gridline0__29_carry),
        .O(is_horizontal_gridline0_carry__0));
  LUT4 #(
    .INIT(16'hD22D)) 
    is_horizontal_gridline0__23_carry_i_2
       (.I0(is_horizontal_gridline0__23_carry_0),
        .I1(is_horizontal_gridline0__23_carry[0]),
        .I2(is_horizontal_gridline0__23_carry[1]),
        .I3(is_horizontal_gridline0__29_carry),
        .O(is_horizontal_gridline0_carry__0_0[2]));
  LUT4 #(
    .INIT(16'h2DD2)) 
    is_horizontal_gridline0__23_carry_i_3
       (.I0(is_horizontal_gridline0__29_carry),
        .I1(is_horizontal_gridline0__23_carry[2]),
        .I2(is_horizontal_gridline0__23_carry_0),
        .I3(is_horizontal_gridline0__23_carry[0]),
        .O(is_horizontal_gridline0_carry__0_0[1]));
  LUT2 #(
    .INIT(4'h6)) 
    is_horizontal_gridline0__23_carry_i_4
       (.I0(is_horizontal_gridline0__23_carry[2]),
        .I1(is_horizontal_gridline0__29_carry),
        .O(is_horizontal_gridline0_carry__0_0[0]));
  LUT4 #(
    .INIT(16'hA857)) 
    is_horizontal_gridline0__29_carry__0_i_1
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[5]),
        .O(is_horizontal_gridline1[0]));
  LUT3 #(
    .INIT(8'h1E)) 
    is_horizontal_gridline0__29_carry__0_i_2
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[4]),
        .O(\processQ_reg[3]_2 ));
  LUT6 #(
    .INIT(64'hAAA9999955566666)) 
    is_horizontal_gridline0__29_carry__0_i_3
       (.I0(O[2]),
        .I1(Q[5]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[6]),
        .O(\processQ_reg[5]_0 [2]));
  LUT5 #(
    .INIT(32'hA85757A8)) 
    is_horizontal_gridline0__29_carry__0_i_4
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[5]),
        .I4(O[1]),
        .O(\processQ_reg[5]_0 [1]));
  LUT4 #(
    .INIT(16'h56A9)) 
    is_horizontal_gridline0__29_carry__0_i_5
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(O[0]),
        .O(\processQ_reg[5]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    is_horizontal_gridline0__29_carry_i_1
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\processQ_reg[2]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    is_horizontal_gridline0__29_carry_i_2
       (.I0(Q[2]),
        .O(\processQ_reg[2]_0 [0]));
  LUT3 #(
    .INIT(8'h96)) 
    is_horizontal_gridline0__29_carry_i_3
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(is_horizontal_gridline0__23_carry[1]),
        .O(\processQ_reg[3]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    is_horizontal_gridline0__29_carry_i_4
       (.I0(Q[2]),
        .I1(is_horizontal_gridline0__23_carry[0]),
        .O(\processQ_reg[3]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    is_horizontal_gridline0__29_carry_i_5
       (.I0(Q[1]),
        .I1(is_horizontal_gridline0__29_carry),
        .O(\processQ_reg[3]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    is_horizontal_gridline0__29_carry_i_6
       (.I0(Q[0]),
        .O(\processQ_reg[3]_0 [0]));
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    is_horizontal_gridline0_carry__0_i_1
       (.I0(Q[8]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(Q[5]),
        .I4(is_horizontal_gridline0_carry__0_i_9_n_0),
        .O(is_horizontal_gridline1[3]));
  LUT6 #(
    .INIT(64'hFFFFFFE00000001F)) 
    is_horizontal_gridline0_carry__0_i_2
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[6]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(is_horizontal_gridline1[2]));
  LUT5 #(
    .INIT(32'hFEAA0155)) 
    is_horizontal_gridline0_carry__0_i_3
       (.I0(Q[5]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(Q[6]),
        .O(is_horizontal_gridline1[1]));
  LUT4 #(
    .INIT(16'hA857)) 
    is_horizontal_gridline0_carry__0_i_4
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[5]),
        .O(\processQ_reg[4]_1 ));
  LUT6 #(
    .INIT(64'h55566666AAA99999)) 
    is_horizontal_gridline0_carry__0_i_5
       (.I0(is_horizontal_gridline1[3]),
        .I1(Q[5]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[6]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h3C3C3CCCC6C6C666)) 
    is_horizontal_gridline0_carry__0_i_6
       (.I0(Q[6]),
        .I1(Q[7]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[5]),
        .O(S[2]));
  LUT5 #(
    .INIT(32'hC6C6C669)) 
    is_horizontal_gridline0_carry__0_i_7
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(Q[4]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h699C)) 
    is_horizontal_gridline0_carry__0_i_8
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    is_horizontal_gridline0_carry__0_i_9
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .O(is_horizontal_gridline0_carry__0_i_9_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    is_horizontal_gridline0_carry__1_i_1
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(is_horizontal_gridline0_carry__0_i_9_n_0),
        .I3(Q[5]),
        .I4(Q[6]),
        .I5(Q[7]),
        .O(is_horizontal_gridline1[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    is_horizontal_gridline0_carry__1_i_2
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(is_horizontal_gridline0_carry__0_i_9_n_0),
        .I3(Q[5]),
        .I4(Q[6]),
        .I5(Q[7]),
        .O(\processQ_reg[9]_1 [2]));
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    is_horizontal_gridline0_carry__1_i_3
       (.I0(Q[8]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(Q[5]),
        .I4(is_horizontal_gridline0_carry__0_i_9_n_0),
        .O(\processQ_reg[9]_1 [1]));
  LUT6 #(
    .INIT(64'h3333333CCCCCCCC6)) 
    is_horizontal_gridline0_carry__1_i_4
       (.I0(Q[8]),
        .I1(Q[9]),
        .I2(is_horizontal_gridline0_carry__0_i_9_n_0),
        .I3(Q[6]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(\processQ_reg[9]_1 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    is_horizontal_gridline0_carry_i_1
       (.I0(Q[2]),
        .O(DI[2]));
  LUT2 #(
    .INIT(4'h9)) 
    is_horizontal_gridline0_carry_i_2
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(DI[1]));
  LUT1 #(
    .INIT(2'h1)) 
    is_horizontal_gridline0_carry_i_3
       (.I0(Q[2]),
        .O(DI[0]));
  LUT3 #(
    .INIT(8'h59)) 
    is_horizontal_gridline0_carry_i_4
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .O(\processQ_reg[4]_0 [2]));
  LUT3 #(
    .INIT(8'h69)) 
    is_horizontal_gridline0_carry_i_5
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(\processQ_reg[4]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    is_horizontal_gridline0_carry_i_6
       (.I0(Q[2]),
        .I1(Q[0]),
        .O(\processQ_reg[4]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    is_trigger_volt1_carry_i_1
       (.I0(triggerVoltOut[7]),
        .I1(Q[9]),
        .O(\triggerVolt_reg[9] [3]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    is_trigger_volt1_carry_i_2
       (.I0(triggerVoltOut[6]),
        .I1(Q[8]),
        .I2(Q[6]),
        .I3(triggerVoltOut[4]),
        .I4(Q[7]),
        .I5(triggerVoltOut[5]),
        .O(\triggerVolt_reg[9] [2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    is_trigger_volt1_carry_i_3
       (.I0(Q[4]),
        .I1(triggerVoltOut[2]),
        .I2(Q[5]),
        .I3(triggerVoltOut[3]),
        .I4(triggerVoltOut[1]),
        .I5(Q[3]),
        .O(\triggerVolt_reg[9] [1]));
  LUT4 #(
    .INIT(16'h1001)) 
    is_trigger_volt1_carry_i_4
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(triggerVoltOut[0]),
        .I3(Q[2]),
        .O(\triggerVolt_reg[9] [0]));
  LUT4 #(
    .INIT(16'h44D4)) 
    is_trigger_volt5_carry__0_i_1
       (.I0(Q[9]),
        .I1(triggerVoltOut[7]),
        .I2(triggerVoltOut[6]),
        .I3(Q[8]),
        .O(\processQ_reg[9]_5 ));
  LUT4 #(
    .INIT(16'h9009)) 
    is_trigger_volt5_carry__0_i_2
       (.I0(triggerVoltOut[6]),
        .I1(Q[8]),
        .I2(triggerVoltOut[7]),
        .I3(Q[9]),
        .O(\triggerVolt_reg[8] ));
  LUT4 #(
    .INIT(16'h44D4)) 
    is_trigger_volt5_carry_i_1
       (.I0(Q[7]),
        .I1(triggerVoltOut[5]),
        .I2(triggerVoltOut[4]),
        .I3(Q[6]),
        .O(\processQ_reg[7]_1 [3]));
  LUT4 #(
    .INIT(16'h44D4)) 
    is_trigger_volt5_carry_i_2
       (.I0(Q[5]),
        .I1(triggerVoltOut[3]),
        .I2(triggerVoltOut[2]),
        .I3(Q[4]),
        .O(\processQ_reg[7]_1 [2]));
  LUT4 #(
    .INIT(16'h44D4)) 
    is_trigger_volt5_carry_i_3
       (.I0(Q[3]),
        .I1(triggerVoltOut[1]),
        .I2(triggerVoltOut[0]),
        .I3(Q[2]),
        .O(\processQ_reg[7]_1 [1]));
  LUT2 #(
    .INIT(4'h7)) 
    is_trigger_volt5_carry_i_4
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\processQ_reg[7]_1 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    is_trigger_volt5_carry_i_5
       (.I0(triggerVoltOut[5]),
        .I1(Q[7]),
        .I2(triggerVoltOut[4]),
        .I3(Q[6]),
        .O(\triggerVolt_reg[7]_0 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    is_trigger_volt5_carry_i_6
       (.I0(triggerVoltOut[3]),
        .I1(Q[5]),
        .I2(triggerVoltOut[2]),
        .I3(Q[4]),
        .O(\triggerVolt_reg[7]_0 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    is_trigger_volt5_carry_i_7
       (.I0(triggerVoltOut[0]),
        .I1(Q[2]),
        .I2(triggerVoltOut[1]),
        .I3(Q[3]),
        .O(\triggerVolt_reg[7]_0 [1]));
  LUT2 #(
    .INIT(4'h8)) 
    is_trigger_volt5_carry_i_8
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\triggerVolt_reg[7]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \processQ[0]_i_1__1 
       (.I0(Q[0]),
        .O(\processQ[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \processQ[1]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \processQ[2]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \processQ[3]_i_1__1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \processQ[4]_i_1__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \processQ[5]_i_1__1 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(plusOp__0[5]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \processQ[6]_i_1__1 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\processQ_reg[1]_1 ),
        .I5(Q[4]),
        .O(plusOp__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \processQ[7]_i_1__0 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(\processQ[9]_i_7_n_0 ),
        .O(plusOp__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \processQ[8]_i_1__0 
       (.I0(Q[8]),
        .I1(Q[7]),
        .I2(\processQ[9]_i_7_n_0 ),
        .I3(Q[6]),
        .I4(Q[5]),
        .O(plusOp__0[8]));
  LUT6 #(
    .INIT(64'h40000000FFFFFFFF)) 
    \processQ[9]_i_1__1 
       (.I0(\processQ[9]_i_4__1_n_0 ),
        .I1(\processQ[9]_i_5__0_n_0 ),
        .I2(Q[9]),
        .I3(\processQ_reg[1]_0 ),
        .I4(\processQ_reg[0]_3 ),
        .I5(s00_axi_aresetn),
        .O(\processQ[9]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h002AAAAA)) 
    \processQ[9]_i_2__0 
       (.I0(\processQ_reg[0]_3 ),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(\processQ[9]_i_4__1_n_0 ),
        .I4(Q[9]),
        .O(processQ0));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \processQ[9]_i_3__0 
       (.I0(Q[9]),
        .I1(\processQ[9]_i_7_n_0 ),
        .I2(Q[8]),
        .I3(Q[7]),
        .I4(Q[6]),
        .I5(Q[5]),
        .O(plusOp__0[9]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \processQ[9]_i_4__1 
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(Q[8]),
        .I4(Q[4]),
        .O(\processQ[9]_i_4__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \processQ[9]_i_5__0 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\processQ[9]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \processQ[9]_i_6__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\processQ_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \processQ[9]_i_7 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[4]),
        .O(\processQ[9]_i_7_n_0 ));
  FDRE \processQ_reg[0] 
       (.C(CLK),
        .CE(processQ0),
        .D(\processQ[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(\processQ[9]_i_1__1_n_0 ));
  FDRE \processQ_reg[1] 
       (.C(CLK),
        .CE(processQ0),
        .D(plusOp__0[1]),
        .Q(Q[1]),
        .R(\processQ[9]_i_1__1_n_0 ));
  FDRE \processQ_reg[2] 
       (.C(CLK),
        .CE(processQ0),
        .D(plusOp__0[2]),
        .Q(Q[2]),
        .R(\processQ[9]_i_1__1_n_0 ));
  FDRE \processQ_reg[3] 
       (.C(CLK),
        .CE(processQ0),
        .D(plusOp__0[3]),
        .Q(Q[3]),
        .R(\processQ[9]_i_1__1_n_0 ));
  FDRE \processQ_reg[4] 
       (.C(CLK),
        .CE(processQ0),
        .D(plusOp__0[4]),
        .Q(Q[4]),
        .R(\processQ[9]_i_1__1_n_0 ));
  FDRE \processQ_reg[5] 
       (.C(CLK),
        .CE(processQ0),
        .D(plusOp__0[5]),
        .Q(Q[5]),
        .R(\processQ[9]_i_1__1_n_0 ));
  FDRE \processQ_reg[6] 
       (.C(CLK),
        .CE(processQ0),
        .D(plusOp__0[6]),
        .Q(Q[6]),
        .R(\processQ[9]_i_1__1_n_0 ));
  FDRE \processQ_reg[7] 
       (.C(CLK),
        .CE(processQ0),
        .D(plusOp__0[7]),
        .Q(Q[7]),
        .R(\processQ[9]_i_1__1_n_0 ));
  FDRE \processQ_reg[8] 
       (.C(CLK),
        .CE(processQ0),
        .D(plusOp__0[8]),
        .Q(Q[8]),
        .R(\processQ[9]_i_1__1_n_0 ));
  FDRE \processQ_reg[9] 
       (.C(CLK),
        .CE(processQ0),
        .D(plusOp__0[9]),
        .Q(Q[9]),
        .R(\processQ[9]_i_1__1_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_Lab3Component1_1_0_2,Lab3Component1_1,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "Lab3Component1_1,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (LED,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    ac_mclk,
    ac_adc_sdata,
    ac_dac_sdata,
    ac_bclk,
    ac_lrclk,
    scl,
    sda,
    tmds,
    tmdsb,
    btn,
    switch,
    exSel,
    clk,
    flagQOut);
  output [7:0]LED;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* x_interface_mode = "slave S00_AXI_CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* x_interface_mode = "slave S00_AXI_RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* x_interface_mode = "slave S00_AXI" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 7, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [6:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [6:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;
  output ac_mclk;
  input ac_adc_sdata;
  output ac_dac_sdata;
  output ac_bclk;
  output ac_lrclk;
  inout scl;
  inout sda;
  output [3:0]tmds;
  output [3:0]tmdsb;
  input [4:0]btn;
  input [3:0]switch;
  input exSel;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input clk;
  output flagQOut;

  wire \<const0> ;
  wire \<const1> ;
  wire ac_adc_sdata;
  wire ac_bclk;
  wire ac_dac_sdata;
  wire ac_lrclk;
  wire ac_mclk;
  wire [4:0]btn;
  wire flagQOut;
  (* IBUF_LOW_PWR *) wire s00_axi_aclk;
  wire [6:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [6:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire scl;
  wire sda;
  wire [3:0]switch;
  (* SLEW = "SLOW" *) wire [3:0]tmds;
  (* SLEW = "SLOW" *) wire [3:0]tmdsb;

  assign LED[7] = \<const0> ;
  assign LED[6] = \<const0> ;
  assign LED[5] = \<const0> ;
  assign LED[4] = \<const1> ;
  assign LED[3] = \<const0> ;
  assign LED[2] = \<const1> ;
  assign LED[1] = \<const0> ;
  assign LED[0] = \<const0> ;
  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Lab3Component1_1 U0
       (.BCLK_int_reg(ac_bclk),
        .LRCLK_reg(ac_lrclk),
        .ac_adc_sdata(ac_adc_sdata),
        .ac_dac_sdata(ac_dac_sdata),
        .ac_mclk(ac_mclk),
        .axi_arready_reg(s00_axi_arready),
        .axi_awready_reg(s00_axi_awready),
        .axi_rvalid_reg(s00_axi_rvalid),
        .btn(btn[3:0]),
        .flagQOut(flagQOut),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[6:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[6:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .scl(scl),
        .sda(sda),
        .switch(switch),
        .tmds(tmds),
        .tmdsb(tmdsb));
  VCC VCC
       (.P(\<const1> ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dvid
   (red_s,
    green_s,
    blue_s,
    clock_s,
    \triggerVolt_reg[6] ,
    \triggerVolt_reg[4] ,
    \triggerTime_reg[6] ,
    \triggerTime_reg[4] ,
    Q,
    \triggerTime_reg[6]_0 ,
    \triggerTime_reg[3] ,
    \triggerVolt_reg[6]_0 ,
    \triggerVolt_reg[3] ,
    \triggerVolt_reg[4]_0 ,
    \triggerTime_reg[4]_0 ,
    clk_out2,
    clk_out3,
    \encoded_reg[9] ,
    triggerVoltOut,
    triggerTimeOut,
    \encoded_reg[9]_0 ,
    \encoded_reg[9]_1 ,
    \dc_bias_reg[1] ,
    SR,
    CLK,
    D,
    \encoded_reg[9]_2 ,
    \encoded_reg[8] );
  output red_s;
  output green_s;
  output blue_s;
  output clock_s;
  output \triggerVolt_reg[6] ;
  output \triggerVolt_reg[4] ;
  output \triggerTime_reg[6] ;
  output \triggerTime_reg[4] ;
  output [0:0]Q;
  output \triggerTime_reg[6]_0 ;
  output \triggerTime_reg[3] ;
  output \triggerVolt_reg[6]_0 ;
  output \triggerVolt_reg[3] ;
  output \triggerVolt_reg[4]_0 ;
  output \triggerTime_reg[4]_0 ;
  input clk_out2;
  input clk_out3;
  input \encoded_reg[9] ;
  input [5:0]triggerVoltOut;
  input [5:0]triggerTimeOut;
  input \encoded_reg[9]_0 ;
  input \encoded_reg[9]_1 ;
  input \dc_bias_reg[1] ;
  input [0:0]SR;
  input CLK;
  input [1:0]D;
  input \encoded_reg[9]_2 ;
  input \encoded_reg[8] ;

  wire CLK;
  wire [1:0]D;
  wire D0;
  wire D1;
  wire [0:0]Q;
  wire [0:0]SR;
  wire TDMS_encoder_blue_n_1;
  wire TDMS_encoder_blue_n_2;
  wire TDMS_encoder_blue_n_3;
  wire TDMS_encoder_blue_n_4;
  wire TDMS_encoder_green_n_0;
  wire TDMS_encoder_green_n_1;
  wire TDMS_encoder_green_n_2;
  wire TDMS_encoder_green_n_3;
  wire TDMS_encoder_red_n_10;
  wire TDMS_encoder_red_n_11;
  wire TDMS_encoder_red_n_12;
  wire TDMS_encoder_red_n_13;
  wire blue_s;
  wire clk_out2;
  wire clk_out3;
  wire clock_s;
  wire [7:0]data1;
  wire \dc_bias_reg[1] ;
  wire \encoded_reg[8] ;
  wire \encoded_reg[9] ;
  wire \encoded_reg[9]_0 ;
  wire \encoded_reg[9]_1 ;
  wire \encoded_reg[9]_2 ;
  wire green_s;
  wire [9:0]latched_blue;
  wire [9:0]latched_green;
  wire [9:0]latched_red;
  wire red_s;
  wire [9:2]shift_blue;
  wire \shift_blue[0]_i_1_n_0 ;
  wire \shift_blue[1]_i_1_n_0 ;
  wire \shift_blue[3]_i_1_n_0 ;
  wire \shift_blue[5]_i_1_n_0 ;
  wire \shift_blue[7]_i_1_n_0 ;
  wire \shift_blue[7]_i_2_n_0 ;
  wire [6:2]shift_blue_0;
  wire \shift_blue_reg_n_0_[0] ;
  wire \shift_blue_reg_n_0_[1] ;
  wire [1:0]shift_clock;
  wire \shift_clock_reg_n_0_[2] ;
  wire \shift_clock_reg_n_0_[3] ;
  wire \shift_clock_reg_n_0_[4] ;
  wire \shift_clock_reg_n_0_[5] ;
  wire \shift_clock_reg_n_0_[6] ;
  wire \shift_clock_reg_n_0_[7] ;
  wire \shift_clock_reg_n_0_[8] ;
  wire \shift_clock_reg_n_0_[9] ;
  wire [9:2]shift_green;
  wire \shift_green[0]_i_1_n_0 ;
  wire \shift_green[1]_i_1_n_0 ;
  wire \shift_green[3]_i_1_n_0 ;
  wire \shift_green[5]_i_1_n_0 ;
  wire \shift_green[7]_i_1_n_0 ;
  wire \shift_green[7]_i_2_n_0 ;
  wire [6:2]shift_green_1;
  wire \shift_green_reg_n_0_[0] ;
  wire \shift_green_reg_n_0_[1] ;
  wire [6:2]shift_red;
  wire \shift_red[0]_i_1_n_0 ;
  wire \shift_red[1]_i_1_n_0 ;
  wire \shift_red[3]_i_1_n_0 ;
  wire \shift_red[5]_i_1_n_0 ;
  wire \shift_red[7]_i_1_n_0 ;
  wire \shift_red[7]_i_2_n_0 ;
  wire \shift_red[9]_i_1_n_0 ;
  wire \shift_red[9]_i_2_n_0 ;
  wire [5:0]triggerTimeOut;
  wire \triggerTime_reg[3] ;
  wire \triggerTime_reg[4] ;
  wire \triggerTime_reg[4]_0 ;
  wire \triggerTime_reg[6] ;
  wire \triggerTime_reg[6]_0 ;
  wire [5:0]triggerVoltOut;
  wire \triggerVolt_reg[3] ;
  wire \triggerVolt_reg[4] ;
  wire \triggerVolt_reg[4]_0 ;
  wire \triggerVolt_reg[6] ;
  wire \triggerVolt_reg[6]_0 ;
  wire NLW_ODDR2_blue_R_UNCONNECTED;
  wire NLW_ODDR2_blue_S_UNCONNECTED;
  wire NLW_ODDR2_clock_R_UNCONNECTED;
  wire NLW_ODDR2_clock_S_UNCONNECTED;
  wire NLW_ODDR2_green_R_UNCONNECTED;
  wire NLW_ODDR2_green_S_UNCONNECTED;
  wire NLW_ODDR2_red_R_UNCONNECTED;
  wire NLW_ODDR2_red_S_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "ODDR2" *) 
  (* XILINX_TRANSFORM_PINMAP = "D0:D1 D1:D2 C0:C" *) 
  (* __SRVAL = "TRUE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .SRTYPE("ASYNC")) 
    ODDR2_blue
       (.C(clk_out2),
        .CE(1'b1),
        .D1(\shift_blue_reg_n_0_[0] ),
        .D2(\shift_blue_reg_n_0_[1] ),
        .Q(blue_s),
        .R(NLW_ODDR2_blue_R_UNCONNECTED),
        .S(NLW_ODDR2_blue_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "ODDR2" *) 
  (* XILINX_TRANSFORM_PINMAP = "D0:D1 D1:D2 C0:C" *) 
  (* __SRVAL = "TRUE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .SRTYPE("ASYNC")) 
    ODDR2_clock
       (.C(clk_out2),
        .CE(1'b1),
        .D1(shift_clock[0]),
        .D2(shift_clock[1]),
        .Q(clock_s),
        .R(NLW_ODDR2_clock_R_UNCONNECTED),
        .S(NLW_ODDR2_clock_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "ODDR2" *) 
  (* XILINX_TRANSFORM_PINMAP = "D0:D1 D1:D2 C0:C" *) 
  (* __SRVAL = "TRUE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .SRTYPE("ASYNC")) 
    ODDR2_green
       (.C(clk_out2),
        .CE(1'b1),
        .D1(\shift_green_reg_n_0_[0] ),
        .D2(\shift_green_reg_n_0_[1] ),
        .Q(green_s),
        .R(NLW_ODDR2_green_R_UNCONNECTED),
        .S(NLW_ODDR2_green_S_UNCONNECTED));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "ODDR2" *) 
  (* XILINX_TRANSFORM_PINMAP = "D0:D1 D1:D2 C0:C" *) 
  (* __SRVAL = "TRUE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .SRTYPE("ASYNC")) 
    ODDR2_red
       (.C(clk_out2),
        .CE(1'b1),
        .D1(D0),
        .D2(D1),
        .Q(red_s),
        .R(NLW_ODDR2_red_R_UNCONNECTED),
        .S(NLW_ODDR2_red_S_UNCONNECTED));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder TDMS_encoder_blue
       (.CLK(CLK),
        .D({TDMS_encoder_blue_n_1,TDMS_encoder_blue_n_2,TDMS_encoder_blue_n_3,TDMS_encoder_blue_n_4}),
        .Q(Q),
        .SR(SR),
        .\dc_bias_reg[1]_0 (\dc_bias_reg[1] ),
        .\encoded_reg[2]_0 (D),
        .\encoded_reg[8]_0 (\encoded_reg[8] ),
        .\encoded_reg[8]_1 (\encoded_reg[9]_0 ),
        .\encoded_reg[9]_0 (\encoded_reg[9]_2 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder_0 TDMS_encoder_green
       (.CLK(CLK),
        .D({TDMS_encoder_green_n_0,TDMS_encoder_green_n_1,TDMS_encoder_green_n_2,TDMS_encoder_green_n_3}),
        .SR(SR),
        .\encoded_reg[9]_0 (\encoded_reg[9]_0 ),
        .\encoded_reg[9]_1 (\encoded_reg[9]_1 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder_1 TDMS_encoder_red
       (.CLK(CLK),
        .D({TDMS_encoder_red_n_10,TDMS_encoder_red_n_11,TDMS_encoder_red_n_12,TDMS_encoder_red_n_13}),
        .SR(SR),
        .\encoded_reg[9]_0 (\encoded_reg[9] ),
        .\encoded_reg[9]_1 (\encoded_reg[9]_0 ),
        .triggerTimeOut(triggerTimeOut),
        .\triggerTime_reg[3] (\triggerTime_reg[3] ),
        .\triggerTime_reg[4] (\triggerTime_reg[4] ),
        .\triggerTime_reg[4]_0 (\triggerTime_reg[4]_0 ),
        .\triggerTime_reg[6] (\triggerTime_reg[6] ),
        .\triggerTime_reg[6]_0 (\triggerTime_reg[6]_0 ),
        .triggerVoltOut(triggerVoltOut),
        .\triggerVolt_reg[3] (\triggerVolt_reg[3] ),
        .\triggerVolt_reg[4] (\triggerVolt_reg[4] ),
        .\triggerVolt_reg[4]_0 (\triggerVolt_reg[4]_0 ),
        .\triggerVolt_reg[6] (\triggerVolt_reg[6] ),
        .\triggerVolt_reg[6]_0 (\triggerVolt_reg[6]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \latched_blue_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(TDMS_encoder_blue_n_4),
        .Q(latched_blue[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_blue_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(TDMS_encoder_blue_n_3),
        .Q(latched_blue[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_blue_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(TDMS_encoder_blue_n_2),
        .Q(latched_blue[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_blue_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(TDMS_encoder_blue_n_1),
        .Q(latched_blue[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_green_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(TDMS_encoder_green_n_3),
        .Q(latched_green[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_green_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(TDMS_encoder_green_n_2),
        .Q(latched_green[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_green_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(TDMS_encoder_green_n_1),
        .Q(latched_green[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_green_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(TDMS_encoder_green_n_0),
        .Q(latched_green[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_red_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(TDMS_encoder_red_n_13),
        .Q(latched_red[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_red_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(TDMS_encoder_red_n_12),
        .Q(latched_red[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_red_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(TDMS_encoder_red_n_11),
        .Q(latched_red[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_red_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(TDMS_encoder_red_n_10),
        .Q(latched_red[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shift_blue[0]_i_1 
       (.I0(\shift_red[9]_i_1_n_0 ),
        .I1(shift_blue[2]),
        .O(\shift_blue[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shift_blue[1]_i_1 
       (.I0(\shift_red[9]_i_1_n_0 ),
        .I1(shift_blue[3]),
        .O(\shift_blue[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_blue[2]_i_1 
       (.I0(shift_blue[4]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_blue[2]),
        .O(shift_blue_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shift_blue[3]_i_1 
       (.I0(\shift_red[9]_i_1_n_0 ),
        .I1(shift_blue[5]),
        .O(\shift_blue[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_blue[4]_i_1 
       (.I0(shift_blue[6]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_blue[2]),
        .O(shift_blue_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shift_blue[5]_i_1 
       (.I0(\shift_red[9]_i_1_n_0 ),
        .I1(shift_blue[7]),
        .O(\shift_blue[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_blue[6]_i_1 
       (.I0(shift_blue[8]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_blue[2]),
        .O(shift_blue_0[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \shift_blue[7]_i_1 
       (.I0(latched_blue[0]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .O(\shift_blue[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \shift_blue[7]_i_2 
       (.I0(\shift_red[9]_i_1_n_0 ),
        .I1(shift_blue[9]),
        .O(\shift_blue[7]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \shift_blue_reg[0] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(\shift_blue[0]_i_1_n_0 ),
        .Q(\shift_blue_reg_n_0_[0] ),
        .S(\shift_blue[7]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \shift_blue_reg[1] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(\shift_blue[1]_i_1_n_0 ),
        .Q(\shift_blue_reg_n_0_[1] ),
        .S(\shift_blue[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_blue_reg[2] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(shift_blue_0[2]),
        .Q(shift_blue[2]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \shift_blue_reg[3] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(\shift_blue[3]_i_1_n_0 ),
        .Q(shift_blue[3]),
        .S(\shift_blue[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_blue_reg[4] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(shift_blue_0[4]),
        .Q(shift_blue[4]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \shift_blue_reg[5] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(\shift_blue[5]_i_1_n_0 ),
        .Q(shift_blue[5]),
        .S(\shift_blue[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_blue_reg[6] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(shift_blue_0[6]),
        .Q(shift_blue[6]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \shift_blue_reg[7] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(\shift_blue[7]_i_2_n_0 ),
        .Q(shift_blue[7]),
        .S(\shift_blue[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_blue_reg[8] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(latched_blue[8]),
        .Q(shift_blue[8]),
        .R(\shift_red[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_blue_reg[9] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(latched_blue[9]),
        .Q(shift_blue[9]),
        .R(\shift_red[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \shift_clock_reg[0] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(\shift_clock_reg_n_0_[2] ),
        .Q(shift_clock[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \shift_clock_reg[1] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(\shift_clock_reg_n_0_[3] ),
        .Q(shift_clock[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \shift_clock_reg[2] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(\shift_clock_reg_n_0_[4] ),
        .Q(\shift_clock_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \shift_clock_reg[3] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(\shift_clock_reg_n_0_[5] ),
        .Q(\shift_clock_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \shift_clock_reg[4] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(\shift_clock_reg_n_0_[6] ),
        .Q(\shift_clock_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_clock_reg[5] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(\shift_clock_reg_n_0_[7] ),
        .Q(\shift_clock_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_clock_reg[6] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(\shift_clock_reg_n_0_[8] ),
        .Q(\shift_clock_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_clock_reg[7] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(\shift_clock_reg_n_0_[9] ),
        .Q(\shift_clock_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_clock_reg[8] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(shift_clock[0]),
        .Q(\shift_clock_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_clock_reg[9] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(shift_clock[1]),
        .Q(\shift_clock_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shift_green[0]_i_1 
       (.I0(\shift_red[9]_i_1_n_0 ),
        .I1(shift_green[2]),
        .O(\shift_green[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shift_green[1]_i_1 
       (.I0(\shift_red[9]_i_1_n_0 ),
        .I1(shift_green[3]),
        .O(\shift_green[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_green[2]_i_1 
       (.I0(shift_green[4]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_green[2]),
        .O(shift_green_1[2]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shift_green[3]_i_1 
       (.I0(\shift_red[9]_i_1_n_0 ),
        .I1(shift_green[5]),
        .O(\shift_green[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_green[4]_i_1 
       (.I0(shift_green[6]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_green[2]),
        .O(shift_green_1[4]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shift_green[5]_i_1 
       (.I0(\shift_red[9]_i_1_n_0 ),
        .I1(shift_green[7]),
        .O(\shift_green[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_green[6]_i_1 
       (.I0(shift_green[8]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_green[2]),
        .O(shift_green_1[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \shift_green[7]_i_1 
       (.I0(latched_green[0]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .O(\shift_green[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \shift_green[7]_i_2 
       (.I0(\shift_red[9]_i_1_n_0 ),
        .I1(shift_green[9]),
        .O(\shift_green[7]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \shift_green_reg[0] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(\shift_green[0]_i_1_n_0 ),
        .Q(\shift_green_reg_n_0_[0] ),
        .S(\shift_green[7]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \shift_green_reg[1] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(\shift_green[1]_i_1_n_0 ),
        .Q(\shift_green_reg_n_0_[1] ),
        .S(\shift_green[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_green_reg[2] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(shift_green_1[2]),
        .Q(shift_green[2]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \shift_green_reg[3] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(\shift_green[3]_i_1_n_0 ),
        .Q(shift_green[3]),
        .S(\shift_green[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_green_reg[4] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(shift_green_1[4]),
        .Q(shift_green[4]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \shift_green_reg[5] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(\shift_green[5]_i_1_n_0 ),
        .Q(shift_green[5]),
        .S(\shift_green[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_green_reg[6] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(shift_green_1[6]),
        .Q(shift_green[6]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \shift_green_reg[7] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(\shift_green[7]_i_2_n_0 ),
        .Q(shift_green[7]),
        .S(\shift_green[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_green_reg[8] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(latched_green[8]),
        .Q(shift_green[8]),
        .R(\shift_red[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_green_reg[9] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(latched_green[9]),
        .Q(shift_green[9]),
        .R(\shift_red[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shift_red[0]_i_1 
       (.I0(\shift_red[9]_i_1_n_0 ),
        .I1(data1[0]),
        .O(\shift_red[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shift_red[1]_i_1 
       (.I0(\shift_red[9]_i_1_n_0 ),
        .I1(data1[1]),
        .O(\shift_red[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_red[2]_i_1 
       (.I0(data1[2]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_red[2]),
        .O(shift_red[2]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shift_red[3]_i_1 
       (.I0(\shift_red[9]_i_1_n_0 ),
        .I1(data1[3]),
        .O(\shift_red[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_red[4]_i_1 
       (.I0(data1[4]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_red[2]),
        .O(shift_red[4]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shift_red[5]_i_1 
       (.I0(\shift_red[9]_i_1_n_0 ),
        .I1(data1[5]),
        .O(\shift_red[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_red[6]_i_1 
       (.I0(data1[6]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_red[2]),
        .O(shift_red[6]));
  LUT2 #(
    .INIT(4'h2)) 
    \shift_red[7]_i_1 
       (.I0(latched_red[0]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .O(\shift_red[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \shift_red[7]_i_2 
       (.I0(\shift_red[9]_i_1_n_0 ),
        .I1(data1[7]),
        .O(\shift_red[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEFFFFFFF)) 
    \shift_red[9]_i_1 
       (.I0(\shift_red[9]_i_2_n_0 ),
        .I1(\shift_clock_reg_n_0_[5] ),
        .I2(\shift_clock_reg_n_0_[4] ),
        .I3(\shift_clock_reg_n_0_[2] ),
        .I4(\shift_clock_reg_n_0_[3] ),
        .O(\shift_red[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \shift_red[9]_i_2 
       (.I0(\shift_clock_reg_n_0_[8] ),
        .I1(\shift_clock_reg_n_0_[9] ),
        .I2(\shift_clock_reg_n_0_[6] ),
        .I3(\shift_clock_reg_n_0_[7] ),
        .I4(shift_clock[1]),
        .I5(shift_clock[0]),
        .O(\shift_red[9]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \shift_red_reg[0] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(\shift_red[0]_i_1_n_0 ),
        .Q(D0),
        .S(\shift_red[7]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \shift_red_reg[1] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(\shift_red[1]_i_1_n_0 ),
        .Q(D1),
        .S(\shift_red[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_red_reg[2] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(shift_red[2]),
        .Q(data1[0]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \shift_red_reg[3] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(\shift_red[3]_i_1_n_0 ),
        .Q(data1[1]),
        .S(\shift_red[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_red_reg[4] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(shift_red[4]),
        .Q(data1[2]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \shift_red_reg[5] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(\shift_red[5]_i_1_n_0 ),
        .Q(data1[3]),
        .S(\shift_red[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_red_reg[6] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(shift_red[6]),
        .Q(data1[4]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \shift_red_reg[7] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(\shift_red[7]_i_2_n_0 ),
        .Q(data1[5]),
        .S(\shift_red[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_red_reg[8] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(latched_red[8]),
        .Q(data1[6]),
        .R(\shift_red[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_red_reg[9] 
       (.C(clk_out2),
        .CE(1'b1),
        .D(latched_red[9]),
        .Q(data1[7]),
        .R(\shift_red[9]_i_1_n_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2s_ctl
   (BCLK_int_reg_0,
    SR,
    LRCLK_reg_0,
    s00_axi_aresetn_0,
    s00_axi_aresetn_1,
    s00_axi_aresetn_2,
    ac_lrclk_sig_prev_reg,
    \ac_lrclk_count_reg[2] ,
    ac_dac_sdata,
    Q,
    \D_R_O_int_reg[23]_0 ,
    fromADCL,
    fromADCR,
    s00_axi_aclk,
    s00_axi_aresetn,
    \ac_lrclk_count_reg[2]_0 ,
    ac_lrclk_count__0,
    toADCR,
    toADCL,
    LBus_out,
    Rbus_out,
    ready_sig_reg,
    ready_sig_reg_0,
    ac_adc_sdata,
    switch,
    DOADO,
    \toADCR_reg[17] );
  output BCLK_int_reg_0;
  output [0:0]SR;
  output LRCLK_reg_0;
  output s00_axi_aresetn_0;
  output s00_axi_aresetn_1;
  output s00_axi_aresetn_2;
  output ac_lrclk_sig_prev_reg;
  output \ac_lrclk_count_reg[2] ;
  output ac_dac_sdata;
  output [2:0]Q;
  output [2:0]\D_R_O_int_reg[23]_0 ;
  output [15:0]fromADCL;
  output [15:0]fromADCR;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input \ac_lrclk_count_reg[2]_0 ;
  input [2:0]ac_lrclk_count__0;
  input [2:0]toADCR;
  input [2:0]toADCL;
  input [14:0]LBus_out;
  input [14:0]Rbus_out;
  input ready_sig_reg;
  input ready_sig_reg_0;
  input ac_adc_sdata;
  input [0:0]switch;
  input [15:0]DOADO;
  input [15:0]\toADCR_reg[17] ;

  wire BCLK_Fall_int;
  wire BCLK_int_i_1_n_0;
  wire BCLK_int_reg_0;
  wire Cnt_Bclk0;
  wire \Cnt_Bclk0_inferred__0/i__carry_n_3 ;
  wire \Cnt_Bclk[4]_i_1_n_0 ;
  wire [4:0]Cnt_Bclk_reg;
  wire [4:0]Cnt_Lrclk;
  wire \Cnt_Lrclk[0]_i_1_n_0 ;
  wire \Cnt_Lrclk[1]_i_1_n_0 ;
  wire \Cnt_Lrclk[2]_i_1_n_0 ;
  wire \Cnt_Lrclk[3]_i_1_n_0 ;
  wire \Cnt_Lrclk[4]_i_2_n_0 ;
  wire [15:0]DOADO;
  wire [22:8]D_L_O_int;
  wire D_L_O_int_0;
  wire [22:8]D_R_O_int;
  wire \D_R_O_int[23]_i_1_n_0 ;
  wire [2:0]\D_R_O_int_reg[23]_0 ;
  wire [31:0]Data_In_int;
  wire \Data_In_int[31]_i_1_n_0 ;
  wire \Data_Out_int[13]_i_1_n_0 ;
  wire \Data_Out_int[14]_i_1_n_0 ;
  wire \Data_Out_int[15]_i_1_n_0 ;
  wire \Data_Out_int[16]_i_1_n_0 ;
  wire \Data_Out_int[17]_i_1_n_0 ;
  wire \Data_Out_int[18]_i_1_n_0 ;
  wire \Data_Out_int[19]_i_1_n_0 ;
  wire \Data_Out_int[20]_i_1_n_0 ;
  wire \Data_Out_int[21]_i_1_n_0 ;
  wire \Data_Out_int[22]_i_1_n_0 ;
  wire \Data_Out_int[23]_i_1_n_0 ;
  wire \Data_Out_int[24]_i_1_n_0 ;
  wire \Data_Out_int[25]_i_1_n_0 ;
  wire \Data_Out_int[26]_i_1_n_0 ;
  wire \Data_Out_int[27]_i_1_n_0 ;
  wire \Data_Out_int[28]_i_1_n_0 ;
  wire \Data_Out_int[29]_i_1_n_0 ;
  wire \Data_Out_int[30]_i_1_n_0 ;
  wire \Data_Out_int[30]_i_2_n_0 ;
  wire \Data_Out_int[30]_i_3_n_0 ;
  wire \Data_Out_int[30]_i_4_n_0 ;
  wire \Data_Out_int[31]_i_1_n_0 ;
  wire \Data_Out_int[31]_i_2_n_0 ;
  wire \Data_Out_int[31]_i_3_n_0 ;
  wire \Data_Out_int[31]_i_4_n_0 ;
  wire \Data_Out_int_reg_n_0_[13] ;
  wire \Data_Out_int_reg_n_0_[14] ;
  wire \Data_Out_int_reg_n_0_[15] ;
  wire \Data_Out_int_reg_n_0_[16] ;
  wire \Data_Out_int_reg_n_0_[17] ;
  wire \Data_Out_int_reg_n_0_[18] ;
  wire \Data_Out_int_reg_n_0_[19] ;
  wire \Data_Out_int_reg_n_0_[20] ;
  wire \Data_Out_int_reg_n_0_[21] ;
  wire \Data_Out_int_reg_n_0_[22] ;
  wire \Data_Out_int_reg_n_0_[23] ;
  wire \Data_Out_int_reg_n_0_[24] ;
  wire \Data_Out_int_reg_n_0_[25] ;
  wire \Data_Out_int_reg_n_0_[26] ;
  wire \Data_Out_int_reg_n_0_[27] ;
  wire \Data_Out_int_reg_n_0_[28] ;
  wire \Data_Out_int_reg_n_0_[29] ;
  wire \Data_Out_int_reg_n_0_[30] ;
  wire [14:0]LBus_out;
  wire LRCLK_i_1_n_0;
  wire LRCLK_i_2_n_0;
  wire LRCLK_reg_0;
  wire [2:0]Q;
  wire [14:0]Rbus_out;
  wire [0:0]SR;
  wire ac_adc_sdata;
  wire ac_dac_sdata;
  wire [2:0]ac_lrclk_count__0;
  wire \ac_lrclk_count_reg[2] ;
  wire \ac_lrclk_count_reg[2]_0 ;
  wire ac_lrclk_sig_prev_reg;
  wire [15:0]fromADCL;
  wire [15:0]fromADCR;
  wire i__carry_i_1__4_n_0;
  wire i__carry_i_2__3_n_0;
  wire [4:0]p_0_in;
  wire p_17_in;
  wire ready_sig_reg;
  wire ready_sig_reg_0;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire s00_axi_aresetn_0;
  wire s00_axi_aresetn_1;
  wire s00_axi_aresetn_2;
  wire [0:0]switch;
  wire [2:0]toADCL;
  wire [2:0]toADCR;
  wire [15:0]\toADCR_reg[17] ;
  wire [3:2]\NLW_Cnt_Bclk0_inferred__0/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_Cnt_Bclk0_inferred__0/i__carry_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    BCLK_int_i_1
       (.I0(Cnt_Bclk0),
        .I1(BCLK_int_reg_0),
        .O(BCLK_int_i_1_n_0));
  FDRE BCLK_int_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(BCLK_int_i_1_n_0),
        .Q(BCLK_int_reg_0),
        .R(SR));
  CARRY4 \Cnt_Bclk0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\NLW_Cnt_Bclk0_inferred__0/i__carry_CO_UNCONNECTED [3:2],Cnt_Bclk0,\Cnt_Bclk0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_Cnt_Bclk0_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry_i_1__4_n_0,i__carry_i_2__3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    \Cnt_Bclk[0]_i_1 
       (.I0(Cnt_Bclk_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Cnt_Bclk[1]_i_1 
       (.I0(Cnt_Bclk_reg[0]),
        .I1(Cnt_Bclk_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \Cnt_Bclk[2]_i_1 
       (.I0(Cnt_Bclk_reg[1]),
        .I1(Cnt_Bclk_reg[0]),
        .I2(Cnt_Bclk_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \Cnt_Bclk[3]_i_1 
       (.I0(Cnt_Bclk_reg[2]),
        .I1(Cnt_Bclk_reg[0]),
        .I2(Cnt_Bclk_reg[1]),
        .I3(Cnt_Bclk_reg[3]),
        .O(p_0_in[3]));
  LUT2 #(
    .INIT(4'hB)) 
    \Cnt_Bclk[4]_i_1 
       (.I0(Cnt_Bclk0),
        .I1(s00_axi_aresetn),
        .O(\Cnt_Bclk[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \Cnt_Bclk[4]_i_2 
       (.I0(Cnt_Bclk_reg[3]),
        .I1(Cnt_Bclk_reg[1]),
        .I2(Cnt_Bclk_reg[0]),
        .I3(Cnt_Bclk_reg[2]),
        .I4(Cnt_Bclk_reg[4]),
        .O(p_0_in[4]));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_Bclk_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(Cnt_Bclk_reg[0]),
        .R(\Cnt_Bclk[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_Bclk_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(Cnt_Bclk_reg[1]),
        .R(\Cnt_Bclk[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_Bclk_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(Cnt_Bclk_reg[2]),
        .R(\Cnt_Bclk[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_Bclk_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(Cnt_Bclk_reg[3]),
        .R(\Cnt_Bclk[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_Bclk_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(Cnt_Bclk_reg[4]),
        .R(\Cnt_Bclk[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \Cnt_Lrclk[0]_i_1 
       (.I0(Cnt_Lrclk[0]),
        .O(\Cnt_Lrclk[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Cnt_Lrclk[1]_i_1 
       (.I0(Cnt_Lrclk[0]),
        .I1(Cnt_Lrclk[1]),
        .O(\Cnt_Lrclk[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \Cnt_Lrclk[2]_i_1 
       (.I0(Cnt_Lrclk[1]),
        .I1(Cnt_Lrclk[0]),
        .I2(Cnt_Lrclk[2]),
        .O(\Cnt_Lrclk[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \Cnt_Lrclk[3]_i_1 
       (.I0(Cnt_Lrclk[2]),
        .I1(Cnt_Lrclk[0]),
        .I2(Cnt_Lrclk[1]),
        .I3(Cnt_Lrclk[3]),
        .O(\Cnt_Lrclk[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Cnt_Lrclk[4]_i_1 
       (.I0(BCLK_int_reg_0),
        .I1(Cnt_Bclk0),
        .O(BCLK_Fall_int));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \Cnt_Lrclk[4]_i_2 
       (.I0(Cnt_Lrclk[3]),
        .I1(Cnt_Lrclk[1]),
        .I2(Cnt_Lrclk[0]),
        .I3(Cnt_Lrclk[2]),
        .I4(Cnt_Lrclk[4]),
        .O(\Cnt_Lrclk[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_Lrclk_reg[0] 
       (.C(s00_axi_aclk),
        .CE(BCLK_Fall_int),
        .D(\Cnt_Lrclk[0]_i_1_n_0 ),
        .Q(Cnt_Lrclk[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_Lrclk_reg[1] 
       (.C(s00_axi_aclk),
        .CE(BCLK_Fall_int),
        .D(\Cnt_Lrclk[1]_i_1_n_0 ),
        .Q(Cnt_Lrclk[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_Lrclk_reg[2] 
       (.C(s00_axi_aclk),
        .CE(BCLK_Fall_int),
        .D(\Cnt_Lrclk[2]_i_1_n_0 ),
        .Q(Cnt_Lrclk[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_Lrclk_reg[3] 
       (.C(s00_axi_aclk),
        .CE(BCLK_Fall_int),
        .D(\Cnt_Lrclk[3]_i_1_n_0 ),
        .Q(Cnt_Lrclk[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_Lrclk_reg[4] 
       (.C(s00_axi_aclk),
        .CE(BCLK_Fall_int),
        .D(\Cnt_Lrclk[4]_i_2_n_0 ),
        .Q(Cnt_Lrclk[4]),
        .R(SR));
  LUT3 #(
    .INIT(8'h08)) 
    \D_L_O_int[23]_i_1 
       (.I0(BCLK_int_reg_0),
        .I1(LRCLK_reg_0),
        .I2(\Data_Out_int[31]_i_3_n_0 ),
        .O(D_L_O_int_0));
  FDRE \D_L_O_int_reg[10] 
       (.C(s00_axi_aclk),
        .CE(D_L_O_int_0),
        .D(Data_In_int[18]),
        .Q(D_L_O_int[10]),
        .R(SR));
  FDRE \D_L_O_int_reg[11] 
       (.C(s00_axi_aclk),
        .CE(D_L_O_int_0),
        .D(Data_In_int[19]),
        .Q(D_L_O_int[11]),
        .R(SR));
  FDRE \D_L_O_int_reg[12] 
       (.C(s00_axi_aclk),
        .CE(D_L_O_int_0),
        .D(Data_In_int[20]),
        .Q(D_L_O_int[12]),
        .R(SR));
  FDRE \D_L_O_int_reg[13] 
       (.C(s00_axi_aclk),
        .CE(D_L_O_int_0),
        .D(Data_In_int[21]),
        .Q(D_L_O_int[13]),
        .R(SR));
  FDRE \D_L_O_int_reg[14] 
       (.C(s00_axi_aclk),
        .CE(D_L_O_int_0),
        .D(Data_In_int[22]),
        .Q(D_L_O_int[14]),
        .R(SR));
  FDRE \D_L_O_int_reg[15] 
       (.C(s00_axi_aclk),
        .CE(D_L_O_int_0),
        .D(Data_In_int[23]),
        .Q(D_L_O_int[15]),
        .R(SR));
  FDRE \D_L_O_int_reg[16] 
       (.C(s00_axi_aclk),
        .CE(D_L_O_int_0),
        .D(Data_In_int[24]),
        .Q(D_L_O_int[16]),
        .R(SR));
  FDRE \D_L_O_int_reg[17] 
       (.C(s00_axi_aclk),
        .CE(D_L_O_int_0),
        .D(Data_In_int[25]),
        .Q(D_L_O_int[17]),
        .R(SR));
  FDRE \D_L_O_int_reg[18] 
       (.C(s00_axi_aclk),
        .CE(D_L_O_int_0),
        .D(Data_In_int[26]),
        .Q(D_L_O_int[18]),
        .R(SR));
  FDRE \D_L_O_int_reg[19] 
       (.C(s00_axi_aclk),
        .CE(D_L_O_int_0),
        .D(Data_In_int[27]),
        .Q(D_L_O_int[19]),
        .R(SR));
  FDRE \D_L_O_int_reg[20] 
       (.C(s00_axi_aclk),
        .CE(D_L_O_int_0),
        .D(Data_In_int[28]),
        .Q(D_L_O_int[20]),
        .R(SR));
  FDRE \D_L_O_int_reg[21] 
       (.C(s00_axi_aclk),
        .CE(D_L_O_int_0),
        .D(Data_In_int[29]),
        .Q(D_L_O_int[21]),
        .R(SR));
  FDRE \D_L_O_int_reg[22] 
       (.C(s00_axi_aclk),
        .CE(D_L_O_int_0),
        .D(Data_In_int[30]),
        .Q(D_L_O_int[22]),
        .R(SR));
  FDRE \D_L_O_int_reg[23] 
       (.C(s00_axi_aclk),
        .CE(D_L_O_int_0),
        .D(Data_In_int[31]),
        .Q(Q[2]),
        .R(SR));
  FDRE \D_L_O_int_reg[6] 
       (.C(s00_axi_aclk),
        .CE(D_L_O_int_0),
        .D(Data_In_int[14]),
        .Q(Q[0]),
        .R(SR));
  FDRE \D_L_O_int_reg[7] 
       (.C(s00_axi_aclk),
        .CE(D_L_O_int_0),
        .D(Data_In_int[15]),
        .Q(Q[1]),
        .R(SR));
  FDRE \D_L_O_int_reg[8] 
       (.C(s00_axi_aclk),
        .CE(D_L_O_int_0),
        .D(Data_In_int[16]),
        .Q(D_L_O_int[8]),
        .R(SR));
  FDRE \D_L_O_int_reg[9] 
       (.C(s00_axi_aclk),
        .CE(D_L_O_int_0),
        .D(Data_In_int[17]),
        .Q(D_L_O_int[9]),
        .R(SR));
  LUT3 #(
    .INIT(8'h04)) 
    \D_R_O_int[23]_i_1 
       (.I0(LRCLK_reg_0),
        .I1(BCLK_int_reg_0),
        .I2(\Data_Out_int[31]_i_3_n_0 ),
        .O(\D_R_O_int[23]_i_1_n_0 ));
  FDRE \D_R_O_int_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(Data_In_int[18]),
        .Q(D_R_O_int[10]),
        .R(SR));
  FDRE \D_R_O_int_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(Data_In_int[19]),
        .Q(D_R_O_int[11]),
        .R(SR));
  FDRE \D_R_O_int_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(Data_In_int[20]),
        .Q(D_R_O_int[12]),
        .R(SR));
  FDRE \D_R_O_int_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(Data_In_int[21]),
        .Q(D_R_O_int[13]),
        .R(SR));
  FDRE \D_R_O_int_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(Data_In_int[22]),
        .Q(D_R_O_int[14]),
        .R(SR));
  FDRE \D_R_O_int_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(Data_In_int[23]),
        .Q(D_R_O_int[15]),
        .R(SR));
  FDRE \D_R_O_int_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(Data_In_int[24]),
        .Q(D_R_O_int[16]),
        .R(SR));
  FDRE \D_R_O_int_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(Data_In_int[25]),
        .Q(D_R_O_int[17]),
        .R(SR));
  FDRE \D_R_O_int_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(Data_In_int[26]),
        .Q(D_R_O_int[18]),
        .R(SR));
  FDRE \D_R_O_int_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(Data_In_int[27]),
        .Q(D_R_O_int[19]),
        .R(SR));
  FDRE \D_R_O_int_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(Data_In_int[28]),
        .Q(D_R_O_int[20]),
        .R(SR));
  FDRE \D_R_O_int_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(Data_In_int[29]),
        .Q(D_R_O_int[21]),
        .R(SR));
  FDRE \D_R_O_int_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(Data_In_int[30]),
        .Q(D_R_O_int[22]),
        .R(SR));
  FDRE \D_R_O_int_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(Data_In_int[31]),
        .Q(\D_R_O_int_reg[23]_0 [2]),
        .R(SR));
  FDRE \D_R_O_int_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(Data_In_int[14]),
        .Q(\D_R_O_int_reg[23]_0 [0]),
        .R(SR));
  FDRE \D_R_O_int_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(Data_In_int[15]),
        .Q(\D_R_O_int_reg[23]_0 [1]),
        .R(SR));
  FDRE \D_R_O_int_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(Data_In_int[16]),
        .Q(D_R_O_int[8]),
        .R(SR));
  FDRE \D_R_O_int_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\D_R_O_int[23]_i_1_n_0 ),
        .D(Data_In_int[17]),
        .Q(D_R_O_int[9]),
        .R(SR));
  LUT3 #(
    .INIT(8'h4F)) 
    \Data_In_int[31]_i_1 
       (.I0(\Data_Out_int[31]_i_3_n_0 ),
        .I1(BCLK_int_reg_0),
        .I2(s00_axi_aresetn),
        .O(\Data_In_int[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Data_In_int[31]_i_2 
       (.I0(Cnt_Bclk0),
        .I1(BCLK_int_reg_0),
        .O(p_17_in));
  FDRE \Data_In_int_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(ac_adc_sdata),
        .Q(Data_In_int[0]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[9]),
        .Q(Data_In_int[10]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[10]),
        .Q(Data_In_int[11]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[11]),
        .Q(Data_In_int[12]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[12]),
        .Q(Data_In_int[13]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[13]),
        .Q(Data_In_int[14]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[14]),
        .Q(Data_In_int[15]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[15]),
        .Q(Data_In_int[16]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[16]),
        .Q(Data_In_int[17]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[17]),
        .Q(Data_In_int[18]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[18]),
        .Q(Data_In_int[19]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[0]),
        .Q(Data_In_int[1]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[19]),
        .Q(Data_In_int[20]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[20]),
        .Q(Data_In_int[21]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[21]),
        .Q(Data_In_int[22]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[22]),
        .Q(Data_In_int[23]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[23]),
        .Q(Data_In_int[24]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[24]),
        .Q(Data_In_int[25]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[25]),
        .Q(Data_In_int[26]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[26]),
        .Q(Data_In_int[27]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[27]),
        .Q(Data_In_int[28]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[28]),
        .Q(Data_In_int[29]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[1]),
        .Q(Data_In_int[2]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[29]),
        .Q(Data_In_int[30]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[30]),
        .Q(Data_In_int[31]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[2]),
        .Q(Data_In_int[3]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[3]),
        .Q(Data_In_int[4]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[4]),
        .Q(Data_In_int[5]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[5]),
        .Q(Data_In_int[6]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[6]),
        .Q(Data_In_int[7]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[7]),
        .Q(Data_In_int[8]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  FDRE \Data_In_int_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_17_in),
        .D(Data_In_int[8]),
        .Q(Data_In_int[9]),
        .R(\Data_In_int[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \Data_Out_int[13]_i_1 
       (.I0(toADCR[0]),
        .I1(\Data_Out_int[30]_i_3_n_0 ),
        .I2(toADCL[0]),
        .I3(\Data_Out_int[30]_i_2_n_0 ),
        .O(\Data_Out_int[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Data_Out_int[14]_i_1 
       (.I0(\Data_Out_int[30]_i_2_n_0 ),
        .I1(toADCL[1]),
        .I2(\Data_Out_int[30]_i_3_n_0 ),
        .I3(toADCR[1]),
        .I4(\Data_Out_int_reg_n_0_[13] ),
        .I5(\Data_Out_int[31]_i_4_n_0 ),
        .O(\Data_Out_int[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Data_Out_int[15]_i_1 
       (.I0(\Data_Out_int[30]_i_2_n_0 ),
        .I1(LBus_out[0]),
        .I2(\Data_Out_int[30]_i_3_n_0 ),
        .I3(Rbus_out[0]),
        .I4(\Data_Out_int_reg_n_0_[14] ),
        .I5(\Data_Out_int[31]_i_4_n_0 ),
        .O(\Data_Out_int[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Data_Out_int[16]_i_1 
       (.I0(\Data_Out_int[30]_i_2_n_0 ),
        .I1(LBus_out[1]),
        .I2(\Data_Out_int[30]_i_3_n_0 ),
        .I3(Rbus_out[1]),
        .I4(\Data_Out_int_reg_n_0_[15] ),
        .I5(\Data_Out_int[31]_i_4_n_0 ),
        .O(\Data_Out_int[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Data_Out_int[17]_i_1 
       (.I0(\Data_Out_int[30]_i_2_n_0 ),
        .I1(LBus_out[2]),
        .I2(\Data_Out_int[30]_i_3_n_0 ),
        .I3(Rbus_out[2]),
        .I4(\Data_Out_int_reg_n_0_[16] ),
        .I5(\Data_Out_int[31]_i_4_n_0 ),
        .O(\Data_Out_int[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Data_Out_int[18]_i_1 
       (.I0(\Data_Out_int[30]_i_2_n_0 ),
        .I1(LBus_out[3]),
        .I2(\Data_Out_int[30]_i_3_n_0 ),
        .I3(Rbus_out[3]),
        .I4(\Data_Out_int_reg_n_0_[17] ),
        .I5(\Data_Out_int[31]_i_4_n_0 ),
        .O(\Data_Out_int[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Data_Out_int[19]_i_1 
       (.I0(\Data_Out_int[30]_i_2_n_0 ),
        .I1(LBus_out[4]),
        .I2(\Data_Out_int[30]_i_3_n_0 ),
        .I3(Rbus_out[4]),
        .I4(\Data_Out_int_reg_n_0_[18] ),
        .I5(\Data_Out_int[31]_i_4_n_0 ),
        .O(\Data_Out_int[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Data_Out_int[20]_i_1 
       (.I0(\Data_Out_int[30]_i_2_n_0 ),
        .I1(LBus_out[5]),
        .I2(\Data_Out_int[30]_i_3_n_0 ),
        .I3(Rbus_out[5]),
        .I4(\Data_Out_int_reg_n_0_[19] ),
        .I5(\Data_Out_int[31]_i_4_n_0 ),
        .O(\Data_Out_int[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Data_Out_int[21]_i_1 
       (.I0(\Data_Out_int[30]_i_2_n_0 ),
        .I1(LBus_out[6]),
        .I2(\Data_Out_int[30]_i_3_n_0 ),
        .I3(Rbus_out[6]),
        .I4(\Data_Out_int_reg_n_0_[20] ),
        .I5(\Data_Out_int[31]_i_4_n_0 ),
        .O(\Data_Out_int[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Data_Out_int[22]_i_1 
       (.I0(\Data_Out_int[30]_i_2_n_0 ),
        .I1(LBus_out[7]),
        .I2(\Data_Out_int[30]_i_3_n_0 ),
        .I3(Rbus_out[7]),
        .I4(\Data_Out_int_reg_n_0_[21] ),
        .I5(\Data_Out_int[31]_i_4_n_0 ),
        .O(\Data_Out_int[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Data_Out_int[23]_i_1 
       (.I0(\Data_Out_int[30]_i_2_n_0 ),
        .I1(LBus_out[8]),
        .I2(\Data_Out_int[30]_i_3_n_0 ),
        .I3(Rbus_out[8]),
        .I4(\Data_Out_int_reg_n_0_[22] ),
        .I5(\Data_Out_int[31]_i_4_n_0 ),
        .O(\Data_Out_int[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Data_Out_int[24]_i_1 
       (.I0(\Data_Out_int[30]_i_2_n_0 ),
        .I1(LBus_out[9]),
        .I2(\Data_Out_int[30]_i_3_n_0 ),
        .I3(Rbus_out[9]),
        .I4(\Data_Out_int_reg_n_0_[23] ),
        .I5(\Data_Out_int[31]_i_4_n_0 ),
        .O(\Data_Out_int[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Data_Out_int[25]_i_1 
       (.I0(\Data_Out_int[30]_i_2_n_0 ),
        .I1(LBus_out[10]),
        .I2(\Data_Out_int[30]_i_3_n_0 ),
        .I3(Rbus_out[10]),
        .I4(\Data_Out_int_reg_n_0_[24] ),
        .I5(\Data_Out_int[31]_i_4_n_0 ),
        .O(\Data_Out_int[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Data_Out_int[26]_i_1 
       (.I0(\Data_Out_int[30]_i_2_n_0 ),
        .I1(LBus_out[11]),
        .I2(\Data_Out_int[30]_i_3_n_0 ),
        .I3(Rbus_out[11]),
        .I4(\Data_Out_int_reg_n_0_[25] ),
        .I5(\Data_Out_int[31]_i_4_n_0 ),
        .O(\Data_Out_int[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Data_Out_int[27]_i_1 
       (.I0(\Data_Out_int[30]_i_2_n_0 ),
        .I1(LBus_out[12]),
        .I2(\Data_Out_int[30]_i_3_n_0 ),
        .I3(Rbus_out[12]),
        .I4(\Data_Out_int_reg_n_0_[26] ),
        .I5(\Data_Out_int[31]_i_4_n_0 ),
        .O(\Data_Out_int[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Data_Out_int[28]_i_1 
       (.I0(\Data_Out_int[30]_i_2_n_0 ),
        .I1(LBus_out[13]),
        .I2(\Data_Out_int[30]_i_3_n_0 ),
        .I3(Rbus_out[13]),
        .I4(\Data_Out_int_reg_n_0_[27] ),
        .I5(\Data_Out_int[31]_i_4_n_0 ),
        .O(\Data_Out_int[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Data_Out_int[29]_i_1 
       (.I0(\Data_Out_int[30]_i_2_n_0 ),
        .I1(LBus_out[14]),
        .I2(\Data_Out_int[30]_i_3_n_0 ),
        .I3(Rbus_out[14]),
        .I4(\Data_Out_int_reg_n_0_[28] ),
        .I5(\Data_Out_int[31]_i_4_n_0 ),
        .O(\Data_Out_int[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \Data_Out_int[30]_i_1 
       (.I0(\Data_Out_int[30]_i_2_n_0 ),
        .I1(toADCL[2]),
        .I2(\Data_Out_int[30]_i_3_n_0 ),
        .I3(toADCR[2]),
        .I4(\Data_Out_int_reg_n_0_[29] ),
        .I5(\Data_Out_int[31]_i_4_n_0 ),
        .O(\Data_Out_int[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000020FFFFFFFF)) 
    \Data_Out_int[30]_i_2 
       (.I0(\Data_Out_int[30]_i_4_n_0 ),
        .I1(BCLK_int_reg_0),
        .I2(Cnt_Bclk0),
        .I3(LRCLK_reg_0),
        .I4(Cnt_Lrclk[4]),
        .I5(s00_axi_aresetn),
        .O(\Data_Out_int[30]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \Data_Out_int[30]_i_3 
       (.I0(s00_axi_aresetn),
        .I1(LRCLK_reg_0),
        .I2(BCLK_int_reg_0),
        .I3(\Data_Out_int[31]_i_3_n_0 ),
        .O(\Data_Out_int[30]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \Data_Out_int[30]_i_4 
       (.I0(Cnt_Lrclk[1]),
        .I1(Cnt_Lrclk[0]),
        .I2(Cnt_Lrclk[3]),
        .I3(Cnt_Lrclk[2]),
        .O(\Data_Out_int[30]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hD5FF)) 
    \Data_Out_int[31]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(BCLK_int_reg_0),
        .I2(Cnt_Bclk0),
        .I3(\Data_Out_int[31]_i_3_n_0 ),
        .O(\Data_Out_int[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Data_Out_int[31]_i_2 
       (.I0(\Data_Out_int[31]_i_4_n_0 ),
        .I1(\Data_Out_int_reg_n_0_[30] ),
        .O(\Data_Out_int[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \Data_Out_int[31]_i_3 
       (.I0(Cnt_Lrclk[4]),
        .I1(Cnt_Bclk0),
        .I2(Cnt_Lrclk[2]),
        .I3(Cnt_Lrclk[3]),
        .I4(Cnt_Lrclk[1]),
        .I5(Cnt_Lrclk[0]),
        .O(\Data_Out_int[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \Data_Out_int[31]_i_4 
       (.I0(BCLK_int_reg_0),
        .I1(\Data_Out_int[31]_i_3_n_0 ),
        .I2(s00_axi_aresetn),
        .O(\Data_Out_int[31]_i_4_n_0 ));
  FDRE \Data_Out_int_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[13]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[14]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[15]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[16]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[17]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[18]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[19]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[20]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[21]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[22]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[23]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[24]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[25]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[26]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[27]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[28]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[29]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[30]_i_1_n_0 ),
        .Q(\Data_Out_int_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \Data_Out_int_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\Data_Out_int[31]_i_1_n_0 ),
        .D(\Data_Out_int[31]_i_2_n_0 ),
        .Q(ac_dac_sdata),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    LRCLK_i_1
       (.I0(LRCLK_i_2_n_0),
        .I1(Cnt_Bclk0),
        .I2(BCLK_int_reg_0),
        .I3(Cnt_Lrclk[4]),
        .I4(LRCLK_reg_0),
        .O(LRCLK_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    LRCLK_i_2
       (.I0(Cnt_Lrclk[2]),
        .I1(Cnt_Lrclk[0]),
        .I2(Cnt_Lrclk[1]),
        .I3(Cnt_Lrclk[3]),
        .O(LRCLK_i_2_n_0));
  FDRE LRCLK_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(LRCLK_i_1_n_0),
        .Q(LRCLK_reg_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8A20)) 
    \ac_lrclk_count[0]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\ac_lrclk_count_reg[2]_0 ),
        .I2(LRCLK_reg_0),
        .I3(ac_lrclk_count__0[0]),
        .O(s00_axi_aresetn_1));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h8A20AA00)) 
    \ac_lrclk_count[1]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\ac_lrclk_count_reg[2]_0 ),
        .I2(LRCLK_reg_0),
        .I3(ac_lrclk_count__0[1]),
        .I4(ac_lrclk_count__0[0]),
        .O(s00_axi_aresetn_2));
  LUT6 #(
    .INIT(64'h8A20AA00AA00AA00)) 
    \ac_lrclk_count[2]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\ac_lrclk_count_reg[2]_0 ),
        .I2(LRCLK_reg_0),
        .I3(ac_lrclk_count__0[2]),
        .I4(ac_lrclk_count__0[1]),
        .I5(ac_lrclk_count__0[0]),
        .O(s00_axi_aresetn_0));
  LUT3 #(
    .INIT(8'hE2)) 
    ac_lrclk_sig_prev_i_1
       (.I0(\ac_lrclk_count_reg[2]_0 ),
        .I1(s00_axi_aresetn),
        .I2(LRCLK_reg_0),
        .O(ac_lrclk_sig_prev_reg));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(SR));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_1__4
       (.I0(Cnt_Bclk_reg[3]),
        .I1(Cnt_Bclk_reg[4]),
        .O(i__carry_i_1__4_n_0));
  LUT3 #(
    .INIT(8'h10)) 
    i__carry_i_2__3
       (.I0(Cnt_Bclk_reg[2]),
        .I1(Cnt_Bclk_reg[1]),
        .I2(Cnt_Bclk_reg[0]),
        .O(i__carry_i_2__3_n_0));
  LUT6 #(
    .INIT(64'h00F0FFFF00200000)) 
    ready_sig_i_1
       (.I0(ac_lrclk_count__0[2]),
        .I1(ready_sig_reg),
        .I2(LRCLK_reg_0),
        .I3(\ac_lrclk_count_reg[2]_0 ),
        .I4(s00_axi_aresetn),
        .I5(ready_sig_reg_0),
        .O(\ac_lrclk_count_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \toADCL[17]_i_1 
       (.I0(Q[2]),
        .I1(switch),
        .I2(DOADO[15]),
        .O(fromADCL[15]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \toADCR[17]_i_1 
       (.I0(\D_R_O_int_reg[23]_0 [2]),
        .I1(switch),
        .I2(\toADCR_reg[17] [15]),
        .O(fromADCR[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_Lbus_out[0]_i_1 
       (.I0(D_L_O_int[8]),
        .I1(switch),
        .I2(DOADO[0]),
        .O(fromADCL[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_Lbus_out[10]_i_1 
       (.I0(D_L_O_int[18]),
        .I1(switch),
        .I2(DOADO[10]),
        .O(fromADCL[10]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_Lbus_out[11]_i_1 
       (.I0(D_L_O_int[19]),
        .I1(switch),
        .I2(DOADO[11]),
        .O(fromADCL[11]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_Lbus_out[12]_i_1 
       (.I0(D_L_O_int[20]),
        .I1(switch),
        .I2(DOADO[12]),
        .O(fromADCL[12]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_Lbus_out[13]_i_1 
       (.I0(D_L_O_int[21]),
        .I1(switch),
        .I2(DOADO[13]),
        .O(fromADCL[13]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_Lbus_out[14]_i_1 
       (.I0(D_L_O_int[22]),
        .I1(switch),
        .I2(DOADO[14]),
        .O(fromADCL[14]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_Lbus_out[1]_i_1 
       (.I0(D_L_O_int[9]),
        .I1(switch),
        .I2(DOADO[1]),
        .O(fromADCL[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_Lbus_out[2]_i_1 
       (.I0(D_L_O_int[10]),
        .I1(switch),
        .I2(DOADO[2]),
        .O(fromADCL[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_Lbus_out[3]_i_1 
       (.I0(D_L_O_int[11]),
        .I1(switch),
        .I2(DOADO[3]),
        .O(fromADCL[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_Lbus_out[4]_i_1 
       (.I0(D_L_O_int[12]),
        .I1(switch),
        .I2(DOADO[4]),
        .O(fromADCL[4]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_Lbus_out[5]_i_1 
       (.I0(D_L_O_int[13]),
        .I1(switch),
        .I2(DOADO[5]),
        .O(fromADCL[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_Lbus_out[6]_i_1 
       (.I0(D_L_O_int[14]),
        .I1(switch),
        .I2(DOADO[6]),
        .O(fromADCL[6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_Lbus_out[7]_i_1 
       (.I0(D_L_O_int[15]),
        .I1(switch),
        .I2(DOADO[7]),
        .O(fromADCL[7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_Lbus_out[8]_i_1 
       (.I0(D_L_O_int[16]),
        .I1(switch),
        .I2(DOADO[8]),
        .O(fromADCL[8]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_Lbus_out[9]_i_1 
       (.I0(D_L_O_int[17]),
        .I1(switch),
        .I2(DOADO[9]),
        .O(fromADCL[9]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_Rbus_out[0]_i_1 
       (.I0(D_R_O_int[8]),
        .I1(switch),
        .I2(\toADCR_reg[17] [0]),
        .O(fromADCR[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_Rbus_out[10]_i_1 
       (.I0(D_R_O_int[18]),
        .I1(switch),
        .I2(\toADCR_reg[17] [10]),
        .O(fromADCR[10]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_Rbus_out[11]_i_1 
       (.I0(D_R_O_int[19]),
        .I1(switch),
        .I2(\toADCR_reg[17] [11]),
        .O(fromADCR[11]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_Rbus_out[12]_i_1 
       (.I0(D_R_O_int[20]),
        .I1(switch),
        .I2(\toADCR_reg[17] [12]),
        .O(fromADCR[12]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_Rbus_out[13]_i_1 
       (.I0(D_R_O_int[21]),
        .I1(switch),
        .I2(\toADCR_reg[17] [13]),
        .O(fromADCR[13]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_Rbus_out[14]_i_1 
       (.I0(D_R_O_int[22]),
        .I1(switch),
        .I2(\toADCR_reg[17] [14]),
        .O(fromADCR[14]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_Rbus_out[1]_i_1 
       (.I0(D_R_O_int[9]),
        .I1(switch),
        .I2(\toADCR_reg[17] [1]),
        .O(fromADCR[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_Rbus_out[2]_i_1 
       (.I0(D_R_O_int[10]),
        .I1(switch),
        .I2(\toADCR_reg[17] [2]),
        .O(fromADCR[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_Rbus_out[3]_i_1 
       (.I0(D_R_O_int[11]),
        .I1(switch),
        .I2(\toADCR_reg[17] [3]),
        .O(fromADCR[3]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_Rbus_out[4]_i_1 
       (.I0(D_R_O_int[12]),
        .I1(switch),
        .I2(\toADCR_reg[17] [4]),
        .O(fromADCR[4]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_Rbus_out[5]_i_1 
       (.I0(D_R_O_int[13]),
        .I1(switch),
        .I2(\toADCR_reg[17] [5]),
        .O(fromADCR[5]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_Rbus_out[6]_i_1 
       (.I0(D_R_O_int[14]),
        .I1(switch),
        .I2(\toADCR_reg[17] [6]),
        .O(fromADCR[6]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_Rbus_out[7]_i_1 
       (.I0(D_R_O_int[15]),
        .I1(switch),
        .I2(\toADCR_reg[17] [7]),
        .O(fromADCR[7]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_Rbus_out[8]_i_1 
       (.I0(D_R_O_int[16]),
        .I1(switch),
        .I2(\toADCR_reg[17] [8]),
        .O(fromADCR[8]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \w_Rbus_out[9]_i_1 
       (.I0(D_R_O_int[17]),
        .I1(switch),
        .I2(\toADCR_reg[17] [9]),
        .O(fromADCR[9]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lab2_datapath
   (SR,
    flagQOut,
    LBus_out,
    sw,
    Rbus_out,
    \FSM_onehot_state_reg[3] ,
    \processQ_reg[1] ,
    triggerVoltOut,
    triggerTimeOut,
    CO,
    \triggerVolt_reg[8]_0 ,
    tmds,
    tmdsb,
    ac_mclk,
    ac_dac_sdata,
    LRCLK_reg,
    BCLK_int_reg,
    scl,
    sda,
    s00_axi_aclk,
    w_wrEnbMux,
    Q,
    s00_axi_aresetn,
    btn,
    switch,
    D,
    \processQ_reg[9] ,
    \sdp_bl.ramb18_dp_bl.ram18_bl ,
    \sdp_bl.ramb18_dp_bl.ram18_bl_0 ,
    \sdp_bl.ramb18_dp_bl.ram18_bl_1 ,
    flagQ_reg,
    E,
    ac_adc_sdata);
  output [0:0]SR;
  output flagQOut;
  output [15:0]LBus_out;
  output [1:0]sw;
  output [15:0]Rbus_out;
  output [0:0]\FSM_onehot_state_reg[3] ;
  output [1:0]\processQ_reg[1] ;
  output [7:0]triggerVoltOut;
  output [7:0]triggerTimeOut;
  output [0:0]CO;
  output [0:0]\triggerVolt_reg[8]_0 ;
  output [3:0]tmds;
  output [3:0]tmdsb;
  output ac_mclk;
  output ac_dac_sdata;
  output LRCLK_reg;
  output BCLK_int_reg;
  inout scl;
  inout sda;
  input s00_axi_aclk;
  input w_wrEnbMux;
  input [1:0]Q;
  input s00_axi_aresetn;
  input [3:0]btn;
  input [3:0]switch;
  input [1:0]D;
  input \processQ_reg[9] ;
  input [9:0]\sdp_bl.ramb18_dp_bl.ram18_bl ;
  input [15:0]\sdp_bl.ramb18_dp_bl.ram18_bl_0 ;
  input [15:0]\sdp_bl.ramb18_dp_bl.ram18_bl_1 ;
  input [0:0]flagQ_reg;
  input [0:0]E;
  input ac_adc_sdata;

  wire Audio_Codec_n_0;
  wire Audio_Codec_n_3;
  wire Audio_Codec_n_7;
  wire BCLK_int_reg;
  wire [0:0]CO;
  wire [1:0]D;
  wire [7:6]D_L_O_int;
  wire [7:6]D_R_O_int;
  wire [0:0]E;
  wire \FSM_onehot_state[3]_i_10_n_0 ;
  wire \FSM_onehot_state[3]_i_11_n_0 ;
  wire \FSM_onehot_state[3]_i_12_n_0 ;
  wire \FSM_onehot_state[3]_i_13_n_0 ;
  wire \FSM_onehot_state[3]_i_15_n_0 ;
  wire \FSM_onehot_state[3]_i_16_n_0 ;
  wire \FSM_onehot_state[3]_i_17_n_0 ;
  wire \FSM_onehot_state[3]_i_18_n_0 ;
  wire \FSM_onehot_state[3]_i_19_n_0 ;
  wire \FSM_onehot_state[3]_i_20_n_0 ;
  wire \FSM_onehot_state[3]_i_21_n_0 ;
  wire \FSM_onehot_state[3]_i_22_n_0 ;
  wire \FSM_onehot_state[3]_i_23_n_0 ;
  wire \FSM_onehot_state[3]_i_24_n_0 ;
  wire \FSM_onehot_state[3]_i_5_n_0 ;
  wire \FSM_onehot_state[3]_i_6_n_0 ;
  wire \FSM_onehot_state[3]_i_7_n_0 ;
  wire \FSM_onehot_state[3]_i_8_n_0 ;
  wire \FSM_onehot_state[3]_i_9_n_0 ;
  wire [0:0]\FSM_onehot_state_reg[3] ;
  wire \FSM_onehot_state_reg[3]_i_14_n_0 ;
  wire \FSM_onehot_state_reg[3]_i_14_n_1 ;
  wire \FSM_onehot_state_reg[3]_i_14_n_2 ;
  wire \FSM_onehot_state_reg[3]_i_14_n_3 ;
  wire \FSM_onehot_state_reg[3]_i_2_n_1 ;
  wire \FSM_onehot_state_reg[3]_i_2_n_2 ;
  wire \FSM_onehot_state_reg[3]_i_2_n_3 ;
  wire [15:0]LBus_out;
  wire LRCLK_reg;
  wire [1:0]Q;
  wire [15:0]Rbus_out;
  wire [0:0]SR;
  wire [8:0]UnRightCur;
  wire \UnRightCur[2]_i_1_n_0 ;
  wire \UnRightCur[3]_i_1_n_0 ;
  wire \UnRightCur[4]_i_1_n_0 ;
  wire \UnRightCur[5]_i_1_n_0 ;
  wire \UnRightCur[6]_i_1_n_0 ;
  wire \UnRightCur[7]_i_1_n_0 ;
  wire \UnRightCur[8]_i_1_n_0 ;
  wire [8:0]UnRightPrev;
  wire ac_adc_sdata;
  wire ac_dac_sdata;
  wire ac_mclk;
  wire [3:0]btn;
  wire btn_down_pressed;
  wire btn_down_pressed_i_1_n_0;
  wire btn_left_pressed;
  wire btn_left_pressed_i_1_n_0;
  wire btn_right_pressed;
  wire btn_right_pressed_i_1_n_0;
  wire btn_up_pressed;
  wire btn_up_pressed_i_1_n_0;
  wire [9:0]column;
  wire flagQOut;
  wire [0:0]flagQ_reg;
  wire [17:2]fromADCL;
  wire [17:2]fromADCR;
  wire leftChannelMemory_n_4;
  wire leftChannelMemory_n_5;
  wire lopt;
  wire [7:3]p_0_in;
  wire [7:3]p_0_in0_in;
  wire [15:15]p_1_out;
  wire [1:0]\processQ_reg[1] ;
  wire \processQ_reg[9] ;
  wire rightChannelMemory_n_4;
  wire rightChannelMemory_n_5;
  wire [5:0]row;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire scl;
  wire sda;
  wire [9:0]\sdp_bl.ramb18_dp_bl.ram18_bl ;
  wire [15:0]\sdp_bl.ramb18_dp_bl.ram18_bl_0 ;
  wire [15:0]\sdp_bl.ramb18_dp_bl.ram18_bl_1 ;
  wire [1:0]sw;
  wire [3:0]switch;
  wire [3:0]tmds;
  wire [3:0]tmdsb;
  wire [17:0]toADCL;
  wire [17:0]toADCR;
  wire [7:0]triggerTimeOut;
  wire \triggerTime[4]_i_2_n_0 ;
  wire \triggerTime[4]_i_3_n_0 ;
  wire \triggerTime[4]_i_4_n_0 ;
  wire \triggerTime[4]_i_5_n_0 ;
  wire \triggerTime[8]_i_2_n_0 ;
  wire \triggerTime[8]_i_3_n_0 ;
  wire \triggerTime[8]_i_4_n_0 ;
  wire \triggerTime[8]_i_5_n_0 ;
  wire \triggerTime[9]_i_1_n_0 ;
  wire \triggerTime[9]_i_3_n_0 ;
  wire \triggerTime_reg[4]_i_1_n_0 ;
  wire \triggerTime_reg[4]_i_1_n_1 ;
  wire \triggerTime_reg[4]_i_1_n_2 ;
  wire \triggerTime_reg[4]_i_1_n_3 ;
  wire \triggerTime_reg[4]_i_1_n_4 ;
  wire \triggerTime_reg[4]_i_1_n_5 ;
  wire \triggerTime_reg[4]_i_1_n_6 ;
  wire \triggerTime_reg[8]_i_1_n_0 ;
  wire \triggerTime_reg[8]_i_1_n_1 ;
  wire \triggerTime_reg[8]_i_1_n_2 ;
  wire \triggerTime_reg[8]_i_1_n_3 ;
  wire \triggerTime_reg[8]_i_1_n_4 ;
  wire \triggerTime_reg[8]_i_1_n_5 ;
  wire \triggerTime_reg[8]_i_1_n_6 ;
  wire \triggerTime_reg[8]_i_1_n_7 ;
  wire \triggerTime_reg[9]_i_2_n_7 ;
  wire [7:0]triggerVoltOut;
  wire \triggerVolt[4]_i_2_n_0 ;
  wire \triggerVolt[4]_i_3_n_0 ;
  wire \triggerVolt[4]_i_4_n_0 ;
  wire \triggerVolt[4]_i_5_n_0 ;
  wire \triggerVolt[8]_i_2_n_0 ;
  wire \triggerVolt[8]_i_3_n_0 ;
  wire \triggerVolt[8]_i_4_n_0 ;
  wire \triggerVolt[8]_i_5_n_0 ;
  wire \triggerVolt[9]_i_1_n_0 ;
  wire \triggerVolt[9]_i_3_n_0 ;
  wire \triggerVolt_reg[4]_i_1_n_0 ;
  wire \triggerVolt_reg[4]_i_1_n_1 ;
  wire \triggerVolt_reg[4]_i_1_n_2 ;
  wire \triggerVolt_reg[4]_i_1_n_3 ;
  wire \triggerVolt_reg[4]_i_1_n_4 ;
  wire \triggerVolt_reg[4]_i_1_n_5 ;
  wire \triggerVolt_reg[4]_i_1_n_6 ;
  wire [0:0]\triggerVolt_reg[8]_0 ;
  wire \triggerVolt_reg[8]_i_1_n_0 ;
  wire \triggerVolt_reg[8]_i_1_n_1 ;
  wire \triggerVolt_reg[8]_i_1_n_2 ;
  wire \triggerVolt_reg[8]_i_1_n_3 ;
  wire \triggerVolt_reg[8]_i_1_n_4 ;
  wire \triggerVolt_reg[8]_i_1_n_5 ;
  wire \triggerVolt_reg[8]_i_1_n_6 ;
  wire \triggerVolt_reg[8]_i_1_n_7 ;
  wire \triggerVolt_reg[9]_i_2_n_7 ;
  wire [9:0]w_wrAddrMux;
  wire w_wrEnbMux;
  wire [3:0]\NLW_FSM_onehot_state_reg[3]_i_14_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_state_reg[3]_i_2_O_UNCONNECTED ;
  wire [3:1]\NLW_FSM_onehot_state_reg[3]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_state_reg[3]_i_3_O_UNCONNECTED ;
  wire [0:0]\NLW_triggerTime_reg[4]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_triggerTime_reg[9]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_triggerTime_reg[9]_i_2_O_UNCONNECTED ;
  wire [0:0]\NLW_triggerVolt_reg[4]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_triggerVolt_reg[9]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_triggerVolt_reg[9]_i_2_O_UNCONNECTED ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Audio_Codec_Wrapper Audio_Codec
       (.BCLK_int_reg(BCLK_int_reg),
        .\D_R_O_int_reg[7] (D_R_O_int),
        .LBus_out(LBus_out[14:0]),
        .LRCLK_reg(LRCLK_reg),
        .Q(D_L_O_int),
        .Rbus_out(Rbus_out[14:0]),
        .ac_adc_sdata(ac_adc_sdata),
        .ac_dac_sdata(ac_dac_sdata),
        .ac_mclk(ac_mclk),
        .flagQ_reg(flagQ_reg),
        .fromADCL(fromADCL),
        .fromADCR(fromADCR),
        .lopt(lopt),
        .p_1_out(p_1_out),
        .ready_sig_reg_0(Audio_Codec_n_0),
        .ready_sig_reg_1(sw[1]),
        .ready_sig_reg_2(Audio_Codec_n_3),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_aresetn_0(SR),
        .scl(scl),
        .sda(sda),
        .\sdp_bl.ramb18_dp_bl.ram18_bl (Audio_Codec_n_7),
        .switch(switch[3]),
        .toADCL({toADCL[17],toADCL[1:0]}),
        .toADCR({toADCR[17],toADCR[1:0]}));
  LUT3 #(
    .INIT(8'h09)) 
    \FSM_onehot_state[3]_i_10 
       (.I0(triggerVoltOut[6]),
        .I1(UnRightPrev[8]),
        .I2(triggerVoltOut[7]),
        .O(\FSM_onehot_state[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_onehot_state[3]_i_11 
       (.I0(triggerVoltOut[4]),
        .I1(UnRightPrev[6]),
        .I2(triggerVoltOut[5]),
        .I3(UnRightPrev[7]),
        .O(\FSM_onehot_state[3]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_onehot_state[3]_i_12 
       (.I0(triggerVoltOut[2]),
        .I1(UnRightPrev[4]),
        .I2(triggerVoltOut[3]),
        .I3(UnRightPrev[5]),
        .O(\FSM_onehot_state[3]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_onehot_state[3]_i_13 
       (.I0(triggerVoltOut[0]),
        .I1(UnRightPrev[2]),
        .I2(triggerVoltOut[1]),
        .I3(UnRightPrev[3]),
        .O(\FSM_onehot_state[3]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_onehot_state[3]_i_15 
       (.I0(triggerVoltOut[6]),
        .I1(UnRightCur[8]),
        .I2(triggerVoltOut[7]),
        .O(\FSM_onehot_state[3]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h09)) 
    \FSM_onehot_state[3]_i_16 
       (.I0(UnRightCur[8]),
        .I1(triggerVoltOut[6]),
        .I2(triggerVoltOut[7]),
        .O(\FSM_onehot_state[3]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_onehot_state[3]_i_17 
       (.I0(UnRightCur[6]),
        .I1(triggerVoltOut[4]),
        .I2(triggerVoltOut[5]),
        .I3(UnRightCur[7]),
        .O(\FSM_onehot_state[3]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_onehot_state[3]_i_18 
       (.I0(UnRightCur[4]),
        .I1(triggerVoltOut[2]),
        .I2(triggerVoltOut[3]),
        .I3(UnRightCur[5]),
        .O(\FSM_onehot_state[3]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_onehot_state[3]_i_19 
       (.I0(UnRightCur[2]),
        .I1(triggerVoltOut[0]),
        .I2(triggerVoltOut[1]),
        .I3(UnRightCur[3]),
        .O(\FSM_onehot_state[3]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[3]_i_20 
       (.I0(UnRightCur[0]),
        .I1(UnRightCur[1]),
        .O(\FSM_onehot_state[3]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_onehot_state[3]_i_21 
       (.I0(UnRightCur[6]),
        .I1(triggerVoltOut[4]),
        .I2(UnRightCur[7]),
        .I3(triggerVoltOut[5]),
        .O(\FSM_onehot_state[3]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_onehot_state[3]_i_22 
       (.I0(UnRightCur[4]),
        .I1(triggerVoltOut[2]),
        .I2(UnRightCur[5]),
        .I3(triggerVoltOut[3]),
        .O(\FSM_onehot_state[3]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_onehot_state[3]_i_23 
       (.I0(UnRightCur[2]),
        .I1(triggerVoltOut[0]),
        .I2(UnRightCur[3]),
        .I3(triggerVoltOut[1]),
        .O(\FSM_onehot_state[3]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_state[3]_i_24 
       (.I0(UnRightCur[0]),
        .I1(UnRightCur[1]),
        .O(\FSM_onehot_state[3]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_state[3]_i_5 
       (.I0(UnRightPrev[0]),
        .I1(UnRightPrev[1]),
        .O(\FSM_onehot_state[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hF2)) 
    \FSM_onehot_state[3]_i_6 
       (.I0(triggerVoltOut[6]),
        .I1(UnRightPrev[8]),
        .I2(triggerVoltOut[7]),
        .O(\FSM_onehot_state[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_onehot_state[3]_i_7 
       (.I0(triggerVoltOut[4]),
        .I1(UnRightPrev[6]),
        .I2(UnRightPrev[7]),
        .I3(triggerVoltOut[5]),
        .O(\FSM_onehot_state[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_onehot_state[3]_i_8 
       (.I0(triggerVoltOut[2]),
        .I1(UnRightPrev[4]),
        .I2(UnRightPrev[5]),
        .I3(triggerVoltOut[3]),
        .O(\FSM_onehot_state[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_onehot_state[3]_i_9 
       (.I0(triggerVoltOut[0]),
        .I1(UnRightPrev[2]),
        .I2(UnRightPrev[3]),
        .I3(triggerVoltOut[1]),
        .O(\FSM_onehot_state[3]_i_9_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \FSM_onehot_state_reg[3]_i_14 
       (.CI(1'b0),
        .CO({\FSM_onehot_state_reg[3]_i_14_n_0 ,\FSM_onehot_state_reg[3]_i_14_n_1 ,\FSM_onehot_state_reg[3]_i_14_n_2 ,\FSM_onehot_state_reg[3]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({\FSM_onehot_state[3]_i_17_n_0 ,\FSM_onehot_state[3]_i_18_n_0 ,\FSM_onehot_state[3]_i_19_n_0 ,\FSM_onehot_state[3]_i_20_n_0 }),
        .O(\NLW_FSM_onehot_state_reg[3]_i_14_O_UNCONNECTED [3:0]),
        .S({\FSM_onehot_state[3]_i_21_n_0 ,\FSM_onehot_state[3]_i_22_n_0 ,\FSM_onehot_state[3]_i_23_n_0 ,\FSM_onehot_state[3]_i_24_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \FSM_onehot_state_reg[3]_i_2 
       (.CI(1'b0),
        .CO({CO,\FSM_onehot_state_reg[3]_i_2_n_1 ,\FSM_onehot_state_reg[3]_i_2_n_2 ,\FSM_onehot_state_reg[3]_i_2_n_3 }),
        .CYINIT(\FSM_onehot_state[3]_i_5_n_0 ),
        .DI({\FSM_onehot_state[3]_i_6_n_0 ,\FSM_onehot_state[3]_i_7_n_0 ,\FSM_onehot_state[3]_i_8_n_0 ,\FSM_onehot_state[3]_i_9_n_0 }),
        .O(\NLW_FSM_onehot_state_reg[3]_i_2_O_UNCONNECTED [3:0]),
        .S({\FSM_onehot_state[3]_i_10_n_0 ,\FSM_onehot_state[3]_i_11_n_0 ,\FSM_onehot_state[3]_i_12_n_0 ,\FSM_onehot_state[3]_i_13_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \FSM_onehot_state_reg[3]_i_3 
       (.CI(\FSM_onehot_state_reg[3]_i_14_n_0 ),
        .CO({\NLW_FSM_onehot_state_reg[3]_i_3_CO_UNCONNECTED [3:1],\triggerVolt_reg[8]_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\FSM_onehot_state[3]_i_15_n_0 }),
        .O(\NLW_FSM_onehot_state_reg[3]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\FSM_onehot_state[3]_i_16_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \UnRightCur[2]_i_1 
       (.I0(Rbus_out[10]),
        .O(\UnRightCur[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \UnRightCur[3]_i_1 
       (.I0(Rbus_out[10]),
        .I1(Rbus_out[11]),
        .O(\UnRightCur[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \UnRightCur[4]_i_1 
       (.I0(Rbus_out[11]),
        .I1(Rbus_out[10]),
        .I2(Rbus_out[12]),
        .O(\UnRightCur[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'h01FE)) 
    \UnRightCur[5]_i_1 
       (.I0(Rbus_out[12]),
        .I1(Rbus_out[10]),
        .I2(Rbus_out[11]),
        .I3(Rbus_out[13]),
        .O(\UnRightCur[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT5 #(
    .INIT(32'hFE0001FF)) 
    \UnRightCur[6]_i_1 
       (.I0(Rbus_out[11]),
        .I1(Rbus_out[10]),
        .I2(Rbus_out[12]),
        .I3(Rbus_out[13]),
        .I4(Rbus_out[14]),
        .O(\UnRightCur[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h11111115EEEEEEEA)) 
    \UnRightCur[7]_i_1 
       (.I0(Rbus_out[14]),
        .I1(Rbus_out[13]),
        .I2(Rbus_out[12]),
        .I3(Rbus_out[10]),
        .I4(Rbus_out[11]),
        .I5(Rbus_out[15]),
        .O(\UnRightCur[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8A8A8A8A888)) 
    \UnRightCur[8]_i_1 
       (.I0(Rbus_out[15]),
        .I1(Rbus_out[14]),
        .I2(Rbus_out[13]),
        .I3(Rbus_out[12]),
        .I4(Rbus_out[10]),
        .I5(Rbus_out[11]),
        .O(\UnRightCur[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \UnRightCur_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Rbus_out[8]),
        .Q(UnRightCur[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \UnRightCur_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(Rbus_out[9]),
        .Q(UnRightCur[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \UnRightCur_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\UnRightCur[2]_i_1_n_0 ),
        .Q(UnRightCur[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \UnRightCur_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\UnRightCur[3]_i_1_n_0 ),
        .Q(UnRightCur[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \UnRightCur_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\UnRightCur[4]_i_1_n_0 ),
        .Q(UnRightCur[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \UnRightCur_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\UnRightCur[5]_i_1_n_0 ),
        .Q(UnRightCur[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \UnRightCur_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\UnRightCur[6]_i_1_n_0 ),
        .Q(UnRightCur[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \UnRightCur_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\UnRightCur[7]_i_1_n_0 ),
        .Q(UnRightCur[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \UnRightCur_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\UnRightCur[8]_i_1_n_0 ),
        .Q(UnRightCur[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \UnRightPrev_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(UnRightCur[0]),
        .Q(UnRightPrev[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \UnRightPrev_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(UnRightCur[1]),
        .Q(UnRightPrev[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \UnRightPrev_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(UnRightCur[2]),
        .Q(UnRightPrev[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \UnRightPrev_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(UnRightCur[3]),
        .Q(UnRightPrev[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \UnRightPrev_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(UnRightCur[4]),
        .Q(UnRightPrev[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \UnRightPrev_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(UnRightCur[5]),
        .Q(UnRightPrev[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \UnRightPrev_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(UnRightCur[6]),
        .Q(UnRightPrev[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \UnRightPrev_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(UnRightCur[7]),
        .Q(UnRightPrev[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \UnRightPrev_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(UnRightCur[8]),
        .Q(UnRightPrev[8]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT5 #(
    .INIT(32'hFB00AAAA)) 
    btn_down_pressed_i_1
       (.I0(btn_down_pressed),
        .I1(btn[0]),
        .I2(btn_up_pressed),
        .I3(btn[2]),
        .I4(s00_axi_aresetn),
        .O(btn_down_pressed_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    btn_down_pressed_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(btn_down_pressed_i_1_n_0),
        .Q(btn_down_pressed),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    btn_left_pressed_i_1
       (.I0(btn_left_pressed),
        .I1(btn[1]),
        .I2(s00_axi_aresetn),
        .O(btn_left_pressed_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    btn_left_pressed_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(btn_left_pressed_i_1_n_0),
        .Q(btn_left_pressed),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT5 #(
    .INIT(32'hFB00AAAA)) 
    btn_right_pressed_i_1
       (.I0(btn_right_pressed),
        .I1(btn[1]),
        .I2(btn_left_pressed),
        .I3(btn[3]),
        .I4(s00_axi_aresetn),
        .O(btn_right_pressed_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    btn_right_pressed_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(btn_right_pressed_i_1_n_0),
        .Q(btn_right_pressed),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    btn_up_pressed_i_1
       (.I0(btn_up_pressed),
        .I1(btn[0]),
        .I2(s00_axi_aresetn),
        .O(btn_up_pressed_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    btn_up_pressed_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(btn_up_pressed_i_1_n_0),
        .Q(btn_up_pressed),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FlagRegister fg
       (.SS(SR),
        .flagQOut(flagQOut),
        .flagQ_reg_0(Audio_Codec_n_3),
        .s00_axi_aclk(s00_axi_aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_unimacro_BRAM_SDP_MACRO__parameterized1 leftChannelMemory
       (.ADDRBWRADDR(w_wrAddrMux),
        .DOADO({p_0_in0_in[7:6],p_0_in0_in[4:3]}),
        .LBus_out(LBus_out),
        .O101({row[5],row[2:0]}),
        .S(leftChannelMemory_n_4),
        .SS(SR),
        .out(column),
        .s00_axi_aclk(s00_axi_aclk),
        .\sdp_bl.ramb18_dp_bl.ram18_bl_0 (leftChannelMemory_n_5),
        .\sdp_bl.ramb18_dp_bl.ram18_bl_1 (\sdp_bl.ramb18_dp_bl.ram18_bl_0 ),
        .switch(switch[2]),
        .w_wrEnbMux(w_wrEnbMux));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lec10__parameterized1 memory_counter
       (.ADDRBWRADDR(w_wrAddrMux),
        .D(D),
        .E(E),
        .\FSM_onehot_state_reg[3] (\FSM_onehot_state_reg[3] ),
        .Q(Q),
        .SS(SR),
        .\processQ_reg[1]_0 (\processQ_reg[1] ),
        .\processQ_reg[9]_0 (\processQ_reg[9] ),
        .s00_axi_aclk(s00_axi_aclk),
        .\sdp_bl.ramb18_dp_bl.ram18_bl (\sdp_bl.ramb18_dp_bl.ram18_bl ),
        .sw(sw[0]),
        .switch(switch[2]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_unimacro_BRAM_SDP_MACRO__parameterized2 rightChannelMemory
       (.ADDRBWRADDR(w_wrAddrMux),
        .DOADO({p_0_in[7:6],p_0_in[4:3]}),
        .O101({row[5],row[2:0]}),
        .Rbus_out(Rbus_out),
        .S(rightChannelMemory_n_4),
        .out(column),
        .s00_axi_aclk(s00_axi_aclk),
        .\sdp_bl.ramb18_dp_bl.ram18_bl_0 (rightChannelMemory_n_5),
        .\sdp_bl.ramb18_dp_bl.ram18_bl_1 (SR),
        .\sdp_bl.ramb18_dp_bl.ram18_bl_2 (\sdp_bl.ramb18_dp_bl.ram18_bl_1 ),
        .switch(switch[2]),
        .w_wrEnbMux(w_wrEnbMux));
  FDRE \toADCL_reg[0] 
       (.C(s00_axi_aclk),
        .CE(sw[1]),
        .D(D_L_O_int[6]),
        .Q(toADCL[0]),
        .R(Audio_Codec_n_0));
  FDRE \toADCL_reg[17] 
       (.C(s00_axi_aclk),
        .CE(sw[1]),
        .D(fromADCL[17]),
        .Q(toADCL[17]),
        .R(1'b0));
  FDRE \toADCL_reg[1] 
       (.C(s00_axi_aclk),
        .CE(sw[1]),
        .D(D_L_O_int[7]),
        .Q(toADCL[1]),
        .R(Audio_Codec_n_0));
  FDRE \toADCR_reg[0] 
       (.C(s00_axi_aclk),
        .CE(sw[1]),
        .D(D_R_O_int[6]),
        .Q(toADCR[0]),
        .R(Audio_Codec_n_0));
  FDRE \toADCR_reg[17] 
       (.C(s00_axi_aclk),
        .CE(sw[1]),
        .D(fromADCR[17]),
        .Q(toADCR[17]),
        .R(1'b0));
  FDRE \toADCR_reg[1] 
       (.C(s00_axi_aclk),
        .CE(sw[1]),
        .D(D_R_O_int[7]),
        .Q(toADCR[1]),
        .R(Audio_Codec_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    \triggerTime[4]_i_2 
       (.I0(btn_left_pressed),
        .I1(btn[1]),
        .O(\triggerTime[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \triggerTime[4]_i_3 
       (.I0(btn_left_pressed),
        .I1(btn[1]),
        .I2(triggerTimeOut[2]),
        .O(\triggerTime[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \triggerTime[4]_i_4 
       (.I0(btn_left_pressed),
        .I1(btn[1]),
        .I2(triggerTimeOut[1]),
        .O(\triggerTime[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \triggerTime[4]_i_5 
       (.I0(triggerTimeOut[0]),
        .O(\triggerTime[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \triggerTime[8]_i_2 
       (.I0(triggerTimeOut[5]),
        .I1(triggerTimeOut[6]),
        .O(\triggerTime[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \triggerTime[8]_i_3 
       (.I0(triggerTimeOut[4]),
        .I1(triggerTimeOut[5]),
        .O(\triggerTime[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \triggerTime[8]_i_4 
       (.I0(triggerTimeOut[3]),
        .I1(triggerTimeOut[4]),
        .O(\triggerTime[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \triggerTime[8]_i_5 
       (.I0(triggerTimeOut[2]),
        .I1(triggerTimeOut[3]),
        .O(\triggerTime[8]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \triggerTime[9]_i_1 
       (.I0(btn_left_pressed),
        .I1(btn[1]),
        .I2(btn_right_pressed),
        .I3(btn[3]),
        .O(\triggerTime[9]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \triggerTime[9]_i_3 
       (.I0(triggerTimeOut[6]),
        .I1(triggerTimeOut[7]),
        .O(\triggerTime[9]_i_3_n_0 ));
  FDRE \triggerTime_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\triggerTime[9]_i_1_n_0 ),
        .D(\triggerTime_reg[4]_i_1_n_6 ),
        .Q(triggerTimeOut[0]),
        .R(SR));
  FDRE \triggerTime_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\triggerTime[9]_i_1_n_0 ),
        .D(\triggerTime_reg[4]_i_1_n_5 ),
        .Q(triggerTimeOut[1]),
        .R(SR));
  FDRE \triggerTime_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\triggerTime[9]_i_1_n_0 ),
        .D(\triggerTime_reg[4]_i_1_n_4 ),
        .Q(triggerTimeOut[2]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \triggerTime_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\triggerTime_reg[4]_i_1_n_0 ,\triggerTime_reg[4]_i_1_n_1 ,\triggerTime_reg[4]_i_1_n_2 ,\triggerTime_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\triggerTime[4]_i_2_n_0 ,triggerTimeOut[1:0],1'b0}),
        .O({\triggerTime_reg[4]_i_1_n_4 ,\triggerTime_reg[4]_i_1_n_5 ,\triggerTime_reg[4]_i_1_n_6 ,\NLW_triggerTime_reg[4]_i_1_O_UNCONNECTED [0]}),
        .S({\triggerTime[4]_i_3_n_0 ,\triggerTime[4]_i_4_n_0 ,\triggerTime[4]_i_5_n_0 ,1'b0}));
  FDRE \triggerTime_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\triggerTime[9]_i_1_n_0 ),
        .D(\triggerTime_reg[8]_i_1_n_7 ),
        .Q(triggerTimeOut[3]),
        .R(SR));
  FDSE \triggerTime_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\triggerTime[9]_i_1_n_0 ),
        .D(\triggerTime_reg[8]_i_1_n_6 ),
        .Q(triggerTimeOut[4]),
        .S(SR));
  FDRE \triggerTime_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\triggerTime[9]_i_1_n_0 ),
        .D(\triggerTime_reg[8]_i_1_n_5 ),
        .Q(triggerTimeOut[5]),
        .R(SR));
  FDSE \triggerTime_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\triggerTime[9]_i_1_n_0 ),
        .D(\triggerTime_reg[8]_i_1_n_4 ),
        .Q(triggerTimeOut[6]),
        .S(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \triggerTime_reg[8]_i_1 
       (.CI(\triggerTime_reg[4]_i_1_n_0 ),
        .CO({\triggerTime_reg[8]_i_1_n_0 ,\triggerTime_reg[8]_i_1_n_1 ,\triggerTime_reg[8]_i_1_n_2 ,\triggerTime_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(triggerTimeOut[5:2]),
        .O({\triggerTime_reg[8]_i_1_n_4 ,\triggerTime_reg[8]_i_1_n_5 ,\triggerTime_reg[8]_i_1_n_6 ,\triggerTime_reg[8]_i_1_n_7 }),
        .S({\triggerTime[8]_i_2_n_0 ,\triggerTime[8]_i_3_n_0 ,\triggerTime[8]_i_4_n_0 ,\triggerTime[8]_i_5_n_0 }));
  FDRE \triggerTime_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\triggerTime[9]_i_1_n_0 ),
        .D(\triggerTime_reg[9]_i_2_n_7 ),
        .Q(triggerTimeOut[7]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \triggerTime_reg[9]_i_2 
       (.CI(\triggerTime_reg[8]_i_1_n_0 ),
        .CO(\NLW_triggerTime_reg[9]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_triggerTime_reg[9]_i_2_O_UNCONNECTED [3:1],\triggerTime_reg[9]_i_2_n_7 }),
        .S({1'b0,1'b0,1'b0,\triggerTime[9]_i_3_n_0 }));
  LUT2 #(
    .INIT(4'hB)) 
    \triggerVolt[4]_i_2 
       (.I0(btn_up_pressed),
        .I1(btn[0]),
        .O(\triggerVolt[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \triggerVolt[4]_i_3 
       (.I0(btn_up_pressed),
        .I1(btn[0]),
        .I2(triggerVoltOut[2]),
        .O(\triggerVolt[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \triggerVolt[4]_i_4 
       (.I0(btn_up_pressed),
        .I1(btn[0]),
        .I2(triggerVoltOut[1]),
        .O(\triggerVolt[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \triggerVolt[4]_i_5 
       (.I0(triggerVoltOut[0]),
        .O(\triggerVolt[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \triggerVolt[8]_i_2 
       (.I0(triggerVoltOut[5]),
        .I1(triggerVoltOut[6]),
        .O(\triggerVolt[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \triggerVolt[8]_i_3 
       (.I0(triggerVoltOut[4]),
        .I1(triggerVoltOut[5]),
        .O(\triggerVolt[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \triggerVolt[8]_i_4 
       (.I0(triggerVoltOut[3]),
        .I1(triggerVoltOut[4]),
        .O(\triggerVolt[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \triggerVolt[8]_i_5 
       (.I0(triggerVoltOut[2]),
        .I1(triggerVoltOut[3]),
        .O(\triggerVolt[8]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \triggerVolt[9]_i_1 
       (.I0(btn_up_pressed),
        .I1(btn[0]),
        .I2(btn_down_pressed),
        .I3(btn[2]),
        .O(\triggerVolt[9]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \triggerVolt[9]_i_3 
       (.I0(triggerVoltOut[6]),
        .I1(triggerVoltOut[7]),
        .O(\triggerVolt[9]_i_3_n_0 ));
  FDRE \triggerVolt_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\triggerVolt[9]_i_1_n_0 ),
        .D(\triggerVolt_reg[4]_i_1_n_6 ),
        .Q(triggerVoltOut[0]),
        .R(SR));
  FDSE \triggerVolt_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\triggerVolt[9]_i_1_n_0 ),
        .D(\triggerVolt_reg[4]_i_1_n_5 ),
        .Q(triggerVoltOut[1]),
        .S(SR));
  FDRE \triggerVolt_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\triggerVolt[9]_i_1_n_0 ),
        .D(\triggerVolt_reg[4]_i_1_n_4 ),
        .Q(triggerVoltOut[2]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \triggerVolt_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\triggerVolt_reg[4]_i_1_n_0 ,\triggerVolt_reg[4]_i_1_n_1 ,\triggerVolt_reg[4]_i_1_n_2 ,\triggerVolt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\triggerVolt[4]_i_2_n_0 ,triggerVoltOut[1:0],1'b0}),
        .O({\triggerVolt_reg[4]_i_1_n_4 ,\triggerVolt_reg[4]_i_1_n_5 ,\triggerVolt_reg[4]_i_1_n_6 ,\NLW_triggerVolt_reg[4]_i_1_O_UNCONNECTED [0]}),
        .S({\triggerVolt[4]_i_3_n_0 ,\triggerVolt[4]_i_4_n_0 ,\triggerVolt[4]_i_5_n_0 ,1'b0}));
  FDRE \triggerVolt_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\triggerVolt[9]_i_1_n_0 ),
        .D(\triggerVolt_reg[8]_i_1_n_7 ),
        .Q(triggerVoltOut[3]),
        .R(SR));
  FDSE \triggerVolt_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\triggerVolt[9]_i_1_n_0 ),
        .D(\triggerVolt_reg[8]_i_1_n_6 ),
        .Q(triggerVoltOut[4]),
        .S(SR));
  FDSE \triggerVolt_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\triggerVolt[9]_i_1_n_0 ),
        .D(\triggerVolt_reg[8]_i_1_n_5 ),
        .Q(triggerVoltOut[5]),
        .S(SR));
  FDRE \triggerVolt_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\triggerVolt[9]_i_1_n_0 ),
        .D(\triggerVolt_reg[8]_i_1_n_4 ),
        .Q(triggerVoltOut[6]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \triggerVolt_reg[8]_i_1 
       (.CI(\triggerVolt_reg[4]_i_1_n_0 ),
        .CO({\triggerVolt_reg[8]_i_1_n_0 ,\triggerVolt_reg[8]_i_1_n_1 ,\triggerVolt_reg[8]_i_1_n_2 ,\triggerVolt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(triggerVoltOut[5:2]),
        .O({\triggerVolt_reg[8]_i_1_n_4 ,\triggerVolt_reg[8]_i_1_n_5 ,\triggerVolt_reg[8]_i_1_n_6 ,\triggerVolt_reg[8]_i_1_n_7 }),
        .S({\triggerVolt[8]_i_2_n_0 ,\triggerVolt[8]_i_3_n_0 ,\triggerVolt[8]_i_4_n_0 ,\triggerVolt[8]_i_5_n_0 }));
  FDRE \triggerVolt_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\triggerVolt[9]_i_1_n_0 ),
        .D(\triggerVolt_reg[9]_i_2_n_7 ),
        .Q(triggerVoltOut[7]),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \triggerVolt_reg[9]_i_2 
       (.CI(\triggerVolt_reg[8]_i_1_n_0 ),
        .CO(\NLW_triggerVolt_reg[9]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_triggerVolt_reg[9]_i_2_O_UNCONNECTED [3:1],\triggerVolt_reg[9]_i_2_n_7 }),
        .S({1'b0,1'b0,1'b0,\triggerVolt[9]_i_3_n_0 }));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_video video_inst
       (.DOADO({p_0_in[7:6],p_0_in[4:3]}),
        .S(leftChannelMemory_n_4),
        .column(column),
        .\dc_bias[3]_i_7__0 (rightChannelMemory_n_4),
        .\dc_bias_reg[3]_i_15 (rightChannelMemory_n_5),
        .\dc_bias_reg[3]_i_9 (leftChannelMemory_n_5),
        .\dc_bias_reg[3]_i_9_0 ({p_0_in0_in[7:6],p_0_in0_in[4:3]}),
        .lopt(lopt),
        .\processQ_reg[5] ({row[5],row[2:0]}),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .switch(switch[1:0]),
        .tmds(tmds),
        .tmdsb(tmdsb),
        .triggerTimeOut(triggerTimeOut),
        .triggerVoltOut(triggerVoltOut));
  FDRE \w_Lbus_out_reg[0] 
       (.C(s00_axi_aclk),
        .CE(sw[1]),
        .D(fromADCL[2]),
        .Q(LBus_out[0]),
        .R(1'b0));
  FDRE \w_Lbus_out_reg[10] 
       (.C(s00_axi_aclk),
        .CE(sw[1]),
        .D(fromADCL[12]),
        .Q(LBus_out[10]),
        .R(1'b0));
  FDRE \w_Lbus_out_reg[11] 
       (.C(s00_axi_aclk),
        .CE(sw[1]),
        .D(fromADCL[13]),
        .Q(LBus_out[11]),
        .R(1'b0));
  FDRE \w_Lbus_out_reg[12] 
       (.C(s00_axi_aclk),
        .CE(sw[1]),
        .D(fromADCL[14]),
        .Q(LBus_out[12]),
        .R(1'b0));
  FDRE \w_Lbus_out_reg[13] 
       (.C(s00_axi_aclk),
        .CE(sw[1]),
        .D(fromADCL[15]),
        .Q(LBus_out[13]),
        .R(1'b0));
  FDRE \w_Lbus_out_reg[14] 
       (.C(s00_axi_aclk),
        .CE(sw[1]),
        .D(fromADCL[16]),
        .Q(LBus_out[14]),
        .R(1'b0));
  FDRE \w_Lbus_out_reg[15] 
       (.C(s00_axi_aclk),
        .CE(sw[1]),
        .D(p_1_out),
        .Q(LBus_out[15]),
        .R(1'b0));
  FDRE \w_Lbus_out_reg[1] 
       (.C(s00_axi_aclk),
        .CE(sw[1]),
        .D(fromADCL[3]),
        .Q(LBus_out[1]),
        .R(1'b0));
  FDRE \w_Lbus_out_reg[2] 
       (.C(s00_axi_aclk),
        .CE(sw[1]),
        .D(fromADCL[4]),
        .Q(LBus_out[2]),
        .R(1'b0));
  FDRE \w_Lbus_out_reg[3] 
       (.C(s00_axi_aclk),
        .CE(sw[1]),
        .D(fromADCL[5]),
        .Q(LBus_out[3]),
        .R(1'b0));
  FDRE \w_Lbus_out_reg[4] 
       (.C(s00_axi_aclk),
        .CE(sw[1]),
        .D(fromADCL[6]),
        .Q(LBus_out[4]),
        .R(1'b0));
  FDRE \w_Lbus_out_reg[5] 
       (.C(s00_axi_aclk),
        .CE(sw[1]),
        .D(fromADCL[7]),
        .Q(LBus_out[5]),
        .R(1'b0));
  FDRE \w_Lbus_out_reg[6] 
       (.C(s00_axi_aclk),
        .CE(sw[1]),
        .D(fromADCL[8]),
        .Q(LBus_out[6]),
        .R(1'b0));
  FDRE \w_Lbus_out_reg[7] 
       (.C(s00_axi_aclk),
        .CE(sw[1]),
        .D(fromADCL[9]),
        .Q(LBus_out[7]),
        .R(1'b0));
  FDRE \w_Lbus_out_reg[8] 
       (.C(s00_axi_aclk),
        .CE(sw[1]),
        .D(fromADCL[10]),
        .Q(LBus_out[8]),
        .R(1'b0));
  FDRE \w_Lbus_out_reg[9] 
       (.C(s00_axi_aclk),
        .CE(sw[1]),
        .D(fromADCL[11]),
        .Q(LBus_out[9]),
        .R(1'b0));
  FDRE \w_Rbus_out_reg[0] 
       (.C(s00_axi_aclk),
        .CE(sw[1]),
        .D(fromADCR[2]),
        .Q(Rbus_out[0]),
        .R(1'b0));
  FDRE \w_Rbus_out_reg[10] 
       (.C(s00_axi_aclk),
        .CE(sw[1]),
        .D(fromADCR[12]),
        .Q(Rbus_out[10]),
        .R(1'b0));
  FDRE \w_Rbus_out_reg[11] 
       (.C(s00_axi_aclk),
        .CE(sw[1]),
        .D(fromADCR[13]),
        .Q(Rbus_out[11]),
        .R(1'b0));
  FDRE \w_Rbus_out_reg[12] 
       (.C(s00_axi_aclk),
        .CE(sw[1]),
        .D(fromADCR[14]),
        .Q(Rbus_out[12]),
        .R(1'b0));
  FDRE \w_Rbus_out_reg[13] 
       (.C(s00_axi_aclk),
        .CE(sw[1]),
        .D(fromADCR[15]),
        .Q(Rbus_out[13]),
        .R(1'b0));
  FDRE \w_Rbus_out_reg[14] 
       (.C(s00_axi_aclk),
        .CE(sw[1]),
        .D(fromADCR[16]),
        .Q(Rbus_out[14]),
        .R(1'b0));
  FDRE \w_Rbus_out_reg[15] 
       (.C(s00_axi_aclk),
        .CE(sw[1]),
        .D(Audio_Codec_n_7),
        .Q(Rbus_out[15]),
        .R(1'b0));
  FDRE \w_Rbus_out_reg[1] 
       (.C(s00_axi_aclk),
        .CE(sw[1]),
        .D(fromADCR[3]),
        .Q(Rbus_out[1]),
        .R(1'b0));
  FDRE \w_Rbus_out_reg[2] 
       (.C(s00_axi_aclk),
        .CE(sw[1]),
        .D(fromADCR[4]),
        .Q(Rbus_out[2]),
        .R(1'b0));
  FDRE \w_Rbus_out_reg[3] 
       (.C(s00_axi_aclk),
        .CE(sw[1]),
        .D(fromADCR[5]),
        .Q(Rbus_out[3]),
        .R(1'b0));
  FDRE \w_Rbus_out_reg[4] 
       (.C(s00_axi_aclk),
        .CE(sw[1]),
        .D(fromADCR[6]),
        .Q(Rbus_out[4]),
        .R(1'b0));
  FDRE \w_Rbus_out_reg[5] 
       (.C(s00_axi_aclk),
        .CE(sw[1]),
        .D(fromADCR[7]),
        .Q(Rbus_out[5]),
        .R(1'b0));
  FDRE \w_Rbus_out_reg[6] 
       (.C(s00_axi_aclk),
        .CE(sw[1]),
        .D(fromADCR[8]),
        .Q(Rbus_out[6]),
        .R(1'b0));
  FDRE \w_Rbus_out_reg[7] 
       (.C(s00_axi_aclk),
        .CE(sw[1]),
        .D(fromADCR[9]),
        .Q(Rbus_out[7]),
        .R(1'b0));
  FDRE \w_Rbus_out_reg[8] 
       (.C(s00_axi_aclk),
        .CE(sw[1]),
        .D(fromADCR[10]),
        .Q(Rbus_out[8]),
        .R(1'b0));
  FDRE \w_Rbus_out_reg[9] 
       (.C(s00_axi_aclk),
        .CE(sw[1]),
        .D(fromADCR[11]),
        .Q(Rbus_out[9]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lab2_fsm
   (E,
    Q,
    D,
    \FSM_onehot_state_reg[3]_0 ,
    w_wrEnbMux,
    \processQ_reg[1] ,
    \sdp_bl.ramb18_dp_bl.ram18_bl ,
    switch,
    SR,
    s00_axi_aclk,
    \FSM_onehot_state_reg[0]_0 ,
    CO,
    \FSM_onehot_state_reg[0]_1 ,
    sw);
  output [0:0]E;
  output [1:0]Q;
  output [1:0]D;
  output \FSM_onehot_state_reg[3]_0 ;
  output w_wrEnbMux;
  input [1:0]\processQ_reg[1] ;
  input [0:0]\sdp_bl.ramb18_dp_bl.ram18_bl ;
  input [0:0]switch;
  input [0:0]SR;
  input s00_axi_aclk;
  input [0:0]\FSM_onehot_state_reg[0]_0 ;
  input [0:0]CO;
  input [0:0]\FSM_onehot_state_reg[0]_1 ;
  input [1:0]sw;

  wire [0:0]CO;
  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_4_n_0 ;
  wire [0:0]\FSM_onehot_state_reg[0]_0 ;
  wire [0:0]\FSM_onehot_state_reg[0]_1 ;
  wire \FSM_onehot_state_reg[3]_0 ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [1:0]\processQ_reg[1] ;
  wire s00_axi_aclk;
  wire [0:0]\sdp_bl.ramb18_dp_bl.ram18_bl ;
  wire [1:0]sw;
  wire [0:0]switch;
  wire w_wrEnbMux;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(sw[0]),
        .I2(Q[1]),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEEEEEEE)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(CO),
        .I4(\FSM_onehot_state_reg[0]_1 ),
        .I5(\FSM_onehot_state[3]_i_4_n_0 ),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(sw[1]),
        .O(\FSM_onehot_state[3]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "waittrigger:0010,storesample:1000,reset:0001,waitready:0100" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[3]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg[0]_0 ),
        .Q(Q[0]),
        .S(SR));
  (* FSM_ENCODED_STATES = "waittrigger:0010,storesample:1000,reset:0001,waitready:0100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[3]_i_1_n_0 ),
        .D(Q[0]),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "waittrigger:0010,storesample:1000,reset:0001,waitready:0100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[3]_i_1_n_0 ),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "waittrigger:0010,storesample:1000,reset:0001,waitready:0100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\FSM_onehot_state[3]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[2] ),
        .Q(Q[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \processQ[0]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\processQ_reg[1] [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0220)) 
    \processQ[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\processQ_reg[1] [0]),
        .I3(\processQ_reg[1] [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \processQ[9]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(E));
  LUT2 #(
    .INIT(4'hD)) 
    \processQ[9]_i_4 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\FSM_onehot_state_reg[3]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_1 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl ),
        .I1(switch),
        .I2(Q[1]),
        .O(w_wrEnbMux));
endmodule

(* ORIG_REF_NAME = "lec10" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lec10__parameterized1
   (\FSM_onehot_state_reg[3] ,
    \processQ_reg[1]_0 ,
    sw,
    ADDRBWRADDR,
    Q,
    \processQ_reg[9]_0 ,
    \sdp_bl.ramb18_dp_bl.ram18_bl ,
    switch,
    SS,
    E,
    s00_axi_aclk,
    D);
  output [0:0]\FSM_onehot_state_reg[3] ;
  output [1:0]\processQ_reg[1]_0 ;
  output [0:0]sw;
  output [9:0]ADDRBWRADDR;
  input [1:0]Q;
  input \processQ_reg[9]_0 ;
  input [9:0]\sdp_bl.ramb18_dp_bl.ram18_bl ;
  input [0:0]switch;
  input [0:0]SS;
  input [0:0]E;
  input s00_axi_aclk;
  input [1:0]D;

  wire [9:0]ADDRBWRADDR;
  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[0]_i_2_n_0 ;
  wire [0:0]\FSM_onehot_state_reg[3] ;
  wire [1:0]Q;
  wire [0:0]SS;
  wire [9:2]processQ;
  wire \processQ[5]_i_2_n_0 ;
  wire \processQ[9]_i_3_n_0 ;
  wire [1:0]\processQ_reg[1]_0 ;
  wire \processQ_reg[9]_0 ;
  wire s00_axi_aclk;
  wire [9:0]\sdp_bl.ramb18_dp_bl.ram18_bl ;
  wire [0:0]sw;
  wire [0:0]switch;
  wire [9:2]writeCntr;

  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(Q[1]),
        .I1(\FSM_onehot_state[0]_i_2_n_0 ),
        .I2(writeCntr[6]),
        .I3(writeCntr[8]),
        .I4(writeCntr[7]),
        .I5(writeCntr[9]),
        .O(\FSM_onehot_state_reg[3] ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \FSM_onehot_state[0]_i_2 
       (.I0(\processQ_reg[1]_0 [1]),
        .I1(\processQ_reg[1]_0 [0]),
        .I2(writeCntr[2]),
        .I3(writeCntr[3]),
        .I4(writeCntr[5]),
        .I5(writeCntr[4]),
        .O(\FSM_onehot_state[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(writeCntr[9]),
        .I1(writeCntr[7]),
        .I2(writeCntr[8]),
        .I3(writeCntr[6]),
        .I4(\FSM_onehot_state[0]_i_2_n_0 ),
        .O(sw));
  LUT5 #(
    .INIT(32'hFF6AFFFF)) 
    \processQ[2]_i_1 
       (.I0(writeCntr[2]),
        .I1(\processQ_reg[1]_0 [0]),
        .I2(\processQ_reg[1]_0 [1]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(processQ[2]));
  LUT6 #(
    .INIT(64'h007F000000800000)) 
    \processQ[3]_i_1 
       (.I0(\processQ_reg[1]_0 [1]),
        .I1(\processQ_reg[1]_0 [0]),
        .I2(writeCntr[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(writeCntr[3]),
        .O(processQ[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFF6AAAAAAA)) 
    \processQ[4]_i_1 
       (.I0(writeCntr[4]),
        .I1(writeCntr[2]),
        .I2(\processQ_reg[1]_0 [0]),
        .I3(\processQ_reg[1]_0 [1]),
        .I4(writeCntr[3]),
        .I5(\processQ_reg[9]_0 ),
        .O(processQ[4]));
  LUT4 #(
    .INIT(16'h2010)) 
    \processQ[5]_i_1 
       (.I0(\processQ[5]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(writeCntr[5]),
        .O(processQ[5]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \processQ[5]_i_2 
       (.I0(writeCntr[3]),
        .I1(\processQ_reg[1]_0 [1]),
        .I2(\processQ_reg[1]_0 [0]),
        .I3(writeCntr[2]),
        .I4(writeCntr[4]),
        .O(\processQ[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h2010)) 
    \processQ[6]_i_1 
       (.I0(\processQ[9]_i_3_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(writeCntr[6]),
        .O(processQ[6]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h0B000400)) 
    \processQ[7]_i_1 
       (.I0(\processQ[9]_i_3_n_0 ),
        .I1(writeCntr[6]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(writeCntr[7]),
        .O(processQ[7]));
  LUT6 #(
    .INIT(64'h00DF000000200000)) 
    \processQ[8]_i_1 
       (.I0(writeCntr[6]),
        .I1(\processQ[9]_i_3_n_0 ),
        .I2(writeCntr[7]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(writeCntr[8]),
        .O(processQ[8]));
  LUT6 #(
    .INIT(64'h0000DFFF00002000)) 
    \processQ[9]_i_2 
       (.I0(writeCntr[7]),
        .I1(\processQ[9]_i_3_n_0 ),
        .I2(writeCntr[6]),
        .I3(writeCntr[8]),
        .I4(\processQ_reg[9]_0 ),
        .I5(writeCntr[9]),
        .O(processQ[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \processQ[9]_i_3 
       (.I0(writeCntr[4]),
        .I1(writeCntr[2]),
        .I2(\processQ_reg[1]_0 [0]),
        .I3(\processQ_reg[1]_0 [1]),
        .I4(writeCntr[3]),
        .I5(writeCntr[5]),
        .O(\processQ[9]_i_3_n_0 ));
  FDRE \processQ_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[0]),
        .Q(\processQ_reg[1]_0 [0]),
        .R(SS));
  FDRE \processQ_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(D[1]),
        .Q(\processQ_reg[1]_0 [1]),
        .R(SS));
  FDSE \processQ_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processQ[2]),
        .Q(writeCntr[2]),
        .S(SS));
  FDRE \processQ_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processQ[3]),
        .Q(writeCntr[3]),
        .R(SS));
  FDSE \processQ_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processQ[4]),
        .Q(writeCntr[4]),
        .S(SS));
  FDRE \processQ_reg[5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processQ[5]),
        .Q(writeCntr[5]),
        .R(SS));
  FDRE \processQ_reg[6] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processQ[6]),
        .Q(writeCntr[6]),
        .R(SS));
  FDRE \processQ_reg[7] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processQ[7]),
        .Q(writeCntr[7]),
        .R(SS));
  FDRE \processQ_reg[8] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processQ[8]),
        .Q(writeCntr[8]),
        .R(SS));
  FDRE \processQ_reg[9] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(processQ[9]),
        .Q(writeCntr[9]),
        .R(SS));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_10 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl [1]),
        .I1(\processQ_reg[1]_0 [1]),
        .I2(switch),
        .O(ADDRBWRADDR[1]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_11 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl [0]),
        .I1(\processQ_reg[1]_0 [0]),
        .I2(switch),
        .O(ADDRBWRADDR[0]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_2 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl [9]),
        .I1(writeCntr[9]),
        .I2(switch),
        .O(ADDRBWRADDR[9]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_3 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl [8]),
        .I1(writeCntr[8]),
        .I2(switch),
        .O(ADDRBWRADDR[8]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_4 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl [7]),
        .I1(writeCntr[7]),
        .I2(switch),
        .O(ADDRBWRADDR[7]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_5 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl [6]),
        .I1(writeCntr[6]),
        .I2(switch),
        .O(ADDRBWRADDR[6]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_6 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl [5]),
        .I1(writeCntr[5]),
        .I2(switch),
        .O(ADDRBWRADDR[5]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_7 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl [4]),
        .I1(writeCntr[4]),
        .I2(switch),
        .O(ADDRBWRADDR[4]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_8 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl [3]),
        .I1(writeCntr[3]),
        .I2(switch),
        .O(ADDRBWRADDR[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_9 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl [2]),
        .I1(writeCntr[2]),
        .I2(switch),
        .O(ADDRBWRADDR[2]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_scopeFace
   (\processQ_reg[8] ,
    \processQ_reg[8]_0 ,
    \processQ_reg[8]_1 ,
    \processQ_reg[8]_2 ,
    \processQ_reg[9] ,
    \processQ_reg[1] ,
    \processQ_reg[9]_0 ,
    \processQ_reg[9]_1 ,
    O,
    \processQ_reg[1]_0 ,
    \processQ_reg[0] ,
    \processQ_reg[9]_2 ,
    \processQ_reg[9]_3 ,
    \processQ_reg[9]_4 ,
    \processQ_reg[9]_5 ,
    \triggerTime_reg[9] ,
    \processQ_reg[1]_1 ,
    \processQ_reg[9]_6 ,
    CO,
    \triggerVolt_reg[9] ,
    \processQ_reg[1]_2 ,
    \processQ_reg[0]_0 ,
    \processQ_reg[1]_3 ,
    \processQ_reg[7] ,
    Q,
    \is_hash_mark2_inferred__0/i__carry__0_0 ,
    \is_hash_mark2_inferred__0/i__carry__1_0 ,
    i___21_carry_i_2,
    i___30_carry_i_1,
    \dc_bias[3]_i_18__0_0 ,
    \dc_bias[3]_i_40_0 ,
    \dc_bias[3]_i_41_0 ,
    i___12_carry__1_i_1,
    i___12_carry__0_i_4,
    \dc_bias[3]_i_51_0 ,
    \dc_bias[3]_i_23_0 ,
    \dc_bias[3]_i_52_0 ,
    DI,
    is_horizontal_gridline0_carry__0_0,
    is_horizontal_gridline1,
    is_horizontal_gridline0__29_carry_i_5,
    S,
    is_horizontal_gridline0__29_carry_i_4,
    is_horizontal_gridline0__29_carry__0_i_5,
    is_horizontal_gridline0__29_carry__0_i_5_0,
    \dc_bias[3]_i_38_0 ,
    \dc_bias[3]_i_38_1 ,
    \dc_bias[3]_i_17__0 ,
    \dc_bias[3]_i_17__0_0 ,
    is_vertical_gridline0_carry__0_0,
    is_vertical_gridline0_carry__0_1,
    \dc_bias[3]_i_16__0_0 ,
    is_vertical_gridline0__20_carry_i_6,
    is_vertical_gridline0__20_carry__0_i_2,
    \dc_bias[3]_i_8__0_0 ,
    \dc_bias[3]_i_8__0_1 ,
    \dc_bias[3]_i_16__0_1 ,
    \is_trigger_time6_inferred__0/i__carry__0_0 ,
    \is_trigger_time6_inferred__0/i__carry__0_1 ,
    \dc_bias[3]_i_58 ,
    \dc_bias[3]_i_58_0 ,
    is_trigger_time5_carry__0_0,
    is_trigger_time5_carry__0_1,
    \dc_bias[3]_i_57 ,
    \dc_bias[3]_i_57_0 ,
    \dc_bias[3]_i_28 ,
    \dc_bias[3]_i_28_0 ,
    \dc_bias[3]_i_28_1 ,
    \dc_bias[3]_i_28_2 ,
    \is_trigger_volt6_inferred__0/i__carry__0_0 ,
    \is_trigger_volt6_inferred__0/i__carry__0_1 ,
    \dc_bias[3]_i_61 ,
    \dc_bias[3]_i_61_0 ,
    is_trigger_volt5_carry__0_0,
    is_trigger_volt5_carry__0_1,
    \dc_bias[3]_i_61_1 ,
    \dc_bias[3]_i_61_2 ,
    \dc_bias[3]_i_14 ,
    \dc_bias[3]_i_14_0 ,
    \dc_bias[3]_i_14_1 ,
    \dc_bias[3]_i_14_2 ,
    \dc_bias[3]_i_4__0 ,
    \dc_bias[3]_i_4__0_0 );
  output [1:0]\processQ_reg[8] ;
  output [0:0]\processQ_reg[8]_0 ;
  output [3:0]\processQ_reg[8]_1 ;
  output [3:0]\processQ_reg[8]_2 ;
  output [0:0]\processQ_reg[9] ;
  output [0:0]\processQ_reg[1] ;
  output [0:0]\processQ_reg[9]_0 ;
  output [2:0]\processQ_reg[9]_1 ;
  output [2:0]O;
  output [2:0]\processQ_reg[1]_0 ;
  output [0:0]\processQ_reg[0] ;
  output [0:0]\processQ_reg[9]_2 ;
  output [2:0]\processQ_reg[9]_3 ;
  output [0:0]\processQ_reg[9]_4 ;
  output [0:0]\processQ_reg[9]_5 ;
  output [0:0]\triggerTime_reg[9] ;
  output [0:0]\processQ_reg[1]_1 ;
  output [0:0]\processQ_reg[9]_6 ;
  output [0:0]CO;
  output [0:0]\triggerVolt_reg[9] ;
  output [0:0]\processQ_reg[1]_2 ;
  output \processQ_reg[0]_0 ;
  output \processQ_reg[1]_3 ;
  output \processQ_reg[7] ;
  input [8:0]Q;
  input [2:0]\is_hash_mark2_inferred__0/i__carry__0_0 ;
  input [3:0]\is_hash_mark2_inferred__0/i__carry__1_0 ;
  input [3:0]i___21_carry_i_2;
  input [2:0]i___30_carry_i_1;
  input [3:0]\dc_bias[3]_i_18__0_0 ;
  input [3:0]\dc_bias[3]_i_40_0 ;
  input [1:0]\dc_bias[3]_i_41_0 ;
  input [9:0]i___12_carry__1_i_1;
  input [1:0]i___12_carry__0_i_4;
  input [3:0]\dc_bias[3]_i_51_0 ;
  input [3:0]\dc_bias[3]_i_23_0 ;
  input [0:0]\dc_bias[3]_i_52_0 ;
  input [2:0]DI;
  input [2:0]is_horizontal_gridline0_carry__0_0;
  input [4:0]is_horizontal_gridline1;
  input [0:0]is_horizontal_gridline0__29_carry_i_5;
  input [3:0]S;
  input [2:0]is_horizontal_gridline0__29_carry_i_4;
  input [0:0]is_horizontal_gridline0__29_carry__0_i_5;
  input [2:0]is_horizontal_gridline0__29_carry__0_i_5_0;
  input [1:0]\dc_bias[3]_i_38_0 ;
  input [3:0]\dc_bias[3]_i_38_1 ;
  input [0:0]\dc_bias[3]_i_17__0 ;
  input [2:0]\dc_bias[3]_i_17__0_0 ;
  input [1:0]is_vertical_gridline0_carry__0_0;
  input [3:0]is_vertical_gridline0_carry__0_1;
  input [2:0]\dc_bias[3]_i_16__0_0 ;
  input [3:0]is_vertical_gridline0__20_carry_i_6;
  input [2:0]is_vertical_gridline0__20_carry__0_i_2;
  input [2:0]\dc_bias[3]_i_8__0_0 ;
  input [3:0]\dc_bias[3]_i_8__0_1 ;
  input [1:0]\dc_bias[3]_i_16__0_1 ;
  input [3:0]\is_trigger_time6_inferred__0/i__carry__0_0 ;
  input [3:0]\is_trigger_time6_inferred__0/i__carry__0_1 ;
  input [0:0]\dc_bias[3]_i_58 ;
  input [0:0]\dc_bias[3]_i_58_0 ;
  input [3:0]is_trigger_time5_carry__0_0;
  input [3:0]is_trigger_time5_carry__0_1;
  input [0:0]\dc_bias[3]_i_57 ;
  input [0:0]\dc_bias[3]_i_57_0 ;
  input [3:0]\dc_bias[3]_i_28 ;
  input \dc_bias[3]_i_28_0 ;
  input [3:0]\dc_bias[3]_i_28_1 ;
  input [3:0]\dc_bias[3]_i_28_2 ;
  input [3:0]\is_trigger_volt6_inferred__0/i__carry__0_0 ;
  input [3:0]\is_trigger_volt6_inferred__0/i__carry__0_1 ;
  input [0:0]\dc_bias[3]_i_61 ;
  input [0:0]\dc_bias[3]_i_61_0 ;
  input [3:0]is_trigger_volt5_carry__0_0;
  input [3:0]is_trigger_volt5_carry__0_1;
  input [0:0]\dc_bias[3]_i_61_1 ;
  input [0:0]\dc_bias[3]_i_61_2 ;
  input [3:0]\dc_bias[3]_i_14 ;
  input \dc_bias[3]_i_14_0 ;
  input [3:0]\dc_bias[3]_i_14_1 ;
  input [3:0]\dc_bias[3]_i_14_2 ;
  input \dc_bias[3]_i_4__0 ;
  input \dc_bias[3]_i_4__0_0 ;

  wire [0:0]CO;
  wire [2:0]DI;
  wire [2:0]O;
  wire [8:0]Q;
  wire [3:0]S;
  wire [3:0]\dc_bias[3]_i_14 ;
  wire \dc_bias[3]_i_14_0 ;
  wire [3:0]\dc_bias[3]_i_14_1 ;
  wire [3:0]\dc_bias[3]_i_14_2 ;
  wire [2:0]\dc_bias[3]_i_16__0_0 ;
  wire [1:0]\dc_bias[3]_i_16__0_1 ;
  wire \dc_bias[3]_i_16__0_n_0 ;
  wire [0:0]\dc_bias[3]_i_17__0 ;
  wire [2:0]\dc_bias[3]_i_17__0_0 ;
  wire [3:0]\dc_bias[3]_i_18__0_0 ;
  wire \dc_bias[3]_i_18__0_n_0 ;
  wire [3:0]\dc_bias[3]_i_23_0 ;
  wire [3:0]\dc_bias[3]_i_28 ;
  wire \dc_bias[3]_i_28_0 ;
  wire [3:0]\dc_bias[3]_i_28_1 ;
  wire [3:0]\dc_bias[3]_i_28_2 ;
  wire [1:0]\dc_bias[3]_i_38_0 ;
  wire [3:0]\dc_bias[3]_i_38_1 ;
  wire \dc_bias[3]_i_39_n_0 ;
  wire [3:0]\dc_bias[3]_i_40_0 ;
  wire \dc_bias[3]_i_40_n_0 ;
  wire [1:0]\dc_bias[3]_i_41_0 ;
  wire \dc_bias[3]_i_41_n_0 ;
  wire \dc_bias[3]_i_4__0 ;
  wire \dc_bias[3]_i_4__0_0 ;
  wire \dc_bias[3]_i_50_n_0 ;
  wire [3:0]\dc_bias[3]_i_51_0 ;
  wire \dc_bias[3]_i_51_n_0 ;
  wire [0:0]\dc_bias[3]_i_52_0 ;
  wire \dc_bias[3]_i_52_n_0 ;
  wire [0:0]\dc_bias[3]_i_57 ;
  wire [0:0]\dc_bias[3]_i_57_0 ;
  wire [0:0]\dc_bias[3]_i_58 ;
  wire [0:0]\dc_bias[3]_i_58_0 ;
  wire [0:0]\dc_bias[3]_i_61 ;
  wire [0:0]\dc_bias[3]_i_61_0 ;
  wire [0:0]\dc_bias[3]_i_61_1 ;
  wire [0:0]\dc_bias[3]_i_61_2 ;
  wire \dc_bias[3]_i_69_n_0 ;
  wire \dc_bias[3]_i_70_n_0 ;
  wire [2:0]\dc_bias[3]_i_8__0_0 ;
  wire [3:0]\dc_bias[3]_i_8__0_1 ;
  wire [1:0]i___12_carry__0_i_4;
  wire [9:0]i___12_carry__1_i_1;
  wire [3:0]i___21_carry_i_2;
  wire [2:0]i___30_carry_i_1;
  wire \is_hash_mark2_inferred__0/i___21_carry_n_1 ;
  wire \is_hash_mark2_inferred__0/i___21_carry_n_2 ;
  wire \is_hash_mark2_inferred__0/i___21_carry_n_3 ;
  wire \is_hash_mark2_inferred__0/i___30_carry__0_n_0 ;
  wire \is_hash_mark2_inferred__0/i___30_carry__0_n_1 ;
  wire \is_hash_mark2_inferred__0/i___30_carry__0_n_2 ;
  wire \is_hash_mark2_inferred__0/i___30_carry__0_n_3 ;
  wire \is_hash_mark2_inferred__0/i___30_carry__0_n_4 ;
  wire \is_hash_mark2_inferred__0/i___30_carry__0_n_5 ;
  wire \is_hash_mark2_inferred__0/i___30_carry__0_n_6 ;
  wire \is_hash_mark2_inferred__0/i___30_carry__0_n_7 ;
  wire \is_hash_mark2_inferred__0/i___30_carry__1_n_3 ;
  wire \is_hash_mark2_inferred__0/i___30_carry__1_n_6 ;
  wire \is_hash_mark2_inferred__0/i___30_carry__1_n_7 ;
  wire \is_hash_mark2_inferred__0/i___30_carry_n_0 ;
  wire \is_hash_mark2_inferred__0/i___30_carry_n_1 ;
  wire \is_hash_mark2_inferred__0/i___30_carry_n_2 ;
  wire \is_hash_mark2_inferred__0/i___30_carry_n_3 ;
  wire \is_hash_mark2_inferred__0/i___30_carry_n_4 ;
  wire \is_hash_mark2_inferred__0/i___30_carry_n_5 ;
  wire \is_hash_mark2_inferred__0/i___30_carry_n_6 ;
  wire \is_hash_mark2_inferred__0/i___30_carry_n_7 ;
  wire [2:0]\is_hash_mark2_inferred__0/i__carry__0_0 ;
  wire \is_hash_mark2_inferred__0/i__carry__0_n_0 ;
  wire \is_hash_mark2_inferred__0/i__carry__0_n_1 ;
  wire \is_hash_mark2_inferred__0/i__carry__0_n_2 ;
  wire \is_hash_mark2_inferred__0/i__carry__0_n_3 ;
  wire [3:0]\is_hash_mark2_inferred__0/i__carry__1_0 ;
  wire \is_hash_mark2_inferred__0/i__carry__1_n_1 ;
  wire \is_hash_mark2_inferred__0/i__carry__1_n_2 ;
  wire \is_hash_mark2_inferred__0/i__carry__1_n_3 ;
  wire \is_hash_mark2_inferred__0/i__carry_n_0 ;
  wire \is_hash_mark2_inferred__0/i__carry_n_1 ;
  wire \is_hash_mark2_inferred__0/i__carry_n_2 ;
  wire \is_hash_mark2_inferred__0/i__carry_n_3 ;
  wire \is_hash_mark2_inferred__2/i___12_carry__0_n_0 ;
  wire \is_hash_mark2_inferred__2/i___12_carry__0_n_1 ;
  wire \is_hash_mark2_inferred__2/i___12_carry__0_n_2 ;
  wire \is_hash_mark2_inferred__2/i___12_carry__0_n_3 ;
  wire \is_hash_mark2_inferred__2/i___12_carry__0_n_4 ;
  wire \is_hash_mark2_inferred__2/i___12_carry__0_n_5 ;
  wire \is_hash_mark2_inferred__2/i___12_carry__0_n_6 ;
  wire \is_hash_mark2_inferred__2/i___12_carry__0_n_7 ;
  wire \is_hash_mark2_inferred__2/i___12_carry__1_n_7 ;
  wire \is_hash_mark2_inferred__2/i___12_carry_n_0 ;
  wire \is_hash_mark2_inferred__2/i___12_carry_n_1 ;
  wire \is_hash_mark2_inferred__2/i___12_carry_n_2 ;
  wire \is_hash_mark2_inferred__2/i___12_carry_n_3 ;
  wire \is_hash_mark2_inferred__2/i___12_carry_n_4 ;
  wire \is_hash_mark2_inferred__2/i___12_carry_n_5 ;
  wire \is_hash_mark2_inferred__2/i___12_carry_n_6 ;
  wire \is_hash_mark2_inferred__2/i___12_carry_n_7 ;
  wire \is_hash_mark2_inferred__2/i___2_carry_n_0 ;
  wire \is_hash_mark2_inferred__2/i___2_carry_n_1 ;
  wire \is_hash_mark2_inferred__2/i___2_carry_n_2 ;
  wire \is_hash_mark2_inferred__2/i___2_carry_n_3 ;
  wire is_horizontal_gridline0__23_carry_n_2;
  wire is_horizontal_gridline0__23_carry_n_3;
  wire [0:0]is_horizontal_gridline0__29_carry__0_i_5;
  wire [2:0]is_horizontal_gridline0__29_carry__0_i_5_0;
  wire is_horizontal_gridline0__29_carry__0_n_2;
  wire is_horizontal_gridline0__29_carry__0_n_3;
  wire [2:0]is_horizontal_gridline0__29_carry_i_4;
  wire [0:0]is_horizontal_gridline0__29_carry_i_5;
  wire is_horizontal_gridline0__29_carry_n_0;
  wire is_horizontal_gridline0__29_carry_n_1;
  wire is_horizontal_gridline0__29_carry_n_2;
  wire is_horizontal_gridline0__29_carry_n_3;
  wire is_horizontal_gridline0__29_carry_n_4;
  wire is_horizontal_gridline0__29_carry_n_5;
  wire is_horizontal_gridline0__29_carry_n_6;
  wire is_horizontal_gridline0__29_carry_n_7;
  wire [2:0]is_horizontal_gridline0_carry__0_0;
  wire is_horizontal_gridline0_carry__0_n_0;
  wire is_horizontal_gridline0_carry__0_n_1;
  wire is_horizontal_gridline0_carry__0_n_2;
  wire is_horizontal_gridline0_carry__0_n_3;
  wire is_horizontal_gridline0_carry__1_n_2;
  wire is_horizontal_gridline0_carry__1_n_3;
  wire is_horizontal_gridline0_carry_n_0;
  wire is_horizontal_gridline0_carry_n_1;
  wire is_horizontal_gridline0_carry_n_2;
  wire is_horizontal_gridline0_carry_n_3;
  wire [4:0]is_horizontal_gridline1;
  wire is_trigger_time1_carry_n_1;
  wire is_trigger_time1_carry_n_2;
  wire is_trigger_time1_carry_n_3;
  wire [3:0]is_trigger_time5_carry__0_0;
  wire [3:0]is_trigger_time5_carry__0_1;
  wire is_trigger_time5_carry_n_0;
  wire is_trigger_time5_carry_n_1;
  wire is_trigger_time5_carry_n_2;
  wire is_trigger_time5_carry_n_3;
  wire [3:0]\is_trigger_time6_inferred__0/i__carry__0_0 ;
  wire [3:0]\is_trigger_time6_inferred__0/i__carry__0_1 ;
  wire \is_trigger_time6_inferred__0/i__carry_n_0 ;
  wire \is_trigger_time6_inferred__0/i__carry_n_1 ;
  wire \is_trigger_time6_inferred__0/i__carry_n_2 ;
  wire \is_trigger_time6_inferred__0/i__carry_n_3 ;
  wire \is_trigger_time6_inferred__2/i__carry_n_1 ;
  wire \is_trigger_time6_inferred__2/i__carry_n_2 ;
  wire \is_trigger_time6_inferred__2/i__carry_n_3 ;
  wire is_trigger_volt1_carry_n_1;
  wire is_trigger_volt1_carry_n_2;
  wire is_trigger_volt1_carry_n_3;
  wire [3:0]is_trigger_volt5_carry__0_0;
  wire [3:0]is_trigger_volt5_carry__0_1;
  wire is_trigger_volt5_carry_n_0;
  wire is_trigger_volt5_carry_n_1;
  wire is_trigger_volt5_carry_n_2;
  wire is_trigger_volt5_carry_n_3;
  wire [3:0]\is_trigger_volt6_inferred__0/i__carry__0_0 ;
  wire [3:0]\is_trigger_volt6_inferred__0/i__carry__0_1 ;
  wire \is_trigger_volt6_inferred__0/i__carry_n_0 ;
  wire \is_trigger_volt6_inferred__0/i__carry_n_1 ;
  wire \is_trigger_volt6_inferred__0/i__carry_n_2 ;
  wire \is_trigger_volt6_inferred__0/i__carry_n_3 ;
  wire \is_trigger_volt6_inferred__2/i__carry_n_1 ;
  wire \is_trigger_volt6_inferred__2/i__carry_n_2 ;
  wire \is_trigger_volt6_inferred__2/i__carry_n_3 ;
  wire [2:0]is_vertical_gridline0__20_carry__0_i_2;
  wire is_vertical_gridline0__20_carry__0_n_3;
  wire is_vertical_gridline0__20_carry__0_n_6;
  wire is_vertical_gridline0__20_carry__0_n_7;
  wire [3:0]is_vertical_gridline0__20_carry_i_6;
  wire is_vertical_gridline0__20_carry_n_0;
  wire is_vertical_gridline0__20_carry_n_1;
  wire is_vertical_gridline0__20_carry_n_2;
  wire is_vertical_gridline0__20_carry_n_3;
  wire is_vertical_gridline0__20_carry_n_4;
  wire is_vertical_gridline0__20_carry_n_5;
  wire is_vertical_gridline0__20_carry_n_6;
  wire is_vertical_gridline0__20_carry_n_7;
  wire [1:0]is_vertical_gridline0_carry__0_0;
  wire [3:0]is_vertical_gridline0_carry__0_1;
  wire is_vertical_gridline0_carry__0_n_0;
  wire is_vertical_gridline0_carry__0_n_1;
  wire is_vertical_gridline0_carry__0_n_2;
  wire is_vertical_gridline0_carry__0_n_3;
  wire is_vertical_gridline0_carry__1_n_2;
  wire is_vertical_gridline0_carry__1_n_3;
  wire is_vertical_gridline0_carry_n_0;
  wire is_vertical_gridline0_carry_n_1;
  wire is_vertical_gridline0_carry_n_2;
  wire is_vertical_gridline0_carry_n_3;
  wire [0:0]\processQ_reg[0] ;
  wire \processQ_reg[0]_0 ;
  wire [0:0]\processQ_reg[1] ;
  wire [2:0]\processQ_reg[1]_0 ;
  wire [0:0]\processQ_reg[1]_1 ;
  wire [0:0]\processQ_reg[1]_2 ;
  wire \processQ_reg[1]_3 ;
  wire \processQ_reg[7] ;
  wire [1:0]\processQ_reg[8] ;
  wire [0:0]\processQ_reg[8]_0 ;
  wire [3:0]\processQ_reg[8]_1 ;
  wire [3:0]\processQ_reg[8]_2 ;
  wire [0:0]\processQ_reg[9] ;
  wire [0:0]\processQ_reg[9]_0 ;
  wire [2:0]\processQ_reg[9]_1 ;
  wire [0:0]\processQ_reg[9]_2 ;
  wire [2:0]\processQ_reg[9]_3 ;
  wire [0:0]\processQ_reg[9]_4 ;
  wire [0:0]\processQ_reg[9]_5 ;
  wire [0:0]\processQ_reg[9]_6 ;
  wire [0:0]\triggerTime_reg[9] ;
  wire [0:0]\triggerVolt_reg[9] ;
  wire [3:1]\NLW_is_hash_mark2_inferred__0/i___30_carry__1_CO_UNCONNECTED ;
  wire [3:2]\NLW_is_hash_mark2_inferred__0/i___30_carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_is_hash_mark2_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_is_hash_mark2_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:3]\NLW_is_hash_mark2_inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [1:0]\NLW_is_hash_mark2_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_is_hash_mark2_inferred__2/i___12_carry__1_CO_UNCONNECTED ;
  wire [3:1]\NLW_is_hash_mark2_inferred__2/i___12_carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_is_hash_mark2_inferred__2/i___2_carry__0_CO_UNCONNECTED ;
  wire [3:1]\NLW_is_hash_mark2_inferred__2/i___2_carry__0_O_UNCONNECTED ;
  wire [3:2]NLW_is_horizontal_gridline0__23_carry_CO_UNCONNECTED;
  wire [3:3]NLW_is_horizontal_gridline0__23_carry_O_UNCONNECTED;
  wire [3:2]NLW_is_horizontal_gridline0__29_carry__0_CO_UNCONNECTED;
  wire [3:3]NLW_is_horizontal_gridline0__29_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_is_horizontal_gridline0_carry_O_UNCONNECTED;
  wire [2:0]NLW_is_horizontal_gridline0_carry__0_O_UNCONNECTED;
  wire [2:2]NLW_is_horizontal_gridline0_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_is_horizontal_gridline0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_is_trigger_time1_carry_O_UNCONNECTED;
  wire [3:0]NLW_is_trigger_time5_carry_O_UNCONNECTED;
  wire [3:1]NLW_is_trigger_time5_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_is_trigger_time5_carry__0_O_UNCONNECTED;
  wire [3:0]\NLW_is_trigger_time6_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:1]\NLW_is_trigger_time6_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_is_trigger_time6_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_is_trigger_time6_inferred__2/i__carry_O_UNCONNECTED ;
  wire [3:0]NLW_is_trigger_volt1_carry_O_UNCONNECTED;
  wire [3:0]NLW_is_trigger_volt5_carry_O_UNCONNECTED;
  wire [3:1]NLW_is_trigger_volt5_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_is_trigger_volt5_carry__0_O_UNCONNECTED;
  wire [3:0]\NLW_is_trigger_volt6_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:1]\NLW_is_trigger_volt6_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_is_trigger_volt6_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_is_trigger_volt6_inferred__2/i__carry_O_UNCONNECTED ;
  wire [3:1]NLW_is_vertical_gridline0__20_carry__0_CO_UNCONNECTED;
  wire [3:2]NLW_is_vertical_gridline0__20_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_is_vertical_gridline0_carry_O_UNCONNECTED;
  wire [2:0]NLW_is_vertical_gridline0_carry__0_O_UNCONNECTED;
  wire [2:2]NLW_is_vertical_gridline0_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_is_vertical_gridline0_carry__1_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'h5FFFFFFE)) 
    \dc_bias[3]_i_16__0 
       (.I0(is_vertical_gridline0__20_carry_n_4),
        .I1(is_vertical_gridline0__20_carry__0_n_6),
        .I2(is_vertical_gridline0__20_carry__0_n_7),
        .I3(is_vertical_gridline0__20_carry_n_5),
        .I4(is_vertical_gridline0__20_carry_n_6),
        .O(\dc_bias[3]_i_16__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFA108)) 
    \dc_bias[3]_i_18__0 
       (.I0(\is_hash_mark2_inferred__0/i___30_carry_n_6 ),
        .I1(\is_hash_mark2_inferred__0/i___30_carry_n_7 ),
        .I2(\dc_bias[3]_i_39_n_0 ),
        .I3(\is_hash_mark2_inferred__0/i___30_carry_n_5 ),
        .I4(\dc_bias[3]_i_40_n_0 ),
        .I5(\dc_bias[3]_i_41_n_0 ),
        .O(\dc_bias[3]_i_18__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFF4)) 
    \dc_bias[3]_i_23 
       (.I0(\dc_bias[3]_i_50_n_0 ),
        .I1(\is_hash_mark2_inferred__2/i___12_carry__0_n_7 ),
        .I2(\dc_bias[3]_i_51_n_0 ),
        .I3(\dc_bias[3]_i_52_n_0 ),
        .O(\processQ_reg[7] ));
  LUT6 #(
    .INIT(64'hFEFFFFFFFEFEFFFE)) 
    \dc_bias[3]_i_38 
       (.I0(is_horizontal_gridline0__29_carry_n_5),
        .I1(is_horizontal_gridline0__29_carry_n_4),
        .I2(is_horizontal_gridline0__29_carry_n_7),
        .I3(is_horizontal_gridline0__29_carry_n_6),
        .I4(\processQ_reg[1]_0 [1]),
        .I5(\processQ_reg[1]_0 [0]),
        .O(\processQ_reg[1]_3 ));
  LUT5 #(
    .INIT(32'h00005557)) 
    \dc_bias[3]_i_39 
       (.I0(\is_hash_mark2_inferred__0/i___30_carry__1_n_7 ),
        .I1(\dc_bias[3]_i_69_n_0 ),
        .I2(\is_hash_mark2_inferred__0/i___30_carry__0_n_5 ),
        .I3(\is_hash_mark2_inferred__0/i___30_carry__0_n_4 ),
        .I4(\is_hash_mark2_inferred__0/i___30_carry__1_n_6 ),
        .O(\dc_bias[3]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAAA777FEEEA)) 
    \dc_bias[3]_i_40 
       (.I0(\is_hash_mark2_inferred__0/i___30_carry__0_n_7 ),
        .I1(\is_hash_mark2_inferred__0/i___30_carry_n_5 ),
        .I2(\is_hash_mark2_inferred__0/i___30_carry_n_7 ),
        .I3(\is_hash_mark2_inferred__0/i___30_carry_n_6 ),
        .I4(\is_hash_mark2_inferred__0/i___30_carry_n_4 ),
        .I5(\dc_bias[3]_i_39_n_0 ),
        .O(\dc_bias[3]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFD7FFFFFFD6E)) 
    \dc_bias[3]_i_41 
       (.I0(\is_hash_mark2_inferred__0/i___30_carry__1_n_7 ),
        .I1(\is_hash_mark2_inferred__0/i___30_carry__0_n_6 ),
        .I2(\dc_bias[3]_i_70_n_0 ),
        .I3(\is_hash_mark2_inferred__0/i___30_carry__0_n_5 ),
        .I4(\is_hash_mark2_inferred__0/i___30_carry__0_n_4 ),
        .I5(\is_hash_mark2_inferred__0/i___30_carry__1_n_6 ),
        .O(\dc_bias[3]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h8080808080808000)) 
    \dc_bias[3]_i_50 
       (.I0(\is_hash_mark2_inferred__2/i___12_carry__0_n_5 ),
        .I1(\is_hash_mark2_inferred__2/i___12_carry__0_n_4 ),
        .I2(\is_hash_mark2_inferred__2/i___12_carry_n_4 ),
        .I3(\is_hash_mark2_inferred__2/i___12_carry_n_6 ),
        .I4(\is_hash_mark2_inferred__2/i___12_carry_n_7 ),
        .I5(\is_hash_mark2_inferred__2/i___12_carry_n_5 ),
        .O(\dc_bias[3]_i_50_n_0 ));
  LUT5 #(
    .INIT(32'hEAAAEAEA)) 
    \dc_bias[3]_i_51 
       (.I0(\is_hash_mark2_inferred__2/i___12_carry__0_n_6 ),
        .I1(\is_hash_mark2_inferred__2/i___12_carry_n_6 ),
        .I2(\is_hash_mark2_inferred__2/i___12_carry_n_5 ),
        .I3(\is_hash_mark2_inferred__2/i___12_carry_n_7 ),
        .I4(\is_hash_mark2_inferred__2/i___12_carry__0_n_7 ),
        .O(\dc_bias[3]_i_51_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \dc_bias[3]_i_52 
       (.I0(\is_hash_mark2_inferred__2/i___12_carry__0_n_5 ),
        .I1(\is_hash_mark2_inferred__2/i___12_carry__0_n_4 ),
        .I2(\is_hash_mark2_inferred__2/i___12_carry_n_4 ),
        .I3(\is_hash_mark2_inferred__2/i___12_carry__1_n_7 ),
        .I4(\is_hash_mark2_inferred__2/i___12_carry__0_n_7 ),
        .O(\dc_bias[3]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h8880000000000000)) 
    \dc_bias[3]_i_69 
       (.I0(\is_hash_mark2_inferred__0/i___30_carry__0_n_6 ),
        .I1(\is_hash_mark2_inferred__0/i___30_carry_n_4 ),
        .I2(\is_hash_mark2_inferred__0/i___30_carry_n_6 ),
        .I3(\is_hash_mark2_inferred__0/i___30_carry_n_7 ),
        .I4(\is_hash_mark2_inferred__0/i___30_carry_n_5 ),
        .I5(\is_hash_mark2_inferred__0/i___30_carry__0_n_7 ),
        .O(\dc_bias[3]_i_69_n_0 ));
  LUT5 #(
    .INIT(32'h88800000)) 
    \dc_bias[3]_i_70 
       (.I0(\is_hash_mark2_inferred__0/i___30_carry__0_n_7 ),
        .I1(\is_hash_mark2_inferred__0/i___30_carry_n_5 ),
        .I2(\is_hash_mark2_inferred__0/i___30_carry_n_7 ),
        .I3(\is_hash_mark2_inferred__0/i___30_carry_n_6 ),
        .I4(\is_hash_mark2_inferred__0/i___30_carry_n_4 ),
        .O(\dc_bias[3]_i_70_n_0 ));
  LUT6 #(
    .INIT(64'hFF01FFFFFF01FF01)) 
    \dc_bias[3]_i_8__0 
       (.I0(is_vertical_gridline0__20_carry_n_7),
        .I1(Q[0]),
        .I2(\dc_bias[3]_i_16__0_n_0 ),
        .I3(\dc_bias[3]_i_4__0 ),
        .I4(\dc_bias[3]_i_18__0_n_0 ),
        .I5(\dc_bias[3]_i_4__0_0 ),
        .O(\processQ_reg[0]_0 ));
  CARRY4 \is_hash_mark2_inferred__0/i___21_carry 
       (.CI(1'b0),
        .CO({\processQ_reg[8]_0 ,\is_hash_mark2_inferred__0/i___21_carry_n_1 ,\is_hash_mark2_inferred__0/i___21_carry_n_2 ,\is_hash_mark2_inferred__0/i___21_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\processQ_reg[8] [0],\processQ_reg[8] [0],\processQ_reg[8] [0]}),
        .O(\processQ_reg[8]_1 ),
        .S({\processQ_reg[8] [1],i___30_carry_i_1}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \is_hash_mark2_inferred__0/i___30_carry 
       (.CI(1'b0),
        .CO({\is_hash_mark2_inferred__0/i___30_carry_n_0 ,\is_hash_mark2_inferred__0/i___30_carry_n_1 ,\is_hash_mark2_inferred__0/i___30_carry_n_2 ,\is_hash_mark2_inferred__0/i___30_carry_n_3 }),
        .CYINIT(1'b1),
        .DI(Q[3:0]),
        .O({\is_hash_mark2_inferred__0/i___30_carry_n_4 ,\is_hash_mark2_inferred__0/i___30_carry_n_5 ,\is_hash_mark2_inferred__0/i___30_carry_n_6 ,\is_hash_mark2_inferred__0/i___30_carry_n_7 }),
        .S(\dc_bias[3]_i_18__0_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \is_hash_mark2_inferred__0/i___30_carry__0 
       (.CI(\is_hash_mark2_inferred__0/i___30_carry_n_0 ),
        .CO({\is_hash_mark2_inferred__0/i___30_carry__0_n_0 ,\is_hash_mark2_inferred__0/i___30_carry__0_n_1 ,\is_hash_mark2_inferred__0/i___30_carry__0_n_2 ,\is_hash_mark2_inferred__0/i___30_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O({\is_hash_mark2_inferred__0/i___30_carry__0_n_4 ,\is_hash_mark2_inferred__0/i___30_carry__0_n_5 ,\is_hash_mark2_inferred__0/i___30_carry__0_n_6 ,\is_hash_mark2_inferred__0/i___30_carry__0_n_7 }),
        .S(\dc_bias[3]_i_40_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \is_hash_mark2_inferred__0/i___30_carry__1 
       (.CI(\is_hash_mark2_inferred__0/i___30_carry__0_n_0 ),
        .CO({\NLW_is_hash_mark2_inferred__0/i___30_carry__1_CO_UNCONNECTED [3:1],\is_hash_mark2_inferred__0/i___30_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[8]}),
        .O({\NLW_is_hash_mark2_inferred__0/i___30_carry__1_O_UNCONNECTED [3:2],\is_hash_mark2_inferred__0/i___30_carry__1_n_6 ,\is_hash_mark2_inferred__0/i___30_carry__1_n_7 }),
        .S({1'b0,1'b0,\dc_bias[3]_i_41_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \is_hash_mark2_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\is_hash_mark2_inferred__0/i__carry_n_0 ,\is_hash_mark2_inferred__0/i__carry_n_1 ,\is_hash_mark2_inferred__0/i__carry_n_2 ,\is_hash_mark2_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({Q[1:0],1'b0,1'b1}),
        .O(\NLW_is_hash_mark2_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({\is_hash_mark2_inferred__0/i__carry__0_0 ,Q[0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \is_hash_mark2_inferred__0/i__carry__0 
       (.CI(\is_hash_mark2_inferred__0/i__carry_n_0 ),
        .CO({\is_hash_mark2_inferred__0/i__carry__0_n_0 ,\is_hash_mark2_inferred__0/i__carry__0_n_1 ,\is_hash_mark2_inferred__0/i__carry__0_n_2 ,\is_hash_mark2_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[5:2]),
        .O(\NLW_is_hash_mark2_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S(\is_hash_mark2_inferred__0/i__carry__1_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \is_hash_mark2_inferred__0/i__carry__1 
       (.CI(\is_hash_mark2_inferred__0/i__carry__0_n_0 ),
        .CO({\NLW_is_hash_mark2_inferred__0/i__carry__1_CO_UNCONNECTED [3],\is_hash_mark2_inferred__0/i__carry__1_n_1 ,\is_hash_mark2_inferred__0/i__carry__1_n_2 ,\is_hash_mark2_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,Q[8:6]}),
        .O({\processQ_reg[8] ,\NLW_is_hash_mark2_inferred__0/i__carry__1_O_UNCONNECTED [1:0]}),
        .S(i___21_carry_i_2));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \is_hash_mark2_inferred__2/i___12_carry 
       (.CI(1'b0),
        .CO({\is_hash_mark2_inferred__2/i___12_carry_n_0 ,\is_hash_mark2_inferred__2/i___12_carry_n_1 ,\is_hash_mark2_inferred__2/i___12_carry_n_2 ,\is_hash_mark2_inferred__2/i___12_carry_n_3 }),
        .CYINIT(1'b1),
        .DI(i___12_carry__1_i_1[3:0]),
        .O({\is_hash_mark2_inferred__2/i___12_carry_n_4 ,\is_hash_mark2_inferred__2/i___12_carry_n_5 ,\is_hash_mark2_inferred__2/i___12_carry_n_6 ,\is_hash_mark2_inferred__2/i___12_carry_n_7 }),
        .S(\dc_bias[3]_i_51_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \is_hash_mark2_inferred__2/i___12_carry__0 
       (.CI(\is_hash_mark2_inferred__2/i___12_carry_n_0 ),
        .CO({\is_hash_mark2_inferred__2/i___12_carry__0_n_0 ,\is_hash_mark2_inferred__2/i___12_carry__0_n_1 ,\is_hash_mark2_inferred__2/i___12_carry__0_n_2 ,\is_hash_mark2_inferred__2/i___12_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(i___12_carry__1_i_1[7:4]),
        .O({\is_hash_mark2_inferred__2/i___12_carry__0_n_4 ,\is_hash_mark2_inferred__2/i___12_carry__0_n_5 ,\is_hash_mark2_inferred__2/i___12_carry__0_n_6 ,\is_hash_mark2_inferred__2/i___12_carry__0_n_7 }),
        .S(\dc_bias[3]_i_23_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \is_hash_mark2_inferred__2/i___12_carry__1 
       (.CI(\is_hash_mark2_inferred__2/i___12_carry__0_n_0 ),
        .CO(\NLW_is_hash_mark2_inferred__2/i___12_carry__1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_is_hash_mark2_inferred__2/i___12_carry__1_O_UNCONNECTED [3:1],\is_hash_mark2_inferred__2/i___12_carry__1_n_7 }),
        .S({1'b0,1'b0,1'b0,\dc_bias[3]_i_52_0 }));
  CARRY4 \is_hash_mark2_inferred__2/i___2_carry 
       (.CI(1'b0),
        .CO({\is_hash_mark2_inferred__2/i___2_carry_n_0 ,\is_hash_mark2_inferred__2/i___2_carry_n_1 ,\is_hash_mark2_inferred__2/i___2_carry_n_2 ,\is_hash_mark2_inferred__2/i___2_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i___12_carry__1_i_1[8],i___12_carry__1_i_1[8],1'b0,i___12_carry__1_i_1[8]}),
        .O(\processQ_reg[8]_2 ),
        .S({i___12_carry__0_i_4[1],i___12_carry__1_i_1[8],i___12_carry__1_i_1[9],i___12_carry__0_i_4[0]}));
  CARRY4 \is_hash_mark2_inferred__2/i___2_carry__0 
       (.CI(\is_hash_mark2_inferred__2/i___2_carry_n_0 ),
        .CO(\NLW_is_hash_mark2_inferred__2/i___2_carry__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_is_hash_mark2_inferred__2/i___2_carry__0_O_UNCONNECTED [3:1],\processQ_reg[9] }),
        .S({1'b0,1'b0,1'b0,i___12_carry__1_i_1[9]}));
  CARRY4 is_horizontal_gridline0__23_carry
       (.CI(1'b0),
        .CO({NLW_is_horizontal_gridline0__23_carry_CO_UNCONNECTED[3:2],is_horizontal_gridline0__23_carry_n_2,is_horizontal_gridline0__23_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,is_horizontal_gridline0__29_carry__0_i_5,1'b0}),
        .O({NLW_is_horizontal_gridline0__23_carry_O_UNCONNECTED[3],O}),
        .S({1'b0,is_horizontal_gridline0__29_carry__0_i_5_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 is_horizontal_gridline0__29_carry
       (.CI(1'b0),
        .CO({is_horizontal_gridline0__29_carry_n_0,is_horizontal_gridline0__29_carry_n_1,is_horizontal_gridline0__29_carry_n_2,is_horizontal_gridline0__29_carry_n_3}),
        .CYINIT(1'b1),
        .DI({\dc_bias[3]_i_38_0 ,i___12_carry__1_i_1[1:0]}),
        .O({is_horizontal_gridline0__29_carry_n_4,is_horizontal_gridline0__29_carry_n_5,is_horizontal_gridline0__29_carry_n_6,is_horizontal_gridline0__29_carry_n_7}),
        .S(\dc_bias[3]_i_38_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 is_horizontal_gridline0__29_carry__0
       (.CI(is_horizontal_gridline0__29_carry_n_0),
        .CO({NLW_is_horizontal_gridline0__29_carry__0_CO_UNCONNECTED[3:2],is_horizontal_gridline0__29_carry__0_n_2,is_horizontal_gridline0__29_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,is_horizontal_gridline1[0],\dc_bias[3]_i_17__0 }),
        .O({NLW_is_horizontal_gridline0__29_carry__0_O_UNCONNECTED[3],\processQ_reg[1]_0 }),
        .S({1'b0,\dc_bias[3]_i_17__0_0 }));
  CARRY4 is_horizontal_gridline0_carry
       (.CI(1'b0),
        .CO({is_horizontal_gridline0_carry_n_0,is_horizontal_gridline0_carry_n_1,is_horizontal_gridline0_carry_n_2,is_horizontal_gridline0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({DI,1'b0}),
        .O(NLW_is_horizontal_gridline0_carry_O_UNCONNECTED[3:0]),
        .S({is_horizontal_gridline0_carry__0_0,i___12_carry__1_i_1[1]}));
  CARRY4 is_horizontal_gridline0_carry__0
       (.CI(is_horizontal_gridline0_carry_n_0),
        .CO({is_horizontal_gridline0_carry__0_n_0,is_horizontal_gridline0_carry__0_n_1,is_horizontal_gridline0_carry__0_n_2,is_horizontal_gridline0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({is_horizontal_gridline1[3:1],is_horizontal_gridline0__29_carry_i_5}),
        .O({\processQ_reg[1] ,NLW_is_horizontal_gridline0_carry__0_O_UNCONNECTED[2:0]}),
        .S(S));
  CARRY4 is_horizontal_gridline0_carry__1
       (.CI(is_horizontal_gridline0_carry__0_n_0),
        .CO({\processQ_reg[9]_0 ,NLW_is_horizontal_gridline0_carry__1_CO_UNCONNECTED[2],is_horizontal_gridline0_carry__1_n_2,is_horizontal_gridline0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,is_horizontal_gridline1[4]}),
        .O({NLW_is_horizontal_gridline0_carry__1_O_UNCONNECTED[3],\processQ_reg[9]_1 }),
        .S({1'b1,is_horizontal_gridline0__29_carry_i_4}));
  CARRY4 is_trigger_time1_carry
       (.CI(1'b0),
        .CO({\triggerTime_reg[9] ,is_trigger_time1_carry_n_1,is_trigger_time1_carry_n_2,is_trigger_time1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_is_trigger_time1_carry_O_UNCONNECTED[3:0]),
        .S(\dc_bias[3]_i_28 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 is_trigger_time5_carry
       (.CI(1'b0),
        .CO({is_trigger_time5_carry_n_0,is_trigger_time5_carry_n_1,is_trigger_time5_carry_n_2,is_trigger_time5_carry_n_3}),
        .CYINIT(1'b1),
        .DI(is_trigger_time5_carry__0_0),
        .O(NLW_is_trigger_time5_carry_O_UNCONNECTED[3:0]),
        .S(is_trigger_time5_carry__0_1));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 is_trigger_time5_carry__0
       (.CI(is_trigger_time5_carry_n_0),
        .CO({NLW_is_trigger_time5_carry__0_CO_UNCONNECTED[3:1],\processQ_reg[9]_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\dc_bias[3]_i_57 }),
        .O(NLW_is_trigger_time5_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,\dc_bias[3]_i_57_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \is_trigger_time6_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\is_trigger_time6_inferred__0/i__carry_n_0 ,\is_trigger_time6_inferred__0/i__carry_n_1 ,\is_trigger_time6_inferred__0/i__carry_n_2 ,\is_trigger_time6_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(\is_trigger_time6_inferred__0/i__carry__0_0 ),
        .O(\NLW_is_trigger_time6_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S(\is_trigger_time6_inferred__0/i__carry__0_1 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \is_trigger_time6_inferred__0/i__carry__0 
       (.CI(\is_trigger_time6_inferred__0/i__carry_n_0 ),
        .CO({\NLW_is_trigger_time6_inferred__0/i__carry__0_CO_UNCONNECTED [3:1],\processQ_reg[9]_4 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\dc_bias[3]_i_58 }),
        .O(\NLW_is_trigger_time6_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\dc_bias[3]_i_58_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \is_trigger_time6_inferred__2/i__carry 
       (.CI(1'b0),
        .CO({\processQ_reg[1]_1 ,\is_trigger_time6_inferred__2/i__carry_n_1 ,\is_trigger_time6_inferred__2/i__carry_n_2 ,\is_trigger_time6_inferred__2/i__carry_n_3 }),
        .CYINIT(\dc_bias[3]_i_28_0 ),
        .DI(\dc_bias[3]_i_28_1 ),
        .O(\NLW_is_trigger_time6_inferred__2/i__carry_O_UNCONNECTED [3:0]),
        .S(\dc_bias[3]_i_28_2 ));
  CARRY4 is_trigger_volt1_carry
       (.CI(1'b0),
        .CO({\triggerVolt_reg[9] ,is_trigger_volt1_carry_n_1,is_trigger_volt1_carry_n_2,is_trigger_volt1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_is_trigger_volt1_carry_O_UNCONNECTED[3:0]),
        .S(\dc_bias[3]_i_14 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 is_trigger_volt5_carry
       (.CI(1'b0),
        .CO({is_trigger_volt5_carry_n_0,is_trigger_volt5_carry_n_1,is_trigger_volt5_carry_n_2,is_trigger_volt5_carry_n_3}),
        .CYINIT(1'b1),
        .DI(is_trigger_volt5_carry__0_0),
        .O(NLW_is_trigger_volt5_carry_O_UNCONNECTED[3:0]),
        .S(is_trigger_volt5_carry__0_1));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 is_trigger_volt5_carry__0
       (.CI(is_trigger_volt5_carry_n_0),
        .CO({NLW_is_trigger_volt5_carry__0_CO_UNCONNECTED[3:1],CO}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\dc_bias[3]_i_61_1 }),
        .O(NLW_is_trigger_volt5_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,\dc_bias[3]_i_61_2 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \is_trigger_volt6_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\is_trigger_volt6_inferred__0/i__carry_n_0 ,\is_trigger_volt6_inferred__0/i__carry_n_1 ,\is_trigger_volt6_inferred__0/i__carry_n_2 ,\is_trigger_volt6_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(\is_trigger_volt6_inferred__0/i__carry__0_0 ),
        .O(\NLW_is_trigger_volt6_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S(\is_trigger_volt6_inferred__0/i__carry__0_1 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \is_trigger_volt6_inferred__0/i__carry__0 
       (.CI(\is_trigger_volt6_inferred__0/i__carry_n_0 ),
        .CO({\NLW_is_trigger_volt6_inferred__0/i__carry__0_CO_UNCONNECTED [3:1],\processQ_reg[9]_6 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\dc_bias[3]_i_61 }),
        .O(\NLW_is_trigger_volt6_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\dc_bias[3]_i_61_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \is_trigger_volt6_inferred__2/i__carry 
       (.CI(1'b0),
        .CO({\processQ_reg[1]_2 ,\is_trigger_volt6_inferred__2/i__carry_n_1 ,\is_trigger_volt6_inferred__2/i__carry_n_2 ,\is_trigger_volt6_inferred__2/i__carry_n_3 }),
        .CYINIT(\dc_bias[3]_i_14_0 ),
        .DI(\dc_bias[3]_i_14_1 ),
        .O(\NLW_is_trigger_volt6_inferred__2/i__carry_O_UNCONNECTED [3:0]),
        .S(\dc_bias[3]_i_14_2 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 is_vertical_gridline0__20_carry
       (.CI(1'b0),
        .CO({is_vertical_gridline0__20_carry_n_0,is_vertical_gridline0__20_carry_n_1,is_vertical_gridline0__20_carry_n_2,is_vertical_gridline0__20_carry_n_3}),
        .CYINIT(1'b1),
        .DI({\dc_bias[3]_i_8__0_0 ,1'b1}),
        .O({is_vertical_gridline0__20_carry_n_4,is_vertical_gridline0__20_carry_n_5,is_vertical_gridline0__20_carry_n_6,is_vertical_gridline0__20_carry_n_7}),
        .S(\dc_bias[3]_i_8__0_1 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 is_vertical_gridline0__20_carry__0
       (.CI(is_vertical_gridline0__20_carry_n_0),
        .CO({NLW_is_vertical_gridline0__20_carry__0_CO_UNCONNECTED[3:1],is_vertical_gridline0__20_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\dc_bias[3]_i_16__0_0 [2]}),
        .O({NLW_is_vertical_gridline0__20_carry__0_O_UNCONNECTED[3:2],is_vertical_gridline0__20_carry__0_n_6,is_vertical_gridline0__20_carry__0_n_7}),
        .S({1'b0,1'b0,\dc_bias[3]_i_16__0_1 }));
  CARRY4 is_vertical_gridline0_carry
       (.CI(1'b0),
        .CO({is_vertical_gridline0_carry_n_0,is_vertical_gridline0_carry_n_1,is_vertical_gridline0_carry_n_2,is_vertical_gridline0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({is_vertical_gridline0_carry__0_0,Q[0],1'b0}),
        .O(NLW_is_vertical_gridline0_carry_O_UNCONNECTED[3:0]),
        .S(is_vertical_gridline0_carry__0_1));
  CARRY4 is_vertical_gridline0_carry__0
       (.CI(is_vertical_gridline0_carry_n_0),
        .CO({is_vertical_gridline0_carry__0_n_0,is_vertical_gridline0_carry__0_n_1,is_vertical_gridline0_carry__0_n_2,is_vertical_gridline0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\dc_bias[3]_i_16__0_0 }),
        .O({\processQ_reg[0] ,NLW_is_vertical_gridline0_carry__0_O_UNCONNECTED[2:0]}),
        .S(is_vertical_gridline0__20_carry_i_6));
  CARRY4 is_vertical_gridline0_carry__1
       (.CI(is_vertical_gridline0_carry__0_n_0),
        .CO({\processQ_reg[9]_2 ,NLW_is_vertical_gridline0_carry__1_CO_UNCONNECTED[2],is_vertical_gridline0_carry__1_n_2,is_vertical_gridline0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_is_vertical_gridline0_carry__1_O_UNCONNECTED[3],\processQ_reg[9]_3 }),
        .S({1'b1,is_vertical_gridline0__20_carry__0_i_2}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_unimacro_BRAM_SDP_MACRO
   (DOADO,
    p_1_out,
    s00_axi_aclk,
    SR,
    Q,
    switch,
    \w_Lbus_out_reg[15] );
  output [15:0]DOADO;
  output [0:0]p_1_out;
  input s00_axi_aclk;
  input [0:0]SR;
  input [9:0]Q;
  input [0:0]switch;
  input [0:0]\w_Lbus_out_reg[15] ;

  wire [15:0]DOADO;
  wire [9:0]Q;
  wire [0:0]SR;
  wire [0:0]p_1_out;
  wire s00_axi_aclk;
  wire [0:0]switch;
  wire [0:0]\w_Lbus_out_reg[15] ;
  wire [15:0]\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPBDOP_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h8BC28AFA8A31896988A087D8870F8646857D84B583EC8323825A819180C87FFF),
    .INIT_01(256'hA74FA777A79AA7B7A7CEA7DFA7EAA7EEA7ECA7E4A7D5A7BFA7A3A77FA7547FFF),
    .INIT_02(256'hA269A2D1A337A39AA3FBA458A4B1A507A55AA5A8A5F2A638A67AA6B6A6EE7FFF),
    .INIT_03(256'h9B369BAB9C209C959D0C9D829DF89E6E9EE49F599FCDA041A0B2A123A192A1FE),
    .INIT_04(256'h94FD954B959C95F1964A96A59704976597C9983098999904997199E09A519AC3),
    .INIT_05(256'h92729276927F928E92A192BA92D892FA9321934D937E93B393ED942B946D94B3),
    .INIT_06(256'h950794B6946A942493E293A6936F933E931292EB92C992AD92979286927A9273),
    .INIT_07(256'h9C869BF19B5E9ACF9A4499BC993998B9983E97C7975496E6967D961895B8955D),
    .INIT_08(256'hA719A667A5B4A503A452A3A1A2F2A245A199A0EEA0469FA09EFC9E5A9DBB9D1F),
    .INIT_09(256'hB1B3B11AB07EAFDFAF3DAE99ADF2AD48AC9DABF0AB42AA92A9E2A930A87EA7CC),
    .INIT_0A(256'hB8CFB888B83AB7E6B78BB72BB6C5B659B5E8B571B4F6B476B3F1B367B2DAB248),
    .INIT_0B(256'hB948B97EB9ABB9CFB9EBB9FFBA0ABA0DBA08B9FBB9E7B9CAB9A6B97BB949B90F),
    .INIT_0C(256'hB126B1ECB2A9B35EB409B4ABB544B5D3B65AB6D7B74BB7B7B819B872B8C2B909),
    .INIT_0D(256'hA020A16EA2B4A3F3A529A657A77EA89CA9B1AABEABC3ACBFADB2AE9CAF7EB056),
    .INIT_0E(256'h87C789768B218CC68E6790039199932A94B4963997B7992F9AA19C0B9D6F9ECB),
    .INIT_0F(256'h6B356D0A6EE070B57288745B762C77FB79C87B927D5B7F2080E282A1845C8614),
    .INIT_10(256'h4E6D502751E453A55569573058F95AC65C945E646036620963DD65B36788695E),
    .INIT_11(256'h358236E2384A39B83B2D3CA93E2A3FB3414042D4446D460C47B049584B054CB7),
    .INIT_12(256'h23B7249425792667275F285F29672A782B922CB42DDE2F11304B318E32D83429),
    .INIT_13(256'h1AD21B1C1B6E1BCA1C2F1C9D1D141D941E1E1EB11F4D1FF220A12159221A22E4),
    .INIT_14(256'h1AC71A8C1A581A2C1A0719EB19D619C919C419C819D419E91A061A2C1A5A1A92),
    .INIT_15(256'h21CC213420A020121F871F021E821E071D921D231CB91C561BF81BA21B521B09),
    .INIT_16(256'h2CD82C1A2B5D2AA129E5292C287427BD2709265725A724FB245123AA23072267),
    .INIT_17(256'h386637B9370B365935A634F03439338032C6320A314E30902FD22F142E552D96),
    .INIT_18(256'h414E40DF406B3FF33F763EF53E6F3DE53D573CC63C303B973AFA3A5939B6390F),
    .INIT_19(256'h458A456E454C452544F944C744904454441343CC4380432F42D9427E421D41B8),
    .INIT_1A(256'h44AE44DE450A453245554574458E45A445B545C145C845CB45C845C045B445A1),
    .INIT_1B(256'h3FF8405540B1410B416341B8420C425D42AC42F74340438643C844074442447A),
    .INIT_1C(256'h39FE3A583AB33B103B6F3BCE3C2F3C903CF13D533DB63E173E793EDA3F3B3F9A),
    .INIT_1D(256'h35FE361F3645367136A036D5370D3749378A37CE3815386038AD38FE395139A6),
    .INIT_1E(256'h370A36C7368C3658362A360435E435CB35B935AD35A735A735AD35B935CA35E1),
    .INIT_1F(256'h3F3A3E7C3DC73D193C733BD63B3F3AB13A2B39AC393538C5385E37FE37A53754),
    .INIT_20(256'h4F134DE04CB34B8E4A6F49574846473D463B4540444D4361427D41A140CC3FFF),
    .INIT_21(256'h655263CA624660C65F4A5DD35C615AF3598B582856CA5572541F52D3518D504D),
    .INIT_22(256'h7F1E7D787BD37A2E788976E5754273A0720070616EC56D2B6B9369FE686C66DD),
    .INIT_23(256'h989F971D9597940D928090EF8F5A8DC48C2A8A8E88F0875085AF840C826880C3),
    .INIT_24(256'hADCFACAEAB85AA55A91EA7E0A69BA54FA3FDA2A5A1469FE29E799D0A9B969A1D),
    .INIT_25(256'hBB59BAC5BA28B981B8D0B816B753B687B5B1B4D3B3ECB2FCB203B102AFF9AEE8),
    .INIT_26(256'hBF57BF61BF62BF59BF46BF29BF02BED1BE96BE51BE02BDAABD47BCDABC64BBE3),
    .INIT_27(256'hB9B3BA4FBAE3BB6FBBF2BC6DBCDFBD48BDA7BDFEBE4CBE90BECBBEFCBF24BF42),
    .INIT_28(256'hAC2BAD31AE32AF2EB024B114B1FEB2E2B3C0B498B568B632B6F4B7B0B863B90F),
    .INIT_29(256'h99E09B169C4B9D7F9EB19FE1A10FA23AA363A489A5ABA6CBA7E6A8FEAA11AB21),
    .INIT_2A(256'h869D87C688F28A208B508C828DB58EEA90209157928F93C895009639977198A9),
    .INIT_2B(256'h75F876E077CE78C079B87AB47BB57CBB7DC57ED37FE580FB8215833284538576),
    .INIT_2C(256'h6A846B0D6B9C6C326CCE6D716E196EC86F7D703870F971C0728C735F74377514),
    .INIT_2D(256'h6546656D659965CB66036641668566CF671F677667D36836689F690F69856A01),
    .INIT_2E(256'h6588656465436526650D64F864E764DB64D364CF64D164D764E364F4650A6525),
    .INIT_2F(256'h691A68D768936851680F67CF678F6751671566DB66A3666D6639660965DB65B0),
    .INIT_30(256'h6CEE6CBF6C8D6C586C216BE76BAC6B6F6B306AF06AAF6A6D6A2A69E669A2695E),
    .INIT_31(256'h6DE86DFA6E086E106E146E126E0C6E026DF36DDF6DC86DAD6D8D6D6B6D446D1B),
    .INIT_32(256'h69B06A216A8C6AF16B4F6BA76BF96C456C8B6CCA6D046D386D676D8F6DB26DD0),
    .INIT_33(256'h5F5E602F60FB61C16281633C63F1649F654865EB6687671E67AE683868BC6939),
    .INIT_34(256'h4FBD50D551E952FB540955135619571B581959135A075AF85BE35CCA5DAB5E87),
    .INIT_35(256'h3D343E633F9140C041EE431C444A457646A247CC48F54A1C4B414C634D844EA2),
    .INIT_36(256'h2B452C4C2D582E682F7C309331AE32CB33EC350E3634375B388439AE3ADA3C07),
    .INIT_37(256'h1DBE1E641F121FC720842147221222E323BA2498257C26652754284929432A41),
    .INIT_38(256'h17E217FA181D1849187E18BD1906195719B21A151A821AF71B741BFB1C891D1F),
    .INIT_39(256'h1BA01B191A9C1A2919C01961190C18C118801849181C17FA17E117D217CE17D3),
    .INIT_3A(256'h2922280626F425E924E723EE22FE2217213920651F9A1ED81E201D711CCD1C32),
    .INIT_3B(256'h3EB43D2C3BAA3A2D38B5374435D83473331531BD306C2F222DDF2CA42B712A45),
    .INIT_3C(256'h5928576F55B75401524C50994EE94D3B4B8F49E7484246A04502436841D24041),
    .INIT_3D(256'h748072D8712C6F7E6DCE6C1B6A6768B166F96540638761CC60125E575C9C5AE1),
    .INIT_3E(256'h8CD18B738A0F88A5873685C0844682C681417FB87E2A7C977B01796677C77625),
    .INIT_3F(256'h9F199E2B9D369C399B349A29991597FB96D995B094809349920B90C67FFF8E29),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("NONE"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(18)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl 
       (.ADDRARDADDR({Q,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(s00_axi_aclk),
        .CLKBWRCLK(s00_axi_aclk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(DOADO),
        .DOBDO(\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(SR),
        .RSTRAMB(SR),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h2E)) 
    \w_Lbus_out[15]_i_1 
       (.I0(DOADO[15]),
        .I1(switch),
        .I2(\w_Lbus_out_reg[15] ),
        .O(p_1_out));
endmodule

(* ORIG_REF_NAME = "unimacro_BRAM_SDP_MACRO" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_unimacro_BRAM_SDP_MACRO__parameterized0
   (\sdp_bl.ramb18_dp_bl.ram18_bl_0 ,
    \sdp_bl.ramb18_dp_bl.ram18_bl_1 ,
    s00_axi_aclk,
    SR,
    Q,
    switch,
    \w_Rbus_out_reg[15] );
  output [15:0]\sdp_bl.ramb18_dp_bl.ram18_bl_0 ;
  output \sdp_bl.ramb18_dp_bl.ram18_bl_1 ;
  input s00_axi_aclk;
  input [0:0]SR;
  input [9:0]Q;
  input [0:0]switch;
  input [0:0]\w_Rbus_out_reg[15] ;

  wire [9:0]Q;
  wire [0:0]SR;
  wire s00_axi_aclk;
  wire [15:0]\sdp_bl.ramb18_dp_bl.ram18_bl_0 ;
  wire \sdp_bl.ramb18_dp_bl.ram18_bl_1 ;
  wire [0:0]switch;
  wire [0:0]\w_Rbus_out_reg[15] ;
  wire [15:0]\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPBDOP_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h8BC28AF98A31896988A087D8870F8647857E84B583EC8323825A819180C88000),
    .INIT_01(256'h9830976A96A595DF95199452938C92C591FE913790708FA98EE18E198D528C8A),
    .INIT_02(256'hA462A3A2A2E0A21FA15DA09B9FD89F169E529D8F9CCB9C079B439A7F99BA98F5),
    .INIT_03(256'hB03BAF81AEC6AE0BAD4FAC93ABD6AB19AA5CA99EA8E0A821A762A6A3A5E3A523),
    .INIT_04(256'hBB9DBAEBBA39B985B8D2B81DB768B6B3B5FDB547B490B3D8B320B268B1AFB0F5),
    .INIT_05(256'hC66DC5C5C51CC472C3C8C31DC272C1C6C119C06CBFBEBF0FBE60BDB0BD00BC4F),
    .INIT_06(256'hD08FCFF2CF55CEB7CE18CD78CCD8CC37CB95CAF2CA4FC9ABC907C861C7BBC714),
    .INIT_07(256'hD9EAD95BD8CAD839D7A7D714D681D5ECD557D4C1D42AD392D2F9D260D1C5D12A),
    .INIT_08(256'hE268E1E7E165E0E2E05FDFDADF54DECEDE46DDBEDD35DCAADC1FDB93DB06DA79),
    .INIT_09(256'hE9F4E983E910E89DE829E7B3E73DE6C6E64DE5D4E55AE4DFE463E3E5E367E2E8),
    .INIT_0A(256'hF07AF01AEFB8EF56EEF2EE8DEE28EDC1ED59ECF0EC86EC1BEBAFEB41EAD3EA64),
    .INIT_0B(256'hF5ECF59DF54EF4FDF4AAF457F403F3ADF357F2FFF2A6F24CF1F1F195F138F0DA),
    .INIT_0C(256'hFA3BF9FFF9C2F983F943F902F8C0F87DF839F7F3F7ACF765F71CF6D1F686F63A),
    .INIT_0D(256'hFD5DFD34FD0AFCDEFCB2FC84FC54FC24FBF3FBC0FB8CFB57FB20FAE9FAB0FA76),
    .INIT_0E(256'hFF4BFF35FF1EFF06FEEDFED2FEB6FE99FE7BFE5CFE3BFE19FDF6FDD2FDACFD85),
    .INIT_0F(256'hFFFFFFFDFFF9FFF5FFEFFFE8FFE0FFD7FFCCFFC0FFB3FFA5FF95FF85FF73FF5F),
    .INIT_10(256'hFF77FF89FF99FFA9FFB7FFC3FFCFFFD9FFE2FFEAFFF1FFF6FFFAFFFDFFFFFFFF),
    .INIT_11(256'hFDB6FDDBFDFFFE22FE44FE64FE83FEA1FEBEFED9FEF3FF0DFF24FF3BFF50FF64),
    .INIT_12(256'hFABFFAF7FB2FFB65FB99FBCDFC00FC31FC61FC90FCBDFCEAFD15FD3FFD68FD90),
    .INIT_13(256'hF69AF6E5F72FF777F7BFF805F84BF88FF8D2F913F954F993F9D2FA0FFA4BFA86),
    .INIT_14(256'hF150F1ADF209F264F2BDF316F36DF3C4F419F46DF4C0F512F562F5B2F600F64E),
    .INIT_15(256'hEAF0EB5EEBCBEC37ECA1ED0BED74EDDCEE42EEA8EF0CEF70EFD2F033F093F0F2),
    .INIT_16(256'hE388E406E483E4FFE57AE5F4E66DE6E5E75CE7D2E847E8BBE92EE9A0EA11EA81),
    .INIT_17(256'hDB2BDBB8DC43DCCEDD58DDE1DE69DEF1DF77DFFCE081E104E187E209E28AE309),
    .INIT_18(256'hD1EED288D321D3B9D451D4E8D57ED613D6A7D73BD7CDD85FD8F0D980DA0FDA9E),
    .INIT_19(256'hC7E6C88CC931C9D6CA7ACB1DCBBFCC61CD02CDA2CE41CEE0CF7ED01BD0B7D153),
    .INIT_1A(256'hBD2EBDDEBE8EBF3DBFEBC099C146C1F3C29FC34AC3F4C49EC548C5F0C698C740),
    .INIT_1B(256'hB1DFB298B350B408B4BFB576B62CB6E2B797B84CB900B9B4BA67BB1ABBCCBC7D),
    .INIT_1C(256'hA615A6D5A794A853A911A9CFAA8DAB4AAC07ACC4AD80AE3CAEF7AFB1B06CB125),
    .INIT_1D(256'h99ED9AB29B769C3A9CFE9DC29E859F48A00BA0CDA18FA251A313A3D4A494A555),
    .INIT_1E(256'h8D868E4D8F158FDC90A4916B923292F993BF9486954C961296D8979E98639928),
    .INIT_1F(256'h80FD81C6828F8357842084E985B2867B8743880C88D4899D8A658B2D8BF68CBE),
    .INIT_20(256'h7472753B760376CB7794785C792579EE7AB67B7F7C487D117DDA7EA37F6C8034),
    .INIT_21(256'h680368C9698F6A556B1B6BE16CA86D6E6E356EFD6FC4708B7153721A72E273AA),
    .INIT_22(256'h5BD05C915D525E135ED55F98605A611D61E062A46367642C64F065B46679673E),
    .INIT_23(256'h4FF550B0516A522652E2539E545B551855D556935752581058CF598F5A4F5B0F),
    .INIT_24(256'h4491454345F646A9475D481248C7497C4A324AE94BA04C584D104DC84E814F3B),
    .INIT_25(256'h39BF3A673B103BBA3C643D0F3DBB3E673F143FC1406F411E41CD427D432E43DF),
    .INIT_26(256'h2F9A303730D43172321132B1335233F33495353835DB367F372437CA38703917),
    .INIT_27(256'h263B26CB275B27ED287F291229A62A3B2AD02B672BFE2C962D2F2DC82E632EFE),
    .INIT_28(256'h1DB91E3A1EBD1F401FC4204920CF215521DD226622EF237A24052491251E25AC),
    .INIT_29(256'h162A169B170E178117F6186B18E2195919D21A4B1AC61B411BBE1C3B1CBA1D39),
    .INIT_2A(256'h0F9E0FFF106110C41128118D11F3125A12C2132C13961401146E14DB154A15B9),
    .INIT_2B(256'h0A280A770AC70B190B6B0BBF0C130C690CC00D180D710DCB0E260E830EE00F3F),
    .INIT_2C(256'h05D40611064E068D06CD070F0751079507D9081F086608AE08F80942098E09DA),
    .INIT_2D(256'h02AD02D70301032D035A038803B803E9041A044E048204B704EE0526055F0599),
    .INIT_2E(256'h00BB00D100E80100011A01350151016E018D01AD01CE01F002130238025E0285),
    .INIT_2F(256'h000200040008000C0012001A0022002C003700430050005F006F0080009200A6),
    .INIT_30(256'h008400730062005400460039002E0024001B0014000E00090005000200010001),
    .INIT_31(256'h0240021B01F801D501B4019401750157013B0120010600ED00D600BF00AA0097),
    .INIT_32(256'h053204FA04C3048E0459042603F403C3039303640337030B02E002B6028E0266),
    .INIT_33(256'h0953090808BE0876082F07E907A40760071D06DC069B065C061E05E105A6056B),
    .INIT_34(256'h0E970E3B0DDF0D850D2B0CD30C7C0C260BD10B7D0B2B0AD90A890A3A09EB099E),
    .INIT_35(256'h14F31486141913AE134312DA1271120A11A3113E10DA107710150FB40F540EF5),
    .INIT_36(256'h1C571BD91B5D1AE11A6619ED197418FC18851810179B172716B4164315D21562),
    .INIT_37(256'h24B024242398230E228421FB217320EC20661FE11F5D1EDA1E571DD61D551CD6),
    .INIT_38(256'h2DEA2D512CB82C1F2B882AF12A5C29C72933289F280D277B26EB265B25CC253E),
    .INIT_39(256'h37EF374936A435FF355C34B93417337532D53235319630F730592FBC2F202E85),
    .INIT_3A(256'h42A441F4414540963FE83F3A3E8D3DE13D353C8A3BDF3B363A8C39E4393C3895),
    .INIT_3B(256'h4DF14D384C804BC94B114A5B49A448EF483A478546D1461D456A44B844064355),
    .INIT_3C(256'h59B958FA583B577C56BD55FF5542548453C8530B524F519450D9501E4F644EAA),
    .INIT_3D(256'h65E0651B6457639362CF620B614860855FC35F005E3E5D7D5CBB5BFA5B3A5A79),
    .INIT_3E(256'h7247717F70B76FF06F296E616D9A6CD46C0D6B476A8069BA68F5682F676A66A5),
    .INIT_3F(256'h7ECF7E067D3D7C747BAC7AE37A1A7951788977C076F7762F7567749F73D6730E),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("NONE"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(18)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl 
       (.ADDRARDADDR({Q,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(s00_axi_aclk),
        .CLKBWRCLK(s00_axi_aclk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(\sdp_bl.ramb18_dp_bl.ram18_bl_0 ),
        .DOBDO(\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(SR),
        .RSTRAMB(SR),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h2E)) 
    \w_Rbus_out[15]_i_1 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_0 [15]),
        .I1(switch),
        .I2(\w_Rbus_out_reg[15] ),
        .O(\sdp_bl.ramb18_dp_bl.ram18_bl_1 ));
endmodule

(* ORIG_REF_NAME = "unimacro_BRAM_SDP_MACRO" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_unimacro_BRAM_SDP_MACRO__parameterized1
   (DOADO,
    S,
    \sdp_bl.ramb18_dp_bl.ram18_bl_0 ,
    s00_axi_aclk,
    w_wrEnbMux,
    SS,
    out,
    ADDRBWRADDR,
    \sdp_bl.ramb18_dp_bl.ram18_bl_1 ,
    LBus_out,
    switch,
    O101);
  output [3:0]DOADO;
  output [0:0]S;
  output \sdp_bl.ramb18_dp_bl.ram18_bl_0 ;
  input s00_axi_aclk;
  input w_wrEnbMux;
  input [0:0]SS;
  input [9:0]out;
  input [9:0]ADDRBWRADDR;
  input [15:0]\sdp_bl.ramb18_dp_bl.ram18_bl_1 ;
  input [15:0]LBus_out;
  input [0:0]switch;
  input [3:0]O101;

  wire [9:0]ADDRBWRADDR;
  wire [3:0]DOADO;
  wire [15:0]LBus_out;
  wire [3:0]O101;
  wire [0:0]S;
  wire [0:0]SS;
  wire [9:0]out;
  wire [5:0]p_0_in0_in;
  wire s00_axi_aclk;
  wire \sdp_bl.ramb18_dp_bl.ram18_bl_0 ;
  wire [15:0]\sdp_bl.ramb18_dp_bl.ram18_bl_1 ;
  wire \sdp_bl.ramb18_dp_bl.ram18_bl_n_10 ;
  wire \sdp_bl.ramb18_dp_bl.ram18_bl_n_11 ;
  wire \sdp_bl.ramb18_dp_bl.ram18_bl_n_12 ;
  wire \sdp_bl.ramb18_dp_bl.ram18_bl_n_13 ;
  wire \sdp_bl.ramb18_dp_bl.ram18_bl_n_14 ;
  wire \sdp_bl.ramb18_dp_bl.ram18_bl_n_15 ;
  wire \sdp_bl.ramb18_dp_bl.ram18_bl_n_8 ;
  wire \sdp_bl.ramb18_dp_bl.ram18_bl_n_9 ;
  wire [0:0]switch;
  wire [15:0]w_DinMuxL;
  wire w_wrEnbMux;
  wire [15:0]\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPBDOP_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h6006000000006006)) 
    \dc_bias[3]_i_14__0 
       (.I0(p_0_in0_in[2]),
        .I1(O101[2]),
        .I2(p_0_in0_in[1]),
        .I3(O101[1]),
        .I4(O101[0]),
        .I5(p_0_in0_in[0]),
        .O(S));
  LUT2 #(
    .INIT(4'h6)) 
    \dc_bias[3]_i_19__0 
       (.I0(p_0_in0_in[5]),
        .I1(O101[3]),
        .O(\sdp_bl.ramb18_dp_bl.ram18_bl_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h8BC28AFA8A31896988A087D8870F8646857D84B583EC8323825A819180C87FFF),
    .INIT_01(256'hA74FA777A79AA7B7A7CEA7DFA7EAA7EEA7ECA7E4A7D5A7BFA7A3A77FA7547FFF),
    .INIT_02(256'hA269A2D1A337A39AA3FBA458A4B1A507A55AA5A8A5F2A638A67AA6B6A6EE7FFF),
    .INIT_03(256'h9B369BAB9C209C959D0C9D829DF89E6E9EE49F599FCDA041A0B2A123A192A1FE),
    .INIT_04(256'h94FD954B959C95F1964A96A59704976597C9983098999904997199E09A519AC3),
    .INIT_05(256'h92729276927F928E92A192BA92D892FA9321934D937E93B393ED942B946D94B3),
    .INIT_06(256'h950794B6946A942493E293A6936F933E931292EB92C992AD92979286927A9273),
    .INIT_07(256'h9C869BF19B5E9ACF9A4499BC993998B9983E97C7975496E6967D961895B8955D),
    .INIT_08(256'hA719A667A5B4A503A452A3A1A2F2A245A199A0EEA0469FA09EFC9E5A9DBB9D1F),
    .INIT_09(256'hB1B3B11AB07EAFDFAF3DAE99ADF2AD48AC9DABF0AB42AA92A9E2A930A87EA7CC),
    .INIT_0A(256'hB8CFB888B83AB7E6B78BB72BB6C5B659B5E8B571B4F6B476B3F1B367B2DAB248),
    .INIT_0B(256'hB948B97EB9ABB9CFB9EBB9FFBA0ABA0DBA08B9FBB9E7B9CAB9A6B97BB949B90F),
    .INIT_0C(256'hB126B1ECB2A9B35EB409B4ABB544B5D3B65AB6D7B74BB7B7B819B872B8C2B909),
    .INIT_0D(256'hA020A16EA2B4A3F3A529A657A77EA89CA9B1AABEABC3ACBFADB2AE9CAF7EB056),
    .INIT_0E(256'h87C789768B218CC68E6790039199932A94B4963997B7992F9AA19C0B9D6F9ECB),
    .INIT_0F(256'h6B356D0A6EE070B57288745B762C77FB79C87B927D5B7F2080E282A1845C8614),
    .INIT_10(256'h4E6D502751E453A55569573058F95AC65C945E646036620963DD65B36788695E),
    .INIT_11(256'h358236E2384A39B83B2D3CA93E2A3FB3414042D4446D460C47B049584B054CB7),
    .INIT_12(256'h23B7249425792667275F285F29672A782B922CB42DDE2F11304B318E32D83429),
    .INIT_13(256'h1AD21B1C1B6E1BCA1C2F1C9D1D141D941E1E1EB11F4D1FF220A12159221A22E4),
    .INIT_14(256'h1AC71A8C1A581A2C1A0719EB19D619C919C419C819D419E91A061A2C1A5A1A92),
    .INIT_15(256'h21CC213420A020121F871F021E821E071D921D231CB91C561BF81BA21B521B09),
    .INIT_16(256'h2CD82C1A2B5D2AA129E5292C287427BD2709265725A724FB245123AA23072267),
    .INIT_17(256'h386637B9370B365935A634F03439338032C6320A314E30902FD22F142E552D96),
    .INIT_18(256'h414E40DF406B3FF33F763EF53E6F3DE53D573CC63C303B973AFA3A5939B6390F),
    .INIT_19(256'h458A456E454C452544F944C744904454441343CC4380432F42D9427E421D41B8),
    .INIT_1A(256'h44AE44DE450A453245554574458E45A445B545C145C845CB45C845C045B445A1),
    .INIT_1B(256'h3FF8405540B1410B416341B8420C425D42AC42F74340438643C844074442447A),
    .INIT_1C(256'h39FE3A583AB33B103B6F3BCE3C2F3C903CF13D533DB63E173E793EDA3F3B3F9A),
    .INIT_1D(256'h35FE361F3645367136A036D5370D3749378A37CE3815386038AD38FE395139A6),
    .INIT_1E(256'h370A36C7368C3658362A360435E435CB35B935AD35A735A735AD35B935CA35E1),
    .INIT_1F(256'h3F3A3E7C3DC73D193C733BD63B3F3AB13A2B39AC393538C5385E37FE37A53754),
    .INIT_20(256'h4F134DE04CB34B8E4A6F49574846473D463B4540444D4361427D41A140CC3FFF),
    .INIT_21(256'h655263CA624660C65F4A5DD35C615AF3598B582856CA5572541F52D3518D504D),
    .INIT_22(256'h7F1E7D787BD37A2E788976E5754273A0720070616EC56D2B6B9369FE686C66DD),
    .INIT_23(256'h989F971D9597940D928090EF8F5A8DC48C2A8A8E88F0875085AF840C826880C3),
    .INIT_24(256'hADCFACAEAB85AA55A91EA7E0A69BA54FA3FDA2A5A1469FE29E799D0A9B969A1D),
    .INIT_25(256'hBB59BAC5BA28B981B8D0B816B753B687B5B1B4D3B3ECB2FCB203B102AFF9AEE8),
    .INIT_26(256'hBF57BF61BF62BF59BF46BF29BF02BED1BE96BE51BE02BDAABD47BCDABC64BBE3),
    .INIT_27(256'hB9B3BA4FBAE3BB6FBBF2BC6DBCDFBD48BDA7BDFEBE4CBE90BECBBEFCBF24BF42),
    .INIT_28(256'hAC2BAD31AE32AF2EB024B114B1FEB2E2B3C0B498B568B632B6F4B7B0B863B90F),
    .INIT_29(256'h99E09B169C4B9D7F9EB19FE1A10FA23AA363A489A5ABA6CBA7E6A8FEAA11AB21),
    .INIT_2A(256'h869D87C688F28A208B508C828DB58EEA90209157928F93C895009639977198A9),
    .INIT_2B(256'h75F876E077CE78C079B87AB47BB57CBB7DC57ED37FE580FB8215833284538576),
    .INIT_2C(256'h6A846B0D6B9C6C326CCE6D716E196EC86F7D703870F971C0728C735F74377514),
    .INIT_2D(256'h6546656D659965CB66036641668566CF671F677667D36836689F690F69856A01),
    .INIT_2E(256'h6588656465436526650D64F864E764DB64D364CF64D164D764E364F4650A6525),
    .INIT_2F(256'h691A68D768936851680F67CF678F6751671566DB66A3666D6639660965DB65B0),
    .INIT_30(256'h6CEE6CBF6C8D6C586C216BE76BAC6B6F6B306AF06AAF6A6D6A2A69E669A2695E),
    .INIT_31(256'h6DE86DFA6E086E106E146E126E0C6E026DF36DDF6DC86DAD6D8D6D6B6D446D1B),
    .INIT_32(256'h69B06A216A8C6AF16B4F6BA76BF96C456C8B6CCA6D046D386D676D8F6DB26DD0),
    .INIT_33(256'h5F5E602F60FB61C16281633C63F1649F654865EB6687671E67AE683868BC6939),
    .INIT_34(256'h4FBD50D551E952FB540955135619571B581959135A075AF85BE35CCA5DAB5E87),
    .INIT_35(256'h3D343E633F9140C041EE431C444A457646A247CC48F54A1C4B414C634D844EA2),
    .INIT_36(256'h2B452C4C2D582E682F7C309331AE32CB33EC350E3634375B388439AE3ADA3C07),
    .INIT_37(256'h1DBE1E641F121FC720842147221222E323BA2498257C26652754284929432A41),
    .INIT_38(256'h17E217FA181D1849187E18BD1906195719B21A151A821AF71B741BFB1C891D1F),
    .INIT_39(256'h1BA01B191A9C1A2919C01961190C18C118801849181C17FA17E117D217CE17D3),
    .INIT_3A(256'h2922280626F425E924E723EE22FE2217213920651F9A1ED81E201D711CCD1C32),
    .INIT_3B(256'h3EB43D2C3BAA3A2D38B5374435D83473331531BD306C2F222DDF2CA42B712A45),
    .INIT_3C(256'h5928576F55B75401524C50994EE94D3B4B8F49E7484246A04502436841D24041),
    .INIT_3D(256'h748072D8712C6F7E6DCE6C1B6A6768B166F96540638761CC60125E575C9C5AE1),
    .INIT_3E(256'h8CD18B738A0F88A5873685C0844682C681417FB87E2A7C977B01796677C77625),
    .INIT_3F(256'h9F199E2B9D369C399B349A29991597FB96D995B094809349920B90C67FFF8E29),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("NONE"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(18)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl 
       (.ADDRARDADDR({out,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({ADDRBWRADDR,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(s00_axi_aclk),
        .CLKBWRCLK(s00_axi_aclk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI(w_DinMuxL),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({DOADO[3:2],p_0_in0_in[5],DOADO[1:0],p_0_in0_in[2:0],\sdp_bl.ramb18_dp_bl.ram18_bl_n_8 ,\sdp_bl.ramb18_dp_bl.ram18_bl_n_9 ,\sdp_bl.ramb18_dp_bl.ram18_bl_n_10 ,\sdp_bl.ramb18_dp_bl.ram18_bl_n_11 ,\sdp_bl.ramb18_dp_bl.ram18_bl_n_12 ,\sdp_bl.ramb18_dp_bl.ram18_bl_n_13 ,\sdp_bl.ramb18_dp_bl.ram18_bl_n_14 ,\sdp_bl.ramb18_dp_bl.ram18_bl_n_15 }),
        .DOBDO(\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(w_wrEnbMux),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(SS),
        .RSTRAMB(SS),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b1,1'b1,1'b1,1'b1}));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_12 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_1 [15]),
        .I1(LBus_out[15]),
        .I2(switch),
        .O(w_DinMuxL[15]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_13 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_1 [14]),
        .I1(LBus_out[14]),
        .I2(switch),
        .O(w_DinMuxL[14]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_14 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_1 [13]),
        .I1(LBus_out[13]),
        .I2(switch),
        .O(w_DinMuxL[13]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_15 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_1 [12]),
        .I1(LBus_out[12]),
        .I2(switch),
        .O(w_DinMuxL[12]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_16 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_1 [11]),
        .I1(LBus_out[11]),
        .I2(switch),
        .O(w_DinMuxL[11]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_17 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_1 [10]),
        .I1(LBus_out[10]),
        .I2(switch),
        .O(w_DinMuxL[10]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_18 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_1 [9]),
        .I1(LBus_out[9]),
        .I2(switch),
        .O(w_DinMuxL[9]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_19 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_1 [8]),
        .I1(LBus_out[8]),
        .I2(switch),
        .O(w_DinMuxL[8]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_20 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_1 [7]),
        .I1(LBus_out[7]),
        .I2(switch),
        .O(w_DinMuxL[7]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_21 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_1 [6]),
        .I1(LBus_out[6]),
        .I2(switch),
        .O(w_DinMuxL[6]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_22 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_1 [5]),
        .I1(LBus_out[5]),
        .I2(switch),
        .O(w_DinMuxL[5]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_23 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_1 [4]),
        .I1(LBus_out[4]),
        .I2(switch),
        .O(w_DinMuxL[4]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_24 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_1 [3]),
        .I1(LBus_out[3]),
        .I2(switch),
        .O(w_DinMuxL[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_25 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_1 [2]),
        .I1(LBus_out[2]),
        .I2(switch),
        .O(w_DinMuxL[2]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_26 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_1 [1]),
        .I1(LBus_out[1]),
        .I2(switch),
        .O(w_DinMuxL[1]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_27 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_1 [0]),
        .I1(LBus_out[0]),
        .I2(switch),
        .O(w_DinMuxL[0]));
endmodule

(* ORIG_REF_NAME = "unimacro_BRAM_SDP_MACRO" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_unimacro_BRAM_SDP_MACRO__parameterized2
   (DOADO,
    S,
    \sdp_bl.ramb18_dp_bl.ram18_bl_0 ,
    s00_axi_aclk,
    w_wrEnbMux,
    \sdp_bl.ramb18_dp_bl.ram18_bl_1 ,
    out,
    ADDRBWRADDR,
    \sdp_bl.ramb18_dp_bl.ram18_bl_2 ,
    Rbus_out,
    switch,
    O101);
  output [3:0]DOADO;
  output [0:0]S;
  output \sdp_bl.ramb18_dp_bl.ram18_bl_0 ;
  input s00_axi_aclk;
  input w_wrEnbMux;
  input \sdp_bl.ramb18_dp_bl.ram18_bl_1 ;
  input [9:0]out;
  input [9:0]ADDRBWRADDR;
  input [15:0]\sdp_bl.ramb18_dp_bl.ram18_bl_2 ;
  input [15:0]Rbus_out;
  input [0:0]switch;
  input [3:0]O101;

  wire [9:0]ADDRBWRADDR;
  wire [3:0]DOADO;
  wire [3:0]O101;
  wire [15:0]Rbus_out;
  wire [0:0]S;
  wire [9:0]out;
  wire [5:0]p_0_in;
  wire s00_axi_aclk;
  wire \sdp_bl.ramb18_dp_bl.ram18_bl_0 ;
  wire \sdp_bl.ramb18_dp_bl.ram18_bl_1 ;
  wire [15:0]\sdp_bl.ramb18_dp_bl.ram18_bl_2 ;
  wire \sdp_bl.ramb18_dp_bl.ram18_bl_n_10 ;
  wire \sdp_bl.ramb18_dp_bl.ram18_bl_n_11 ;
  wire \sdp_bl.ramb18_dp_bl.ram18_bl_n_12 ;
  wire \sdp_bl.ramb18_dp_bl.ram18_bl_n_13 ;
  wire \sdp_bl.ramb18_dp_bl.ram18_bl_n_14 ;
  wire \sdp_bl.ramb18_dp_bl.ram18_bl_n_15 ;
  wire \sdp_bl.ramb18_dp_bl.ram18_bl_n_8 ;
  wire \sdp_bl.ramb18_dp_bl.ram18_bl_n_9 ;
  wire [0:0]switch;
  wire [15:0]w_DinMuxR;
  wire w_wrEnbMux;
  wire [15:0]\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPBDOP_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h6006000000006006)) 
    \dc_bias[3]_i_37 
       (.I0(p_0_in[2]),
        .I1(O101[2]),
        .I2(p_0_in[1]),
        .I3(O101[1]),
        .I4(O101[0]),
        .I5(p_0_in[0]),
        .O(S));
  LUT2 #(
    .INIT(4'h6)) 
    \dc_bias[3]_i_68 
       (.I0(p_0_in[5]),
        .I1(O101[3]),
        .O(\sdp_bl.ramb18_dp_bl.ram18_bl_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h8BC28AF98A31896988A087D8870F8647857E84B583EC8323825A819180C88000),
    .INIT_01(256'h9830976A96A595DF95199452938C92C591FE913790708FA98EE18E198D528C8A),
    .INIT_02(256'hA462A3A2A2E0A21FA15DA09B9FD89F169E529D8F9CCB9C079B439A7F99BA98F5),
    .INIT_03(256'hB03BAF81AEC6AE0BAD4FAC93ABD6AB19AA5CA99EA8E0A821A762A6A3A5E3A523),
    .INIT_04(256'hBB9DBAEBBA39B985B8D2B81DB768B6B3B5FDB547B490B3D8B320B268B1AFB0F5),
    .INIT_05(256'hC66DC5C5C51CC472C3C8C31DC272C1C6C119C06CBFBEBF0FBE60BDB0BD00BC4F),
    .INIT_06(256'hD08FCFF2CF55CEB7CE18CD78CCD8CC37CB95CAF2CA4FC9ABC907C861C7BBC714),
    .INIT_07(256'hD9EAD95BD8CAD839D7A7D714D681D5ECD557D4C1D42AD392D2F9D260D1C5D12A),
    .INIT_08(256'hE268E1E7E165E0E2E05FDFDADF54DECEDE46DDBEDD35DCAADC1FDB93DB06DA79),
    .INIT_09(256'hE9F4E983E910E89DE829E7B3E73DE6C6E64DE5D4E55AE4DFE463E3E5E367E2E8),
    .INIT_0A(256'hF07AF01AEFB8EF56EEF2EE8DEE28EDC1ED59ECF0EC86EC1BEBAFEB41EAD3EA64),
    .INIT_0B(256'hF5ECF59DF54EF4FDF4AAF457F403F3ADF357F2FFF2A6F24CF1F1F195F138F0DA),
    .INIT_0C(256'hFA3BF9FFF9C2F983F943F902F8C0F87DF839F7F3F7ACF765F71CF6D1F686F63A),
    .INIT_0D(256'hFD5DFD34FD0AFCDEFCB2FC84FC54FC24FBF3FBC0FB8CFB57FB20FAE9FAB0FA76),
    .INIT_0E(256'hFF4BFF35FF1EFF06FEEDFED2FEB6FE99FE7BFE5CFE3BFE19FDF6FDD2FDACFD85),
    .INIT_0F(256'hFFFFFFFDFFF9FFF5FFEFFFE8FFE0FFD7FFCCFFC0FFB3FFA5FF95FF85FF73FF5F),
    .INIT_10(256'hFF77FF89FF99FFA9FFB7FFC3FFCFFFD9FFE2FFEAFFF1FFF6FFFAFFFDFFFFFFFF),
    .INIT_11(256'hFDB6FDDBFDFFFE22FE44FE64FE83FEA1FEBEFED9FEF3FF0DFF24FF3BFF50FF64),
    .INIT_12(256'hFABFFAF7FB2FFB65FB99FBCDFC00FC31FC61FC90FCBDFCEAFD15FD3FFD68FD90),
    .INIT_13(256'hF69AF6E5F72FF777F7BFF805F84BF88FF8D2F913F954F993F9D2FA0FFA4BFA86),
    .INIT_14(256'hF150F1ADF209F264F2BDF316F36DF3C4F419F46DF4C0F512F562F5B2F600F64E),
    .INIT_15(256'hEAF0EB5EEBCBEC37ECA1ED0BED74EDDCEE42EEA8EF0CEF70EFD2F033F093F0F2),
    .INIT_16(256'hE388E406E483E4FFE57AE5F4E66DE6E5E75CE7D2E847E8BBE92EE9A0EA11EA81),
    .INIT_17(256'hDB2BDBB8DC43DCCEDD58DDE1DE69DEF1DF77DFFCE081E104E187E209E28AE309),
    .INIT_18(256'hD1EED288D321D3B9D451D4E8D57ED613D6A7D73BD7CDD85FD8F0D980DA0FDA9E),
    .INIT_19(256'hC7E6C88CC931C9D6CA7ACB1DCBBFCC61CD02CDA2CE41CEE0CF7ED01BD0B7D153),
    .INIT_1A(256'hBD2EBDDEBE8EBF3DBFEBC099C146C1F3C29FC34AC3F4C49EC548C5F0C698C740),
    .INIT_1B(256'hB1DFB298B350B408B4BFB576B62CB6E2B797B84CB900B9B4BA67BB1ABBCCBC7D),
    .INIT_1C(256'hA615A6D5A794A853A911A9CFAA8DAB4AAC07ACC4AD80AE3CAEF7AFB1B06CB125),
    .INIT_1D(256'h99ED9AB29B769C3A9CFE9DC29E859F48A00BA0CDA18FA251A313A3D4A494A555),
    .INIT_1E(256'h8D868E4D8F158FDC90A4916B923292F993BF9486954C961296D8979E98639928),
    .INIT_1F(256'h80FD81C6828F8357842084E985B2867B8743880C88D4899D8A658B2D8BF68CBE),
    .INIT_20(256'h7472753B760376CB7794785C792579EE7AB67B7F7C487D117DDA7EA37F6C8034),
    .INIT_21(256'h680368C9698F6A556B1B6BE16CA86D6E6E356EFD6FC4708B7153721A72E273AA),
    .INIT_22(256'h5BD05C915D525E135ED55F98605A611D61E062A46367642C64F065B46679673E),
    .INIT_23(256'h4FF550B0516A522652E2539E545B551855D556935752581058CF598F5A4F5B0F),
    .INIT_24(256'h4491454345F646A9475D481248C7497C4A324AE94BA04C584D104DC84E814F3B),
    .INIT_25(256'h39BF3A673B103BBA3C643D0F3DBB3E673F143FC1406F411E41CD427D432E43DF),
    .INIT_26(256'h2F9A303730D43172321132B1335233F33495353835DB367F372437CA38703917),
    .INIT_27(256'h263B26CB275B27ED287F291229A62A3B2AD02B672BFE2C962D2F2DC82E632EFE),
    .INIT_28(256'h1DB91E3A1EBD1F401FC4204920CF215521DD226622EF237A24052491251E25AC),
    .INIT_29(256'h162A169B170E178117F6186B18E2195919D21A4B1AC61B411BBE1C3B1CBA1D39),
    .INIT_2A(256'h0F9E0FFF106110C41128118D11F3125A12C2132C13961401146E14DB154A15B9),
    .INIT_2B(256'h0A280A770AC70B190B6B0BBF0C130C690CC00D180D710DCB0E260E830EE00F3F),
    .INIT_2C(256'h05D40611064E068D06CD070F0751079507D9081F086608AE08F80942098E09DA),
    .INIT_2D(256'h02AD02D70301032D035A038803B803E9041A044E048204B704EE0526055F0599),
    .INIT_2E(256'h00BB00D100E80100011A01350151016E018D01AD01CE01F002130238025E0285),
    .INIT_2F(256'h000200040008000C0012001A0022002C003700430050005F006F0080009200A6),
    .INIT_30(256'h008400730062005400460039002E0024001B0014000E00090005000200010001),
    .INIT_31(256'h0240021B01F801D501B4019401750157013B0120010600ED00D600BF00AA0097),
    .INIT_32(256'h053204FA04C3048E0459042603F403C3039303640337030B02E002B6028E0266),
    .INIT_33(256'h0953090808BE0876082F07E907A40760071D06DC069B065C061E05E105A6056B),
    .INIT_34(256'h0E970E3B0DDF0D850D2B0CD30C7C0C260BD10B7D0B2B0AD90A890A3A09EB099E),
    .INIT_35(256'h14F31486141913AE134312DA1271120A11A3113E10DA107710150FB40F540EF5),
    .INIT_36(256'h1C571BD91B5D1AE11A6619ED197418FC18851810179B172716B4164315D21562),
    .INIT_37(256'h24B024242398230E228421FB217320EC20661FE11F5D1EDA1E571DD61D551CD6),
    .INIT_38(256'h2DEA2D512CB82C1F2B882AF12A5C29C72933289F280D277B26EB265B25CC253E),
    .INIT_39(256'h37EF374936A435FF355C34B93417337532D53235319630F730592FBC2F202E85),
    .INIT_3A(256'h42A441F4414540963FE83F3A3E8D3DE13D353C8A3BDF3B363A8C39E4393C3895),
    .INIT_3B(256'h4DF14D384C804BC94B114A5B49A448EF483A478546D1461D456A44B844064355),
    .INIT_3C(256'h59B958FA583B577C56BD55FF5542548453C8530B524F519450D9501E4F644EAA),
    .INIT_3D(256'h65E0651B6457639362CF620B614860855FC35F005E3E5D7D5CBB5BFA5B3A5A79),
    .INIT_3E(256'h7247717F70B76FF06F296E616D9A6CD46C0D6B476A8069BA68F5682F676A66A5),
    .INIT_3F(256'h7ECF7E067D3D7C747BAC7AE37A1A7951788977C076F7762F7567749F73D6730E),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("NONE"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(18)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl 
       (.ADDRARDADDR({out,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({ADDRBWRADDR,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(s00_axi_aclk),
        .CLKBWRCLK(s00_axi_aclk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI(w_DinMuxR),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({DOADO[3:2],p_0_in[5],DOADO[1:0],p_0_in[2:0],\sdp_bl.ramb18_dp_bl.ram18_bl_n_8 ,\sdp_bl.ramb18_dp_bl.ram18_bl_n_9 ,\sdp_bl.ramb18_dp_bl.ram18_bl_n_10 ,\sdp_bl.ramb18_dp_bl.ram18_bl_n_11 ,\sdp_bl.ramb18_dp_bl.ram18_bl_n_12 ,\sdp_bl.ramb18_dp_bl.ram18_bl_n_13 ,\sdp_bl.ramb18_dp_bl.ram18_bl_n_14 ,\sdp_bl.ramb18_dp_bl.ram18_bl_n_15 }),
        .DOBDO(\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_sdp_bl.ramb18_dp_bl.ram18_bl_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(w_wrEnbMux),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(\sdp_bl.ramb18_dp_bl.ram18_bl_1 ),
        .RSTRAMB(\sdp_bl.ramb18_dp_bl.ram18_bl_1 ),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b1,1'b1,1'b1,1'b1}));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_10__0 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_2 [6]),
        .I1(Rbus_out[6]),
        .I2(switch),
        .O(w_DinMuxR[6]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_11__0 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_2 [5]),
        .I1(Rbus_out[5]),
        .I2(switch),
        .O(w_DinMuxR[5]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_12__0 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_2 [4]),
        .I1(Rbus_out[4]),
        .I2(switch),
        .O(w_DinMuxR[4]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_13__0 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_2 [3]),
        .I1(Rbus_out[3]),
        .I2(switch),
        .O(w_DinMuxR[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_14__0 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_2 [2]),
        .I1(Rbus_out[2]),
        .I2(switch),
        .O(w_DinMuxR[2]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_15__0 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_2 [1]),
        .I1(Rbus_out[1]),
        .I2(switch),
        .O(w_DinMuxR[1]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_16__0 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_2 [0]),
        .I1(Rbus_out[0]),
        .I2(switch),
        .O(w_DinMuxR[0]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_1__0 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_2 [15]),
        .I1(Rbus_out[15]),
        .I2(switch),
        .O(w_DinMuxR[15]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_2__0 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_2 [14]),
        .I1(Rbus_out[14]),
        .I2(switch),
        .O(w_DinMuxR[14]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_3__0 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_2 [13]),
        .I1(Rbus_out[13]),
        .I2(switch),
        .O(w_DinMuxR[13]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_4__0 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_2 [12]),
        .I1(Rbus_out[12]),
        .I2(switch),
        .O(w_DinMuxR[12]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_5__0 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_2 [11]),
        .I1(Rbus_out[11]),
        .I2(switch),
        .O(w_DinMuxR[11]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_6__0 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_2 [10]),
        .I1(Rbus_out[10]),
        .I2(switch),
        .O(w_DinMuxR[10]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_7__0 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_2 [9]),
        .I1(Rbus_out[9]),
        .I2(switch),
        .O(w_DinMuxR[9]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_8__0 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_2 [8]),
        .I1(Rbus_out[8]),
        .I2(switch),
        .O(w_DinMuxR[8]));
  LUT3 #(
    .INIT(8'hAC)) 
    \sdp_bl.ramb18_dp_bl.ram18_bl_i_9__0 
       (.I0(\sdp_bl.ramb18_dp_bl.ram18_bl_2 [7]),
        .I1(Rbus_out[7]),
        .I2(switch),
        .O(w_DinMuxR[7]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_video
   (column,
    \processQ_reg[5] ,
    tmds,
    tmdsb,
    s00_axi_aresetn,
    triggerVoltOut,
    triggerTimeOut,
    S,
    \dc_bias[3]_i_7__0 ,
    \dc_bias_reg[3]_i_15 ,
    DOADO,
    \dc_bias_reg[3]_i_9 ,
    \dc_bias_reg[3]_i_9_0 ,
    s00_axi_aclk,
    switch,
    lopt);
  output [9:0]column;
  output [3:0]\processQ_reg[5] ;
  output [3:0]tmds;
  output [3:0]tmdsb;
  input s00_axi_aresetn;
  input [7:0]triggerVoltOut;
  input [7:0]triggerTimeOut;
  input [0:0]S;
  input [0:0]\dc_bias[3]_i_7__0 ;
  input \dc_bias_reg[3]_i_15 ;
  input [3:0]DOADO;
  input \dc_bias_reg[3]_i_9 ;
  input [3:0]\dc_bias_reg[3]_i_9_0 ;
  input s00_axi_aclk;
  input [1:0]switch;
  input lopt;

  wire [3:0]DOADO;
  wire Inst_vga_n_14;
  wire Inst_vga_n_15;
  wire Inst_vga_n_16;
  wire Inst_vga_n_17;
  wire Inst_vga_n_18;
  wire Inst_vga_n_19;
  wire Inst_vga_n_21;
  wire Inst_vga_n_22;
  wire [0:0]S;
  wire \TDMS_encoder_blue/p_1_in ;
  wire blank;
  wire blue_s;
  wire clock_s;
  wire [9:0]column;
  wire [0:0]\dc_bias[3]_i_7__0 ;
  wire \dc_bias_reg[3]_i_15 ;
  wire \dc_bias_reg[3]_i_9 ;
  wire [3:0]\dc_bias_reg[3]_i_9_0 ;
  wire green_s;
  wire inst_dvid_n_10;
  wire inst_dvid_n_11;
  wire inst_dvid_n_12;
  wire inst_dvid_n_13;
  wire inst_dvid_n_14;
  wire inst_dvid_n_4;
  wire inst_dvid_n_5;
  wire inst_dvid_n_6;
  wire inst_dvid_n_7;
  wire inst_dvid_n_9;
  wire lopt;
  wire pixel_clk;
  wire [3:0]\processQ_reg[5] ;
  wire red_s;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire serialize_clk;
  wire serialize_clk_n;
  wire [1:0]switch;
  wire [3:0]tmds;
  wire [3:0]tmdsb;
  wire [7:0]triggerTimeOut;
  wire [7:0]triggerVoltOut;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA Inst_vga
       (.CLK(pixel_clk),
        .D({Inst_vga_n_16,Inst_vga_n_17}),
        .DOADO(DOADO),
        .Q(column),
        .S(S),
        .SR(blank),
        .\dc_bias[3]_i_7__0 (\dc_bias[3]_i_7__0 ),
        .\dc_bias_reg[3]_i_15 (\dc_bias_reg[3]_i_15 ),
        .\dc_bias_reg[3]_i_31 (inst_dvid_n_4),
        .\dc_bias_reg[3]_i_55 (inst_dvid_n_14),
        .\dc_bias_reg[3]_i_56 (inst_dvid_n_6),
        .\dc_bias_reg[3]_i_62 (inst_dvid_n_5),
        .\dc_bias_reg[3]_i_66 (inst_dvid_n_13),
        .\dc_bias_reg[3]_i_9 (\dc_bias_reg[3]_i_9 ),
        .\dc_bias_reg[3]_i_92 (inst_dvid_n_7),
        .\dc_bias_reg[3]_i_9_0 (\dc_bias_reg[3]_i_9_0 ),
        .\encoded_reg[0] (\TDMS_encoder_blue/p_1_in ),
        .\is_trigger_time6_inferred__2/i__carry (inst_dvid_n_10),
        .\is_trigger_time6_inferred__2/i__carry_0 (inst_dvid_n_9),
        .\is_trigger_volt6_inferred__2/i__carry (inst_dvid_n_12),
        .\is_trigger_volt6_inferred__2/i__carry_0 (inst_dvid_n_11),
        .\processQ_reg[0] (Inst_vga_n_14),
        .\processQ_reg[0]_0 (Inst_vga_n_21),
        .\processQ_reg[4] (Inst_vga_n_22),
        .\processQ_reg[5] (\processQ_reg[5] ),
        .\processQ_reg[5]_0 (Inst_vga_n_15),
        .\processQ_reg[5]_1 (Inst_vga_n_18),
        .\processQ_reg[7] (Inst_vga_n_19),
        .s00_axi_aresetn(s00_axi_aresetn),
        .switch(switch),
        .triggerTimeOut(triggerTimeOut),
        .triggerVoltOut(triggerVoltOut));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    OBUFDS_blue
       (.I(blue_s),
        .O(tmds[0]),
        .OB(tmdsb[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    OBUFDS_clock
       (.I(clock_s),
        .O(tmds[3]),
        .OB(tmdsb[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    OBUFDS_green
       (.I(red_s),
        .O(tmds[2]),
        .OB(tmdsb[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    OBUFDS_red
       (.I(green_s),
        .O(tmds[1]),
        .OB(tmdsb[1]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dvid inst_dvid
       (.CLK(pixel_clk),
        .D({Inst_vga_n_16,Inst_vga_n_17}),
        .Q(\TDMS_encoder_blue/p_1_in ),
        .SR(blank),
        .blue_s(blue_s),
        .clk_out2(serialize_clk),
        .clk_out3(serialize_clk_n),
        .clock_s(clock_s),
        .\dc_bias_reg[1] (Inst_vga_n_21),
        .\encoded_reg[8] (Inst_vga_n_18),
        .\encoded_reg[9] (Inst_vga_n_22),
        .\encoded_reg[9]_0 (Inst_vga_n_19),
        .\encoded_reg[9]_1 (Inst_vga_n_14),
        .\encoded_reg[9]_2 (Inst_vga_n_15),
        .green_s(green_s),
        .red_s(red_s),
        .triggerTimeOut(triggerTimeOut[5:0]),
        .\triggerTime_reg[3] (inst_dvid_n_10),
        .\triggerTime_reg[4] (inst_dvid_n_7),
        .\triggerTime_reg[4]_0 (inst_dvid_n_14),
        .\triggerTime_reg[6] (inst_dvid_n_6),
        .\triggerTime_reg[6]_0 (inst_dvid_n_9),
        .triggerVoltOut(triggerVoltOut[5:0]),
        .\triggerVolt_reg[3] (inst_dvid_n_12),
        .\triggerVolt_reg[4] (inst_dvid_n_5),
        .\triggerVolt_reg[4]_0 (inst_dvid_n_13),
        .\triggerVolt_reg[6] (inst_dvid_n_4),
        .\triggerVolt_reg[6]_0 (inst_dvid_n_11));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_wiz_0 mmcm_adv_inst_display_clocks
       (.clk_in1(s00_axi_aclk),
        .clk_out1(pixel_clk),
        .clk_out2(serialize_clk),
        .clk_out3(serialize_clk_n),
        .lopt(lopt),
        .resetn(s00_axi_aresetn));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
