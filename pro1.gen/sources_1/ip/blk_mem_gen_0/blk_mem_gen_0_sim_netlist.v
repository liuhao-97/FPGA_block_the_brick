// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Fri Apr 22 05:21:59 2022
// Host        : rsws10.kaust.edu.sa running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/bouazim/Desktop/pro1/pro1.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [12:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [12:0]addra;
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
  wire [12:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [12:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "13" *) 
  (* C_ADDRB_WIDTH = "13" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.517298 mW" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "4160" *) 
  (* C_READ_DEPTH_B = "4160" *) 
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
  (* C_WRITE_DEPTH_A = "4160" *) 
  (* C_WRITE_DEPTH_B = "4160" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[12:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[12:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 40528)
`pragma protect data_block
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
tA==
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
