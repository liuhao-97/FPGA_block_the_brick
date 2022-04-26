// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Mon Apr 25 07:01:07 2022
// Host        : rsws10.kaust.edu.sa running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_3_sim_netlist.v
// Design      : blk_mem_gen_3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_3,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [8:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [8:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [8:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [8:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "9" *) 
  (* C_ADDRB_WIDTH = "9" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.54005 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_3.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_3.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "272" *) 
  (* C_READ_DEPTH_B = "272" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "272" *) 
  (* C_WRITE_DEPTH_B = "272" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[8:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[8:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20688)
`pragma protect data_block
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
`pragma protect end_protected
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
