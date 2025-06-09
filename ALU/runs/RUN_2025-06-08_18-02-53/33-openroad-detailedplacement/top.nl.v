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
 wire \controller_inst.nstate[0] ;
 wire \controller_inst.nstate[1] ;
 wire \controller_inst.pstate[0] ;
 wire \controller_inst.pstate[1] ;
 wire net9;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;

 sky130_fd_sc_hd__xnor2_1 _04_ (.A(\controller_inst.pstate[1] ),
    .B(\controller_inst.pstate[0] ),
    .Y(net5));
 sky130_fd_sc_hd__nand2b_1 _05_ (.A_N(\controller_inst.pstate[0] ),
    .B(\controller_inst.pstate[1] ),
    .Y(_02_));
 sky130_fd_sc_hd__clkbuf_1 _06_ (.A(_02_),
    .X(net6));
 sky130_fd_sc_hd__nand2b_1 _07_ (.A_N(\controller_inst.pstate[1] ),
    .B(\controller_inst.pstate[0] ),
    .Y(_03_));
 sky130_fd_sc_hd__clkbuf_1 _08_ (.A(_03_),
    .X(net4));
 sky130_fd_sc_hd__xnor2_1 _09_ (.A(\controller_inst.pstate[1] ),
    .B(\controller_inst.pstate[0] ),
    .Y(net7));
 sky130_fd_sc_hd__inv_2 _10_ (.A(\controller_inst.pstate[0] ),
    .Y(\controller_inst.nstate[0] ));
 sky130_fd_sc_hd__xor2_1 _11_ (.A(\controller_inst.pstate[1] ),
    .B(\controller_inst.pstate[0] ),
    .X(\controller_inst.nstate[1] ));
 sky130_fd_sc_hd__inv_2 _12_ (.A(net1),
    .Y(_00_));
 sky130_fd_sc_hd__inv_2 _13_ (.A(net1),
    .Y(_01_));
 sky130_fd_sc_hd__dfrtp_4 _14_ (.CLK(clk),
    .D(\controller_inst.nstate[0] ),
    .RESET_B(_00_),
    .Q(\controller_inst.pstate[0] ));
 sky130_fd_sc_hd__dfrtp_2 _15_ (.CLK(clk),
    .D(\controller_inst.nstate[1] ),
    .RESET_B(_01_),
    .Q(\controller_inst.pstate[1] ));
 sky130_fd_sc_hd__conb_1 top_9 (.HI(net9));
 sky130_fd_sc_hd__clkbuf_1 _18_ (.A(net5),
    .X(net2));
 sky130_fd_sc_hd__clkbuf_1 _19_ (.A(net6),
    .X(net3));
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
 sky130_fd_sc_hd__buf_1 input1 (.A(reset),
    .X(net1));
 sky130_fd_sc_hd__buf_2 output2 (.A(net2),
    .X(result[0]));
 sky130_fd_sc_hd__buf_2 output3 (.A(net3),
    .X(result[1]));
 sky130_fd_sc_hd__buf_2 output4 (.A(net4),
    .X(result[2]));
 sky130_fd_sc_hd__buf_2 output5 (.A(net5),
    .X(result[4]));
 sky130_fd_sc_hd__buf_2 output6 (.A(net6),
    .X(result[5]));
 sky130_fd_sc_hd__buf_2 output7 (.A(net7),
    .X(result[6]));
 sky130_fd_sc_hd__conb_1 top_8 (.HI(net8));
 assign flag_gt_zero = net8;
 assign result[3] = net9;
endmodule
