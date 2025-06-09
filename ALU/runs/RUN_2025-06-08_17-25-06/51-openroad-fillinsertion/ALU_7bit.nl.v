module ALU_7bit (OP,
    ZF,
    A,
    B,
    result);
 input OP;
 output ZF;
 input [6:0] A;
 input [6:0] B;
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
 wire _09_;
 wire _10_;
 wire _11_;
 wire _12_;
 wire _13_;
 wire _14_;
 wire _15_;
 wire _16_;
 wire _17_;
 wire _18_;
 wire _19_;
 wire _20_;
 wire _21_;
 wire _22_;
 wire _23_;
 wire _24_;
 wire _25_;
 wire _26_;
 wire _27_;
 wire _28_;
 wire _29_;
 wire _30_;
 wire _31_;
 wire _32_;
 wire _33_;
 wire _34_;
 wire _35_;
 wire _36_;
 wire _37_;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net20;
 wire net21;

 sky130_fd_sc_hd__inv_2 _38_ (.A(net21),
    .Y(_00_));
 sky130_fd_sc_hd__inv_2 _39_ (.A(net10),
    .Y(_01_));
 sky130_fd_sc_hd__and2b_1 _40_ (.A_N(net20),
    .B(net3),
    .X(_02_));
 sky130_fd_sc_hd__mux2_1 _41_ (.A0(net5),
    .A1(net6),
    .S(net20),
    .X(_03_));
 sky130_fd_sc_hd__or3b_1 _42_ (.A(net10),
    .B(net2),
    .C_N(net20),
    .X(_04_));
 sky130_fd_sc_hd__inv_2 _43_ (.A(net9),
    .Y(_05_));
 sky130_fd_sc_hd__o211a_1 _44_ (.A1(_01_),
    .A2(_03_),
    .B1(_04_),
    .C1(_05_),
    .X(_06_));
 sky130_fd_sc_hd__and2b_1 _45_ (.A_N(net20),
    .B(net7),
    .X(_07_));
 sky130_fd_sc_hd__and4b_1 _46_ (.A_N(net10),
    .B(net20),
    .C(net4),
    .D(net9),
    .X(_08_));
 sky130_fd_sc_hd__a31o_1 _47_ (.A1(net9),
    .A2(net10),
    .A3(_07_),
    .B1(_08_),
    .X(_09_));
 sky130_fd_sc_hd__a211o_1 _48_ (.A1(_01_),
    .A2(_02_),
    .B1(_06_),
    .C1(_09_),
    .X(_10_));
 sky130_fd_sc_hd__nor2_1 _49_ (.A(net9),
    .B(net10),
    .Y(_11_));
 sky130_fd_sc_hd__or3b_1 _50_ (.A(net20),
    .B(_00_),
    .C_N(_11_),
    .X(_12_));
 sky130_fd_sc_hd__mux2_1 _51_ (.A0(_12_),
    .A1(net21),
    .S(net1),
    .X(_13_));
 sky130_fd_sc_hd__o21a_1 _52_ (.A1(_00_),
    .A2(_10_),
    .B1(_13_),
    .X(net13));
 sky130_fd_sc_hd__mux2_1 _53_ (.A0(net3),
    .A1(net7),
    .S(net10),
    .X(_14_));
 sky130_fd_sc_hd__and2_1 _54_ (.A(_05_),
    .B(_14_),
    .X(_15_));
 sky130_fd_sc_hd__inv_2 _55_ (.A(net20),
    .Y(_16_));
 sky130_fd_sc_hd__a311o_1 _56_ (.A1(net9),
    .A2(_01_),
    .A3(net5),
    .B1(_15_),
    .C1(_16_),
    .X(_17_));
 sky130_fd_sc_hd__mux2_1 _57_ (.A0(_12_),
    .A1(net21),
    .S(net2),
    .X(_18_));
 sky130_fd_sc_hd__and2b_1 _58_ (.A_N(net10),
    .B(net4),
    .X(_19_));
 sky130_fd_sc_hd__o22a_1 _59_ (.A1(_01_),
    .A2(net6),
    .B1(_19_),
    .B2(_05_),
    .X(_20_));
 sky130_fd_sc_hd__or3_1 _60_ (.A(net20),
    .B(_00_),
    .C(_20_),
    .X(_21_));
 sky130_fd_sc_hd__o211a_1 _61_ (.A1(_00_),
    .A2(_17_),
    .B1(_18_),
    .C1(_21_),
    .X(net14));
 sky130_fd_sc_hd__inv_2 _62_ (.A(net3),
    .Y(_22_));
 sky130_fd_sc_hd__a211o_1 _63_ (.A1(net20),
    .A2(net4),
    .B1(_02_),
    .C1(net10),
    .X(_23_));
 sky130_fd_sc_hd__o2111a_1 _64_ (.A1(_01_),
    .A2(_07_),
    .B1(_23_),
    .C1(net21),
    .D1(_05_),
    .X(_24_));
 sky130_fd_sc_hd__and2b_1 _65_ (.A_N(net10),
    .B(net21),
    .X(_25_));
 sky130_fd_sc_hd__o211a_1 _66_ (.A1(net9),
    .A2(_02_),
    .B1(_03_),
    .C1(_25_),
    .X(_26_));
 sky130_fd_sc_hd__a211o_1 _67_ (.A1(_22_),
    .A2(_00_),
    .B1(_24_),
    .C1(_26_),
    .X(net15));
 sky130_fd_sc_hd__mux4_1 _68_ (.A0(net4),
    .A1(net5),
    .A2(net6),
    .A3(net7),
    .S0(net20),
    .S1(net9),
    .X(_27_));
 sky130_fd_sc_hd__a2bb2o_1 _69_ (.A1_N(net4),
    .A2_N(net21),
    .B1(_25_),
    .B2(_27_),
    .X(net16));
 sky130_fd_sc_hd__or3_1 _70_ (.A(net9),
    .B(net8),
    .C(net5),
    .X(_28_));
 sky130_fd_sc_hd__o21a_1 _71_ (.A1(_05_),
    .A2(_07_),
    .B1(_28_),
    .X(_29_));
 sky130_fd_sc_hd__o21a_1 _72_ (.A1(_16_),
    .A2(net6),
    .B1(_25_),
    .X(_30_));
 sky130_fd_sc_hd__a2bb2o_1 _73_ (.A1_N(net5),
    .A2_N(net21),
    .B1(_29_),
    .B2(_30_),
    .X(net17));
 sky130_fd_sc_hd__and2_1 _74_ (.A(_16_),
    .B(net6),
    .X(_31_));
 sky130_fd_sc_hd__a21o_1 _75_ (.A1(net8),
    .A2(net7),
    .B1(_31_),
    .X(_32_));
 sky130_fd_sc_hd__nor2_1 _76_ (.A(net6),
    .B(net21),
    .Y(_33_));
 sky130_fd_sc_hd__a31o_1 _77_ (.A1(net21),
    .A2(_11_),
    .A3(_32_),
    .B1(_33_),
    .X(net18));
 sky130_fd_sc_hd__mux2_1 _78_ (.A0(net21),
    .A1(_12_),
    .S(net7),
    .X(_34_));
 sky130_fd_sc_hd__inv_2 _79_ (.A(_34_),
    .Y(net19));
 sky130_fd_sc_hd__a21oi_1 _80_ (.A1(net7),
    .A2(net6),
    .B1(net11),
    .Y(_35_));
 sky130_fd_sc_hd__o211a_1 _81_ (.A1(net7),
    .A2(_31_),
    .B1(_11_),
    .C1(net11),
    .X(_36_));
 sky130_fd_sc_hd__or4_1 _82_ (.A(net16),
    .B(net17),
    .C(_35_),
    .D(_36_),
    .X(_37_));
 sky130_fd_sc_hd__nor4_1 _83_ (.A(net13),
    .B(net14),
    .C(net15),
    .D(_37_),
    .Y(net12));
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
 sky130_fd_sc_hd__clkbuf_1 input1 (.A(A[0]),
    .X(net1));
 sky130_fd_sc_hd__clkbuf_1 input2 (.A(A[1]),
    .X(net2));
 sky130_fd_sc_hd__buf_1 input3 (.A(A[2]),
    .X(net3));
 sky130_fd_sc_hd__buf_1 input4 (.A(A[3]),
    .X(net4));
 sky130_fd_sc_hd__buf_1 input5 (.A(A[4]),
    .X(net5));
 sky130_fd_sc_hd__clkbuf_2 input6 (.A(A[5]),
    .X(net6));
 sky130_fd_sc_hd__clkbuf_2 input7 (.A(A[6]),
    .X(net7));
 sky130_fd_sc_hd__buf_1 input8 (.A(B[0]),
    .X(net8));
 sky130_fd_sc_hd__clkbuf_2 input9 (.A(B[1]),
    .X(net9));
 sky130_fd_sc_hd__clkbuf_2 input10 (.A(B[2]),
    .X(net10));
 sky130_fd_sc_hd__buf_1 input11 (.A(OP),
    .X(net11));
 sky130_fd_sc_hd__buf_2 output12 (.A(net12),
    .X(ZF));
 sky130_fd_sc_hd__buf_2 output13 (.A(net13),
    .X(result[0]));
 sky130_fd_sc_hd__buf_2 output14 (.A(net14),
    .X(result[1]));
 sky130_fd_sc_hd__buf_2 output15 (.A(net15),
    .X(result[2]));
 sky130_fd_sc_hd__buf_2 output16 (.A(net16),
    .X(result[3]));
 sky130_fd_sc_hd__buf_2 output17 (.A(net17),
    .X(result[4]));
 sky130_fd_sc_hd__buf_2 output18 (.A(net18),
    .X(result[5]));
 sky130_fd_sc_hd__buf_2 output19 (.A(net19),
    .X(result[6]));
 sky130_fd_sc_hd__buf_2 fanout20 (.A(net8),
    .X(net20));
 sky130_fd_sc_hd__clkbuf_2 fanout21 (.A(net11),
    .X(net21));
 sky130_ef_sc_hd__decap_12 FILLER_0_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_41 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_53 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_69 ();
 sky130_ef_sc_hd__decap_12 FILLER_1_6 ();
 sky130_ef_sc_hd__decap_12 FILLER_1_18 ();
 sky130_ef_sc_hd__decap_12 FILLER_1_30 ();
 sky130_ef_sc_hd__decap_12 FILLER_1_42 ();
 sky130_fd_sc_hd__fill_2 FILLER_1_54 ();
 sky130_ef_sc_hd__decap_12 FILLER_1_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_1_69 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_9 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_23 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_27 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_29 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_33 ();
 sky130_fd_sc_hd__decap_6 FILLER_2_49 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_55 ();
 sky130_ef_sc_hd__decap_12 FILLER_2_62 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_74 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_28 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_46 ();
 sky130_fd_sc_hd__fill_2 FILLER_4_19 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_29 ();
 sky130_fd_sc_hd__decap_6 FILLER_4_48 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_54 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_80 ();
 sky130_fd_sc_hd__decap_8 FILLER_5_14 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_22 ();
 sky130_fd_sc_hd__decap_8 FILLER_5_33 ();
 sky130_fd_sc_hd__fill_2 FILLER_5_57 ();
 sky130_fd_sc_hd__fill_2 FILLER_5_67 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_8 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_17 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_36 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_47 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_54 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_70 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_11 ();
 sky130_ef_sc_hd__decap_12 FILLER_7_20 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_32 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_36 ();
 sky130_fd_sc_hd__decap_8 FILLER_7_47 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_55 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_57 ();
 sky130_fd_sc_hd__fill_2 FILLER_7_71 ();
 sky130_ef_sc_hd__decap_12 FILLER_8_6 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_18 ();
 sky130_fd_sc_hd__decap_6 FILLER_8_29 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_35 ();
 sky130_fd_sc_hd__decap_8 FILLER_8_45 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_53 ();
 sky130_ef_sc_hd__decap_12 FILLER_8_62 ();
 sky130_fd_sc_hd__decap_6 FILLER_8_74 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_80 ();
 sky130_ef_sc_hd__decap_12 FILLER_9_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_9_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_27 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_29 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_33 ();
 sky130_ef_sc_hd__decap_12 FILLER_9_44 ();
 sky130_ef_sc_hd__decap_12 FILLER_9_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_9_69 ();
endmodule
