module top (clk,
    flag_gt_zero,
    reset,
    result);
 input clk;
 output flag_gt_zero;
 input reset;
 output [6:0] result;

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire _08_;
 wire \fsm.nstate[0] ;
 wire \fsm.nstate[1] ;
 wire \fsm.nstate[2] ;
 wire \fsm.pstate[0] ;
 wire \fsm.pstate[1] ;
 wire \fsm.pstate[2] ;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire clknet_0_clk;
 wire clknet_1_0__leaf_clk;
 wire clknet_1_1__leaf_clk;

 sky130_fd_sc_hd__inv_2 _09_ (.A(\fsm.pstate[1] ),
    .Y(_03_));
 sky130_fd_sc_hd__nand2b_1 _10_ (.A_N(\fsm.pstate[2] ),
    .B(\fsm.pstate[0] ),
    .Y(_04_));
 sky130_fd_sc_hd__buf_1 _11_ (.A(_04_),
    .X(net3));
 sky130_fd_sc_hd__or2_1 _12_ (.A(_03_),
    .B(net3),
    .X(_05_));
 sky130_fd_sc_hd__clkbuf_1 _13_ (.A(_05_),
    .X(net2));
 sky130_fd_sc_hd__o21bai_1 _14_ (.A1(\fsm.pstate[0] ),
    .A2(\fsm.pstate[1] ),
    .B1_N(\fsm.pstate[2] ),
    .Y(net9));
 sky130_fd_sc_hd__or2_1 _15_ (.A(_03_),
    .B(\fsm.pstate[2] ),
    .X(_06_));
 sky130_fd_sc_hd__clkbuf_1 _16_ (.A(_06_),
    .X(net6));
 sky130_fd_sc_hd__or2b_1 _17_ (.A(\fsm.pstate[2] ),
    .B_N(\fsm.pstate[0] ),
    .X(_07_));
 sky130_fd_sc_hd__clkbuf_1 _18_ (.A(_07_),
    .X(net7));
 sky130_fd_sc_hd__nor2_1 _19_ (.A(\fsm.pstate[0] ),
    .B(\fsm.pstate[2] ),
    .Y(\fsm.nstate[0] ));
 sky130_fd_sc_hd__xnor2_1 _20_ (.A(\fsm.pstate[0] ),
    .B(\fsm.pstate[1] ),
    .Y(_08_));
 sky130_fd_sc_hd__nor2_1 _21_ (.A(\fsm.pstate[2] ),
    .B(_08_),
    .Y(\fsm.nstate[1] ));
 sky130_fd_sc_hd__nor2_1 _22_ (.A(_03_),
    .B(net3),
    .Y(\fsm.nstate[2] ));
 sky130_fd_sc_hd__inv_2 _23_ (.A(net1),
    .Y(_00_));
 sky130_fd_sc_hd__inv_2 _24_ (.A(net1),
    .Y(_01_));
 sky130_fd_sc_hd__inv_2 _25_ (.A(net1),
    .Y(_02_));
 sky130_fd_sc_hd__dfrtp_1 _26_ (.CLK(clknet_1_0__leaf_clk),
    .D(\fsm.nstate[0] ),
    .RESET_B(_00_),
    .Q(\fsm.pstate[0] ));
 sky130_fd_sc_hd__dfrtp_1 _27_ (.CLK(clknet_1_1__leaf_clk),
    .D(\fsm.nstate[1] ),
    .RESET_B(_01_),
    .Q(\fsm.pstate[1] ));
 sky130_fd_sc_hd__dfrtp_1 _28_ (.CLK(clknet_1_0__leaf_clk),
    .D(\fsm.nstate[2] ),
    .RESET_B(_02_),
    .Q(\fsm.pstate[2] ));
 sky130_fd_sc_hd__clkbuf_1 _29_ (.A(net2),
    .X(net4));
 sky130_fd_sc_hd__clkbuf_1 _30_ (.A(net9),
    .X(net5));
 sky130_fd_sc_hd__clkbuf_1 _31_ (.A(net2),
    .X(net8));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_19 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_20 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_21 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_22 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_23 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_24 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_25 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_26 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_27 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_28 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_29 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_30 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_31 ();
 sky130_fd_sc_hd__dlymetal6s2s_1 input1 (.A(reset),
    .X(net1));
 sky130_fd_sc_hd__buf_2 output2 (.A(net2),
    .X(flag_gt_zero));
 sky130_fd_sc_hd__buf_2 output3 (.A(net3),
    .X(result[0]));
 sky130_fd_sc_hd__buf_2 output4 (.A(net4),
    .X(result[1]));
 sky130_fd_sc_hd__buf_2 output5 (.A(net5),
    .X(result[2]));
 sky130_fd_sc_hd__buf_2 output6 (.A(net6),
    .X(result[3]));
 sky130_fd_sc_hd__buf_2 output7 (.A(net7),
    .X(result[4]));
 sky130_fd_sc_hd__buf_2 output8 (.A(net8),
    .X(result[5]));
 sky130_fd_sc_hd__buf_2 output9 (.A(net9),
    .X(result[6]));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_0__f_clk (.A(clknet_0_clk),
    .X(clknet_1_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_1__f_clk (.A(clknet_0_clk),
    .X(clknet_1_1__leaf_clk));
 sky130_fd_sc_hd__clkbuf_4 clkload0 (.A(clknet_1_1__leaf_clk));
endmodule
