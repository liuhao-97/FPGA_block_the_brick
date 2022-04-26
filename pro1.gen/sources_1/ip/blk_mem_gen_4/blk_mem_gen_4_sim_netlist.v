// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Mon Apr 25 07:11:05 2022
// Host        : rsws10.kaust.edu.sa running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/bouazim/Desktop/pro1_final/pro1.gen/sources_1/ip/blk_mem_gen_4/blk_mem_gen_4_sim_netlist.v
// Design      : blk_mem_gen_4
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_4,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_4
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [13:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [13:0]addra;
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
  wire [13:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [13:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "14" *) 
  (* C_ADDRB_WIDTH = "14" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.309743 mW" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_4.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_4.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "10100" *) 
  (* C_READ_DEPTH_B = "10100" *) 
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
  (* C_WRITE_DEPTH_A = "10100" *) 
  (* C_WRITE_DEPTH_B = "10100" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_4_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[13:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[13:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 60816)
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
