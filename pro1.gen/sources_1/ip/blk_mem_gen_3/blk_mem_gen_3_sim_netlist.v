// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Mon Apr 25 07:01:08 2022
// Host        : rsws10.kaust.edu.sa running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/bouazim/Desktop/pro1_final/pro1.gen/sources_1/ip/blk_mem_gen_3/blk_mem_gen_3_sim_netlist.v
// Design      : blk_mem_gen_3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_3,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_3
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
  blk_mem_gen_3_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20672)
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
