// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Fri Apr 22 03:53:46 2022
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
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 41536)
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
