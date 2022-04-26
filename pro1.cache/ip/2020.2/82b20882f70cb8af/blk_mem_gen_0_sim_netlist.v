// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Fri Apr 22 05:21:57 2022
// Host        : rsws10.kaust.edu.sa running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 40672)
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
