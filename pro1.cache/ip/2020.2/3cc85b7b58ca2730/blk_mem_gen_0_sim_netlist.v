// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Fri Apr 22 03:57:01 2022
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
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [12:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [12:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta;
  wire ena;
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
  (* C_HAS_ENA = "1" *) 
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
        .ena(ena),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 41552)
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
