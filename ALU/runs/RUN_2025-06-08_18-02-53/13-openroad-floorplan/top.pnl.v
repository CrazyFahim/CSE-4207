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
 wire VPWR;
 wire VGND;

 sky130_fd_sc_hd__xnor2_4 _04_ (.A(\controller_inst.pstate[1] ),
    .B(\controller_inst.pstate[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(result[4]));
 sky130_fd_sc_hd__nand2b_4 _05_ (.A_N(\controller_inst.pstate[0] ),
    .B(\controller_inst.pstate[1] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_02_));
 sky130_fd_sc_hd__buf_6 _06_ (.A(_02_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(result[5]));
 sky130_fd_sc_hd__nand2b_4 _07_ (.A_N(\controller_inst.pstate[1] ),
    .B(\controller_inst.pstate[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_03_));
 sky130_fd_sc_hd__buf_6 _08_ (.A(_03_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(result[2]));
 sky130_fd_sc_hd__xnor2_4 _09_ (.A(\controller_inst.pstate[1] ),
    .B(\controller_inst.pstate[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(result[6]));
 sky130_fd_sc_hd__inv_2 _10_ (.A(\controller_inst.pstate[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(\controller_inst.nstate[0] ));
 sky130_fd_sc_hd__xor2_4 _11_ (.A(\controller_inst.pstate[1] ),
    .B(\controller_inst.pstate[0] ),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(\controller_inst.nstate[1] ));
 sky130_fd_sc_hd__inv_2 _12_ (.A(reset),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_00_));
 sky130_fd_sc_hd__inv_2 _13_ (.A(reset),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Y(_01_));
 sky130_fd_sc_hd__dfrtp_2 _14_ (.CLK(clk),
    .D(\controller_inst.nstate[0] ),
    .RESET_B(_00_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\controller_inst.pstate[0] ));
 sky130_fd_sc_hd__dfrtp_2 _15_ (.CLK(clk),
    .D(\controller_inst.nstate[1] ),
    .RESET_B(_01_),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .Q(\controller_inst.pstate[1] ));
 sky130_fd_sc_hd__conb_1 _16_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .HI(flag_gt_zero));
 sky130_fd_sc_hd__conb_1 _17_ (.VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .HI(result[3]));
 sky130_fd_sc_hd__buf_2 _18_ (.A(result[4]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(result[0]));
 sky130_fd_sc_hd__buf_2 _19_ (.A(result[5]),
    .VGND(VGND),
    .VNB(VGND),
    .VPB(VPWR),
    .VPWR(VPWR),
    .X(result[1]));
endmodule
