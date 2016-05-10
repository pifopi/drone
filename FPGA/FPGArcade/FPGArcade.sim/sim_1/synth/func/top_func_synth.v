// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (lin64) Build 1071353 Tue Nov 18 16:47:07 MST 2014
// Date        : Tue May 10 14:37:07 2016
// Host        : pc4073 running 64-bit Linux Mint 17.1 Rebecca
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /nfs/home/sasl/eleves/ei-se/3410586/drone/FPGA/FPGArcade/FPGArcade.sim/sim_1/synth/func/top_func_synth.v
// Design      : top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ClkDiv
   (clk25,
    CLK,
    I1);
  output clk25;
  input CLK;
  input I1;

  wire CLK;
  wire I1;
  wire clk25;
  wire n_0_Clk25_i_1;
  wire \n_0_compteur[0]_i_1 ;
  wire \n_0_compteur[1]_i_1 ;
  wire \n_0_compteur[2]_i_1 ;
  wire \n_0_compteur[3]_i_1 ;
  wire \n_0_compteur_reg[0] ;
  wire \n_0_compteur_reg[1] ;
  wire \n_0_compteur_reg[2] ;
  wire \n_0_compteur_reg[3] ;

(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT5 #(
    .INIT(32'hFFFB0010)) 
     Clk25_i_1
       (.I0(\n_0_compteur_reg[0] ),
        .I1(\n_0_compteur_reg[2] ),
        .I2(\n_0_compteur_reg[1] ),
        .I3(\n_0_compteur_reg[3] ),
        .I4(clk25),
        .O(n_0_Clk25_i_1));
FDCE #(
    .INIT(1'b0)) 
     Clk25_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(I1),
        .D(n_0_Clk25_i_1),
        .Q(clk25));
LUT1 #(
    .INIT(2'h1)) 
     \compteur[0]_i_1 
       (.I0(\n_0_compteur_reg[0] ),
        .O(\n_0_compteur[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \compteur[1]_i_1 
       (.I0(\n_0_compteur_reg[1] ),
        .I1(\n_0_compteur_reg[0] ),
        .O(\n_0_compteur[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT4 #(
    .INIT(16'h3CE0)) 
     \compteur[2]_i_1 
       (.I0(\n_0_compteur_reg[3] ),
        .I1(\n_0_compteur_reg[1] ),
        .I2(\n_0_compteur_reg[2] ),
        .I3(\n_0_compteur_reg[0] ),
        .O(\n_0_compteur[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \compteur[3]_i_1 
       (.I0(\n_0_compteur_reg[3] ),
        .I1(\n_0_compteur_reg[1] ),
        .I2(\n_0_compteur_reg[2] ),
        .I3(\n_0_compteur_reg[0] ),
        .O(\n_0_compteur[3]_i_1 ));
FDCE #(
    .INIT(1'b0)) 
     \compteur_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(I1),
        .D(\n_0_compteur[0]_i_1 ),
        .Q(\n_0_compteur_reg[0] ));
FDCE #(
    .INIT(1'b0)) 
     \compteur_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(I1),
        .D(\n_0_compteur[1]_i_1 ),
        .Q(\n_0_compteur_reg[1] ));
FDCE #(
    .INIT(1'b0)) 
     \compteur_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(I1),
        .D(\n_0_compteur[2]_i_1 ),
        .Q(\n_0_compteur_reg[2] ));
FDCE #(
    .INIT(1'b0)) 
     \compteur_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(I1),
        .D(\n_0_compteur[3]_i_1 ),
        .Q(\n_0_compteur_reg[3] ));
endmodule

module MAE
   (precFrame,
    E,
    out4,
    O7,
    out5,
    O2,
    out2,
    O3,
    O13,
    O4,
    precFrame07_out,
    O1,
    I1,
    out,
    I2,
    I3,
    I10,
    Q,
    rot_button_IBUF,
    I12,
    no_brick,
    I13,
    clk25_BUFG);
  output precFrame;
  output [0:0]E;
  output out4;
  output O7;
  output out5;
  output O2;
  output out2;
  output O3;
  output O13;
  output O4;
  input precFrame07_out;
  input O1;
  input I1;
  input [0:0]out;
  input I2;
  input I3;
  input I10;
  input [0:0]Q;
  input rot_button_IBUF;
  input I12;
  input no_brick;
  input I13;
  input clk25_BUFG;

  wire [0:0]E;
  wire I1;
  wire I10;
  wire I12;
  wire I13;
  wire I2;
  wire I3;
  wire O1;
  wire O13;
  wire O2;
  wire O3;
  wire O4;
  wire O7;
  wire [0:0]Q;
  wire Update_Timer_Lost;
  wire clk25_BUFG;
(* RTL_KEEP = "yes" *)   wire [2:0]etat_present;
  wire [2:0]etat_prochain;
  wire \n_0_FSM_sequential_etat_prochain_reg[0]_i_1__0 ;
  wire \n_0_FSM_sequential_etat_prochain_reg[0]_i_2 ;
  wire \n_0_FSM_sequential_etat_prochain_reg[1]_i_1__0 ;
  wire \n_0_FSM_sequential_etat_prochain_reg[2]_i_1__0 ;
  wire \n_0_FSM_sequential_etat_prochain_reg[2]_i_2 ;
  wire no_brick;
  wire [0:0]out;
  wire out2;
  wire out4;
  wire out5;
  wire precFrame;
  wire precFrame07_out;
  wire rot_button_IBUF;

(* KEEP = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FSM_sequential_etat_present_reg[0] 
       (.C(clk25_BUFG),
        .CE(1'b1),
        .D(etat_prochain[0]),
        .Q(etat_present[0]),
        .R(1'b0));
(* KEEP = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FSM_sequential_etat_present_reg[1] 
       (.C(clk25_BUFG),
        .CE(1'b1),
        .D(etat_prochain[1]),
        .Q(etat_present[1]),
        .R(1'b0));
(* KEEP = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FSM_sequential_etat_present_reg[2] 
       (.C(clk25_BUFG),
        .CE(1'b1),
        .D(etat_prochain[2]),
        .Q(etat_present[2]),
        .R(1'b0));
(* XILINX_LEGACY_PRIM = "LDC" *) 
   LDCE #(
    .INIT(1'b0)) 
     \FSM_sequential_etat_prochain_reg[0] 
       (.CLR(I1),
        .D(\n_0_FSM_sequential_etat_prochain_reg[0]_i_1__0 ),
        .G(\n_0_FSM_sequential_etat_prochain_reg[2]_i_2 ),
        .GE(1'b1),
        .Q(etat_prochain[0]));
LUT2 #(
    .INIT(4'h2)) 
     \FSM_sequential_etat_prochain_reg[0]_i_1__0 
       (.I0(\n_0_FSM_sequential_etat_prochain_reg[0]_i_2 ),
        .I1(etat_present[2]),
        .O(\n_0_FSM_sequential_etat_prochain_reg[0]_i_1__0 ));
LUT5 #(
    .INIT(32'h1D555555)) 
     \FSM_sequential_etat_prochain_reg[0]_i_2 
       (.I0(rot_button_IBUF),
        .I1(I12),
        .I2(no_brick),
        .I3(etat_present[1]),
        .I4(etat_present[0]),
        .O(\n_0_FSM_sequential_etat_prochain_reg[0]_i_2 ));
(* XILINX_LEGACY_PRIM = "LDC" *) 
   LDCE #(
    .INIT(1'b0)) 
     \FSM_sequential_etat_prochain_reg[1] 
       (.CLR(I1),
        .D(\n_0_FSM_sequential_etat_prochain_reg[1]_i_1__0 ),
        .G(\n_0_FSM_sequential_etat_prochain_reg[2]_i_2 ),
        .GE(1'b1),
        .Q(etat_prochain[1]));
LUT5 #(
    .INIT(32'h01FFFA00)) 
     \FSM_sequential_etat_prochain_reg[1]_i_1__0 
       (.I0(rot_button_IBUF),
        .I1(I12),
        .I2(etat_present[2]),
        .I3(etat_present[0]),
        .I4(etat_present[1]),
        .O(\n_0_FSM_sequential_etat_prochain_reg[1]_i_1__0 ));
(* XILINX_LEGACY_PRIM = "LDC" *) 
   LDCE #(
    .INIT(1'b0)) 
     \FSM_sequential_etat_prochain_reg[2] 
       (.CLR(I1),
        .D(\n_0_FSM_sequential_etat_prochain_reg[2]_i_1__0 ),
        .G(\n_0_FSM_sequential_etat_prochain_reg[2]_i_2 ),
        .GE(1'b1),
        .Q(etat_prochain[2]));
LUT4 #(
    .INIT(16'h2CCC)) 
     \FSM_sequential_etat_prochain_reg[2]_i_1__0 
       (.I0(I12),
        .I1(etat_present[2]),
        .I2(etat_present[1]),
        .I3(etat_present[0]),
        .O(\n_0_FSM_sequential_etat_prochain_reg[2]_i_1__0 ));
LUT3 #(
    .INIT(8'h7F)) 
     \FSM_sequential_etat_prochain_reg[2]_i_2 
       (.I0(etat_present[2]),
        .I1(etat_present[1]),
        .I2(etat_present[0]),
        .O(\n_0_FSM_sequential_etat_prochain_reg[2]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair33" *) 
   LUT3 #(
    .INIT(8'h4F)) 
     \Timer[0]_i_1 
       (.I0(I1),
        .I1(out2),
        .I2(Q),
        .O(O4));
(* SOFT_HLUTNM = "soft_lutpair33" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \Timer[4]_i_2 
       (.I0(out2),
        .I1(I1),
        .O(O2));
LUT3 #(
    .INIT(8'h08)) 
     \Timer[5]_i_4 
       (.I0(etat_present[0]),
        .I1(etat_present[2]),
        .I2(etat_present[1]),
        .O(out2));
(* SOFT_HLUTNM = "soft_lutpair34" *) 
   LUT2 #(
    .INIT(4'h2)) 
     VGA_green_OBUF_inst_i_3
       (.I0(out5),
        .I1(I1),
        .O(O7));
LUT3 #(
    .INIT(8'h10)) 
     VGA_red_OBUF_inst_i_13
       (.I0(etat_present[0]),
        .I1(etat_present[1]),
        .I2(etat_present[2]),
        .O(out5));
(* SOFT_HLUTNM = "soft_lutpair34" *) 
   LUT3 #(
    .INIT(8'h4F)) 
     VGA_red_OBUF_inst_i_5
       (.I0(I1),
        .I1(out5),
        .I2(I10),
        .O(O13));
(* XILINX_LEGACY_PRIM = "LD" *) 
   LDCE #(
    .INIT(1'b0)) 
     precFrame_reg
       (.CLR(1'b0),
        .D(precFrame07_out),
        .G(Update_Timer_Lost),
        .GE(1'b1),
        .Q(precFrame));
LUT2 #(
    .INIT(4'h2)) 
     precFrame_reg_i_2
       (.I0(O3),
        .I1(I1),
        .O(Update_Timer_Lost));
LUT5 #(
    .INIT(32'h06000000)) 
     precFrame_reg_i_3
       (.I0(precFrame),
        .I1(I13),
        .I2(etat_present[0]),
        .I3(etat_present[2]),
        .I4(etat_present[1]),
        .O(O3));
LUT6 #(
    .INIT(64'h4444444400000400)) 
     \ypong_left[8]_i_1 
       (.I0(out4),
        .I1(O1),
        .I2(I1),
        .I3(out),
        .I4(I2),
        .I5(I3),
        .O(E));
LUT3 #(
    .INIT(8'h25)) 
     \ypong_left[8]_i_3 
       (.I0(etat_present[2]),
        .I1(etat_present[0]),
        .I2(etat_present[1]),
        .O(out4));
endmodule

module Move
   (CO,
    D,
    E,
    out,
    rqt_TX17_out,
    own_rot_left,
    O1,
    O2,
    Q,
    S,
    p_15_in,
    I1,
    own_press,
    I2,
    qa,
    qb,
    CLK);
  output [0:0]CO;
  output [3:0]D;
  output [0:0]E;
  output [1:0]out;
  output rqt_TX17_out;
  output own_rot_left;
  output [1:0]O1;
  output O2;
  input [2:0]Q;
  input [1:0]S;
  input p_15_in;
  input I1;
  input own_press;
  input I2;
  input qa;
  input qb;
  input CLK;

  wire CLK;
  wire [0:0]CO;
  wire [3:0]D;
  wire [0:0]E;
  wire I1;
  wire I2;
  wire [1:0]O1;
  wire O2;
  wire [2:0]Q;
  wire [1:0]S;
(* RTL_KEEP = "yes" *)   wire [2:0]etat_present;
  wire [2:0]etat_prochain;
  wire \n_0_FSM_sequential_etat_prochain_reg[0]_i_1 ;
  wire \n_0_FSM_sequential_etat_prochain_reg[1]_i_1 ;
  wire \n_0_FSM_sequential_etat_prochain_reg[2]_i_1 ;
  wire \n_0_xpad[4]_i_2 ;
  wire \n_0_xpad[4]_i_3 ;
  wire \n_0_xpad[4]_i_4 ;
  wire \n_0_xpad[4]_i_5 ;
  wire \n_1_xpad_reg[4]_i_1 ;
  wire \n_2_xpad_reg[4]_i_1 ;
  wire \n_3_xpad_reg[4]_i_1 ;
  wire own_press;
  wire own_rot_left;
  wire p_15_in;
  wire qa;
  wire qb;
  wire rqt_TX17_out;

  assign out[1:0] = etat_present[1:0];
(* KEEP = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FSM_sequential_etat_present_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(etat_prochain[0]),
        .Q(etat_present[0]),
        .R(1'b0));
(* KEEP = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FSM_sequential_etat_present_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(etat_prochain[1]),
        .Q(etat_present[1]),
        .R(1'b0));
(* KEEP = "yes" *) 
   FDRE #(
    .INIT(1'b0)) 
     \FSM_sequential_etat_present_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(etat_prochain[2]),
        .Q(etat_present[2]),
        .R(1'b0));
(* XILINX_LEGACY_PRIM = "LDC" *) 
   LDCE #(
    .INIT(1'b0)) 
     \FSM_sequential_etat_prochain_reg[0] 
       (.CLR(I1),
        .D(\n_0_FSM_sequential_etat_prochain_reg[0]_i_1 ),
        .G(1'b1),
        .GE(1'b1),
        .Q(etat_prochain[0]));
LUT5 #(
    .INIT(32'h00000024)) 
     \FSM_sequential_etat_prochain_reg[0]_i_1 
       (.I0(etat_present[2]),
        .I1(qa),
        .I2(qb),
        .I3(etat_present[1]),
        .I4(etat_present[0]),
        .O(\n_0_FSM_sequential_etat_prochain_reg[0]_i_1 ));
(* XILINX_LEGACY_PRIM = "LDC" *) 
   LDCE #(
    .INIT(1'b0)) 
     \FSM_sequential_etat_prochain_reg[1] 
       (.CLR(I1),
        .D(\n_0_FSM_sequential_etat_prochain_reg[1]_i_1 ),
        .G(1'b1),
        .GE(1'b1),
        .Q(etat_prochain[1]));
LUT5 #(
    .INIT(32'h01000010)) 
     \FSM_sequential_etat_prochain_reg[1]_i_1 
       (.I0(etat_present[0]),
        .I1(etat_present[1]),
        .I2(etat_present[2]),
        .I3(qa),
        .I4(qb),
        .O(\n_0_FSM_sequential_etat_prochain_reg[1]_i_1 ));
(* XILINX_LEGACY_PRIM = "LDC" *) 
   LDCE #(
    .INIT(1'b0)) 
     \FSM_sequential_etat_prochain_reg[2] 
       (.CLR(I1),
        .D(\n_0_FSM_sequential_etat_prochain_reg[2]_i_1 ),
        .G(1'b1),
        .GE(1'b1),
        .Q(etat_prochain[2]));
LUT3 #(
    .INIT(8'h16)) 
     \FSM_sequential_etat_prochain_reg[2]_i_1 
       (.I0(etat_present[2]),
        .I1(etat_present[1]),
        .I2(etat_present[0]),
        .O(\n_0_FSM_sequential_etat_prochain_reg[2]_i_1 ));
LUT4 #(
    .INIT(16'hAA08)) 
     \message_TX[0]_i_1 
       (.I0(I2),
        .I1(etat_present[1]),
        .I2(I1),
        .I3(own_press),
        .O(O1[0]));
LUT4 #(
    .INIT(16'h00A2)) 
     \message_TX[4]_i_1 
       (.I0(I2),
        .I1(etat_present[1]),
        .I2(I1),
        .I3(own_press),
        .O(O1[1]));
LUT6 #(
    .INIT(64'hAAAA00A8AAAAAAAA)) 
     \message_TX[7]_i_1 
       (.I0(p_15_in),
        .I1(etat_present[0]),
        .I2(etat_present[1]),
        .I3(I1),
        .I4(own_press),
        .I5(I2),
        .O(E));
LUT5 #(
    .INIT(32'h8A8A8A88)) 
     rqt_TX_i_1
       (.I0(I2),
        .I1(own_press),
        .I2(I1),
        .I3(etat_present[1]),
        .I4(etat_present[0]),
        .O(rqt_TX17_out));
LUT2 #(
    .INIT(4'hB)) 
     \xpad[4]_i_2 
       (.I0(I1),
        .I1(etat_present[0]),
        .O(\n_0_xpad[4]_i_2 ));
LUT2 #(
    .INIT(4'h2)) 
     \xpad[4]_i_3 
       (.I0(etat_present[0]),
        .I1(I1),
        .O(\n_0_xpad[4]_i_3 ));
LUT3 #(
    .INIT(8'hB4)) 
     \xpad[4]_i_4 
       (.I0(I1),
        .I1(etat_present[0]),
        .I2(Q[2]),
        .O(\n_0_xpad[4]_i_4 ));
LUT3 #(
    .INIT(8'hB4)) 
     \xpad[4]_i_5 
       (.I0(I1),
        .I1(etat_present[0]),
        .I2(Q[1]),
        .O(\n_0_xpad[4]_i_5 ));
LUT2 #(
    .INIT(4'h2)) 
     \xpad[9]_i_6 
       (.I0(etat_present[0]),
        .I1(I1),
        .O(own_rot_left));
LUT2 #(
    .INIT(4'h2)) 
     \xpad[9]_i_8 
       (.I0(etat_present[1]),
        .I1(I1),
        .O(O2));
CARRY4 \xpad_reg[4]_i_1 
       (.CI(1'b0),
        .CO({CO,\n_1_xpad_reg[4]_i_1 ,\n_2_xpad_reg[4]_i_1 ,\n_3_xpad_reg[4]_i_1 }),
        .CYINIT(1'b0),
        .DI({\n_0_xpad[4]_i_2 ,\n_0_xpad[4]_i_3 ,Q[0],1'b0}),
        .O(D),
        .S({\n_0_xpad[4]_i_4 ,\n_0_xpad[4]_i_5 ,S}));
endmodule

module Timer_Lost
   (game_lost,
    Q,
    clk25_BUFG,
    I1,
    I2,
    I3,
    I4,
    I5);
  output game_lost;
  output [0:0]Q;
  input clk25_BUFG;
  input I1;
  input I2;
  input I3;
  input I4;
  input I5;

  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire [0:0]Q;
  wire [5:1]Timer;
  wire clk25_BUFG;
  wire game_lost;
  wire n_0_Game_Lost_i_1;
  wire \n_0_Timer[1]_i_1 ;
  wire \n_0_Timer[2]_i_1 ;
  wire \n_0_Timer[3]_i_1 ;
  wire \n_0_Timer[4]_i_1 ;
  wire \n_0_Timer[5]_i_1 ;
  wire \n_0_Timer[5]_i_2 ;
  wire \n_0_Timer[5]_i_3 ;
  wire \n_0_Timer[5]_i_5 ;

LUT4 #(
    .INIT(16'h3130)) 
     Game_Lost_i_1
       (.I0(\n_0_Timer[5]_i_3 ),
        .I1(I1),
        .I2(I2),
        .I3(game_lost),
        .O(n_0_Game_Lost_i_1));
FDRE #(
    .INIT(1'b0)) 
     Game_Lost_reg
       (.C(clk25_BUFG),
        .CE(1'b1),
        .D(n_0_Game_Lost_i_1),
        .Q(game_lost),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair35" *) 
   LUT4 #(
    .INIT(16'h9F99)) 
     \Timer[1]_i_1 
       (.I0(Timer[1]),
        .I1(Q),
        .I2(I1),
        .I3(I2),
        .O(\n_0_Timer[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair35" *) 
   LUT5 #(
    .INIT(32'hE1FFE1E1)) 
     \Timer[2]_i_1 
       (.I0(Q),
        .I1(Timer[1]),
        .I2(Timer[2]),
        .I3(I1),
        .I4(I2),
        .O(\n_0_Timer[2]_i_1 ));
LUT6 #(
    .INIT(64'hFE01FFFFFE01FE01)) 
     \Timer[3]_i_1 
       (.I0(Timer[1]),
        .I1(Q),
        .I2(Timer[2]),
        .I3(Timer[3]),
        .I4(I1),
        .I5(I2),
        .O(\n_0_Timer[3]_i_1 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFE0001)) 
     \Timer[4]_i_1 
       (.I0(Timer[2]),
        .I1(Q),
        .I2(Timer[1]),
        .I3(Timer[3]),
        .I4(Timer[4]),
        .I5(I4),
        .O(\n_0_Timer[4]_i_1 ));
LUT4 #(
    .INIT(16'h0F04)) 
     \Timer[5]_i_1 
       (.I0(\n_0_Timer[5]_i_3 ),
        .I1(I5),
        .I2(I1),
        .I3(I2),
        .O(\n_0_Timer[5]_i_1 ));
LUT4 #(
    .INIT(16'h6F66)) 
     \Timer[5]_i_2 
       (.I0(\n_0_Timer[5]_i_5 ),
        .I1(Timer[5]),
        .I2(I1),
        .I3(I2),
        .O(\n_0_Timer[5]_i_2 ));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \Timer[5]_i_3 
       (.I0(Timer[4]),
        .I1(Timer[2]),
        .I2(Q),
        .I3(Timer[1]),
        .I4(Timer[3]),
        .I5(Timer[5]),
        .O(\n_0_Timer[5]_i_3 ));
LUT5 #(
    .INIT(32'h00000001)) 
     \Timer[5]_i_5 
       (.I0(Timer[3]),
        .I1(Timer[1]),
        .I2(Q),
        .I3(Timer[2]),
        .I4(Timer[4]),
        .O(\n_0_Timer[5]_i_5 ));
FDRE #(
    .INIT(1'b0)) 
     \Timer_reg[0] 
       (.C(clk25_BUFG),
        .CE(\n_0_Timer[5]_i_1 ),
        .D(I3),
        .Q(Q),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \Timer_reg[1] 
       (.C(clk25_BUFG),
        .CE(\n_0_Timer[5]_i_1 ),
        .D(\n_0_Timer[1]_i_1 ),
        .Q(Timer[1]),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \Timer_reg[2] 
       (.C(clk25_BUFG),
        .CE(\n_0_Timer[5]_i_1 ),
        .D(\n_0_Timer[2]_i_1 ),
        .Q(Timer[2]),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \Timer_reg[3] 
       (.C(clk25_BUFG),
        .CE(\n_0_Timer[5]_i_1 ),
        .D(\n_0_Timer[3]_i_1 ),
        .Q(Timer[3]),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \Timer_reg[4] 
       (.C(clk25_BUFG),
        .CE(\n_0_Timer[5]_i_1 ),
        .D(\n_0_Timer[4]_i_1 ),
        .Q(Timer[4]),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \Timer_reg[5] 
       (.C(clk25_BUFG),
        .CE(\n_0_Timer[5]_i_1 ),
        .D(\n_0_Timer[5]_i_2 ),
        .Q(Timer[5]),
        .R(I1));
endmodule

module UARTcomponent
   (incoming,
    RX_CLK,
    RS232_right7_out,
    RS232_left10_out,
    start_tempo_UART_RX11_out,
    O1,
    O5,
    CLK,
    I1,
    Q,
    I2,
    RS232_right,
    RS232_left,
    p_15_in,
    start_TX,
    I3,
    rxd_IBUF,
    I4,
    D);
  output incoming;
  output RX_CLK;
  output RS232_right7_out;
  output RS232_left10_out;
  output start_tempo_UART_RX11_out;
  output O1;
  output [0:0]O5;
  input CLK;
  input I1;
  input [1:0]Q;
  input I2;
  input RS232_right;
  input RS232_left;
  input p_15_in;
  input start_TX;
  input [3:0]I3;
  input rxd_IBUF;
  input I4;
  input [0:0]D;

  wire CLK;
  wire [8:0]ClkDiv_reg__0;
  wire [0:0]D;
  wire I1;
  wire I2;
  wire [3:0]I3;
  wire I4;
  wire O1;
  wire [0:0]O5;
  wire [1:0]Q;
  wire [7:0]RD_REG;
  wire RS232_left;
  wire RS232_left10_out;
  wire RS232_right;
  wire RS232_right7_out;
  wire RX_BIT_NB_INC;
  wire [3:0]RX_BIT_NB_reg__0;
  wire [3:0]RX_BIT_TIME_reg__0;
  wire RX_CLK;
  wire [1:0]RX_EF;
  wire [1:0]RX_EP;
  wire RX_End;
  wire [1:0]STX_EF;
  wire [1:0]STX_EP;
  wire [3:0]TX_BIT_NB_reg__0;
  wire [9:1]TX_BUF;
  wire TX_CLK;
  wire [1:0]TX_EF;
  wire [1:1]TX_EP;
  wire TX_LOAD;
  wire incoming;
  wire \n_0_ClkDiv[2]_i_2 ;
  wire \n_0_ClkDiv[6]_i_2 ;
  wire \n_0_ClkDiv[7]_i_2 ;
  wire \n_0_ClkDiv[7]_i_3 ;
  wire \n_0_ClkDiv[8]_i_2 ;
  wire \n_0_RX_BIT_NB[3]_i_1 ;
  wire \n_0_RX_BIT_NB[3]_i_3 ;
  wire \n_0_RX_BIT_TIME[2]_i_2 ;
  wire \n_0_RX_BUF_reg[0] ;
  wire \n_0_RX_BUF_reg[1] ;
  wire \n_0_RX_BUF_reg[2] ;
  wire \n_0_RX_BUF_reg[3] ;
  wire \n_0_RX_BUF_reg[4] ;
  wire \n_0_RX_BUF_reg[5] ;
  wire \n_0_RX_BUF_reg[6] ;
  wire \n_0_RX_BUF_reg[7] ;
  wire \n_0_RX_BUF_reg[8] ;
  wire \n_0_RX_BUF_reg[9] ;
  wire n_0_RX_CLK_i_1;
  wire \n_0_RX_EP[0]_i_2 ;
  wire \n_0_RX_EP[0]_i_3 ;
  wire \n_0_TX_BIT_NB[3]_i_1 ;
  wire \n_0_TX_BIT_TIME_reg[0] ;
  wire \n_0_TX_BIT_TIME_reg[1] ;
  wire \n_0_TX_BIT_TIME_reg[2] ;
  wire \n_0_TX_BUF[0]_i_1 ;
  wire \n_0_TX_BUF[1]_i_1 ;
  wire \n_0_TX_BUF[2]_i_1 ;
  wire \n_0_TX_BUF[3]_i_1 ;
  wire \n_0_TX_BUF[4]_i_1 ;
  wire \n_0_TX_BUF[5]_i_1 ;
  wire \n_0_TX_BUF[6]_i_1 ;
  wire \n_0_TX_BUF[7]_i_1 ;
  wire \n_0_TX_BUF[8]_i_1 ;
  wire \n_0_TX_BUF[9]_i_1 ;
  wire n_0_left_i_2;
  wire n_0_left_i_3;
  wire n_0_left_i_4;
  wire n_0_left_i_5;
  wire n_0_start_tempo_UART_RX_i_4;
  wire n_0_start_tempo_UART_RX_i_5;
  wire [8:0]p_0_in;
  wire [2:0]p_0_in__0;
  wire [3:0]p_0_in__2;
  wire [3:0]p_0_in__3;
  wire p_15_in;
  wire [3:0]plusOp;
  wire rxd_IBUF;
  wire start_TX;
  wire start_tempo_UART_RX11_out;

LUT1 #(
    .INIT(2'h1)) 
     \ClkDiv[0]_i_1 
       (.I0(ClkDiv_reg__0[0]),
        .O(p_0_in[0]));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \ClkDiv[1]_i_1 
       (.I0(ClkDiv_reg__0[0]),
        .I1(ClkDiv_reg__0[1]),
        .O(p_0_in[1]));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT5 #(
    .INIT(32'h07F0F0F0)) 
     \ClkDiv[2]_i_1 
       (.I0(\n_0_ClkDiv[2]_i_2 ),
        .I1(ClkDiv_reg__0[7]),
        .I2(ClkDiv_reg__0[2]),
        .I3(ClkDiv_reg__0[0]),
        .I4(ClkDiv_reg__0[1]),
        .O(p_0_in[2]));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT5 #(
    .INIT(32'h00000010)) 
     \ClkDiv[2]_i_2 
       (.I0(ClkDiv_reg__0[3]),
        .I1(ClkDiv_reg__0[8]),
        .I2(ClkDiv_reg__0[5]),
        .I3(ClkDiv_reg__0[4]),
        .I4(ClkDiv_reg__0[6]),
        .O(\n_0_ClkDiv[2]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \ClkDiv[3]_i_1 
       (.I0(ClkDiv_reg__0[3]),
        .I1(ClkDiv_reg__0[0]),
        .I2(ClkDiv_reg__0[1]),
        .I3(ClkDiv_reg__0[2]),
        .O(p_0_in[3]));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \ClkDiv[4]_i_1 
       (.I0(ClkDiv_reg__0[4]),
        .I1(ClkDiv_reg__0[2]),
        .I2(ClkDiv_reg__0[1]),
        .I3(ClkDiv_reg__0[0]),
        .I4(ClkDiv_reg__0[3]),
        .O(p_0_in[4]));
LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
     \ClkDiv[5]_i_1 
       (.I0(\n_0_ClkDiv[7]_i_2 ),
        .I1(ClkDiv_reg__0[4]),
        .I2(ClkDiv_reg__0[2]),
        .I3(\n_0_ClkDiv[6]_i_2 ),
        .I4(ClkDiv_reg__0[3]),
        .I5(ClkDiv_reg__0[5]),
        .O(p_0_in[5]));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \ClkDiv[6]_i_1 
       (.I0(ClkDiv_reg__0[6]),
        .I1(ClkDiv_reg__0[5]),
        .I2(ClkDiv_reg__0[4]),
        .I3(ClkDiv_reg__0[2]),
        .I4(\n_0_ClkDiv[6]_i_2 ),
        .I5(ClkDiv_reg__0[3]),
        .O(p_0_in[6]));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \ClkDiv[6]_i_2 
       (.I0(ClkDiv_reg__0[0]),
        .I1(ClkDiv_reg__0[1]),
        .O(\n_0_ClkDiv[6]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT4 #(
    .INIT(16'h2A80)) 
     \ClkDiv[7]_i_1 
       (.I0(\n_0_ClkDiv[7]_i_2 ),
        .I1(\n_0_ClkDiv[8]_i_2 ),
        .I2(ClkDiv_reg__0[6]),
        .I3(ClkDiv_reg__0[7]),
        .O(p_0_in[7]));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT5 #(
    .INIT(32'hEFFFFFFF)) 
     \ClkDiv[7]_i_2 
       (.I0(\n_0_ClkDiv[7]_i_3 ),
        .I1(ClkDiv_reg__0[2]),
        .I2(ClkDiv_reg__0[7]),
        .I3(ClkDiv_reg__0[1]),
        .I4(ClkDiv_reg__0[0]),
        .O(\n_0_ClkDiv[7]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT5 #(
    .INIT(32'hFFFEFFFF)) 
     \ClkDiv[7]_i_3 
       (.I0(ClkDiv_reg__0[6]),
        .I1(ClkDiv_reg__0[8]),
        .I2(ClkDiv_reg__0[3]),
        .I3(ClkDiv_reg__0[4]),
        .I4(ClkDiv_reg__0[5]),
        .O(\n_0_ClkDiv[7]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \ClkDiv[8]_i_1 
       (.I0(ClkDiv_reg__0[8]),
        .I1(ClkDiv_reg__0[7]),
        .I2(\n_0_ClkDiv[8]_i_2 ),
        .I3(ClkDiv_reg__0[6]),
        .O(p_0_in[8]));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \ClkDiv[8]_i_2 
       (.I0(ClkDiv_reg__0[3]),
        .I1(ClkDiv_reg__0[0]),
        .I2(ClkDiv_reg__0[1]),
        .I3(ClkDiv_reg__0[2]),
        .I4(ClkDiv_reg__0[4]),
        .I5(ClkDiv_reg__0[5]),
        .O(\n_0_ClkDiv[8]_i_2 ));
FDCE #(
    .INIT(1'b0)) 
     \ClkDiv_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(I1),
        .D(p_0_in[0]),
        .Q(ClkDiv_reg__0[0]));
FDCE #(
    .INIT(1'b0)) 
     \ClkDiv_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(I1),
        .D(p_0_in[1]),
        .Q(ClkDiv_reg__0[1]));
FDCE #(
    .INIT(1'b0)) 
     \ClkDiv_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(I1),
        .D(p_0_in[2]),
        .Q(ClkDiv_reg__0[2]));
FDCE #(
    .INIT(1'b0)) 
     \ClkDiv_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(I1),
        .D(p_0_in[3]),
        .Q(ClkDiv_reg__0[3]));
FDCE #(
    .INIT(1'b0)) 
     \ClkDiv_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(I1),
        .D(p_0_in[4]),
        .Q(ClkDiv_reg__0[4]));
FDCE #(
    .INIT(1'b0)) 
     \ClkDiv_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(I1),
        .D(p_0_in[5]),
        .Q(ClkDiv_reg__0[5]));
FDCE #(
    .INIT(1'b0)) 
     \ClkDiv_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(I1),
        .D(p_0_in[6]),
        .Q(ClkDiv_reg__0[6]));
FDCE #(
    .INIT(1'b0)) 
     \ClkDiv_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(I1),
        .D(p_0_in[7]),
        .Q(ClkDiv_reg__0[7]));
FDCE #(
    .INIT(1'b0)) 
     \ClkDiv_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(I1),
        .D(p_0_in[8]),
        .Q(ClkDiv_reg__0[8]));
LUT2 #(
    .INIT(4'h8)) 
     INCOMING_i_1
       (.I0(RX_EP[1]),
        .I1(RX_EP[0]),
        .O(RX_End));
FDCE #(
    .INIT(1'b0)) 
     INCOMING_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(I1),
        .D(RX_End),
        .Q(incoming));
FDCE #(
    .INIT(1'b0)) 
     \RD_REG_reg[0] 
       (.C(I4),
        .CE(RX_End),
        .CLR(I1),
        .D(\n_0_RX_BUF_reg[0] ),
        .Q(RD_REG[0]));
FDCE #(
    .INIT(1'b0)) 
     \RD_REG_reg[1] 
       (.C(I4),
        .CE(RX_End),
        .CLR(I1),
        .D(\n_0_RX_BUF_reg[1] ),
        .Q(RD_REG[1]));
FDCE #(
    .INIT(1'b0)) 
     \RD_REG_reg[2] 
       (.C(I4),
        .CE(RX_End),
        .CLR(I1),
        .D(\n_0_RX_BUF_reg[2] ),
        .Q(RD_REG[2]));
FDCE #(
    .INIT(1'b0)) 
     \RD_REG_reg[3] 
       (.C(I4),
        .CE(RX_End),
        .CLR(I1),
        .D(\n_0_RX_BUF_reg[3] ),
        .Q(RD_REG[3]));
FDCE #(
    .INIT(1'b0)) 
     \RD_REG_reg[4] 
       (.C(I4),
        .CE(RX_End),
        .CLR(I1),
        .D(\n_0_RX_BUF_reg[4] ),
        .Q(RD_REG[4]));
FDCE #(
    .INIT(1'b0)) 
     \RD_REG_reg[5] 
       (.C(I4),
        .CE(RX_End),
        .CLR(I1),
        .D(\n_0_RX_BUF_reg[5] ),
        .Q(RD_REG[5]));
FDCE #(
    .INIT(1'b0)) 
     \RD_REG_reg[6] 
       (.C(I4),
        .CE(RX_End),
        .CLR(I1),
        .D(\n_0_RX_BUF_reg[6] ),
        .Q(RD_REG[6]));
FDCE #(
    .INIT(1'b0)) 
     \RD_REG_reg[7] 
       (.C(I4),
        .CE(RX_End),
        .CLR(I1),
        .D(\n_0_RX_BUF_reg[7] ),
        .Q(RD_REG[7]));
LUT6 #(
    .INIT(64'h4555555555555555)) 
     \RX_BIT_NB[0]_i_1 
       (.I0(RX_BIT_NB_reg__0[0]),
        .I1(RX_EP[1]),
        .I2(RX_EP[0]),
        .I3(RX_BIT_TIME_reg__0[1]),
        .I4(RX_BIT_TIME_reg__0[0]),
        .I5(RX_BIT_TIME_reg__0[2]),
        .O(p_0_in__3[0]));
LUT3 #(
    .INIT(8'h06)) 
     \RX_BIT_NB[1]_i_1 
       (.I0(RX_BIT_NB_reg__0[1]),
        .I1(RX_BIT_NB_reg__0[0]),
        .I2(\n_0_RX_BIT_NB[3]_i_3 ),
        .O(p_0_in__3[1]));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT4 #(
    .INIT(16'h0078)) 
     \RX_BIT_NB[2]_i_1 
       (.I0(RX_BIT_NB_reg__0[0]),
        .I1(RX_BIT_NB_reg__0[1]),
        .I2(RX_BIT_NB_reg__0[2]),
        .I3(\n_0_RX_BIT_NB[3]_i_3 ),
        .O(p_0_in__3[2]));
LUT6 #(
    .INIT(64'h6000000040000000)) 
     \RX_BIT_NB[3]_i_1 
       (.I0(RX_EP[1]),
        .I1(RX_EP[0]),
        .I2(RX_BIT_TIME_reg__0[2]),
        .I3(RX_BIT_TIME_reg__0[0]),
        .I4(RX_BIT_TIME_reg__0[1]),
        .I5(RX_BIT_TIME_reg__0[3]),
        .O(\n_0_RX_BIT_NB[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT5 #(
    .INIT(32'h00007F80)) 
     \RX_BIT_NB[3]_i_2 
       (.I0(RX_BIT_NB_reg__0[2]),
        .I1(RX_BIT_NB_reg__0[1]),
        .I2(RX_BIT_NB_reg__0[0]),
        .I3(RX_BIT_NB_reg__0[3]),
        .I4(\n_0_RX_BIT_NB[3]_i_3 ),
        .O(p_0_in__3[3]));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT5 #(
    .INIT(32'h00008000)) 
     \RX_BIT_NB[3]_i_3 
       (.I0(RX_BIT_TIME_reg__0[2]),
        .I1(RX_BIT_TIME_reg__0[0]),
        .I2(RX_BIT_TIME_reg__0[1]),
        .I3(RX_EP[0]),
        .I4(RX_EP[1]),
        .O(\n_0_RX_BIT_NB[3]_i_3 ));
FDCE #(
    .INIT(1'b0)) 
     \RX_BIT_NB_reg[0] 
       (.C(I4),
        .CE(\n_0_RX_BIT_NB[3]_i_1 ),
        .CLR(I1),
        .D(p_0_in__3[0]),
        .Q(RX_BIT_NB_reg__0[0]));
FDCE #(
    .INIT(1'b0)) 
     \RX_BIT_NB_reg[1] 
       (.C(I4),
        .CE(\n_0_RX_BIT_NB[3]_i_1 ),
        .CLR(I1),
        .D(p_0_in__3[1]),
        .Q(RX_BIT_NB_reg__0[1]));
FDCE #(
    .INIT(1'b0)) 
     \RX_BIT_NB_reg[2] 
       (.C(I4),
        .CE(\n_0_RX_BIT_NB[3]_i_1 ),
        .CLR(I1),
        .D(p_0_in__3[2]),
        .Q(RX_BIT_NB_reg__0[2]));
FDCE #(
    .INIT(1'b0)) 
     \RX_BIT_NB_reg[3] 
       (.C(I4),
        .CE(\n_0_RX_BIT_NB[3]_i_1 ),
        .CLR(I1),
        .D(p_0_in__3[3]),
        .Q(RX_BIT_NB_reg__0[3]));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT5 #(
    .INIT(32'h000000FE)) 
     \RX_BIT_TIME[0]_i_1 
       (.I0(rxd_IBUF),
        .I1(RX_EP[1]),
        .I2(RX_EP[0]),
        .I3(\n_0_RX_BIT_NB[3]_i_1 ),
        .I4(RX_BIT_TIME_reg__0[0]),
        .O(p_0_in__2[0]));
LUT6 #(
    .INIT(64'h000000FE00FE0000)) 
     \RX_BIT_TIME[1]_i_1 
       (.I0(rxd_IBUF),
        .I1(RX_EP[1]),
        .I2(RX_EP[0]),
        .I3(\n_0_RX_BIT_NB[3]_i_1 ),
        .I4(RX_BIT_TIME_reg__0[1]),
        .I5(RX_BIT_TIME_reg__0[0]),
        .O(p_0_in__2[1]));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT4 #(
    .INIT(16'h2A80)) 
     \RX_BIT_TIME[2]_i_1 
       (.I0(\n_0_RX_BIT_TIME[2]_i_2 ),
        .I1(RX_BIT_TIME_reg__0[0]),
        .I2(RX_BIT_TIME_reg__0[1]),
        .I3(RX_BIT_TIME_reg__0[2]),
        .O(p_0_in__2[2]));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT4 #(
    .INIT(16'h5554)) 
     \RX_BIT_TIME[2]_i_2 
       (.I0(\n_0_RX_BIT_NB[3]_i_1 ),
        .I1(RX_EP[0]),
        .I2(RX_EP[1]),
        .I3(rxd_IBUF),
        .O(\n_0_RX_BIT_TIME[2]_i_2 ));
LUT5 #(
    .INIT(32'h00FECE00)) 
     \RX_BIT_TIME[3]_i_1 
       (.I0(rxd_IBUF),
        .I1(RX_EP[1]),
        .I2(RX_EP[0]),
        .I3(\n_0_RX_EP[0]_i_2 ),
        .I4(RX_BIT_TIME_reg__0[3]),
        .O(p_0_in__2[3]));
FDCE #(
    .INIT(1'b0)) 
     \RX_BIT_TIME_reg[0] 
       (.C(I4),
        .CE(1'b1),
        .CLR(I1),
        .D(p_0_in__2[0]),
        .Q(RX_BIT_TIME_reg__0[0]));
FDCE #(
    .INIT(1'b0)) 
     \RX_BIT_TIME_reg[1] 
       (.C(I4),
        .CE(1'b1),
        .CLR(I1),
        .D(p_0_in__2[1]),
        .Q(RX_BIT_TIME_reg__0[1]));
FDCE #(
    .INIT(1'b0)) 
     \RX_BIT_TIME_reg[2] 
       (.C(I4),
        .CE(1'b1),
        .CLR(I1),
        .D(p_0_in__2[2]),
        .Q(RX_BIT_TIME_reg__0[2]));
FDCE #(
    .INIT(1'b0)) 
     \RX_BIT_TIME_reg[3] 
       (.C(I4),
        .CE(1'b1),
        .CLR(I1),
        .D(p_0_in__2[3]),
        .Q(RX_BIT_TIME_reg__0[3]));
LUT6 #(
    .INIT(64'h0000800000000000)) 
     \RX_BUF[9]_i_1 
       (.I0(RX_BIT_TIME_reg__0[3]),
        .I1(RX_BIT_TIME_reg__0[1]),
        .I2(RX_BIT_TIME_reg__0[0]),
        .I3(RX_BIT_TIME_reg__0[2]),
        .I4(RX_EP[0]),
        .I5(RX_EP[1]),
        .O(RX_BIT_NB_INC));
FDPE #(
    .INIT(1'b1)) 
     \RX_BUF_reg[0] 
       (.C(I4),
        .CE(RX_BIT_NB_INC),
        .D(\n_0_RX_BUF_reg[1] ),
        .PRE(I1),
        .Q(\n_0_RX_BUF_reg[0] ));
FDPE #(
    .INIT(1'b1)) 
     \RX_BUF_reg[1] 
       (.C(I4),
        .CE(RX_BIT_NB_INC),
        .D(\n_0_RX_BUF_reg[2] ),
        .PRE(I1),
        .Q(\n_0_RX_BUF_reg[1] ));
FDPE #(
    .INIT(1'b1)) 
     \RX_BUF_reg[2] 
       (.C(I4),
        .CE(RX_BIT_NB_INC),
        .D(\n_0_RX_BUF_reg[3] ),
        .PRE(I1),
        .Q(\n_0_RX_BUF_reg[2] ));
FDPE #(
    .INIT(1'b1)) 
     \RX_BUF_reg[3] 
       (.C(I4),
        .CE(RX_BIT_NB_INC),
        .D(\n_0_RX_BUF_reg[4] ),
        .PRE(I1),
        .Q(\n_0_RX_BUF_reg[3] ));
FDPE #(
    .INIT(1'b1)) 
     \RX_BUF_reg[4] 
       (.C(I4),
        .CE(RX_BIT_NB_INC),
        .D(\n_0_RX_BUF_reg[5] ),
        .PRE(I1),
        .Q(\n_0_RX_BUF_reg[4] ));
FDPE #(
    .INIT(1'b1)) 
     \RX_BUF_reg[5] 
       (.C(I4),
        .CE(RX_BIT_NB_INC),
        .D(\n_0_RX_BUF_reg[6] ),
        .PRE(I1),
        .Q(\n_0_RX_BUF_reg[5] ));
FDPE #(
    .INIT(1'b1)) 
     \RX_BUF_reg[6] 
       (.C(I4),
        .CE(RX_BIT_NB_INC),
        .D(\n_0_RX_BUF_reg[7] ),
        .PRE(I1),
        .Q(\n_0_RX_BUF_reg[6] ));
FDPE #(
    .INIT(1'b1)) 
     \RX_BUF_reg[7] 
       (.C(I4),
        .CE(RX_BIT_NB_INC),
        .D(\n_0_RX_BUF_reg[8] ),
        .PRE(I1),
        .Q(\n_0_RX_BUF_reg[7] ));
FDPE #(
    .INIT(1'b1)) 
     \RX_BUF_reg[8] 
       (.C(I4),
        .CE(RX_BIT_NB_INC),
        .D(\n_0_RX_BUF_reg[9] ),
        .PRE(I1),
        .Q(\n_0_RX_BUF_reg[8] ));
FDPE #(
    .INIT(1'b1)) 
     \RX_BUF_reg[9] 
       (.C(I4),
        .CE(RX_BIT_NB_INC),
        .D(rxd_IBUF),
        .PRE(I1),
        .Q(\n_0_RX_BUF_reg[9] ));
LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
     RX_CLK_i_1
       (.I0(\n_0_ClkDiv[2]_i_2 ),
        .I1(ClkDiv_reg__0[7]),
        .I2(ClkDiv_reg__0[2]),
        .I3(ClkDiv_reg__0[0]),
        .I4(ClkDiv_reg__0[1]),
        .I5(RX_CLK),
        .O(n_0_RX_CLK_i_1));
FDCE #(
    .INIT(1'b0)) 
     RX_CLK_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(I1),
        .D(n_0_RX_CLK_i_1),
        .Q(RX_CLK));
LUT5 #(
    .INIT(32'hCCDDCCCF)) 
     \RX_EP[0]_i_1 
       (.I0(\n_0_RX_EP[0]_i_2 ),
        .I1(\n_0_RX_EP[0]_i_3 ),
        .I2(rxd_IBUF),
        .I3(RX_EP[1]),
        .I4(RX_EP[0]),
        .O(RX_EF[0]));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \RX_EP[0]_i_2 
       (.I0(RX_BIT_TIME_reg__0[1]),
        .I1(RX_BIT_TIME_reg__0[0]),
        .I2(RX_BIT_TIME_reg__0[2]),
        .O(\n_0_RX_EP[0]_i_2 ));
LUT6 #(
    .INIT(64'h0000000000004000)) 
     \RX_EP[0]_i_3 
       (.I0(RX_EP[0]),
        .I1(RX_EP[1]),
        .I2(RX_BIT_NB_reg__0[1]),
        .I3(RX_BIT_NB_reg__0[3]),
        .I4(RX_BIT_NB_reg__0[0]),
        .I5(RX_BIT_NB_reg__0[2]),
        .O(\n_0_RX_EP[0]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT5 #(
    .INIT(32'h00FF8000)) 
     \RX_EP[1]_i_1 
       (.I0(RX_BIT_TIME_reg__0[1]),
        .I1(RX_BIT_TIME_reg__0[0]),
        .I2(RX_BIT_TIME_reg__0[2]),
        .I3(RX_EP[0]),
        .I4(RX_EP[1]),
        .O(RX_EF[1]));
FDCE #(
    .INIT(1'b0)) 
     \RX_EP_reg[0] 
       (.C(I4),
        .CE(1'b1),
        .CLR(I1),
        .D(RX_EF[0]),
        .Q(RX_EP[0]));
FDCE #(
    .INIT(1'b0)) 
     \RX_EP_reg[1] 
       (.C(I4),
        .CE(1'b1),
        .CLR(I1),
        .D(RX_EF[1]),
        .Q(RX_EP[1]));
LUT6 #(
    .INIT(64'h1414D714D7141414)) 
     \STX_EP[0]_i_1 
       (.I0(TX_LOAD),
        .I1(STX_EP[0]),
        .I2(STX_EP[1]),
        .I3(start_TX),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(STX_EF[0]));
LUT6 #(
    .INIT(64'h60FF6000FF00FF00)) 
     \STX_EP[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(start_TX),
        .I3(STX_EP[1]),
        .I4(TX_LOAD),
        .I5(STX_EP[0]),
        .O(STX_EF[1]));
FDCE #(
    .INIT(1'b0)) 
     \STX_EP_reg[0] 
       (.C(I4),
        .CE(1'b1),
        .CLR(I1),
        .D(STX_EF[0]),
        .Q(STX_EP[0]));
FDCE #(
    .INIT(1'b0)) 
     \STX_EP_reg[1] 
       (.C(I4),
        .CE(1'b1),
        .CLR(I1),
        .D(STX_EF[1]),
        .Q(STX_EP[1]));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT2 #(
    .INIT(4'h1)) 
     \TX_BIT_NB[0]_i_1 
       (.I0(TX_BIT_NB_reg__0[0]),
        .I1(TX_LOAD),
        .O(p_0_in__0[0]));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT3 #(
    .INIT(8'h06)) 
     \TX_BIT_NB[1]_i_1 
       (.I0(TX_BIT_NB_reg__0[1]),
        .I1(TX_BIT_NB_reg__0[0]),
        .I2(TX_LOAD),
        .O(p_0_in__0[1]));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT4 #(
    .INIT(16'h0078)) 
     \TX_BIT_NB[2]_i_1 
       (.I0(TX_BIT_NB_reg__0[0]),
        .I1(TX_BIT_NB_reg__0[1]),
        .I2(TX_BIT_NB_reg__0[2]),
        .I3(TX_LOAD),
        .O(p_0_in__0[2]));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT5 #(
    .INIT(32'h15554000)) 
     \TX_BIT_NB[3]_i_1 
       (.I0(TX_LOAD),
        .I1(TX_BIT_NB_reg__0[2]),
        .I2(TX_BIT_NB_reg__0[1]),
        .I3(TX_BIT_NB_reg__0[0]),
        .I4(TX_BIT_NB_reg__0[3]),
        .O(\n_0_TX_BIT_NB[3]_i_1 ));
FDCE #(
    .INIT(1'b0)) 
     \TX_BIT_NB_reg[0] 
       (.C(TX_CLK),
        .CE(1'b1),
        .CLR(I1),
        .D(p_0_in__0[0]),
        .Q(TX_BIT_NB_reg__0[0]));
FDCE #(
    .INIT(1'b0)) 
     \TX_BIT_NB_reg[1] 
       (.C(TX_CLK),
        .CE(1'b1),
        .CLR(I1),
        .D(p_0_in__0[1]),
        .Q(TX_BIT_NB_reg__0[1]));
FDCE #(
    .INIT(1'b0)) 
     \TX_BIT_NB_reg[2] 
       (.C(TX_CLK),
        .CE(1'b1),
        .CLR(I1),
        .D(p_0_in__0[2]),
        .Q(TX_BIT_NB_reg__0[2]));
FDCE #(
    .INIT(1'b0)) 
     \TX_BIT_NB_reg[3] 
       (.C(TX_CLK),
        .CE(1'b1),
        .CLR(I1),
        .D(\n_0_TX_BIT_NB[3]_i_1 ),
        .Q(TX_BIT_NB_reg__0[3]));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \TX_BIT_TIME[0]_i_1 
       (.I0(\n_0_TX_BIT_TIME_reg[0] ),
        .O(plusOp[0]));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \TX_BIT_TIME[1]_i_1 
       (.I0(\n_0_TX_BIT_TIME_reg[0] ),
        .I1(\n_0_TX_BIT_TIME_reg[1] ),
        .O(plusOp[1]));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \TX_BIT_TIME[2]_i_1 
       (.I0(\n_0_TX_BIT_TIME_reg[2] ),
        .I1(\n_0_TX_BIT_TIME_reg[1] ),
        .I2(\n_0_TX_BIT_TIME_reg[0] ),
        .O(plusOp[2]));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \TX_BIT_TIME[3]_i_1 
       (.I0(TX_CLK),
        .I1(\n_0_TX_BIT_TIME_reg[0] ),
        .I2(\n_0_TX_BIT_TIME_reg[1] ),
        .I3(\n_0_TX_BIT_TIME_reg[2] ),
        .O(plusOp[3]));
FDCE #(
    .INIT(1'b0)) 
     \TX_BIT_TIME_reg[0] 
       (.C(I4),
        .CE(1'b1),
        .CLR(I1),
        .D(plusOp[0]),
        .Q(\n_0_TX_BIT_TIME_reg[0] ));
FDCE #(
    .INIT(1'b0)) 
     \TX_BIT_TIME_reg[1] 
       (.C(I4),
        .CE(1'b1),
        .CLR(I1),
        .D(plusOp[1]),
        .Q(\n_0_TX_BIT_TIME_reg[1] ));
FDCE #(
    .INIT(1'b0)) 
     \TX_BIT_TIME_reg[2] 
       (.C(I4),
        .CE(1'b1),
        .CLR(I1),
        .D(plusOp[2]),
        .Q(\n_0_TX_BIT_TIME_reg[2] ));
FDCE #(
    .INIT(1'b0)) 
     \TX_BIT_TIME_reg[3] 
       (.C(I4),
        .CE(1'b1),
        .CLR(I1),
        .D(plusOp[3]),
        .Q(TX_CLK));
LUT3 #(
    .INIT(8'h20)) 
     \TX_BUF[0]_i_1 
       (.I0(TX_BUF[1]),
        .I1(TX_LOAD),
        .I2(TX_EP),
        .O(\n_0_TX_BUF[0]_i_1 ));
LUT6 #(
    .INIT(64'h0808FB08FB080808)) 
     \TX_BUF[1]_i_1 
       (.I0(TX_BUF[2]),
        .I1(TX_EP),
        .I2(TX_LOAD),
        .I3(I3[0]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\n_0_TX_BUF[1]_i_1 ));
LUT6 #(
    .INIT(64'h0808FB08FB080808)) 
     \TX_BUF[2]_i_1 
       (.I0(TX_BUF[3]),
        .I1(TX_EP),
        .I2(TX_LOAD),
        .I3(I3[1]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\n_0_TX_BUF[2]_i_1 ));
LUT6 #(
    .INIT(64'h0808FB08FB080808)) 
     \TX_BUF[3]_i_1 
       (.I0(TX_BUF[4]),
        .I1(TX_EP),
        .I2(TX_LOAD),
        .I3(I3[1]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\n_0_TX_BUF[3]_i_1 ));
LUT6 #(
    .INIT(64'h0808FB08FB080808)) 
     \TX_BUF[4]_i_1 
       (.I0(TX_BUF[5]),
        .I1(TX_EP),
        .I2(TX_LOAD),
        .I3(I3[1]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\n_0_TX_BUF[4]_i_1 ));
LUT6 #(
    .INIT(64'h0808FB08FB080808)) 
     \TX_BUF[5]_i_1 
       (.I0(TX_BUF[6]),
        .I1(TX_EP),
        .I2(TX_LOAD),
        .I3(I3[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\n_0_TX_BUF[5]_i_1 ));
LUT6 #(
    .INIT(64'h0808FB08FB080808)) 
     \TX_BUF[6]_i_1 
       (.I0(TX_BUF[7]),
        .I1(TX_EP),
        .I2(TX_LOAD),
        .I3(I3[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\n_0_TX_BUF[6]_i_1 ));
LUT6 #(
    .INIT(64'h0808FB08FB080808)) 
     \TX_BUF[7]_i_1 
       (.I0(TX_BUF[8]),
        .I1(TX_EP),
        .I2(TX_LOAD),
        .I3(I3[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\n_0_TX_BUF[7]_i_1 ));
LUT6 #(
    .INIT(64'h0808FB08FB080808)) 
     \TX_BUF[8]_i_1 
       (.I0(TX_BUF[9]),
        .I1(TX_EP),
        .I2(TX_LOAD),
        .I3(I3[3]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\n_0_TX_BUF[8]_i_1 ));
LUT2 #(
    .INIT(4'hE)) 
     \TX_BUF[9]_i_1 
       (.I0(TX_EP),
        .I1(TX_LOAD),
        .O(\n_0_TX_BUF[9]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \TX_BUF[9]_i_3 
       (.I0(TX_EP),
        .I1(TX_LOAD),
        .O(O1));
FDPE #(
    .INIT(1'b1)) 
     \TX_BUF_reg[0] 
       (.C(TX_CLK),
        .CE(\n_0_TX_BUF[9]_i_1 ),
        .D(\n_0_TX_BUF[0]_i_1 ),
        .PRE(I1),
        .Q(O5));
FDPE #(
    .INIT(1'b1)) 
     \TX_BUF_reg[1] 
       (.C(TX_CLK),
        .CE(\n_0_TX_BUF[9]_i_1 ),
        .D(\n_0_TX_BUF[1]_i_1 ),
        .PRE(I1),
        .Q(TX_BUF[1]));
FDPE #(
    .INIT(1'b1)) 
     \TX_BUF_reg[2] 
       (.C(TX_CLK),
        .CE(\n_0_TX_BUF[9]_i_1 ),
        .D(\n_0_TX_BUF[2]_i_1 ),
        .PRE(I1),
        .Q(TX_BUF[2]));
FDPE #(
    .INIT(1'b1)) 
     \TX_BUF_reg[3] 
       (.C(TX_CLK),
        .CE(\n_0_TX_BUF[9]_i_1 ),
        .D(\n_0_TX_BUF[3]_i_1 ),
        .PRE(I1),
        .Q(TX_BUF[3]));
FDPE #(
    .INIT(1'b1)) 
     \TX_BUF_reg[4] 
       (.C(TX_CLK),
        .CE(\n_0_TX_BUF[9]_i_1 ),
        .D(\n_0_TX_BUF[4]_i_1 ),
        .PRE(I1),
        .Q(TX_BUF[4]));
FDPE #(
    .INIT(1'b1)) 
     \TX_BUF_reg[5] 
       (.C(TX_CLK),
        .CE(\n_0_TX_BUF[9]_i_1 ),
        .D(\n_0_TX_BUF[5]_i_1 ),
        .PRE(I1),
        .Q(TX_BUF[5]));
FDPE #(
    .INIT(1'b1)) 
     \TX_BUF_reg[6] 
       (.C(TX_CLK),
        .CE(\n_0_TX_BUF[9]_i_1 ),
        .D(\n_0_TX_BUF[6]_i_1 ),
        .PRE(I1),
        .Q(TX_BUF[6]));
FDPE #(
    .INIT(1'b1)) 
     \TX_BUF_reg[7] 
       (.C(TX_CLK),
        .CE(\n_0_TX_BUF[9]_i_1 ),
        .D(\n_0_TX_BUF[7]_i_1 ),
        .PRE(I1),
        .Q(TX_BUF[7]));
FDPE #(
    .INIT(1'b1)) 
     \TX_BUF_reg[8] 
       (.C(TX_CLK),
        .CE(\n_0_TX_BUF[9]_i_1 ),
        .D(\n_0_TX_BUF[8]_i_1 ),
        .PRE(I1),
        .Q(TX_BUF[8]));
FDPE #(
    .INIT(1'b1)) 
     \TX_BUF_reg[9] 
       (.C(TX_CLK),
        .CE(\n_0_TX_BUF[9]_i_1 ),
        .D(D),
        .PRE(I1),
        .Q(TX_BUF[9]));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT4 #(
    .INIT(16'h0010)) 
     \TX_EP[0]_i_1 
       (.I0(TX_EP),
        .I1(TX_LOAD),
        .I2(STX_EP[0]),
        .I3(STX_EP[1]),
        .O(TX_EF[0]));
LUT6 #(
    .INIT(64'hFFFFFFBFAAAAAAAA)) 
     \TX_EP[1]_i_1 
       (.I0(TX_LOAD),
        .I1(TX_BIT_NB_reg__0[3]),
        .I2(TX_BIT_NB_reg__0[2]),
        .I3(TX_BIT_NB_reg__0[1]),
        .I4(TX_BIT_NB_reg__0[0]),
        .I5(TX_EP),
        .O(TX_EF[1]));
FDCE #(
    .INIT(1'b0)) 
     \TX_EP_reg[0] 
       (.C(TX_CLK),
        .CE(1'b1),
        .CLR(I1),
        .D(TX_EF[0]),
        .Q(TX_LOAD));
FDCE #(
    .INIT(1'b0)) 
     \TX_EP_reg[1] 
       (.C(TX_CLK),
        .CE(1'b1),
        .CLR(I1),
        .D(TX_EF[1]),
        .Q(TX_EP));
LUT6 #(
    .INIT(64'h0000010000000000)) 
     left_i_1
       (.I0(n_0_left_i_2),
        .I1(RS232_left),
        .I2(I2),
        .I3(incoming),
        .I4(p_15_in),
        .I5(n_0_left_i_3),
        .O(RS232_left10_out));
LUT3 #(
    .INIT(8'h02)) 
     left_i_2
       (.I0(n_0_left_i_4),
        .I1(RD_REG[6]),
        .I2(RD_REG[5]),
        .O(n_0_left_i_2));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT3 #(
    .INIT(8'h02)) 
     left_i_3
       (.I0(n_0_left_i_5),
        .I1(RD_REG[1]),
        .I2(RD_REG[2]),
        .O(n_0_left_i_3));
LUT6 #(
    .INIT(64'h0008000000000000)) 
     left_i_4
       (.I0(RD_REG[1]),
        .I1(RD_REG[3]),
        .I2(RD_REG[4]),
        .I3(RD_REG[7]),
        .I4(RD_REG[2]),
        .I5(RD_REG[0]),
        .O(n_0_left_i_4));
LUT6 #(
    .INIT(64'h1000000000000000)) 
     left_i_5
       (.I0(RD_REG[0]),
        .I1(RD_REG[3]),
        .I2(RD_REG[4]),
        .I3(RD_REG[7]),
        .I4(RD_REG[5]),
        .I5(RD_REG[6]),
        .O(n_0_left_i_5));
LUT6 #(
    .INIT(64'h0000000000900000)) 
     right_i_1
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(incoming),
        .I3(I2),
        .I4(n_0_left_i_2),
        .I5(RS232_right),
        .O(RS232_right7_out));
LUT4 #(
    .INIT(16'h5455)) 
     start_tempo_UART_RX_i_2
       (.I0(I2),
        .I1(n_0_left_i_3),
        .I2(n_0_left_i_2),
        .I3(n_0_start_tempo_UART_RX_i_4),
        .O(start_tempo_UART_RX11_out));
LUT5 #(
    .INIT(32'hFFFFEFFF)) 
     start_tempo_UART_RX_i_4
       (.I0(RD_REG[3]),
        .I1(RD_REG[4]),
        .I2(RD_REG[0]),
        .I3(RD_REG[7]),
        .I4(n_0_start_tempo_UART_RX_i_5),
        .O(n_0_start_tempo_UART_RX_i_4));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT4 #(
    .INIT(16'hFFFE)) 
     start_tempo_UART_RX_i_5
       (.I0(RD_REG[1]),
        .I1(RD_REG[2]),
        .I2(RD_REG[6]),
        .I3(RD_REG[5]),
        .O(n_0_start_tempo_UART_RX_i_5));
endmodule

module VGA
   (hsync_OBUF,
    vsync_OBUF,
    O1,
    O2,
    O3,
    O4,
    O5,
    O6,
    O7,
    O8,
    O9,
    O10,
    O11,
    O12,
    O13,
    O14,
    O15,
    O16,
    I59,
    I58,
    I54,
    I53,
    I52,
    I51,
    I50,
    I56,
    VGA_green_OBUF,
    O23,
    VGA_red_OBUF,
    Q,
    O24,
    O25,
    O26,
    O27,
    I38,
    I69,
    O28,
    I35,
    I36,
    I34,
    precFrame07_out,
    I37,
    I39,
    I41,
    I40,
    I67,
    S,
    I32,
    O29,
    O33,
    O34,
    O36,
    O37,
    O38,
    O39,
    O44,
    O45,
    O46,
    VGA_blue_OBUF,
    O47,
    O48,
    O52,
    O53,
    DI,
    D,
    O54,
    I68,
    I66,
    I65,
    I64,
    O55,
    O56,
    clk25_BUFG,
    I1,
    \brick_bounce[1] ,
    \brick_bounce[0] ,
    I2,
    O49,
    O50,
    O17,
    O18,
    O40,
    O41,
    O42,
    O43,
    O20,
    O19,
    O21,
    O22,
    I3,
    O31,
    O32,
    O30,
    O35,
    game_lost,
    I4,
    p_1_out,
    I5,
    I6,
    etat_present,
    I7,
    I8,
    I9,
    no_brick,
    I10,
    I11,
    I12,
    p_15_in,
    I13,
    plusOp12,
    I14,
    plusOp14,
    S3_IBUF,
    plusOp8,
    plusOp10,
    precFrame,
    I15,
    I16,
    I17,
    I18,
    I19,
    I20,
    I21,
    I22,
    O,
    I23,
    leftbounce,
    rightbounce,
    ybounce,
    barrier_bounce,
    pong_left_bounce,
    pong_right_bounce,
    I24,
    I25,
    pad_left_bounce,
    I26,
    I27,
    pad_right_bounce,
    pad_far_right_bounce,
    I28,
    CO,
    pad_center_bounce,
    I29,
    I30,
    I31,
    O51,
    pad_far_left_bounce,
    I33,
    I42,
    I43,
    I60,
    I44,
    I45,
    S1_IBUF,
    I46,
    plusOp16);
  output hsync_OBUF;
  output vsync_OBUF;
  output O1;
  output O2;
  output O3;
  output O4;
  output O5;
  output O6;
  output O7;
  output O8;
  output O9;
  output O10;
  output O11;
  output O12;
  output O13;
  output O14;
  output O15;
  output O16;
  output [0:0]I59;
  output [0:0]I58;
  output [0:0]I54;
  output [0:0]I53;
  output [0:0]I52;
  output [0:0]I51;
  output [0:0]I50;
  output [0:0]I56;
  output VGA_green_OBUF;
  output O23;
  output VGA_red_OBUF;
  output [9:0]Q;
  output O24;
  output O25;
  output O26;
  output [9:0]O27;
  output [0:0]I38;
  output [1:0]I69;
  output O28;
  output [0:0]I35;
  output [0:0]I36;
  output [0:0]I34;
  output precFrame07_out;
  output [0:0]I37;
  output [1:0]I39;
  output [0:0]I41;
  output [0:0]I40;
  output [2:0]I67;
  output [0:0]S;
  output [0:0]I32;
  output O29;
  output O33;
  output O34;
  output O36;
  output O37;
  output O38;
  output O39;
  output O44;
  output O45;
  output O46;
  output VGA_blue_OBUF;
  output O47;
  output O48;
  output [0:0]O52;
  output [0:0]O53;
  output [0:0]DI;
  output [0:0]D;
  output O54;
  output [2:0]I68;
  output [1:0]I66;
  output [3:0]I65;
  output [3:0]I64;
  output O55;
  output O56;
  input clk25_BUFG;
  input I1;
  input [8:0]\brick_bounce[1] ;
  input [8:0]\brick_bounce[0] ;
  input [2:0]I2;
  input [2:0]O49;
  input [0:0]O50;
  input [2:0]O17;
  input [0:0]O18;
  input [2:0]O40;
  input [0:0]O41;
  input [2:0]O42;
  input [0:0]O43;
  input [1:0]O20;
  input [0:0]O19;
  input [0:0]O21;
  input [2:0]O22;
  input [0:0]I3;
  input [3:0]O31;
  input [0:0]O32;
  input [3:0]O30;
  input [0:0]O35;
  input game_lost;
  input I4;
  input [0:0]p_1_out;
  input I5;
  input I6;
  input [1:0]etat_present;
  input I7;
  input [0:0]I8;
  input [0:0]I9;
  input no_brick;
  input I10;
  input I11;
  input I12;
  input p_15_in;
  input [6:0]I13;
  input [7:0]plusOp12;
  input [8:0]I14;
  input [8:0]plusOp14;
  input S3_IBUF;
  input [8:0]plusOp8;
  input [8:0]plusOp10;
  input precFrame;
  input [6:0]I15;
  input I16;
  input I17;
  input [9:0]I18;
  input [9:0]I19;
  input I20;
  input I21;
  input [3:0]I22;
  input [3:0]O;
  input I23;
  input leftbounce;
  input rightbounce;
  input ybounce;
  input barrier_bounce;
  input pong_left_bounce;
  input pong_right_bounce;
  input I24;
  input I25;
  input pad_left_bounce;
  input I26;
  input I27;
  input pad_right_bounce;
  input pad_far_right_bounce;
  input I28;
  input [0:0]CO;
  input pad_center_bounce;
  input [0:0]I29;
  input [0:0]I30;
  input I31;
  input [0:0]O51;
  input pad_far_left_bounce;
  input I33;
  input I42;
  input I43;
  input [0:0]I60;
  input I44;
  input I45;
  input S1_IBUF;
  input I46;
  input [8:0]plusOp16;

  wire [0:0]CO;
  wire [0:0]D;
  wire [0:0]DI;
  wire I1;
  wire I10;
  wire I11;
  wire I12;
  wire [6:0]I13;
  wire [8:0]I14;
  wire [6:0]I15;
  wire I16;
  wire I17;
  wire [9:0]I18;
  wire [9:0]I19;
  wire [2:0]I2;
  wire I20;
  wire I21;
  wire [3:0]I22;
  wire I23;
  wire I24;
  wire I25;
  wire I26;
  wire I27;
  wire I28;
  wire [0:0]I29;
  wire [0:0]I3;
  wire [0:0]I30;
  wire I31;
  wire [0:0]I32;
  wire I33;
  wire [0:0]I34;
  wire [0:0]I35;
  wire [0:0]I36;
  wire [0:0]I37;
  wire [0:0]I38;
  wire [1:0]I39;
  wire I4;
  wire [0:0]I40;
  wire [0:0]I41;
  wire I42;
  wire I43;
  wire I44;
  wire I45;
  wire I46;
  wire I5;
  wire [0:0]I50;
  wire [0:0]I51;
  wire [0:0]I52;
  wire [0:0]I53;
  wire [0:0]I54;
  wire [0:0]I56;
  wire [0:0]I58;
  wire [0:0]I59;
  wire I6;
  wire [0:0]I60;
  wire [3:0]I64;
  wire [3:0]I65;
  wire [1:0]I66;
  wire [2:0]I67;
  wire [2:0]I68;
  wire [1:0]I69;
  wire I7;
  wire [0:0]I8;
  wire [0:0]I9;
  wire [3:0]O;
  wire O1;
  wire O10;
  wire O11;
  wire O12;
  wire O13;
  wire O14;
  wire O15;
  wire O16;
  wire [2:0]O17;
  wire [0:0]O18;
  wire [0:0]O19;
  wire O2;
  wire [1:0]O20;
  wire [0:0]O21;
  wire [2:0]O22;
  wire O23;
  wire O24;
  wire O25;
  wire O26;
  wire [9:0]O27;
  wire O28;
  wire O29;
  wire O3;
  wire [3:0]O30;
  wire [3:0]O31;
  wire [0:0]O32;
  wire O33;
  wire O34;
  wire [0:0]O35;
  wire O36;
  wire O37;
  wire O38;
  wire O39;
  wire O4;
  wire [2:0]O40;
  wire [0:0]O41;
  wire [2:0]O42;
  wire [0:0]O43;
  wire O44;
  wire O45;
  wire O46;
  wire O47;
  wire O48;
  wire [2:0]O49;
  wire O5;
  wire [0:0]O50;
  wire [0:0]O51;
  wire [0:0]O52;
  wire [0:0]O53;
  wire O54;
  wire O55;
  wire O56;
  wire O6;
  wire O7;
  wire O8;
  wire O9;
  wire [9:0]Q;
  wire [0:0]S;
  wire S1_IBUF;
  wire S3_IBUF;
  wire VGA_blue_OBUF;
  wire VGA_green_OBUF;
  wire VGA_red_OBUF;
  wire barrier_bounce;
  wire [8:0]\brick[0] ;
  wire [7:1]\brick[1] ;
  wire [8:0]\brick_bounce[0] ;
  wire [8:0]\brick_bounce[1] ;
  wire clk25_BUFG;
  wire [1:0]etat_present;
  wire game_lost;
  wire hsync_OBUF;
  wire leftbounce;
  wire \n_0_FSM_sequential_etat_prochain_reg[2]_i_11 ;
  wire \n_0_FSM_sequential_etat_prochain_reg[2]_i_12 ;
  wire \n_0_FSM_sequential_etat_prochain_reg[2]_i_5 ;
  wire \n_0_FSM_sequential_etat_prochain_reg[2]_i_6 ;
  wire \n_0_FSM_sequential_etat_prochain_reg[2]_i_7 ;
  wire n_0_VGA_blue_OBUF_inst_i_12;
  wire n_0_VGA_blue_OBUF_inst_i_13;
  wire n_0_VGA_blue_OBUF_inst_i_14;
  wire n_0_VGA_blue_OBUF_inst_i_15;
  wire n_0_VGA_blue_OBUF_inst_i_16;
  wire n_0_VGA_blue_OBUF_inst_i_17;
  wire n_0_VGA_blue_OBUF_inst_i_18;
  wire n_0_VGA_blue_OBUF_inst_i_19;
  wire n_0_VGA_blue_OBUF_inst_i_2;
  wire n_0_VGA_blue_OBUF_inst_i_21;
  wire n_0_VGA_blue_OBUF_inst_i_22;
  wire n_0_VGA_blue_OBUF_inst_i_23;
  wire n_0_VGA_blue_OBUF_inst_i_24;
  wire n_0_VGA_blue_OBUF_inst_i_25;
  wire n_0_VGA_blue_OBUF_inst_i_26;
  wire n_0_VGA_blue_OBUF_inst_i_27;
  wire n_0_VGA_blue_OBUF_inst_i_3;
  wire n_0_VGA_blue_OBUF_inst_i_31;
  wire n_0_VGA_blue_OBUF_inst_i_4;
  wire n_0_VGA_blue_OBUF_inst_i_5;
  wire n_0_VGA_blue_OBUF_inst_i_6;
  wire n_0_VGA_blue_OBUF_inst_i_7;
  wire n_0_VGA_blue_OBUF_inst_i_8;
  wire n_0_VGA_blue_OBUF_inst_i_9;
  wire n_0_VGA_green_OBUF_inst_i_11;
  wire n_0_VGA_green_OBUF_inst_i_12;
  wire n_0_VGA_green_OBUF_inst_i_13;
  wire n_0_VGA_green_OBUF_inst_i_22;
  wire n_0_VGA_green_OBUF_inst_i_23;
  wire n_0_VGA_green_OBUF_inst_i_24;
  wire n_0_VGA_green_OBUF_inst_i_25;
  wire n_0_VGA_green_OBUF_inst_i_27;
  wire n_0_VGA_green_OBUF_inst_i_39;
  wire n_0_VGA_green_OBUF_inst_i_4;
  wire n_0_VGA_green_OBUF_inst_i_6;
  wire n_0_VGA_green_OBUF_inst_i_7;
  wire n_0_VGA_red_OBUF_inst_i_10;
  wire n_0_VGA_red_OBUF_inst_i_11;
  wire n_0_VGA_red_OBUF_inst_i_12;
  wire n_0_VGA_red_OBUF_inst_i_14;
  wire n_0_VGA_red_OBUF_inst_i_15;
  wire n_0_VGA_red_OBUF_inst_i_16;
  wire n_0_VGA_red_OBUF_inst_i_2;
  wire n_0_VGA_red_OBUF_inst_i_20;
  wire n_0_VGA_red_OBUF_inst_i_21;
  wire n_0_VGA_red_OBUF_inst_i_22;
  wire n_0_VGA_red_OBUF_inst_i_23;
  wire n_0_VGA_red_OBUF_inst_i_24;
  wire n_0_VGA_red_OBUF_inst_i_25;
  wire n_0_VGA_red_OBUF_inst_i_26;
  wire n_0_VGA_red_OBUF_inst_i_27;
  wire n_0_VGA_red_OBUF_inst_i_28;
  wire n_0_VGA_red_OBUF_inst_i_29;
  wire n_0_VGA_red_OBUF_inst_i_3;
  wire n_0_VGA_red_OBUF_inst_i_30;
  wire n_0_VGA_red_OBUF_inst_i_31;
  wire n_0_VGA_red_OBUF_inst_i_41;
  wire n_0_VGA_red_OBUF_inst_i_42;
  wire n_0_VGA_red_OBUF_inst_i_43;
  wire n_0_VGA_red_OBUF_inst_i_44;
  wire n_0_barrier_bounce_i_10;
  wire n_0_barrier_bounce_i_11;
  wire n_0_barrier_bounce_i_12;
  wire n_0_barrier_bounce_i_13;
  wire n_0_barrier_bounce_i_14;
  wire n_0_barrier_bounce_i_15;
  wire n_0_barrier_bounce_i_16;
  wire n_0_barrier_bounce_i_4;
  wire n_0_barrier_bounce_i_6;
  wire n_0_barrier_bounce_i_7;
  wire n_0_barrier_bounce_i_8;
  wire n_0_barrier_bounce_i_9;
  wire n_0_barrier_bounce_reg_i_5;
  wire \n_0_brick_bounce[0][8]_i_3 ;
  wire \n_0_brick_bounce[0][8]_i_4 ;
  wire \n_0_brick_bounce[1][0]_i_2 ;
  wire \n_0_brick_bounce[1][0]_i_3 ;
  wire \n_0_brick_bounce[1][0]_i_4 ;
  wire \n_0_brick_bounce[1][2]_i_3 ;
  wire \n_0_brick_bounce[1][2]_i_4 ;
  wire \n_0_brick_bounce[1][3]_i_4 ;
  wire \n_0_brick_bounce[1][5]_i_3 ;
  wire \n_0_brick_bounce[1][5]_i_5 ;
  wire \n_0_brick_bounce[1][6]_i_4 ;
  wire \n_0_brick_bounce[1][7]_i_3 ;
  wire \n_0_brick_bounce[1][7]_i_4 ;
  wire \n_0_brick_bounce[1][7]_i_5 ;
  wire \n_0_brick_bounce[1][8]_i_10 ;
  wire \n_0_brick_bounce[1][8]_i_19 ;
  wire \n_0_brick_bounce[1][8]_i_2 ;
  wire \n_0_brick_bounce[1][8]_i_22 ;
  wire \n_0_brick_bounce[1][8]_i_3 ;
  wire \n_0_brick_bounce[1][8]_i_38 ;
  wire \n_0_brick_bounce[1][8]_i_39 ;
  wire \n_0_brick_bounce[1][8]_i_4 ;
  wire \n_0_brick_bounce[1][8]_i_40 ;
  wire \n_0_brick_bounce[1][8]_i_41 ;
  wire \n_0_brick_bounce[1][8]_i_46 ;
  wire \n_0_brick_bounce[1][8]_i_47 ;
  wire \n_0_brick_bounce[1][8]_i_48 ;
  wire \n_0_brick_bounce[1][8]_i_49 ;
  wire \n_0_brick_bounce[1][8]_i_5 ;
  wire \n_0_brick_bounce[1][8]_i_6 ;
  wire \n_0_brick_bounce[1][8]_i_8 ;
  wire \n_0_brick_bounce[1][8]_i_9 ;
  wire \n_0_brick_bounce_reg[1][8]_i_18 ;
  wire \n_0_brick_bounce_reg[1][8]_i_21 ;
  wire n_0_hsync_i_1;
  wire n_0_hsync_i_2;
  wire n_0_hsync_i_3;
  wire n_0_leftbounce_i_2;
  wire n_0_leftbounce_i_4;
  wire n_0_leftbounce_i_5;
  wire n_0_leftbounce_i_6;
  wire n_0_leftbounce_i_7;
  wire n_0_leftbounce_i_8;
  wire n_0_pad_center_bounce_i_2;
  wire n_0_pad_center_bounce_i_20;
  wire n_0_pad_center_bounce_i_21;
  wire n_0_pad_center_bounce_i_22;
  wire n_0_pad_center_bounce_i_23;
  wire n_0_pad_center_bounce_i_27;
  wire n_0_pad_center_bounce_i_9;
  wire n_0_pad_center_bounce_reg_i_8;
  wire n_0_pad_far_left_bounce_i_13;
  wire n_0_pad_far_left_bounce_i_16;
  wire n_0_pad_far_left_bounce_i_18;
  wire n_0_pad_far_left_bounce_i_19;
  wire n_0_pad_far_left_bounce_i_2;
  wire n_0_pad_far_left_bounce_i_20;
  wire n_0_pad_far_left_bounce_i_5;
  wire n_0_pad_far_left_bounce_i_6;
  wire n_0_pad_far_left_bounce_i_9;
  wire n_0_pad_far_left_bounce_reg_i_7;
  wire n_0_pad_far_right_bounce_i_2;
  wire n_0_pad_left_bounce_i_12;
  wire n_0_pad_left_bounce_i_13;
  wire n_0_pad_left_bounce_i_14;
  wire n_0_pad_left_bounce_i_15;
  wire n_0_pad_left_bounce_i_19;
  wire n_0_pad_left_bounce_i_7;
  wire n_0_pad_left_bounce_reg_i_6;
  wire n_0_pad_right_bounce_i_11;
  wire n_0_pad_right_bounce_i_16;
  wire n_0_pad_right_bounce_i_17;
  wire n_0_pad_right_bounce_i_18;
  wire n_0_pad_right_bounce_i_19;
  wire n_0_pad_right_bounce_i_20;
  wire n_0_pad_right_bounce_i_21;
  wire n_0_pad_right_bounce_i_22;
  wire n_0_pad_right_bounce_i_23;
  wire n_0_pad_right_bounce_i_24;
  wire n_0_pad_right_bounce_i_28;
  wire n_0_pad_right_bounce_i_4;
  wire n_0_pad_right_bounce_i_9;
  wire n_0_pad_right_bounce_reg_i_10;
  wire n_0_pad_right_bounce_reg_i_7;
  wire \n_0_pong_bounce[1]_i_4 ;
  wire n_0_pong_left_bounce_i_15;
  wire n_0_pong_left_bounce_i_16;
  wire n_0_pong_left_bounce_i_17;
  wire n_0_pong_left_bounce_i_18;
  wire n_0_pong_left_bounce_i_19;
  wire n_0_pong_left_bounce_i_2;
  wire n_0_pong_left_bounce_i_4;
  wire n_0_pong_left_bounce_i_7;
  wire n_0_pong_left_bounce_i_8;
  wire n_0_pong_left_bounce_reg_i_6;
  wire n_0_rightbounce_i_2;
  wire n_0_rightbounce_i_3;
  wire n_0_rightbounce_i_4;
  wire n_0_vsync_i_1;
  wire n_0_vsync_i_2;
  wire \n_0_xcord[7]_i_2 ;
  wire \n_0_xcord[8]_i_1 ;
  wire \n_0_xcord[9]_i_1 ;
  wire \n_0_xcord[9]_i_2 ;
  wire n_0_ybounce_i_2;
  wire n_0_ybounce_i_3;
  wire n_0_ybounce_i_4;
  wire n_0_ybounce_i_5;
  wire n_0_ybounce_i_6;
  wire \n_0_ycord[0]_i_1 ;
  wire \n_0_ycord[3]_i_2 ;
  wire \n_0_ycord[6]_i_2 ;
  wire \n_0_ycord[7]_i_2 ;
  wire \n_0_ycord[9]_i_3 ;
  wire \n_0_ycord[9]_i_4 ;
  wire \n_0_ycord[9]_i_5 ;
  wire n_1_VGA_blue_OBUF_inst_i_17;
  wire n_1_VGA_red_OBUF_inst_i_14;
  wire n_1_barrier_bounce_reg_i_5;
  wire \n_1_brick_bounce_reg[1][8]_i_18 ;
  wire \n_1_brick_bounce_reg[1][8]_i_21 ;
  wire n_1_pad_center_bounce_reg_i_8;
  wire n_1_pad_far_left_bounce_reg_i_7;
  wire n_1_pad_left_bounce_reg_i_6;
  wire n_1_pad_right_bounce_reg_i_10;
  wire n_1_pad_right_bounce_reg_i_7;
  wire n_1_pong_left_bounce_reg_i_6;
  wire n_2_VGA_blue_OBUF_inst_i_17;
  wire n_2_VGA_red_OBUF_inst_i_14;
  wire n_2_barrier_bounce_reg_i_5;
  wire \n_2_brick_bounce_reg[1][8]_i_18 ;
  wire \n_2_brick_bounce_reg[1][8]_i_21 ;
  wire n_2_pad_center_bounce_reg_i_8;
  wire n_2_pad_far_left_bounce_reg_i_7;
  wire n_2_pad_left_bounce_reg_i_6;
  wire n_2_pad_right_bounce_reg_i_10;
  wire n_2_pad_right_bounce_reg_i_7;
  wire n_2_pong_left_bounce_reg_i_6;
  wire n_3_VGA_blue_OBUF_inst_i_17;
  wire n_3_VGA_red_OBUF_inst_i_14;
  wire n_3_VGA_red_OBUF_inst_i_8;
  wire n_3_barrier_bounce_reg_i_5;
  wire \n_3_brick_bounce_reg[1][8]_i_18 ;
  wire \n_3_brick_bounce_reg[1][8]_i_21 ;
  wire n_3_pad_center_bounce_reg_i_8;
  wire n_3_pad_far_left_bounce_reg_i_7;
  wire n_3_pad_left_bounce_reg_i_6;
  wire n_3_pad_right_bounce_reg_i_10;
  wire n_3_pad_right_bounce_reg_i_7;
  wire n_3_pong_left_bounce_reg_i_6;
  wire no_brick;
  wire \obj_ctrl/pad_ctrl/gtOp33_in ;
  wire \obj_ctrl/pad_ctrl/gtOp38_in ;
  wire \obj_ctrl/pad_ctrl/leqOp37_in ;
  wire [7:0]p_0_in__5;
  wire [9:1]p_0_in__6;
  wire p_15_in;
  wire [0:0]p_1_out;
  wire pad_center_bounce;
  wire pad_far_left_bounce;
  wire pad_far_right_bounce;
  wire pad_left_bounce;
  wire pad_right_bounce;
  wire [8:0]plusOp10;
  wire [7:0]plusOp12;
  wire [8:0]plusOp14;
  wire [8:0]plusOp16;
  wire [8:0]plusOp8;
  wire pong_left_bounce;
  wire pong_right_bounce;
  wire precFrame;
  wire precFrame07_out;
  wire rightbounce;
  wire sel;
  wire vsync_OBUF;
  wire ybounce;
  wire [3:1]NLW_VGA_blue_OBUF_inst_i_10_CO_UNCONNECTED;
  wire [3:0]NLW_VGA_blue_OBUF_inst_i_10_O_UNCONNECTED;
  wire [3:1]NLW_VGA_blue_OBUF_inst_i_11_CO_UNCONNECTED;
  wire [3:0]NLW_VGA_blue_OBUF_inst_i_11_O_UNCONNECTED;
  wire [3:0]NLW_VGA_blue_OBUF_inst_i_17_O_UNCONNECTED;
  wire [3:0]NLW_VGA_red_OBUF_inst_i_14_O_UNCONNECTED;
  wire [3:1]NLW_VGA_red_OBUF_inst_i_8_CO_UNCONNECTED;
  wire [3:0]NLW_VGA_red_OBUF_inst_i_8_O_UNCONNECTED;
  wire [3:1]NLW_barrier_bounce_reg_i_3_CO_UNCONNECTED;
  wire [3:0]NLW_barrier_bounce_reg_i_3_O_UNCONNECTED;
  wire [3:0]NLW_barrier_bounce_reg_i_5_O_UNCONNECTED;
  wire [3:1]\NLW_brick_bounce_reg[1][8]_i_12_CO_UNCONNECTED ;
  wire [3:0]\NLW_brick_bounce_reg[1][8]_i_12_O_UNCONNECTED ;
  wire [3:1]\NLW_brick_bounce_reg[1][8]_i_13_CO_UNCONNECTED ;
  wire [3:0]\NLW_brick_bounce_reg[1][8]_i_13_O_UNCONNECTED ;
  wire [3:0]\NLW_brick_bounce_reg[1][8]_i_18_O_UNCONNECTED ;
  wire [3:0]\NLW_brick_bounce_reg[1][8]_i_21_O_UNCONNECTED ;
  wire [3:1]NLW_pad_center_bounce_reg_i_4_CO_UNCONNECTED;
  wire [3:0]NLW_pad_center_bounce_reg_i_4_O_UNCONNECTED;
  wire [3:0]NLW_pad_center_bounce_reg_i_8_O_UNCONNECTED;
  wire [3:1]NLW_pad_far_left_bounce_reg_i_3_CO_UNCONNECTED;
  wire [3:0]NLW_pad_far_left_bounce_reg_i_3_O_UNCONNECTED;
  wire [3:0]NLW_pad_far_left_bounce_reg_i_7_O_UNCONNECTED;
  wire [3:1]NLW_pad_left_bounce_reg_i_4_CO_UNCONNECTED;
  wire [3:0]NLW_pad_left_bounce_reg_i_4_O_UNCONNECTED;
  wire [3:0]NLW_pad_left_bounce_reg_i_6_O_UNCONNECTED;
  wire [3:0]NLW_pad_right_bounce_reg_i_10_O_UNCONNECTED;
  wire [3:1]NLW_pad_right_bounce_reg_i_5_CO_UNCONNECTED;
  wire [3:0]NLW_pad_right_bounce_reg_i_5_O_UNCONNECTED;
  wire [3:1]NLW_pad_right_bounce_reg_i_6_CO_UNCONNECTED;
  wire [3:0]NLW_pad_right_bounce_reg_i_6_O_UNCONNECTED;
  wire [3:0]NLW_pad_right_bounce_reg_i_7_O_UNCONNECTED;
  wire [3:1]NLW_pong_left_bounce_reg_i_3_CO_UNCONNECTED;
  wire [3:0]NLW_pong_left_bounce_reg_i_3_O_UNCONNECTED;
  wire [3:0]NLW_pong_left_bounce_reg_i_6_O_UNCONNECTED;

LUT6 #(
    .INIT(64'h0111111133333333)) 
     \FSM_sequential_etat_prochain_reg[2]_i_11 
       (.I0(O27[5]),
        .I1(O27[9]),
        .I2(O27[4]),
        .I3(O27[3]),
        .I4(O27[2]),
        .I5(\n_0_FSM_sequential_etat_prochain_reg[2]_i_12 ),
        .O(\n_0_FSM_sequential_etat_prochain_reg[2]_i_11 ));
(* SOFT_HLUTNM = "soft_lutpair118" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \FSM_sequential_etat_prochain_reg[2]_i_12 
       (.I0(O27[6]),
        .I1(O27[8]),
        .I2(O27[7]),
        .O(\n_0_FSM_sequential_etat_prochain_reg[2]_i_12 ));
LUT5 #(
    .INIT(32'hBABBBBBB)) 
     \FSM_sequential_etat_prochain_reg[2]_i_3 
       (.I0(no_brick),
        .I1(\n_0_FSM_sequential_etat_prochain_reg[2]_i_5 ),
        .I2(\n_0_FSM_sequential_etat_prochain_reg[2]_i_6 ),
        .I3(\n_0_FSM_sequential_etat_prochain_reg[2]_i_7 ),
        .I4(I7),
        .O(O25));
LUT6 #(
    .INIT(64'h7F7FFF7FFFFFFFFF)) 
     \FSM_sequential_etat_prochain_reg[2]_i_5 
       (.I0(I9),
        .I1(I50),
        .I2(I51),
        .I3(\n_0_FSM_sequential_etat_prochain_reg[2]_i_11 ),
        .I4(I7),
        .I5(I8),
        .O(\n_0_FSM_sequential_etat_prochain_reg[2]_i_5 ));
(* SOFT_HLUTNM = "soft_lutpair112" *) 
   LUT5 #(
    .INIT(32'h00000057)) 
     \FSM_sequential_etat_prochain_reg[2]_i_6 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(n_0_leftbounce_i_8),
        .I4(Q[5]),
        .O(\n_0_FSM_sequential_etat_prochain_reg[2]_i_6 ));
LUT6 #(
    .INIT(64'h11FF11FF01FF11FF)) 
     \FSM_sequential_etat_prochain_reg[2]_i_7 
       (.I0(Q[7]),
        .I1(Q[8]),
        .I2(Q[2]),
        .I3(Q[9]),
        .I4(Q[6]),
        .I5(n_0_hsync_i_2),
        .O(\n_0_FSM_sequential_etat_prochain_reg[2]_i_7 ));
LUT6 #(
    .INIT(64'h000000000000FE00)) 
     VGA_blue_OBUF_inst_i_1
       (.I0(n_0_VGA_blue_OBUF_inst_i_2),
        .I1(n_0_VGA_blue_OBUF_inst_i_3),
        .I2(I5),
        .I3(n_0_VGA_blue_OBUF_inst_i_4),
        .I4(n_0_VGA_red_OBUF_inst_i_2),
        .I5(n_0_VGA_blue_OBUF_inst_i_5),
        .O(VGA_blue_OBUF));
CARRY4 VGA_blue_OBUF_inst_i_10
       (.CI(n_0_VGA_blue_OBUF_inst_i_17),
        .CO({NLW_VGA_blue_OBUF_inst_i_10_CO_UNCONNECTED[3:1],\obj_ctrl/pad_ctrl/gtOp38_in }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,n_0_VGA_blue_OBUF_inst_i_18}),
        .O(NLW_VGA_blue_OBUF_inst_i_10_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,n_0_VGA_blue_OBUF_inst_i_19}));
CARRY4 VGA_blue_OBUF_inst_i_11
       (.CI(I3),
        .CO({NLW_VGA_blue_OBUF_inst_i_11_CO_UNCONNECTED[3:1],\obj_ctrl/pad_ctrl/leqOp37_in }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,n_0_VGA_blue_OBUF_inst_i_21}),
        .O(NLW_VGA_blue_OBUF_inst_i_11_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,n_0_VGA_blue_OBUF_inst_i_22}));
LUT6 #(
    .INIT(64'hEFEEEFEEEFEEFFFF)) 
     VGA_blue_OBUF_inst_i_12
       (.I0(\brick_bounce[1] [7]),
        .I1(\n_0_brick_bounce[1][8]_i_10 ),
        .I2(n_0_VGA_red_OBUF_inst_i_41),
        .I3(O27[1]),
        .I4(\n_0_ycord[7]_i_2 ),
        .I5(O27[3]),
        .O(n_0_VGA_blue_OBUF_inst_i_12));
(* SOFT_HLUTNM = "soft_lutpair119" *) 
   LUT4 #(
    .INIT(16'hBAAA)) 
     VGA_blue_OBUF_inst_i_13
       (.I0(Q[9]),
        .I1(\n_0_brick_bounce[1][8]_i_5 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(n_0_VGA_blue_OBUF_inst_i_13));
LUT6 #(
    .INIT(64'hCFFFCFCFC7FFC7C7)) 
     VGA_blue_OBUF_inst_i_14
       (.I0(\n_0_brick_bounce[1][7]_i_3 ),
        .I1(Q[9]),
        .I2(Q[8]),
        .I3(I1),
        .I4(I10),
        .I5(Q[7]),
        .O(n_0_VGA_blue_OBUF_inst_i_14));
LUT6 #(
    .INIT(64'hFFFEFEFEFFFEFFFE)) 
     VGA_blue_OBUF_inst_i_15
       (.I0(\brick_bounce[0] [1]),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(Q[7]),
        .I4(Q[6]),
        .I5(n_0_VGA_blue_OBUF_inst_i_23),
        .O(n_0_VGA_blue_OBUF_inst_i_15));
LUT6 #(
    .INIT(64'hB0B0BBB0BBBBBBBB)) 
     VGA_blue_OBUF_inst_i_16
       (.I0(I1),
        .I1(I10),
        .I2(Q[7]),
        .I3(Q[6]),
        .I4(\n_0_brick_bounce[1][8]_i_5 ),
        .I5(\n_0_brick_bounce[1][3]_i_4 ),
        .O(n_0_VGA_blue_OBUF_inst_i_16));
CARRY4 VGA_blue_OBUF_inst_i_17
       (.CI(1'b0),
        .CO({n_0_VGA_blue_OBUF_inst_i_17,n_1_VGA_blue_OBUF_inst_i_17,n_2_VGA_blue_OBUF_inst_i_17,n_3_VGA_blue_OBUF_inst_i_17}),
        .CYINIT(1'b0),
        .DI({n_0_VGA_blue_OBUF_inst_i_24,n_0_VGA_blue_OBUF_inst_i_25,n_0_VGA_blue_OBUF_inst_i_26,n_0_VGA_blue_OBUF_inst_i_27}),
        .O(NLW_VGA_blue_OBUF_inst_i_17_O_UNCONNECTED[3:0]),
        .S({O22,n_0_VGA_blue_OBUF_inst_i_31}));
LUT3 #(
    .INIT(8'hBA)) 
     VGA_blue_OBUF_inst_i_18
       (.I0(O27[9]),
        .I1(I15[6]),
        .I2(O27[8]),
        .O(n_0_VGA_blue_OBUF_inst_i_18));
LUT3 #(
    .INIT(8'h41)) 
     VGA_blue_OBUF_inst_i_19
       (.I0(O27[9]),
        .I1(I15[6]),
        .I2(O27[8]),
        .O(n_0_VGA_blue_OBUF_inst_i_19));
LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFE)) 
     VGA_blue_OBUF_inst_i_2
       (.I0(\brick[0] [0]),
        .I1(\brick[1] [2]),
        .I2(n_0_VGA_blue_OBUF_inst_i_6),
        .I3(Q[5]),
        .I4(O27[5]),
        .I5(n_0_VGA_red_OBUF_inst_i_12),
        .O(n_0_VGA_blue_OBUF_inst_i_2));
LUT4 #(
    .INIT(16'h1001)) 
     VGA_blue_OBUF_inst_i_21
       (.I0(O27[9]),
        .I1(O27[8]),
        .I2(I44),
        .I3(I15[6]),
        .O(n_0_VGA_blue_OBUF_inst_i_21));
LUT4 #(
    .INIT(16'h4114)) 
     VGA_blue_OBUF_inst_i_22
       (.I0(O27[9]),
        .I1(I15[6]),
        .I2(O27[8]),
        .I3(I44),
        .O(n_0_VGA_blue_OBUF_inst_i_22));
(* SOFT_HLUTNM = "soft_lutpair138" *) 
   LUT3 #(
    .INIT(8'h15)) 
     VGA_blue_OBUF_inst_i_23
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[3]),
        .O(n_0_VGA_blue_OBUF_inst_i_23));
LUT4 #(
    .INIT(16'h22B2)) 
     VGA_blue_OBUF_inst_i_24
       (.I0(O27[7]),
        .I1(I15[5]),
        .I2(O27[6]),
        .I3(I15[4]),
        .O(n_0_VGA_blue_OBUF_inst_i_24));
LUT4 #(
    .INIT(16'h22B2)) 
     VGA_blue_OBUF_inst_i_25
       (.I0(O27[5]),
        .I1(I15[3]),
        .I2(O27[4]),
        .I3(I15[2]),
        .O(n_0_VGA_blue_OBUF_inst_i_25));
LUT4 #(
    .INIT(16'h22B2)) 
     VGA_blue_OBUF_inst_i_26
       (.I0(O27[3]),
        .I1(I15[1]),
        .I2(O27[2]),
        .I3(I15[0]),
        .O(n_0_VGA_blue_OBUF_inst_i_26));
LUT2 #(
    .INIT(4'hE)) 
     VGA_blue_OBUF_inst_i_27
       (.I0(O27[1]),
        .I1(O27[0]),
        .O(n_0_VGA_blue_OBUF_inst_i_27));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     VGA_blue_OBUF_inst_i_3
       (.I0(n_0_VGA_blue_OBUF_inst_i_7),
        .I1(\brick[0] [2]),
        .I2(n_0_VGA_blue_OBUF_inst_i_8),
        .I3(\brick[0] [8]),
        .I4(\brick[1] [6]),
        .I5(\brick[1] [1]),
        .O(n_0_VGA_blue_OBUF_inst_i_3));
LUT2 #(
    .INIT(4'h1)) 
     VGA_blue_OBUF_inst_i_31
       (.I0(O27[0]),
        .I1(O27[1]),
        .O(n_0_VGA_blue_OBUF_inst_i_31));
LUT5 #(
    .INIT(32'h045145D3)) 
     VGA_blue_OBUF_inst_i_34
       (.I0(O27[3]),
        .I1(I15[0]),
        .I2(S3_IBUF),
        .I3(I15[1]),
        .I4(O27[2]),
        .O(I37));
LUT2 #(
    .INIT(4'h1)) 
     VGA_blue_OBUF_inst_i_38
       (.I0(O27[0]),
        .I1(O27[1]),
        .O(I38));
LUT6 #(
    .INIT(64'h0000000000004404)) 
     VGA_blue_OBUF_inst_i_4
       (.I0(I23),
        .I1(O23),
        .I2(I28),
        .I3(I1),
        .I4(game_lost),
        .I5(n_0_pong_left_bounce_i_2),
        .O(n_0_VGA_blue_OBUF_inst_i_4));
LUT6 #(
    .INIT(64'h0800000000000000)) 
     VGA_blue_OBUF_inst_i_5
       (.I0(n_0_VGA_blue_OBUF_inst_i_9),
        .I1(Q[6]),
        .I2(Q[5]),
        .I3(I7),
        .I4(\obj_ctrl/pad_ctrl/gtOp38_in ),
        .I5(\obj_ctrl/pad_ctrl/leqOp37_in ),
        .O(n_0_VGA_blue_OBUF_inst_i_5));
LUT6 #(
    .INIT(64'hFFFF00EBFFFFFFFF)) 
     VGA_blue_OBUF_inst_i_6
       (.I0(I1),
        .I1(etat_present[1]),
        .I2(etat_present[0]),
        .I3(\n_0_FSM_sequential_etat_prochain_reg[2]_i_7 ),
        .I4(n_0_leftbounce_i_4),
        .I5(n_0_ybounce_i_2),
        .O(n_0_VGA_blue_OBUF_inst_i_6));
LUT5 #(
    .INIT(32'h004F0044)) 
     VGA_blue_OBUF_inst_i_7
       (.I0(\brick_bounce[1] [0]),
        .I1(\n_0_brick_bounce[1][0]_i_2 ),
        .I2(\brick_bounce[1] [8]),
        .I3(\n_0_brick_bounce[1][8]_i_3 ),
        .I4(\n_0_brick_bounce[1][8]_i_2 ),
        .O(n_0_VGA_blue_OBUF_inst_i_7));
LUT6 #(
    .INIT(64'h040404FF04040404)) 
     VGA_blue_OBUF_inst_i_8
       (.I0(n_0_VGA_blue_OBUF_inst_i_12),
        .I1(n_0_VGA_blue_OBUF_inst_i_13),
        .I2(n_0_VGA_blue_OBUF_inst_i_14),
        .I3(\n_0_brick_bounce[0][8]_i_3 ),
        .I4(n_0_VGA_blue_OBUF_inst_i_15),
        .I5(n_0_VGA_blue_OBUF_inst_i_16),
        .O(n_0_VGA_blue_OBUF_inst_i_8));
(* SOFT_HLUTNM = "soft_lutpair124" *) 
   LUT4 #(
    .INIT(16'h0020)) 
     VGA_blue_OBUF_inst_i_9
       (.I0(n_0_hsync_i_3),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(Q[7]),
        .O(n_0_VGA_blue_OBUF_inst_i_9));
LUT6 #(
    .INIT(64'hA0A0A0A2A2A2A0A2)) 
     VGA_green_OBUF_inst_i_1
       (.I0(O23),
        .I1(game_lost),
        .I2(I4),
        .I3(n_0_VGA_green_OBUF_inst_i_4),
        .I4(p_1_out),
        .I5(n_0_VGA_green_OBUF_inst_i_6),
        .O(VGA_green_OBUF));
LUT4 #(
    .INIT(16'hD22D)) 
     VGA_green_OBUF_inst_i_10
       (.I0(I22[3]),
        .I1(I46),
        .I2(O27[8]),
        .I3(I60),
        .O(I69[0]));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     VGA_green_OBUF_inst_i_11
       (.I0(n_0_VGA_red_OBUF_inst_i_2),
        .I1(n_0_VGA_green_OBUF_inst_i_22),
        .I2(n_0_pong_left_bounce_i_2),
        .I3(n_0_VGA_red_OBUF_inst_i_11),
        .I4(n_0_VGA_red_OBUF_inst_i_12),
        .I5(n_0_VGA_blue_OBUF_inst_i_3),
        .O(n_0_VGA_green_OBUF_inst_i_11));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     VGA_green_OBUF_inst_i_12
       (.I0(n_0_VGA_red_OBUF_inst_i_2),
        .I1(n_0_VGA_green_OBUF_inst_i_23),
        .I2(n_0_pong_left_bounce_i_2),
        .I3(n_0_VGA_red_OBUF_inst_i_11),
        .I4(n_0_VGA_red_OBUF_inst_i_12),
        .I5(n_0_VGA_blue_OBUF_inst_i_3),
        .O(n_0_VGA_green_OBUF_inst_i_12));
LUT6 #(
    .INIT(64'h0404040404FF0404)) 
     VGA_green_OBUF_inst_i_13
       (.I0(n_0_VGA_green_OBUF_inst_i_24),
        .I1(n_0_VGA_green_OBUF_inst_i_25),
        .I2(I42),
        .I3(n_0_VGA_green_OBUF_inst_i_27),
        .I4(n_0_VGA_blue_OBUF_inst_i_13),
        .I5(n_0_VGA_blue_OBUF_inst_i_14),
        .O(n_0_VGA_green_OBUF_inst_i_13));
LUT6 #(
    .INIT(64'hEAAA15551555EAAA)) 
     VGA_green_OBUF_inst_i_16
       (.I0(I22[1]),
        .I1(I22[0]),
        .I2(O[3]),
        .I3(O[2]),
        .I4(O27[6]),
        .I5(I22[2]),
        .O(I68[2]));
LUT5 #(
    .INIT(32'h807F7F80)) 
     VGA_green_OBUF_inst_i_17
       (.I0(O[2]),
        .I1(O[3]),
        .I2(I22[0]),
        .I3(O27[5]),
        .I4(I22[1]),
        .O(I68[1]));
LUT4 #(
    .INIT(16'h6999)) 
     VGA_green_OBUF_inst_i_18
       (.I0(O27[4]),
        .I1(I22[0]),
        .I2(O[3]),
        .I3(O[2]),
        .O(I68[0]));
LUT6 #(
    .INIT(64'h0000000001010111)) 
     VGA_green_OBUF_inst_i_2
       (.I0(n_0_vsync_i_2),
        .I1(O27[9]),
        .I2(Q[9]),
        .I3(Q[8]),
        .I4(Q[7]),
        .I5(p_15_in),
        .O(O23));
LUT5 #(
    .INIT(32'hEAAAAAAA)) 
     VGA_green_OBUF_inst_i_22
       (.I0(n_0_VGA_red_OBUF_inst_i_10),
        .I1(I9),
        .I2(I51),
        .I3(I50),
        .I4(I8),
        .O(n_0_VGA_green_OBUF_inst_i_22));
LUT6 #(
    .INIT(64'hFEEEEEEEEEEEEEEE)) 
     VGA_green_OBUF_inst_i_23
       (.I0(n_0_VGA_red_OBUF_inst_i_10),
        .I1(O37),
        .I2(I8),
        .I3(I50),
        .I4(I51),
        .I5(I9),
        .O(n_0_VGA_green_OBUF_inst_i_23));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAAAB)) 
     VGA_green_OBUF_inst_i_24
       (.I0(\brick_bounce[0] [3]),
        .I1(O27[2]),
        .I2(\n_0_ycord[6]_i_2 ),
        .I3(O27[3]),
        .I4(\n_0_brick_bounce[0][8]_i_4 ),
        .I5(n_0_VGA_green_OBUF_inst_i_39),
        .O(n_0_VGA_green_OBUF_inst_i_24));
(* SOFT_HLUTNM = "soft_lutpair116" *) 
   LUT5 #(
    .INIT(32'hFFFFFF40)) 
     VGA_green_OBUF_inst_i_25
       (.I0(\n_0_brick_bounce[1][8]_i_5 ),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(Q[9]),
        .I4(Q[8]),
        .O(n_0_VGA_green_OBUF_inst_i_25));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAAAB)) 
     VGA_green_OBUF_inst_i_27
       (.I0(\brick_bounce[0] [7]),
        .I1(O27[2]),
        .I2(\n_0_ycord[6]_i_2 ),
        .I3(O27[3]),
        .I4(\n_0_brick_bounce[0][8]_i_4 ),
        .I5(n_0_VGA_green_OBUF_inst_i_39),
        .O(n_0_VGA_green_OBUF_inst_i_27));
LUT2 #(
    .INIT(4'h6)) 
     VGA_green_OBUF_inst_i_29
       (.I0(O27[2]),
        .I1(O[2]),
        .O(I67[2]));
LUT2 #(
    .INIT(4'h9)) 
     VGA_green_OBUF_inst_i_30
       (.I0(O[1]),
        .I1(O27[1]),
        .O(I67[1]));
LUT2 #(
    .INIT(4'h9)) 
     VGA_green_OBUF_inst_i_31
       (.I0(O[0]),
        .I1(O27[0]),
        .O(I67[0]));
(* SOFT_HLUTNM = "soft_lutpair110" *) 
   LUT5 #(
    .INIT(32'hE0000000)) 
     VGA_green_OBUF_inst_i_39
       (.I0(O27[1]),
        .I1(O27[2]),
        .I2(O27[5]),
        .I3(O27[3]),
        .I4(O27[4]),
        .O(n_0_VGA_green_OBUF_inst_i_39));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     VGA_green_OBUF_inst_i_4
       (.I0(n_0_VGA_red_OBUF_inst_i_2),
        .I1(I23),
        .I2(n_0_VGA_blue_OBUF_inst_i_3),
        .I3(n_0_VGA_green_OBUF_inst_i_7),
        .I4(n_0_pong_left_bounce_i_2),
        .I5(n_0_VGA_red_OBUF_inst_i_10),
        .O(n_0_VGA_green_OBUF_inst_i_4));
MUXF7 VGA_green_OBUF_inst_i_6
       (.I0(n_0_VGA_green_OBUF_inst_i_11),
        .I1(n_0_VGA_green_OBUF_inst_i_12),
        .O(n_0_VGA_green_OBUF_inst_i_6),
        .S(I56));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     VGA_green_OBUF_inst_i_7
       (.I0(n_0_VGA_red_OBUF_inst_i_11),
        .I1(\brick[0] [6]),
        .I2(\brick[1] [3]),
        .I3(n_0_VGA_red_OBUF_inst_i_23),
        .I4(n_0_VGA_red_OBUF_inst_i_22),
        .I5(n_0_VGA_green_OBUF_inst_i_13),
        .O(n_0_VGA_green_OBUF_inst_i_7));
LUT1 #(
    .INIT(2'h1)) 
     VGA_green_OBUF_inst_i_9
       (.I0(O27[9]),
        .O(I69[1]));
LUT5 #(
    .INIT(32'h0000FFFE)) 
     VGA_red_OBUF_inst_i_1
       (.I0(n_0_VGA_red_OBUF_inst_i_2),
        .I1(game_lost),
        .I2(n_0_VGA_red_OBUF_inst_i_3),
        .I3(I5),
        .I4(I6),
        .O(VGA_red_OBUF));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFF80FF)) 
     VGA_red_OBUF_inst_i_10
       (.I0(\obj_ctrl/pad_ctrl/leqOp37_in ),
        .I1(\obj_ctrl/pad_ctrl/gtOp38_in ),
        .I2(n_0_VGA_red_OBUF_inst_i_20),
        .I3(n_0_ybounce_i_2),
        .I4(n_0_leftbounce_i_4),
        .I5(n_0_rightbounce_i_2),
        .O(n_0_VGA_red_OBUF_inst_i_10));
LUT6 #(
    .INIT(64'h101010FF10101010)) 
     VGA_red_OBUF_inst_i_11
       (.I0(\brick_bounce[0] [0]),
        .I1(\n_0_brick_bounce[0][8]_i_3 ),
        .I2(\n_0_brick_bounce[1][0]_i_2 ),
        .I3(\n_0_brick_bounce[1][2]_i_4 ),
        .I4(n_0_VGA_red_OBUF_inst_i_21),
        .I5(\n_0_brick_bounce[1][2]_i_3 ),
        .O(n_0_VGA_red_OBUF_inst_i_11));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     VGA_red_OBUF_inst_i_12
       (.I0(\brick[0] [7]),
        .I1(\brick[0] [3]),
        .I2(n_0_VGA_red_OBUF_inst_i_22),
        .I3(n_0_VGA_red_OBUF_inst_i_23),
        .I4(\brick[1] [3]),
        .I5(\brick[0] [6]),
        .O(n_0_VGA_red_OBUF_inst_i_12));
CARRY4 VGA_red_OBUF_inst_i_14
       (.CI(1'b0),
        .CO({n_0_VGA_red_OBUF_inst_i_14,n_1_VGA_red_OBUF_inst_i_14,n_2_VGA_red_OBUF_inst_i_14,n_3_VGA_red_OBUF_inst_i_14}),
        .CYINIT(1'b0),
        .DI({n_0_VGA_red_OBUF_inst_i_24,n_0_VGA_red_OBUF_inst_i_25,n_0_VGA_red_OBUF_inst_i_26,n_0_VGA_red_OBUF_inst_i_27}),
        .O(NLW_VGA_red_OBUF_inst_i_14_O_UNCONNECTED[3:0]),
        .S({n_0_VGA_red_OBUF_inst_i_28,n_0_VGA_red_OBUF_inst_i_29,n_0_VGA_red_OBUF_inst_i_30,n_0_VGA_red_OBUF_inst_i_31}));
LUT4 #(
    .INIT(16'h2F02)) 
     VGA_red_OBUF_inst_i_15
       (.I0(Q[8]),
        .I1(plusOp14[7]),
        .I2(plusOp14[8]),
        .I3(Q[9]),
        .O(n_0_VGA_red_OBUF_inst_i_15));
LUT4 #(
    .INIT(16'h9009)) 
     VGA_red_OBUF_inst_i_16
       (.I0(Q[8]),
        .I1(plusOp14[7]),
        .I2(plusOp14[8]),
        .I3(Q[9]),
        .O(n_0_VGA_red_OBUF_inst_i_16));
LUT2 #(
    .INIT(4'h9)) 
     VGA_red_OBUF_inst_i_18
       (.I0(Q[9]),
        .I1(plusOp16[8]),
        .O(I66[1]));
LUT2 #(
    .INIT(4'h9)) 
     VGA_red_OBUF_inst_i_19
       (.I0(Q[8]),
        .I1(plusOp16[7]),
        .O(I66[0]));
LUT6 #(
    .INIT(64'hAAAAAAA8AAA8AAA8)) 
     VGA_red_OBUF_inst_i_2
       (.I0(n_0_pad_far_left_bounce_i_2),
        .I1(I33),
        .I2(I31),
        .I3(I27),
        .I4(n_3_VGA_red_OBUF_inst_i_8),
        .I5(O51),
        .O(n_0_VGA_red_OBUF_inst_i_2));
LUT6 #(
    .INIT(64'h0000000000400000)) 
     VGA_red_OBUF_inst_i_20
       (.I0(\n_0_brick_bounce[1][8]_i_8 ),
        .I1(n_0_hsync_i_3),
        .I2(Q[6]),
        .I3(Q[5]),
        .I4(I10),
        .I5(I1),
        .O(n_0_VGA_red_OBUF_inst_i_20));
LUT6 #(
    .INIT(64'hEFEEEFEEEFEEFFFF)) 
     VGA_red_OBUF_inst_i_21
       (.I0(\brick_bounce[1] [2]),
        .I1(\n_0_brick_bounce[1][8]_i_10 ),
        .I2(n_0_VGA_red_OBUF_inst_i_41),
        .I3(O27[1]),
        .I4(\n_0_ycord[7]_i_2 ),
        .I5(O27[3]),
        .O(n_0_VGA_red_OBUF_inst_i_21));
LUT6 #(
    .INIT(64'h00000000111F0000)) 
     VGA_red_OBUF_inst_i_22
       (.I0(\brick_bounce[0] [5]),
        .I1(\n_0_brick_bounce[0][8]_i_3 ),
        .I2(\brick_bounce[1] [5]),
        .I3(\n_0_brick_bounce[1][8]_i_3 ),
        .I4(\n_0_brick_bounce[1][5]_i_5 ),
        .I5(n_0_VGA_red_OBUF_inst_i_42),
        .O(n_0_VGA_red_OBUF_inst_i_22));
LUT6 #(
    .INIT(64'h0000000000000057)) 
     VGA_red_OBUF_inst_i_23
       (.I0(n_0_VGA_red_OBUF_inst_i_43),
        .I1(\brick_bounce[0] [4]),
        .I2(\n_0_brick_bounce[0][8]_i_3 ),
        .I3(Q[7]),
        .I4(n_0_VGA_red_OBUF_inst_i_44),
        .I5(I11),
        .O(n_0_VGA_red_OBUF_inst_i_23));
LUT4 #(
    .INIT(16'h2F02)) 
     VGA_red_OBUF_inst_i_24
       (.I0(Q[6]),
        .I1(plusOp14[5]),
        .I2(plusOp14[6]),
        .I3(Q[7]),
        .O(n_0_VGA_red_OBUF_inst_i_24));
LUT4 #(
    .INIT(16'h2F02)) 
     VGA_red_OBUF_inst_i_25
       (.I0(Q[4]),
        .I1(plusOp14[3]),
        .I2(plusOp14[4]),
        .I3(Q[5]),
        .O(n_0_VGA_red_OBUF_inst_i_25));
LUT4 #(
    .INIT(16'h2F02)) 
     VGA_red_OBUF_inst_i_26
       (.I0(Q[2]),
        .I1(plusOp14[1]),
        .I2(plusOp14[2]),
        .I3(Q[3]),
        .O(n_0_VGA_red_OBUF_inst_i_26));
LUT4 #(
    .INIT(16'h20F2)) 
     VGA_red_OBUF_inst_i_27
       (.I0(Q[0]),
        .I1(S3_IBUF),
        .I2(Q[1]),
        .I3(plusOp14[0]),
        .O(n_0_VGA_red_OBUF_inst_i_27));
LUT4 #(
    .INIT(16'h9009)) 
     VGA_red_OBUF_inst_i_28
       (.I0(Q[6]),
        .I1(plusOp14[5]),
        .I2(plusOp14[6]),
        .I3(Q[7]),
        .O(n_0_VGA_red_OBUF_inst_i_28));
LUT4 #(
    .INIT(16'h9009)) 
     VGA_red_OBUF_inst_i_29
       (.I0(Q[4]),
        .I1(plusOp14[3]),
        .I2(plusOp14[4]),
        .I3(Q[5]),
        .O(n_0_VGA_red_OBUF_inst_i_29));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     VGA_red_OBUF_inst_i_3
       (.I0(n_0_VGA_red_OBUF_inst_i_10),
        .I1(n_0_pong_left_bounce_i_2),
        .I2(n_0_VGA_red_OBUF_inst_i_11),
        .I3(n_0_VGA_red_OBUF_inst_i_12),
        .I4(n_0_VGA_blue_OBUF_inst_i_3),
        .I5(I23),
        .O(n_0_VGA_red_OBUF_inst_i_3));
LUT4 #(
    .INIT(16'h9009)) 
     VGA_red_OBUF_inst_i_30
       (.I0(Q[2]),
        .I1(plusOp14[1]),
        .I2(plusOp14[2]),
        .I3(Q[3]),
        .O(n_0_VGA_red_OBUF_inst_i_30));
LUT4 #(
    .INIT(16'h9009)) 
     VGA_red_OBUF_inst_i_31
       (.I0(Q[1]),
        .I1(plusOp14[0]),
        .I2(Q[0]),
        .I3(S3_IBUF),
        .O(n_0_VGA_red_OBUF_inst_i_31));
LUT2 #(
    .INIT(4'h9)) 
     VGA_red_OBUF_inst_i_35
       (.I0(Q[7]),
        .I1(plusOp16[6]),
        .O(I65[3]));
LUT2 #(
    .INIT(4'h9)) 
     VGA_red_OBUF_inst_i_36
       (.I0(Q[6]),
        .I1(plusOp16[5]),
        .O(I65[2]));
LUT2 #(
    .INIT(4'h9)) 
     VGA_red_OBUF_inst_i_37
       (.I0(Q[5]),
        .I1(plusOp16[4]),
        .O(I65[1]));
LUT2 #(
    .INIT(4'h9)) 
     VGA_red_OBUF_inst_i_38
       (.I0(Q[4]),
        .I1(plusOp16[3]),
        .O(I65[0]));
(* SOFT_HLUTNM = "soft_lutpair110" *) 
   LUT3 #(
    .INIT(8'h7F)) 
     VGA_red_OBUF_inst_i_41
       (.I0(O27[4]),
        .I1(O27[3]),
        .I2(O27[2]),
        .O(n_0_VGA_red_OBUF_inst_i_41));
LUT6 #(
    .INIT(64'hFBFBFBFFFBFFFBFB)) 
     VGA_red_OBUF_inst_i_42
       (.I0(\n_0_brick_bounce[1][5]_i_3 ),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(I1),
        .I4(etat_present[1]),
        .I5(etat_present[0]),
        .O(n_0_VGA_red_OBUF_inst_i_42));
LUT6 #(
    .INIT(64'hEFEEEFEEEFEEFFFF)) 
     VGA_red_OBUF_inst_i_43
       (.I0(\brick_bounce[1] [4]),
        .I1(\n_0_brick_bounce[1][8]_i_10 ),
        .I2(n_0_VGA_red_OBUF_inst_i_41),
        .I3(O27[1]),
        .I4(\n_0_ycord[7]_i_2 ),
        .I5(O27[3]),
        .O(n_0_VGA_red_OBUF_inst_i_43));
LUT6 #(
    .INIT(64'hFFF0F0F00F1F0FFF)) 
     VGA_red_OBUF_inst_i_44
       (.I0(Q[2]),
        .I1(n_0_leftbounce_i_6),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(Q[6]),
        .O(n_0_VGA_red_OBUF_inst_i_44));
LUT2 #(
    .INIT(4'h9)) 
     VGA_red_OBUF_inst_i_51
       (.I0(Q[3]),
        .I1(plusOp16[2]),
        .O(I64[3]));
LUT2 #(
    .INIT(4'h9)) 
     VGA_red_OBUF_inst_i_52
       (.I0(Q[2]),
        .I1(plusOp16[1]),
        .O(I64[2]));
LUT2 #(
    .INIT(4'h9)) 
     VGA_red_OBUF_inst_i_53
       (.I0(Q[1]),
        .I1(plusOp16[0]),
        .O(I64[1]));
LUT1 #(
    .INIT(2'h2)) 
     VGA_red_OBUF_inst_i_54
       (.I0(Q[0]),
        .O(I64[0]));
CARRY4 VGA_red_OBUF_inst_i_8
       (.CI(n_0_VGA_red_OBUF_inst_i_14),
        .CO({NLW_VGA_red_OBUF_inst_i_8_CO_UNCONNECTED[3:1],n_3_VGA_red_OBUF_inst_i_8}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,n_0_VGA_red_OBUF_inst_i_15}),
        .O(NLW_VGA_red_OBUF_inst_i_8_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,n_0_VGA_red_OBUF_inst_i_16}));
LUT6 #(
    .INIT(64'hF5555555E0000000)) 
     barrier_bounce_i_1
       (.I0(O24),
        .I1(I23),
        .I2(O37),
        .I3(I56),
        .I4(p_1_out),
        .I5(barrier_bounce),
        .O(O36));
LUT4 #(
    .INIT(16'h22B2)) 
     barrier_bounce_i_10
       (.I0(O27[5]),
        .I1(I22[1]),
        .I2(O27[4]),
        .I3(I22[0]),
        .O(n_0_barrier_bounce_i_10));
LUT4 #(
    .INIT(16'h22B2)) 
     barrier_bounce_i_11
       (.I0(O27[3]),
        .I1(O[3]),
        .I2(O27[2]),
        .I3(O[2]),
        .O(n_0_barrier_bounce_i_11));
LUT4 #(
    .INIT(16'h22B2)) 
     barrier_bounce_i_12
       (.I0(O27[1]),
        .I1(O[1]),
        .I2(O27[0]),
        .I3(O[0]),
        .O(n_0_barrier_bounce_i_12));
LUT4 #(
    .INIT(16'h9009)) 
     barrier_bounce_i_13
       (.I0(I22[3]),
        .I1(O27[7]),
        .I2(I22[2]),
        .I3(O27[6]),
        .O(n_0_barrier_bounce_i_13));
LUT4 #(
    .INIT(16'h9009)) 
     barrier_bounce_i_14
       (.I0(I22[1]),
        .I1(O27[5]),
        .I2(I22[0]),
        .I3(O27[4]),
        .O(n_0_barrier_bounce_i_14));
LUT4 #(
    .INIT(16'h9009)) 
     barrier_bounce_i_15
       (.I0(O[3]),
        .I1(O27[3]),
        .I2(O[2]),
        .I3(O27[2]),
        .O(n_0_barrier_bounce_i_15));
LUT4 #(
    .INIT(16'h9009)) 
     barrier_bounce_i_16
       (.I0(O[1]),
        .I1(O27[1]),
        .I2(O[0]),
        .I3(O27[0]),
        .O(n_0_barrier_bounce_i_16));
LUT6 #(
    .INIT(64'hFF08000000000000)) 
     barrier_bounce_i_2
       (.I0(Q[2]),
        .I1(n_0_leftbounce_i_6),
        .I2(n_0_hsync_i_2),
        .I3(Q[6]),
        .I4(n_0_barrier_bounce_i_4),
        .I5(I7),
        .O(O37));
(* SOFT_HLUTNM = "soft_lutpair113" *) 
   LUT5 #(
    .INIT(32'h00000020)) 
     barrier_bounce_i_4
       (.I0(S1_IBUF),
        .I1(Q[7]),
        .I2(Q[8]),
        .I3(Q[9]),
        .I4(n_0_barrier_bounce_i_8),
        .O(n_0_barrier_bounce_i_4));
LUT3 #(
    .INIT(8'hDC)) 
     barrier_bounce_i_6
       (.I0(I60),
        .I1(O27[9]),
        .I2(O27[8]),
        .O(n_0_barrier_bounce_i_6));
LUT3 #(
    .INIT(8'h21)) 
     barrier_bounce_i_7
       (.I0(I60),
        .I1(O27[9]),
        .I2(O27[8]),
        .O(n_0_barrier_bounce_i_7));
(* SOFT_HLUTNM = "soft_lutpair107" *) 
   LUT5 #(
    .INIT(32'hAAAAAAA8)) 
     barrier_bounce_i_8
       (.I0(Q[6]),
        .I1(Q[2]),
        .I2(Q[5]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(n_0_barrier_bounce_i_8));
LUT4 #(
    .INIT(16'h22B2)) 
     barrier_bounce_i_9
       (.I0(O27[7]),
        .I1(I22[3]),
        .I2(O27[6]),
        .I3(I22[2]),
        .O(n_0_barrier_bounce_i_9));
CARRY4 barrier_bounce_reg_i_3
       (.CI(n_0_barrier_bounce_reg_i_5),
        .CO({NLW_barrier_bounce_reg_i_3_CO_UNCONNECTED[3:1],I56}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,n_0_barrier_bounce_i_6}),
        .O(NLW_barrier_bounce_reg_i_3_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,n_0_barrier_bounce_i_7}));
CARRY4 barrier_bounce_reg_i_5
       (.CI(1'b0),
        .CO({n_0_barrier_bounce_reg_i_5,n_1_barrier_bounce_reg_i_5,n_2_barrier_bounce_reg_i_5,n_3_barrier_bounce_reg_i_5}),
        .CYINIT(1'b0),
        .DI({n_0_barrier_bounce_i_9,n_0_barrier_bounce_i_10,n_0_barrier_bounce_i_11,n_0_barrier_bounce_i_12}),
        .O(NLW_barrier_bounce_reg_i_5_O_UNCONNECTED[3:0]),
        .S({n_0_barrier_bounce_i_13,n_0_barrier_bounce_i_14,n_0_barrier_bounce_i_15,n_0_barrier_bounce_i_16}));
(* SOFT_HLUTNM = "soft_lutpair135" *) 
   LUT3 #(
    .INIT(8'hF2)) 
     \brick_bounce[0][0]_i_1 
       (.I0(\brick[0] [0]),
        .I1(\n_0_brick_bounce[1][8]_i_4 ),
        .I2(\brick_bounce[0] [0]),
        .O(O16));
(* SOFT_HLUTNM = "soft_lutpair134" *) 
   LUT3 #(
    .INIT(8'h02)) 
     \brick_bounce[0][0]_i_2 
       (.I0(\n_0_brick_bounce[1][0]_i_2 ),
        .I1(\n_0_brick_bounce[0][8]_i_3 ),
        .I2(\brick_bounce[0] [0]),
        .O(\brick[0] [0]));
(* SOFT_HLUTNM = "soft_lutpair136" *) 
   LUT3 #(
    .INIT(8'hF2)) 
     \brick_bounce[0][1]_i_1 
       (.I0(\brick[0] [1]),
        .I1(\n_0_brick_bounce[1][8]_i_4 ),
        .I2(\brick_bounce[0] [1]),
        .O(O15));
LUT6 #(
    .INIT(64'h0000000000000200)) 
     \brick_bounce[0][1]_i_2 
       (.I0(\n_0_brick_bounce[1][5]_i_5 ),
        .I1(I7),
        .I2(\brick_bounce[0] [1]),
        .I3(\n_0_brick_bounce[1][3]_i_4 ),
        .I4(\n_0_brick_bounce[1][5]_i_3 ),
        .I5(\n_0_brick_bounce[0][8]_i_3 ),
        .O(\brick[0] [1]));
(* SOFT_HLUTNM = "soft_lutpair126" *) 
   LUT3 #(
    .INIT(8'hF2)) 
     \brick_bounce[0][2]_i_1 
       (.I0(\brick[0] [2]),
        .I1(\n_0_brick_bounce[1][8]_i_4 ),
        .I2(\brick_bounce[0] [2]),
        .O(O14));
LUT4 #(
    .INIT(16'h0002)) 
     \brick_bounce[0][2]_i_2 
       (.I0(\n_0_brick_bounce[1][2]_i_3 ),
        .I1(\brick_bounce[0] [2]),
        .I2(\n_0_brick_bounce[0][8]_i_3 ),
        .I3(\n_0_brick_bounce[1][2]_i_4 ),
        .O(\brick[0] [2]));
(* SOFT_HLUTNM = "soft_lutpair136" *) 
   LUT3 #(
    .INIT(8'hF2)) 
     \brick_bounce[0][3]_i_1 
       (.I0(\brick[0] [3]),
        .I1(\n_0_brick_bounce[1][8]_i_4 ),
        .I2(\brick_bounce[0] [3]),
        .O(O13));
LUT6 #(
    .INIT(64'h0000000000001011)) 
     \brick_bounce[0][3]_i_2 
       (.I0(I12),
        .I1(O26),
        .I2(\n_0_brick_bounce[1][7]_i_5 ),
        .I3(\n_0_brick_bounce[1][3]_i_4 ),
        .I4(\n_0_brick_bounce[0][8]_i_3 ),
        .I5(\brick_bounce[0] [3]),
        .O(\brick[0] [3]));
(* SOFT_HLUTNM = "soft_lutpair135" *) 
   LUT3 #(
    .INIT(8'hF2)) 
     \brick_bounce[0][4]_i_1 
       (.I0(\brick[0] [4]),
        .I1(\n_0_brick_bounce[1][8]_i_4 ),
        .I2(\brick_bounce[0] [4]),
        .O(O12));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \brick_bounce[0][4]_i_2 
       (.I0(I11),
        .I1(\n_0_brick_bounce[1][8]_i_9 ),
        .I2(\n_0_brick_bounce[1][6]_i_4 ),
        .I3(Q[7]),
        .I4(\n_0_brick_bounce[0][8]_i_3 ),
        .I5(\brick_bounce[0] [4]),
        .O(\brick[0] [4]));
(* SOFT_HLUTNM = "soft_lutpair127" *) 
   LUT3 #(
    .INIT(8'hF2)) 
     \brick_bounce[0][5]_i_1 
       (.I0(\brick[0] [5]),
        .I1(\n_0_brick_bounce[1][8]_i_4 ),
        .I2(\brick_bounce[0] [5]),
        .O(O11));
LUT6 #(
    .INIT(64'h0000000000000400)) 
     \brick_bounce[0][5]_i_2 
       (.I0(\n_0_brick_bounce[1][5]_i_3 ),
        .I1(Q[8]),
        .I2(I12),
        .I3(\n_0_brick_bounce[1][5]_i_5 ),
        .I4(\n_0_brick_bounce[0][8]_i_3 ),
        .I5(\brick_bounce[0] [5]),
        .O(\brick[0] [5]));
(* SOFT_HLUTNM = "soft_lutpair130" *) 
   LUT3 #(
    .INIT(8'hF2)) 
     \brick_bounce[0][6]_i_1 
       (.I0(\brick[0] [6]),
        .I1(\n_0_brick_bounce[1][8]_i_4 ),
        .I2(\brick_bounce[0] [6]),
        .O(O10));
LUT6 #(
    .INIT(64'h0000000000000100)) 
     \brick_bounce[0][6]_i_2 
       (.I0(I11),
        .I1(\n_0_brick_bounce[1][8]_i_9 ),
        .I2(\n_0_brick_bounce[1][6]_i_4 ),
        .I3(Q[7]),
        .I4(\n_0_brick_bounce[0][8]_i_3 ),
        .I5(\brick_bounce[0] [6]),
        .O(\brick[0] [6]));
(* SOFT_HLUTNM = "soft_lutpair128" *) 
   LUT3 #(
    .INIT(8'hF2)) 
     \brick_bounce[0][7]_i_1 
       (.I0(\brick[0] [7]),
        .I1(\n_0_brick_bounce[1][8]_i_4 ),
        .I2(\brick_bounce[0] [7]),
        .O(O9));
LUT6 #(
    .INIT(64'h0000000000000B08)) 
     \brick_bounce[0][7]_i_2 
       (.I0(\n_0_brick_bounce[1][7]_i_3 ),
        .I1(Q[9]),
        .I2(\n_0_brick_bounce[1][7]_i_4 ),
        .I3(\n_0_brick_bounce[1][7]_i_5 ),
        .I4(\n_0_brick_bounce[0][8]_i_3 ),
        .I5(\brick_bounce[0] [7]),
        .O(\brick[0] [7]));
(* SOFT_HLUTNM = "soft_lutpair129" *) 
   LUT3 #(
    .INIT(8'hF2)) 
     \brick_bounce[0][8]_i_1 
       (.I0(\brick[0] [8]),
        .I1(\n_0_brick_bounce[1][8]_i_4 ),
        .I2(\brick_bounce[0] [8]),
        .O(O8));
(* SOFT_HLUTNM = "soft_lutpair134" *) 
   LUT3 #(
    .INIT(8'h02)) 
     \brick_bounce[0][8]_i_2 
       (.I0(\n_0_brick_bounce[1][8]_i_2 ),
        .I1(\n_0_brick_bounce[0][8]_i_3 ),
        .I2(\brick_bounce[0] [8]),
        .O(\brick[0] [8]));
LUT6 #(
    .INIT(64'hDDDDDDDDDDDFCFCF)) 
     \brick_bounce[0][8]_i_3 
       (.I0(n_0_pad_far_left_bounce_i_6),
        .I1(\n_0_brick_bounce[0][8]_i_4 ),
        .I2(O27[3]),
        .I3(O27[0]),
        .I4(O27[1]),
        .I5(O27[2]),
        .O(\n_0_brick_bounce[0][8]_i_3 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
     \brick_bounce[0][8]_i_4 
       (.I0(O27[7]),
        .I1(O27[8]),
        .I2(O27[6]),
        .I3(O27[4]),
        .I4(O27[5]),
        .I5(O27[9]),
        .O(\n_0_brick_bounce[0][8]_i_4 ));
LUT4 #(
    .INIT(16'hF0F2)) 
     \brick_bounce[1][0]_i_1 
       (.I0(\n_0_brick_bounce[1][0]_i_2 ),
        .I1(\n_0_brick_bounce[1][8]_i_3 ),
        .I2(\brick_bounce[1] [0]),
        .I3(\n_0_brick_bounce[1][8]_i_4 ),
        .O(O56));
LUT6 #(
    .INIT(64'h000D0000000D000D)) 
     \brick_bounce[1][0]_i_2 
       (.I0(\n_0_brick_bounce[1][8]_i_5 ),
        .I1(\n_0_brick_bounce[1][0]_i_3 ),
        .I2(\n_0_brick_bounce[1][0]_i_4 ),
        .I3(Q[9]),
        .I4(I1),
        .I5(I10),
        .O(\n_0_brick_bounce[1][0]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair119" *) 
   LUT4 #(
    .INIT(16'hFFFE)) 
     \brick_bounce[1][0]_i_3 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(Q[9]),
        .I3(Q[8]),
        .O(\n_0_brick_bounce[1][0]_i_3 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEA00)) 
     \brick_bounce[1][0]_i_4 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[7]),
        .O(\n_0_brick_bounce[1][0]_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair133" *) 
   LUT3 #(
    .INIT(8'hF2)) 
     \brick_bounce[1][1]_i_1 
       (.I0(\brick[1] [1]),
        .I1(\n_0_brick_bounce[1][8]_i_4 ),
        .I2(\brick_bounce[1] [1]),
        .O(O7));
LUT6 #(
    .INIT(64'h0000000200000000)) 
     \brick_bounce[1][1]_i_2 
       (.I0(\n_0_brick_bounce[1][5]_i_5 ),
        .I1(I7),
        .I2(\brick_bounce[1] [1]),
        .I3(\n_0_brick_bounce[1][8]_i_3 ),
        .I4(\n_0_brick_bounce[1][5]_i_3 ),
        .I5(\n_0_brick_bounce[1][3]_i_4 ),
        .O(\brick[1] [1]));
(* SOFT_HLUTNM = "soft_lutpair133" *) 
   LUT3 #(
    .INIT(8'hF2)) 
     \brick_bounce[1][2]_i_1 
       (.I0(\brick[1] [2]),
        .I1(\n_0_brick_bounce[1][8]_i_4 ),
        .I2(\brick_bounce[1] [2]),
        .O(O6));
LUT4 #(
    .INIT(16'h0002)) 
     \brick_bounce[1][2]_i_2 
       (.I0(\n_0_brick_bounce[1][2]_i_3 ),
        .I1(\brick_bounce[1] [2]),
        .I2(\n_0_brick_bounce[1][8]_i_3 ),
        .I3(\n_0_brick_bounce[1][2]_i_4 ),
        .O(\brick[1] [2]));
(* SOFT_HLUTNM = "soft_lutpair116" *) 
   LUT5 #(
    .INIT(32'hFFFFFFD0)) 
     \brick_bounce[1][2]_i_3 
       (.I0(\n_0_brick_bounce[1][8]_i_5 ),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(Q[9]),
        .I4(Q[8]),
        .O(\n_0_brick_bounce[1][2]_i_3 ));
LUT6 #(
    .INIT(64'h8F8F8F8F8FFFFF8F)) 
     \brick_bounce[1][2]_i_4 
       (.I0(Q[7]),
        .I1(\n_0_brick_bounce[1][8]_i_9 ),
        .I2(\n_0_brick_bounce[1][3]_i_4 ),
        .I3(etat_present[0]),
        .I4(etat_present[1]),
        .I5(I1),
        .O(\n_0_brick_bounce[1][2]_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair130" *) 
   LUT3 #(
    .INIT(8'hF2)) 
     \brick_bounce[1][3]_i_1 
       (.I0(\brick[1] [3]),
        .I1(\n_0_brick_bounce[1][8]_i_4 ),
        .I2(\brick_bounce[1] [3]),
        .O(O5));
LUT6 #(
    .INIT(64'h0000000000001011)) 
     \brick_bounce[1][3]_i_2 
       (.I0(I12),
        .I1(O26),
        .I2(\n_0_brick_bounce[1][7]_i_5 ),
        .I3(\n_0_brick_bounce[1][3]_i_4 ),
        .I4(\n_0_brick_bounce[1][8]_i_3 ),
        .I5(\brick_bounce[1] [3]),
        .O(\brick[1] [3]));
LUT6 #(
    .INIT(64'hAAAAAAA8AAA8AAA8)) 
     \brick_bounce[1][3]_i_3 
       (.I0(Q[8]),
        .I1(Q[5]),
        .I2(Q[7]),
        .I3(Q[6]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(O26));
LUT2 #(
    .INIT(4'h1)) 
     \brick_bounce[1][3]_i_4 
       (.I0(Q[8]),
        .I1(Q[9]),
        .O(\n_0_brick_bounce[1][3]_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair129" *) 
   LUT3 #(
    .INIT(8'hF2)) 
     \brick_bounce[1][4]_i_1 
       (.I0(\brick[1] [4]),
        .I1(\n_0_brick_bounce[1][8]_i_4 ),
        .I2(\brick_bounce[1] [4]),
        .O(O4));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \brick_bounce[1][4]_i_2 
       (.I0(I11),
        .I1(\n_0_brick_bounce[1][8]_i_9 ),
        .I2(\n_0_brick_bounce[1][6]_i_4 ),
        .I3(Q[7]),
        .I4(\n_0_brick_bounce[1][8]_i_3 ),
        .I5(\brick_bounce[1] [4]),
        .O(\brick[1] [4]));
(* SOFT_HLUTNM = "soft_lutpair128" *) 
   LUT3 #(
    .INIT(8'hF2)) 
     \brick_bounce[1][5]_i_1 
       (.I0(\brick[1] [5]),
        .I1(\n_0_brick_bounce[1][8]_i_4 ),
        .I2(\brick_bounce[1] [5]),
        .O(O3));
LUT6 #(
    .INIT(64'h0000000000000400)) 
     \brick_bounce[1][5]_i_2 
       (.I0(\n_0_brick_bounce[1][5]_i_3 ),
        .I1(Q[8]),
        .I2(I12),
        .I3(\n_0_brick_bounce[1][5]_i_5 ),
        .I4(\n_0_brick_bounce[1][8]_i_3 ),
        .I5(\brick_bounce[1] [5]),
        .O(\brick[1] [5]));
(* SOFT_HLUTNM = "soft_lutpair111" *) 
   LUT5 #(
    .INIT(32'hAAA8A8A8)) 
     \brick_bounce[1][5]_i_3 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(\n_0_brick_bounce[1][5]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair132" *) 
   LUT3 #(
    .INIT(8'hAE)) 
     \brick_bounce[1][5]_i_5 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\n_0_brick_bounce[1][8]_i_5 ),
        .O(\n_0_brick_bounce[1][5]_i_5 ));
(* SOFT_HLUTNM = "soft_lutpair127" *) 
   LUT3 #(
    .INIT(8'hF2)) 
     \brick_bounce[1][6]_i_1 
       (.I0(\brick[1] [6]),
        .I1(\n_0_brick_bounce[1][8]_i_4 ),
        .I2(\brick_bounce[1] [6]),
        .O(O2));
LUT6 #(
    .INIT(64'h0000000000000100)) 
     \brick_bounce[1][6]_i_2 
       (.I0(I11),
        .I1(\n_0_brick_bounce[1][8]_i_9 ),
        .I2(\n_0_brick_bounce[1][6]_i_4 ),
        .I3(Q[7]),
        .I4(\n_0_brick_bounce[1][8]_i_3 ),
        .I5(\brick_bounce[1] [6]),
        .O(\brick[1] [6]));
LUT6 #(
    .INIT(64'h000000000155FFFF)) 
     \brick_bounce[1][6]_i_4 
       (.I0(Q[4]),
        .I1(n_0_leftbounce_i_6),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\n_0_brick_bounce[1][6]_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair126" *) 
   LUT3 #(
    .INIT(8'hF2)) 
     \brick_bounce[1][7]_i_1 
       (.I0(\brick[1] [7]),
        .I1(\n_0_brick_bounce[1][8]_i_4 ),
        .I2(\brick_bounce[1] [7]),
        .O(O1));
LUT6 #(
    .INIT(64'h0000000000000B08)) 
     \brick_bounce[1][7]_i_2 
       (.I0(\n_0_brick_bounce[1][7]_i_3 ),
        .I1(Q[9]),
        .I2(\n_0_brick_bounce[1][7]_i_4 ),
        .I3(\n_0_brick_bounce[1][7]_i_5 ),
        .I4(\n_0_brick_bounce[1][8]_i_3 ),
        .I5(\brick_bounce[1] [7]),
        .O(\brick[1] [7]));
(* SOFT_HLUTNM = "soft_lutpair107" *) 
   LUT4 #(
    .INIT(16'h0007)) 
     \brick_bounce[1][7]_i_3 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(Q[6]),
        .O(\n_0_brick_bounce[1][7]_i_3 ));
LUT6 #(
    .INIT(64'hFFFFAABE003CFFFF)) 
     \brick_bounce[1][7]_i_4 
       (.I0(Q[7]),
        .I1(etat_present[0]),
        .I2(etat_present[1]),
        .I3(I1),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\n_0_brick_bounce[1][7]_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair132" *) 
   LUT3 #(
    .INIT(8'h08)) 
     \brick_bounce[1][7]_i_5 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\n_0_brick_bounce[1][8]_i_5 ),
        .O(\n_0_brick_bounce[1][7]_i_5 ));
LUT4 #(
    .INIT(16'hF0F2)) 
     \brick_bounce[1][8]_i_1 
       (.I0(\n_0_brick_bounce[1][8]_i_2 ),
        .I1(\n_0_brick_bounce[1][8]_i_3 ),
        .I2(\brick_bounce[1] [8]),
        .I3(\n_0_brick_bounce[1][8]_i_4 ),
        .O(O55));
LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
     \brick_bounce[1][8]_i_10 
       (.I0(O27[9]),
        .I1(O27[8]),
        .I2(O27[5]),
        .I3(O27[7]),
        .I4(O27[6]),
        .I5(O27[4]),
        .O(\n_0_brick_bounce[1][8]_i_10 ));
LUT4 #(
    .INIT(16'h22B2)) 
     \brick_bounce[1][8]_i_19 
       (.I0(Q[9]),
        .I1(I18[9]),
        .I2(Q[8]),
        .I3(I18[8]),
        .O(\n_0_brick_bounce[1][8]_i_19 ));
LUT6 #(
    .INIT(64'h000000000000D0DD)) 
     \brick_bounce[1][8]_i_2 
       (.I0(\n_0_brick_bounce[1][8]_i_5 ),
        .I1(\n_0_brick_bounce[1][8]_i_6 ),
        .I2(I1),
        .I3(I10),
        .I4(\n_0_brick_bounce[1][8]_i_8 ),
        .I5(\n_0_brick_bounce[1][8]_i_9 ),
        .O(\n_0_brick_bounce[1][8]_i_2 ));
LUT4 #(
    .INIT(16'h22B2)) 
     \brick_bounce[1][8]_i_22 
       (.I0(O27[9]),
        .I1(I19[9]),
        .I2(O27[8]),
        .I3(I19[8]),
        .O(\n_0_brick_bounce[1][8]_i_22 ));
LUT4 #(
    .INIT(16'h44D4)) 
     \brick_bounce[1][8]_i_27 
       (.I0(O27[7]),
        .I1(I20),
        .I2(I21),
        .I3(O27[6]),
        .O(I40));
LUT6 #(
    .INIT(64'hFFFFFFFF9D551555)) 
     \brick_bounce[1][8]_i_3 
       (.I0(O27[3]),
        .I1(O27[2]),
        .I2(O27[0]),
        .I3(O27[1]),
        .I4(O27[4]),
        .I5(\n_0_brick_bounce[1][8]_i_10 ),
        .O(\n_0_brick_bounce[1][8]_i_3 ));
LUT4 #(
    .INIT(16'h4128)) 
     \brick_bounce[1][8]_i_34 
       (.I0(O27[0]),
        .I1(O27[1]),
        .I2(I19[1]),
        .I3(I19[0]),
        .O(I41));
LUT4 #(
    .INIT(16'h22B2)) 
     \brick_bounce[1][8]_i_38 
       (.I0(Q[7]),
        .I1(I18[7]),
        .I2(Q[6]),
        .I3(I18[6]),
        .O(\n_0_brick_bounce[1][8]_i_38 ));
LUT4 #(
    .INIT(16'h22B2)) 
     \brick_bounce[1][8]_i_39 
       (.I0(Q[5]),
        .I1(I18[5]),
        .I2(Q[4]),
        .I3(I18[4]),
        .O(\n_0_brick_bounce[1][8]_i_39 ));
LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
     \brick_bounce[1][8]_i_4 
       (.I0(O24),
        .I1(I8),
        .I2(I50),
        .I3(I51),
        .I4(I9),
        .I5(I7),
        .O(\n_0_brick_bounce[1][8]_i_4 ));
LUT4 #(
    .INIT(16'h22B2)) 
     \brick_bounce[1][8]_i_40 
       (.I0(Q[3]),
        .I1(I18[3]),
        .I2(Q[2]),
        .I3(I18[2]),
        .O(\n_0_brick_bounce[1][8]_i_40 ));
LUT4 #(
    .INIT(16'h22B2)) 
     \brick_bounce[1][8]_i_41 
       (.I0(Q[1]),
        .I1(I18[1]),
        .I2(Q[0]),
        .I3(I18[0]),
        .O(\n_0_brick_bounce[1][8]_i_41 ));
LUT4 #(
    .INIT(16'h22B2)) 
     \brick_bounce[1][8]_i_46 
       (.I0(O27[7]),
        .I1(I19[7]),
        .I2(O27[6]),
        .I3(I19[6]),
        .O(\n_0_brick_bounce[1][8]_i_46 ));
LUT4 #(
    .INIT(16'h22B2)) 
     \brick_bounce[1][8]_i_47 
       (.I0(O27[5]),
        .I1(I19[5]),
        .I2(O27[4]),
        .I3(I19[4]),
        .O(\n_0_brick_bounce[1][8]_i_47 ));
LUT4 #(
    .INIT(16'h22B2)) 
     \brick_bounce[1][8]_i_48 
       (.I0(O27[3]),
        .I1(I19[3]),
        .I2(O27[2]),
        .I3(I19[2]),
        .O(\n_0_brick_bounce[1][8]_i_48 ));
LUT4 #(
    .INIT(16'h22B2)) 
     \brick_bounce[1][8]_i_49 
       (.I0(O27[1]),
        .I1(I19[1]),
        .I2(O27[0]),
        .I3(I19[0]),
        .O(\n_0_brick_bounce[1][8]_i_49 ));
LUT6 #(
    .INIT(64'h555555557777777F)) 
     \brick_bounce[1][8]_i_5 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[4]),
        .O(\n_0_brick_bounce[1][8]_i_5 ));
LUT4 #(
    .INIT(16'h4F04)) 
     \brick_bounce[1][8]_i_54 
       (.I0(Q[6]),
        .I1(I16),
        .I2(Q[7]),
        .I3(I17),
        .O(I39[1]));
LUT4 #(
    .INIT(16'h0D13)) 
     \brick_bounce[1][8]_i_57 
       (.I0(Q[0]),
        .I1(I18[0]),
        .I2(Q[1]),
        .I3(I18[1]),
        .O(I39[0]));
(* SOFT_HLUTNM = "soft_lutpair108" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \brick_bounce[1][8]_i_6 
       (.I0(Q[6]),
        .I1(Q[7]),
        .O(\n_0_brick_bounce[1][8]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair124" *) 
   LUT3 #(
    .INIT(8'hFB)) 
     \brick_bounce[1][8]_i_8 
       (.I0(Q[7]),
        .I1(Q[9]),
        .I2(Q[8]),
        .O(\n_0_brick_bounce[1][8]_i_8 ));
(* SOFT_HLUTNM = "soft_lutpair106" *) 
   LUT4 #(
    .INIT(16'hAA80)) 
     \brick_bounce[1][8]_i_9 
       (.I0(Q[6]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[5]),
        .O(\n_0_brick_bounce[1][8]_i_9 ));
CARRY4 \brick_bounce_reg[1][8]_i_12 
       (.CI(\n_0_brick_bounce_reg[1][8]_i_18 ),
        .CO({\NLW_brick_bounce_reg[1][8]_i_12_CO_UNCONNECTED [3:1],I50}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\n_0_brick_bounce[1][8]_i_19 }),
        .O(\NLW_brick_bounce_reg[1][8]_i_12_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,O35}));
CARRY4 \brick_bounce_reg[1][8]_i_13 
       (.CI(\n_0_brick_bounce_reg[1][8]_i_21 ),
        .CO({\NLW_brick_bounce_reg[1][8]_i_13_CO_UNCONNECTED [3:1],I51}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\n_0_brick_bounce[1][8]_i_22 }),
        .O(\NLW_brick_bounce_reg[1][8]_i_13_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,O32}));
CARRY4 \brick_bounce_reg[1][8]_i_18 
       (.CI(1'b0),
        .CO({\n_0_brick_bounce_reg[1][8]_i_18 ,\n_1_brick_bounce_reg[1][8]_i_18 ,\n_2_brick_bounce_reg[1][8]_i_18 ,\n_3_brick_bounce_reg[1][8]_i_18 }),
        .CYINIT(1'b1),
        .DI({\n_0_brick_bounce[1][8]_i_38 ,\n_0_brick_bounce[1][8]_i_39 ,\n_0_brick_bounce[1][8]_i_40 ,\n_0_brick_bounce[1][8]_i_41 }),
        .O(\NLW_brick_bounce_reg[1][8]_i_18_O_UNCONNECTED [3:0]),
        .S(O30));
CARRY4 \brick_bounce_reg[1][8]_i_21 
       (.CI(1'b0),
        .CO({\n_0_brick_bounce_reg[1][8]_i_21 ,\n_1_brick_bounce_reg[1][8]_i_21 ,\n_2_brick_bounce_reg[1][8]_i_21 ,\n_3_brick_bounce_reg[1][8]_i_21 }),
        .CYINIT(1'b1),
        .DI({\n_0_brick_bounce[1][8]_i_46 ,\n_0_brick_bounce[1][8]_i_47 ,\n_0_brick_bounce[1][8]_i_48 ,\n_0_brick_bounce[1][8]_i_49 }),
        .O(\NLW_brick_bounce_reg[1][8]_i_21_O_UNCONNECTED [3:0]),
        .S(O31));
LUT6 #(
    .INIT(64'hDFFFDFFFDFDFFFFF)) 
     hsync_i_1
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(Q[7]),
        .I3(n_0_hsync_i_2),
        .I4(n_0_hsync_i_3),
        .I5(Q[6]),
        .O(n_0_hsync_i_1));
(* SOFT_HLUTNM = "soft_lutpair117" *) 
   LUT3 #(
    .INIT(8'h7F)) 
     hsync_i_2
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[3]),
        .O(n_0_hsync_i_2));
LUT6 #(
    .INIT(64'hFFFFFFFFFE000000)) 
     hsync_i_3
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(n_0_hsync_i_3));
FDPE #(
    .INIT(1'b1)) 
     hsync_reg
       (.C(clk25_BUFG),
        .CE(1'b1),
        .D(n_0_hsync_i_1),
        .PRE(I1),
        .Q(hsync_OBUF));
LUT5 #(
    .INIT(32'hA0BFA080)) 
     leftbounce_i_1
       (.I0(n_0_leftbounce_i_2),
        .I1(I23),
        .I2(n_0_leftbounce_i_4),
        .I3(O24),
        .I4(leftbounce),
        .O(O29));
LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
     leftbounce_i_2
       (.I0(n_0_vsync_i_2),
        .I1(n_0_leftbounce_i_5),
        .I2(O27[3]),
        .I3(Q[2]),
        .I4(n_0_leftbounce_i_6),
        .I5(n_0_leftbounce_i_7),
        .O(n_0_leftbounce_i_2));
LUT6 #(
    .INIT(64'h0111000001110111)) 
     leftbounce_i_4
       (.I0(Q[5]),
        .I1(n_0_leftbounce_i_8),
        .I2(n_0_leftbounce_i_6),
        .I3(Q[2]),
        .I4(I1),
        .I5(I10),
        .O(n_0_leftbounce_i_4));
(* SOFT_HLUTNM = "soft_lutpair141" *) 
   LUT2 #(
    .INIT(4'hE)) 
     leftbounce_i_5
       (.I0(O27[4]),
        .I1(O27[9]),
        .O(n_0_leftbounce_i_5));
(* SOFT_HLUTNM = "soft_lutpair137" *) 
   LUT2 #(
    .INIT(4'hE)) 
     leftbounce_i_6
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(n_0_leftbounce_i_6));
(* SOFT_HLUTNM = "soft_lutpair131" *) 
   LUT3 #(
    .INIT(8'h01)) 
     leftbounce_i_7
       (.I0(O27[0]),
        .I1(O27[1]),
        .I2(O27[2]),
        .O(n_0_leftbounce_i_7));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     leftbounce_i_8
       (.I0(Q[8]),
        .I1(Q[9]),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(Q[4]),
        .I5(Q[3]),
        .O(n_0_leftbounce_i_8));
LUT6 #(
    .INIT(64'h44444FFF44444444)) 
     pad_center_bounce_i_1
       (.I0(O24),
        .I1(pad_center_bounce),
        .I2(I29),
        .I3(I52),
        .I4(I25),
        .I5(n_0_pad_center_bounce_i_2),
        .O(O47));
LUT3 #(
    .INIT(8'h2B)) 
     pad_center_bounce_i_14
       (.I0(I14[0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(DI));
LUT3 #(
    .INIT(8'h82)) 
     pad_center_bounce_i_18
       (.I0(Q[0]),
        .I1(I14[0]),
        .I2(Q[1]),
        .O(I32));
LUT5 #(
    .INIT(32'h80808000)) 
     pad_center_bounce_i_2
       (.I0(I30),
        .I1(n_0_pad_far_left_bounce_i_2),
        .I2(I54),
        .I3(O24),
        .I4(I23),
        .O(n_0_pad_center_bounce_i_2));
LUT4 #(
    .INIT(16'h2F02)) 
     pad_center_bounce_i_20
       (.I0(Q[6]),
        .I1(plusOp10[5]),
        .I2(plusOp10[6]),
        .I3(Q[7]),
        .O(n_0_pad_center_bounce_i_20));
LUT4 #(
    .INIT(16'h2F02)) 
     pad_center_bounce_i_21
       (.I0(Q[4]),
        .I1(plusOp10[3]),
        .I2(plusOp10[4]),
        .I3(Q[5]),
        .O(n_0_pad_center_bounce_i_21));
LUT4 #(
    .INIT(16'h2F02)) 
     pad_center_bounce_i_22
       (.I0(Q[2]),
        .I1(plusOp10[1]),
        .I2(plusOp10[2]),
        .I3(Q[3]),
        .O(n_0_pad_center_bounce_i_22));
LUT2 #(
    .INIT(4'h2)) 
     pad_center_bounce_i_23
       (.I0(Q[1]),
        .I1(plusOp10[0]),
        .O(n_0_pad_center_bounce_i_23));
LUT3 #(
    .INIT(8'h82)) 
     pad_center_bounce_i_27
       (.I0(Q[0]),
        .I1(plusOp10[0]),
        .I2(Q[1]),
        .O(n_0_pad_center_bounce_i_27));
LUT4 #(
    .INIT(16'h2F02)) 
     pad_center_bounce_i_9
       (.I0(Q[8]),
        .I1(plusOp10[7]),
        .I2(plusOp10[8]),
        .I3(Q[9]),
        .O(n_0_pad_center_bounce_i_9));
CARRY4 pad_center_bounce_reg_i_4
       (.CI(n_0_pad_center_bounce_reg_i_8),
        .CO({NLW_pad_center_bounce_reg_i_4_CO_UNCONNECTED[3:1],I54}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,n_0_pad_center_bounce_i_9}),
        .O(NLW_pad_center_bounce_reg_i_4_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,O41}));
CARRY4 pad_center_bounce_reg_i_8
       (.CI(1'b0),
        .CO({n_0_pad_center_bounce_reg_i_8,n_1_pad_center_bounce_reg_i_8,n_2_pad_center_bounce_reg_i_8,n_3_pad_center_bounce_reg_i_8}),
        .CYINIT(1'b0),
        .DI({n_0_pad_center_bounce_i_20,n_0_pad_center_bounce_i_21,n_0_pad_center_bounce_i_22,n_0_pad_center_bounce_i_23}),
        .O(NLW_pad_center_bounce_reg_i_8_O_UNCONNECTED[3:0]),
        .S({O40,n_0_pad_center_bounce_i_27}));
LUT6 #(
    .INIT(64'hC0EAC0AA00AA00AA)) 
     pad_far_left_bounce_i_1
       (.I0(pad_far_left_bounce),
        .I1(n_0_pad_far_left_bounce_i_2),
        .I2(I52),
        .I3(O24),
        .I4(I23),
        .I5(I29),
        .O(O48));
LUT4 #(
    .INIT(16'h22B2)) 
     pad_far_left_bounce_i_13
       (.I0(Q[7]),
        .I1(I14[6]),
        .I2(Q[6]),
        .I3(I14[5]),
        .O(n_0_pad_far_left_bounce_i_13));
LUT2 #(
    .INIT(4'h2)) 
     pad_far_left_bounce_i_16
       (.I0(Q[1]),
        .I1(I14[0]),
        .O(n_0_pad_far_left_bounce_i_16));
LUT4 #(
    .INIT(16'h9009)) 
     pad_far_left_bounce_i_18
       (.I0(Q[5]),
        .I1(I14[4]),
        .I2(Q[4]),
        .I3(I14[3]),
        .O(n_0_pad_far_left_bounce_i_18));
LUT4 #(
    .INIT(16'h9009)) 
     pad_far_left_bounce_i_19
       (.I0(Q[3]),
        .I1(I14[2]),
        .I2(Q[2]),
        .I3(I14[1]),
        .O(n_0_pad_far_left_bounce_i_19));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     pad_far_left_bounce_i_2
       (.I0(I7),
        .I1(n_0_leftbounce_i_7),
        .I2(O27[6]),
        .I3(O27[9]),
        .I4(n_0_pad_far_left_bounce_i_5),
        .I5(n_0_pad_far_left_bounce_i_6),
        .O(n_0_pad_far_left_bounce_i_2));
LUT3 #(
    .INIT(8'h82)) 
     pad_far_left_bounce_i_20
       (.I0(Q[0]),
        .I1(I14[0]),
        .I2(Q[1]),
        .O(n_0_pad_far_left_bounce_i_20));
LUT4 #(
    .INIT(16'h40F4)) 
     pad_far_left_bounce_i_24
       (.I0(Q[0]),
        .I1(S3_IBUF),
        .I2(plusOp8[0]),
        .I3(Q[1]),
        .O(I35));
LUT4 #(
    .INIT(16'h9009)) 
     pad_far_left_bounce_i_28
       (.I0(Q[0]),
        .I1(S3_IBUF),
        .I2(plusOp8[0]),
        .I3(Q[1]),
        .O(I36));
(* SOFT_HLUTNM = "soft_lutpair121" *) 
   LUT2 #(
    .INIT(4'h7)) 
     pad_far_left_bounce_i_5
       (.I0(O27[7]),
        .I1(O27[8]),
        .O(n_0_pad_far_left_bounce_i_5));
(* SOFT_HLUTNM = "soft_lutpair125" *) 
   LUT3 #(
    .INIT(8'h7F)) 
     pad_far_left_bounce_i_6
       (.I0(O27[4]),
        .I1(O27[3]),
        .I2(O27[5]),
        .O(n_0_pad_far_left_bounce_i_6));
LUT4 #(
    .INIT(16'h9009)) 
     pad_far_left_bounce_i_9
       (.I0(Q[9]),
        .I1(I14[8]),
        .I2(I14[7]),
        .I3(Q[8]),
        .O(n_0_pad_far_left_bounce_i_9));
CARRY4 pad_far_left_bounce_reg_i_3
       (.CI(n_0_pad_far_left_bounce_reg_i_7),
        .CO({NLW_pad_far_left_bounce_reg_i_3_CO_UNCONNECTED[3:1],I52}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,O21}),
        .O(NLW_pad_far_left_bounce_reg_i_3_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,n_0_pad_far_left_bounce_i_9}));
CARRY4 pad_far_left_bounce_reg_i_7
       (.CI(1'b0),
        .CO({n_0_pad_far_left_bounce_reg_i_7,n_1_pad_far_left_bounce_reg_i_7,n_2_pad_far_left_bounce_reg_i_7,n_3_pad_far_left_bounce_reg_i_7}),
        .CYINIT(1'b0),
        .DI({n_0_pad_far_left_bounce_i_13,O20,n_0_pad_far_left_bounce_i_16}),
        .O(NLW_pad_far_left_bounce_reg_i_7_O_UNCONNECTED[3:0]),
        .S({O19,n_0_pad_far_left_bounce_i_18,n_0_pad_far_left_bounce_i_19,n_0_pad_far_left_bounce_i_20}));
LUT5 #(
    .INIT(32'h77553200)) 
     pad_far_right_bounce_i_1
       (.I0(O24),
        .I1(I27),
        .I2(I23),
        .I3(n_0_pad_far_right_bounce_i_2),
        .I4(pad_far_right_bounce),
        .O(O46));
LUT6 #(
    .INIT(64'h0000400040004000)) 
     pad_far_right_bounce_i_2
       (.I0(I31),
        .I1(n_3_VGA_red_OBUF_inst_i_8),
        .I2(n_0_pad_far_left_bounce_i_2),
        .I3(O51),
        .I4(I58),
        .I5(I59),
        .O(n_0_pad_far_right_bounce_i_2));
LUT6 #(
    .INIT(64'h7755555532000000)) 
     pad_left_bounce_i_1
       (.I0(O24),
        .I1(I24),
        .I2(I23),
        .I3(n_0_pad_far_left_bounce_i_2),
        .I4(I25),
        .I5(pad_left_bounce),
        .O(O44));
LUT4 #(
    .INIT(16'h2F02)) 
     pad_left_bounce_i_12
       (.I0(Q[6]),
        .I1(plusOp8[5]),
        .I2(plusOp8[6]),
        .I3(Q[7]),
        .O(n_0_pad_left_bounce_i_12));
LUT4 #(
    .INIT(16'h2F02)) 
     pad_left_bounce_i_13
       (.I0(Q[4]),
        .I1(plusOp8[3]),
        .I2(plusOp8[4]),
        .I3(Q[5]),
        .O(n_0_pad_left_bounce_i_13));
LUT4 #(
    .INIT(16'h2F02)) 
     pad_left_bounce_i_14
       (.I0(Q[2]),
        .I1(plusOp8[1]),
        .I2(plusOp8[2]),
        .I3(Q[3]),
        .O(n_0_pad_left_bounce_i_14));
LUT4 #(
    .INIT(16'h44D4)) 
     pad_left_bounce_i_15
       (.I0(plusOp8[0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(S3_IBUF),
        .O(n_0_pad_left_bounce_i_15));
LUT4 #(
    .INIT(16'h9009)) 
     pad_left_bounce_i_19
       (.I0(Q[0]),
        .I1(S3_IBUF),
        .I2(plusOp8[0]),
        .I3(Q[1]),
        .O(n_0_pad_left_bounce_i_19));
LUT3 #(
    .INIT(8'h2B)) 
     pad_left_bounce_i_23
       (.I0(plusOp10[0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(O53));
LUT3 #(
    .INIT(8'h82)) 
     pad_left_bounce_i_27
       (.I0(Q[0]),
        .I1(plusOp10[0]),
        .I2(Q[1]),
        .O(I34));
LUT4 #(
    .INIT(16'h2F02)) 
     pad_left_bounce_i_7
       (.I0(Q[8]),
        .I1(plusOp8[7]),
        .I2(plusOp8[8]),
        .I3(Q[9]),
        .O(n_0_pad_left_bounce_i_7));
CARRY4 pad_left_bounce_reg_i_4
       (.CI(n_0_pad_left_bounce_reg_i_6),
        .CO({NLW_pad_left_bounce_reg_i_4_CO_UNCONNECTED[3:1],I53}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,n_0_pad_left_bounce_i_7}),
        .O(NLW_pad_left_bounce_reg_i_4_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,O43}));
CARRY4 pad_left_bounce_reg_i_6
       (.CI(1'b0),
        .CO({n_0_pad_left_bounce_reg_i_6,n_1_pad_left_bounce_reg_i_6,n_2_pad_left_bounce_reg_i_6,n_3_pad_left_bounce_reg_i_6}),
        .CYINIT(1'b0),
        .DI({n_0_pad_left_bounce_i_12,n_0_pad_left_bounce_i_13,n_0_pad_left_bounce_i_14,n_0_pad_left_bounce_i_15}),
        .O(NLW_pad_left_bounce_reg_i_6_O_UNCONNECTED[3:0]),
        .S({O42,n_0_pad_left_bounce_i_19}));
LUT6 #(
    .INIT(64'h0F220F2F00220020)) 
     pad_right_bounce_i_1
       (.I0(n_0_pad_far_left_bounce_i_2),
        .I1(I26),
        .I2(O24),
        .I3(I27),
        .I4(n_0_pad_right_bounce_i_4),
        .I5(pad_right_bounce),
        .O(O45));
LUT4 #(
    .INIT(16'h2F02)) 
     pad_right_bounce_i_11
       (.I0(Q[8]),
        .I1(plusOp12[6]),
        .I2(plusOp12[7]),
        .I3(Q[9]),
        .O(n_0_pad_right_bounce_i_11));
LUT4 #(
    .INIT(16'h40F4)) 
     pad_right_bounce_i_16
       (.I0(Q[0]),
        .I1(S3_IBUF),
        .I2(plusOp14[0]),
        .I3(Q[1]),
        .O(n_0_pad_right_bounce_i_16));
LUT4 #(
    .INIT(16'h9009)) 
     pad_right_bounce_i_17
       (.I0(Q[6]),
        .I1(plusOp14[5]),
        .I2(plusOp14[6]),
        .I3(Q[7]),
        .O(n_0_pad_right_bounce_i_17));
LUT4 #(
    .INIT(16'h9009)) 
     pad_right_bounce_i_18
       (.I0(Q[4]),
        .I1(plusOp14[3]),
        .I2(plusOp14[4]),
        .I3(Q[5]),
        .O(n_0_pad_right_bounce_i_18));
LUT4 #(
    .INIT(16'h9009)) 
     pad_right_bounce_i_19
       (.I0(Q[2]),
        .I1(plusOp14[1]),
        .I2(plusOp14[2]),
        .I3(Q[3]),
        .O(n_0_pad_right_bounce_i_19));
LUT4 #(
    .INIT(16'h9009)) 
     pad_right_bounce_i_20
       (.I0(Q[1]),
        .I1(plusOp14[0]),
        .I2(Q[0]),
        .I3(S3_IBUF),
        .O(n_0_pad_right_bounce_i_20));
LUT4 #(
    .INIT(16'h2F02)) 
     pad_right_bounce_i_21
       (.I0(Q[6]),
        .I1(plusOp12[4]),
        .I2(plusOp12[5]),
        .I3(Q[7]),
        .O(n_0_pad_right_bounce_i_21));
LUT4 #(
    .INIT(16'h2F02)) 
     pad_right_bounce_i_22
       (.I0(Q[4]),
        .I1(plusOp12[2]),
        .I2(plusOp12[3]),
        .I3(Q[5]),
        .O(n_0_pad_right_bounce_i_22));
LUT4 #(
    .INIT(16'h2F02)) 
     pad_right_bounce_i_23
       (.I0(Q[2]),
        .I1(plusOp12[0]),
        .I2(plusOp12[1]),
        .I3(Q[3]),
        .O(n_0_pad_right_bounce_i_23));
LUT2 #(
    .INIT(4'h2)) 
     pad_right_bounce_i_24
       (.I0(Q[1]),
        .I1(I14[0]),
        .O(n_0_pad_right_bounce_i_24));
LUT3 #(
    .INIT(8'h82)) 
     pad_right_bounce_i_28
       (.I0(Q[0]),
        .I1(I14[0]),
        .I2(Q[1]),
        .O(n_0_pad_right_bounce_i_28));
LUT6 #(
    .INIT(64'h7000000000000000)) 
     pad_right_bounce_i_4
       (.I0(I54),
        .I1(I30),
        .I2(I59),
        .I3(I23),
        .I4(n_0_pad_far_left_bounce_i_2),
        .I5(I58),
        .O(n_0_pad_right_bounce_i_4));
LUT4 #(
    .INIT(16'h9009)) 
     pad_right_bounce_i_9
       (.I0(Q[8]),
        .I1(plusOp14[7]),
        .I2(plusOp14[8]),
        .I3(Q[9]),
        .O(n_0_pad_right_bounce_i_9));
CARRY4 pad_right_bounce_reg_i_10
       (.CI(1'b0),
        .CO({n_0_pad_right_bounce_reg_i_10,n_1_pad_right_bounce_reg_i_10,n_2_pad_right_bounce_reg_i_10,n_3_pad_right_bounce_reg_i_10}),
        .CYINIT(1'b0),
        .DI({n_0_pad_right_bounce_i_21,n_0_pad_right_bounce_i_22,n_0_pad_right_bounce_i_23,n_0_pad_right_bounce_i_24}),
        .O(NLW_pad_right_bounce_reg_i_10_O_UNCONNECTED[3:0]),
        .S({O49,n_0_pad_right_bounce_i_28}));
CARRY4 pad_right_bounce_reg_i_5
       (.CI(n_0_pad_right_bounce_reg_i_7),
        .CO({NLW_pad_right_bounce_reg_i_5_CO_UNCONNECTED[3:1],I58}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,O18}),
        .O(NLW_pad_right_bounce_reg_i_5_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,n_0_pad_right_bounce_i_9}));
CARRY4 pad_right_bounce_reg_i_6
       (.CI(n_0_pad_right_bounce_reg_i_10),
        .CO({NLW_pad_right_bounce_reg_i_6_CO_UNCONNECTED[3:1],I59}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,n_0_pad_right_bounce_i_11}),
        .O(NLW_pad_right_bounce_reg_i_6_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,O50}));
CARRY4 pad_right_bounce_reg_i_7
       (.CI(1'b0),
        .CO({n_0_pad_right_bounce_reg_i_7,n_1_pad_right_bounce_reg_i_7,n_2_pad_right_bounce_reg_i_7,n_3_pad_right_bounce_reg_i_7}),
        .CYINIT(1'b1),
        .DI({O17,n_0_pad_right_bounce_i_16}),
        .O(NLW_pad_right_bounce_reg_i_7_O_UNCONNECTED[3:0]),
        .S({n_0_pad_right_bounce_i_17,n_0_pad_right_bounce_i_18,n_0_pad_right_bounce_i_19,n_0_pad_right_bounce_i_20}));
LUT6 #(
    .INIT(64'h0000000000000200)) 
     \pong_bounce[1]_i_3 
       (.I0(\n_0_brick_bounce[1][3]_i_4 ),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(\n_0_pong_bounce[1]_i_4 ),
        .I4(Q[5]),
        .I5(n_0_leftbounce_i_2),
        .O(O24));
(* SOFT_HLUTNM = "soft_lutpair138" *) 
   LUT2 #(
    .INIT(4'h1)) 
     \pong_bounce[1]_i_4 
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(\n_0_pong_bounce[1]_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair123" *) 
   LUT4 #(
    .INIT(16'hDDC8)) 
     pong_left_bounce_i_1
       (.I0(O24),
        .I1(n_0_pong_left_bounce_i_2),
        .I2(I23),
        .I3(pong_left_bounce),
        .O(O38));
LUT4 #(
    .INIT(16'h4114)) 
     pong_left_bounce_i_11
       (.I0(O27[9]),
        .I1(I13[6]),
        .I2(O27[8]),
        .I3(I43),
        .O(O52));
LUT2 #(
    .INIT(4'hE)) 
     pong_left_bounce_i_15
       (.I0(O27[1]),
        .I1(O27[0]),
        .O(n_0_pong_left_bounce_i_15));
LUT4 #(
    .INIT(16'h9009)) 
     pong_left_bounce_i_16
       (.I0(O27[7]),
        .I1(I13[5]),
        .I2(I13[4]),
        .I3(O27[6]),
        .O(n_0_pong_left_bounce_i_16));
LUT4 #(
    .INIT(16'h9009)) 
     pong_left_bounce_i_17
       (.I0(O27[5]),
        .I1(I13[3]),
        .I2(O27[4]),
        .I3(I13[2]),
        .O(n_0_pong_left_bounce_i_17));
LUT4 #(
    .INIT(16'h9009)) 
     pong_left_bounce_i_18
       (.I0(O27[3]),
        .I1(I13[1]),
        .I2(I13[0]),
        .I3(O27[2]),
        .O(n_0_pong_left_bounce_i_18));
LUT2 #(
    .INIT(4'h1)) 
     pong_left_bounce_i_19
       (.I0(O27[0]),
        .I1(O27[1]),
        .O(n_0_pong_left_bounce_i_19));
LUT6 #(
    .INIT(64'h0000800000000000)) 
     pong_left_bounce_i_2
       (.I0(\obj_ctrl/pad_ctrl/gtOp33_in ),
        .I1(Q[5]),
        .I2(n_0_pong_left_bounce_i_4),
        .I3(I7),
        .I4(n_0_leftbounce_i_8),
        .I5(CO),
        .O(n_0_pong_left_bounce_i_2));
LUT2 #(
    .INIT(4'h1)) 
     pong_left_bounce_i_26
       (.I0(O27[0]),
        .I1(O27[1]),
        .O(S));
(* SOFT_HLUTNM = "soft_lutpair141" *) 
   LUT2 #(
    .INIT(4'hE)) 
     pong_left_bounce_i_27
       (.I0(O27[8]),
        .I1(O27[9]),
        .O(O28));
(* SOFT_HLUTNM = "soft_lutpair120" *) 
   LUT3 #(
    .INIT(8'hFE)) 
     pong_left_bounce_i_4
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(n_0_pong_left_bounce_i_4));
LUT3 #(
    .INIT(8'hBA)) 
     pong_left_bounce_i_7
       (.I0(O27[9]),
        .I1(I13[6]),
        .I2(O27[8]),
        .O(n_0_pong_left_bounce_i_7));
LUT3 #(
    .INIT(8'h41)) 
     pong_left_bounce_i_8
       (.I0(O27[9]),
        .I1(I13[6]),
        .I2(O27[8]),
        .O(n_0_pong_left_bounce_i_8));
CARRY4 pong_left_bounce_reg_i_3
       (.CI(n_0_pong_left_bounce_reg_i_6),
        .CO({NLW_pong_left_bounce_reg_i_3_CO_UNCONNECTED[3:1],\obj_ctrl/pad_ctrl/gtOp33_in }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,n_0_pong_left_bounce_i_7}),
        .O(NLW_pong_left_bounce_reg_i_3_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,n_0_pong_left_bounce_i_8}));
CARRY4 pong_left_bounce_reg_i_6
       (.CI(1'b0),
        .CO({n_0_pong_left_bounce_reg_i_6,n_1_pong_left_bounce_reg_i_6,n_2_pong_left_bounce_reg_i_6,n_3_pong_left_bounce_reg_i_6}),
        .CYINIT(1'b0),
        .DI({I2,n_0_pong_left_bounce_i_15}),
        .O(NLW_pong_left_bounce_reg_i_6_O_UNCONNECTED[3:0]),
        .S({n_0_pong_left_bounce_i_16,n_0_pong_left_bounce_i_17,n_0_pong_left_bounce_i_18,n_0_pong_left_bounce_i_19}));
LUT4 #(
    .INIT(16'hDDC8)) 
     pong_right_bounce_i_1
       (.I0(O24),
        .I1(n_0_VGA_blue_OBUF_inst_i_5),
        .I2(I23),
        .I3(pong_right_bounce),
        .O(O39));
(* SOFT_HLUTNM = "soft_lutpair122" *) 
   LUT2 #(
    .INIT(4'h2)) 
     precFrame_reg_i_1
       (.I0(O24),
        .I1(precFrame),
        .O(precFrame07_out));
(* SOFT_HLUTNM = "soft_lutpair122" *) 
   LUT4 #(
    .INIT(16'hF5E0)) 
     rightbounce_i_1
       (.I0(O24),
        .I1(I23),
        .I2(n_0_rightbounce_i_2),
        .I3(rightbounce),
        .O(O33));
LUT6 #(
    .INIT(64'hBBBBBBBBB0000000)) 
     rightbounce_i_2
       (.I0(I1),
        .I1(I10),
        .I2(n_0_rightbounce_i_3),
        .I3(Q[9]),
        .I4(Q[2]),
        .I5(n_0_rightbounce_i_4),
        .O(n_0_rightbounce_i_2));
(* SOFT_HLUTNM = "soft_lutpair111" *) 
   LUT4 #(
    .INIT(16'h8000)) 
     rightbounce_i_3
       (.I0(Q[6]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(Q[5]),
        .O(n_0_rightbounce_i_3));
(* SOFT_HLUTNM = "soft_lutpair113" *) 
   LUT3 #(
    .INIT(8'hA8)) 
     rightbounce_i_4
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(Q[7]),
        .O(n_0_rightbounce_i_4));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDFFF)) 
     vsync_i_1
       (.I0(n_0_vsync_i_2),
        .I1(O27[2]),
        .I2(O27[1]),
        .I3(O27[3]),
        .I4(O27[4]),
        .I5(O27[9]),
        .O(n_0_vsync_i_1));
(* SOFT_HLUTNM = "soft_lutpair114" *) 
   LUT4 #(
    .INIT(16'h8000)) 
     vsync_i_2
       (.I0(O27[7]),
        .I1(O27[8]),
        .I2(O27[6]),
        .I3(O27[5]),
        .O(n_0_vsync_i_2));
FDPE #(
    .INIT(1'b1)) 
     vsync_reg
       (.C(clk25_BUFG),
        .CE(1'b1),
        .D(n_0_vsync_i_1),
        .PRE(I1),
        .Q(vsync_OBUF));
LUT2 #(
    .INIT(4'h1)) 
     \xball[4]_i_1 
       (.I0(O54),
        .I1(I45),
        .O(D));
(* SOFT_HLUTNM = "soft_lutpair123" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \xball[9]_i_8 
       (.I0(O24),
        .I1(game_lost),
        .O(O54));
(* SOFT_HLUTNM = "soft_lutpair139" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \xcord[0]_i_1 
       (.I0(Q[0]),
        .O(p_0_in__5[0]));
(* SOFT_HLUTNM = "soft_lutpair139" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \xcord[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(p_0_in__5[1]));
(* SOFT_HLUTNM = "soft_lutpair112" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \xcord[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(p_0_in__5[2]));
(* SOFT_HLUTNM = "soft_lutpair120" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \xcord[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(p_0_in__5[3]));
(* SOFT_HLUTNM = "soft_lutpair109" *) 
   LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \xcord[4]_i_1 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(p_0_in__5[4]));
(* SOFT_HLUTNM = "soft_lutpair117" *) 
   LUT5 #(
    .INIT(32'h00007F80)) 
     \xcord[5]_i_1 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\n_0_xcord[7]_i_2 ),
        .I3(Q[5]),
        .I4(sel),
        .O(p_0_in__5[5]));
(* SOFT_HLUTNM = "soft_lutpair106" *) 
   LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \xcord[6]_i_1 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(\n_0_xcord[7]_i_2 ),
        .O(p_0_in__5[6]));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \xcord[7]_i_1 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(\n_0_xcord[7]_i_2 ),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(p_0_in__5[7]));
(* SOFT_HLUTNM = "soft_lutpair137" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \xcord[7]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\n_0_xcord[7]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair108" *) 
   LUT5 #(
    .INIT(32'h15554000)) 
     \xcord[8]_i_1 
       (.I0(sel),
        .I1(Q[6]),
        .I2(\n_0_xcord[9]_i_2 ),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\n_0_xcord[8]_i_1 ));
LUT6 #(
    .INIT(64'h1555555540000000)) 
     \xcord[9]_i_1 
       (.I0(sel),
        .I1(Q[7]),
        .I2(\n_0_xcord[9]_i_2 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\n_0_xcord[9]_i_1 ));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \xcord[9]_i_2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\n_0_xcord[9]_i_2 ));
FDCE #(
    .INIT(1'b0)) 
     \xcord_reg[0] 
       (.C(clk25_BUFG),
        .CE(1'b1),
        .CLR(I1),
        .D(p_0_in__5[0]),
        .Q(Q[0]));
FDCE #(
    .INIT(1'b0)) 
     \xcord_reg[1] 
       (.C(clk25_BUFG),
        .CE(1'b1),
        .CLR(I1),
        .D(p_0_in__5[1]),
        .Q(Q[1]));
FDCE #(
    .INIT(1'b0)) 
     \xcord_reg[2] 
       (.C(clk25_BUFG),
        .CE(1'b1),
        .CLR(I1),
        .D(p_0_in__5[2]),
        .Q(Q[2]));
FDCE #(
    .INIT(1'b0)) 
     \xcord_reg[3] 
       (.C(clk25_BUFG),
        .CE(1'b1),
        .CLR(I1),
        .D(p_0_in__5[3]),
        .Q(Q[3]));
FDCE #(
    .INIT(1'b0)) 
     \xcord_reg[4] 
       (.C(clk25_BUFG),
        .CE(1'b1),
        .CLR(I1),
        .D(p_0_in__5[4]),
        .Q(Q[4]));
FDCE #(
    .INIT(1'b0)) 
     \xcord_reg[5] 
       (.C(clk25_BUFG),
        .CE(1'b1),
        .CLR(I1),
        .D(p_0_in__5[5]),
        .Q(Q[5]));
FDCE #(
    .INIT(1'b0)) 
     \xcord_reg[6] 
       (.C(clk25_BUFG),
        .CE(1'b1),
        .CLR(I1),
        .D(p_0_in__5[6]),
        .Q(Q[6]));
FDCE #(
    .INIT(1'b0)) 
     \xcord_reg[7] 
       (.C(clk25_BUFG),
        .CE(1'b1),
        .CLR(I1),
        .D(p_0_in__5[7]),
        .Q(Q[7]));
FDCE #(
    .INIT(1'b0)) 
     \xcord_reg[8] 
       (.C(clk25_BUFG),
        .CE(1'b1),
        .CLR(I1),
        .D(\n_0_xcord[8]_i_1 ),
        .Q(Q[8]));
FDCE #(
    .INIT(1'b0)) 
     \xcord_reg[9] 
       (.C(clk25_BUFG),
        .CE(1'b1),
        .CLR(I1),
        .D(\n_0_xcord[9]_i_1 ),
        .Q(Q[9]));
LUT5 #(
    .INIT(32'h55555100)) 
     ybounce_i_1
       (.I0(O24),
        .I1(n_0_ybounce_i_2),
        .I2(n_0_ybounce_i_3),
        .I3(I23),
        .I4(ybounce),
        .O(O34));
LUT6 #(
    .INIT(64'hFF2F0000FF2FFF2F)) 
     ybounce_i_2
       (.I0(n_0_ybounce_i_4),
        .I1(n_0_ybounce_i_5),
        .I2(I10),
        .I3(I1),
        .I4(n_0_ybounce_i_6),
        .I5(\n_0_ycord[3]_i_2 ),
        .O(n_0_ybounce_i_2));
LUT4 #(
    .INIT(16'hFFFE)) 
     ybounce_i_3
       (.I0(n_0_VGA_blue_OBUF_inst_i_3),
        .I1(n_0_VGA_red_OBUF_inst_i_12),
        .I2(\brick[0] [0]),
        .I3(\brick[1] [2]),
        .O(n_0_ybounce_i_3));
(* SOFT_HLUTNM = "soft_lutpair118" *) 
   LUT5 #(
    .INIT(32'h15555555)) 
     ybounce_i_4
       (.I0(O27[9]),
        .I1(O27[5]),
        .I2(O27[6]),
        .I3(O27[8]),
        .I4(O27[7]),
        .O(n_0_ybounce_i_4));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     ybounce_i_5
       (.I0(O27[7]),
        .I1(O27[8]),
        .I2(O27[6]),
        .I3(O27[2]),
        .I4(O27[3]),
        .I5(O27[4]),
        .O(n_0_ybounce_i_5));
(* SOFT_HLUTNM = "soft_lutpair125" *) 
   LUT3 #(
    .INIT(8'hFE)) 
     ybounce_i_6
       (.I0(O27[3]),
        .I1(O27[9]),
        .I2(O27[2]),
        .O(n_0_ybounce_i_6));
LUT6 #(
    .INIT(64'h0E0F0F0F0F0F0F0F)) 
     \ycord[0]_i_1 
       (.I0(O27[2]),
        .I1(O27[1]),
        .I2(O27[0]),
        .I3(O27[9]),
        .I4(O27[3]),
        .I5(\n_0_ycord[3]_i_2 ),
        .O(\n_0_ycord[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair140" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \ycord[1]_i_1 
       (.I0(O27[0]),
        .I1(O27[1]),
        .O(p_0_in__6[1]));
(* SOFT_HLUTNM = "soft_lutpair115" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \ycord[2]_i_1 
       (.I0(O27[2]),
        .I1(O27[1]),
        .I2(O27[0]),
        .O(p_0_in__6[2]));
LUT6 #(
    .INIT(64'h7E7F80807F7F8080)) 
     \ycord[3]_i_1 
       (.I0(O27[2]),
        .I1(O27[1]),
        .I2(O27[0]),
        .I3(O27[9]),
        .I4(O27[3]),
        .I5(\n_0_ycord[3]_i_2 ),
        .O(p_0_in__6[3]));
(* SOFT_HLUTNM = "soft_lutpair114" *) 
   LUT5 #(
    .INIT(32'h00000001)) 
     \ycord[3]_i_2 
       (.I0(O27[5]),
        .I1(O27[4]),
        .I2(O27[7]),
        .I3(O27[8]),
        .I4(O27[6]),
        .O(\n_0_ycord[3]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair115" *) 
   LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \ycord[4]_i_1 
       (.I0(O27[4]),
        .I1(O27[3]),
        .I2(O27[1]),
        .I3(O27[0]),
        .I4(O27[2]),
        .O(p_0_in__6[4]));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \ycord[5]_i_1 
       (.I0(O27[5]),
        .I1(O27[4]),
        .I2(O27[3]),
        .I3(O27[2]),
        .I4(O27[0]),
        .I5(O27[1]),
        .O(p_0_in__6[5]));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \ycord[6]_i_1 
       (.I0(O27[6]),
        .I1(O27[4]),
        .I2(O27[3]),
        .I3(O27[5]),
        .I4(\n_0_ycord[6]_i_2 ),
        .I5(O27[2]),
        .O(p_0_in__6[6]));
(* SOFT_HLUTNM = "soft_lutpair140" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \ycord[6]_i_2 
       (.I0(O27[0]),
        .I1(O27[1]),
        .O(\n_0_ycord[6]_i_2 ));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \ycord[7]_i_1 
       (.I0(O27[7]),
        .I1(\n_0_ycord[7]_i_2 ),
        .I2(O27[5]),
        .I3(O27[3]),
        .I4(O27[4]),
        .I5(O27[6]),
        .O(p_0_in__6[7]));
(* SOFT_HLUTNM = "soft_lutpair131" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \ycord[7]_i_2 
       (.I0(O27[1]),
        .I1(O27[0]),
        .I2(O27[2]),
        .O(\n_0_ycord[7]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair121" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \ycord[8]_i_1 
       (.I0(O27[8]),
        .I1(O27[7]),
        .I2(O27[6]),
        .I3(\n_0_ycord[9]_i_4 ),
        .O(p_0_in__6[8]));
LUT6 #(
    .INIT(64'h0000000000000080)) 
     \ycord[9]_i_1 
       (.I0(\n_0_ycord[9]_i_3 ),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(Q[5]),
        .I4(Q[7]),
        .I5(Q[6]),
        .O(sel));
LUT6 #(
    .INIT(64'h000000007FFF8000)) 
     \ycord[9]_i_2 
       (.I0(O27[7]),
        .I1(O27[8]),
        .I2(O27[6]),
        .I3(\n_0_ycord[9]_i_4 ),
        .I4(O27[9]),
        .I5(\n_0_ycord[9]_i_5 ),
        .O(p_0_in__6[9]));
(* SOFT_HLUTNM = "soft_lutpair109" *) 
   LUT5 #(
    .INIT(32'h80000000)) 
     \ycord[9]_i_3 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\n_0_ycord[9]_i_3 ));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \ycord[9]_i_4 
       (.I0(O27[2]),
        .I1(O27[0]),
        .I2(O27[1]),
        .I3(O27[5]),
        .I4(O27[3]),
        .I5(O27[4]),
        .O(\n_0_ycord[9]_i_4 ));
LUT6 #(
    .INIT(64'h0000000000000080)) 
     \ycord[9]_i_5 
       (.I0(\n_0_ycord[3]_i_2 ),
        .I1(O27[3]),
        .I2(O27[9]),
        .I3(O27[0]),
        .I4(O27[1]),
        .I5(O27[2]),
        .O(\n_0_ycord[9]_i_5 ));
FDCE #(
    .INIT(1'b0)) 
     \ycord_reg[0] 
       (.C(clk25_BUFG),
        .CE(sel),
        .CLR(I1),
        .D(\n_0_ycord[0]_i_1 ),
        .Q(O27[0]));
FDCE #(
    .INIT(1'b0)) 
     \ycord_reg[1] 
       (.C(clk25_BUFG),
        .CE(sel),
        .CLR(I1),
        .D(p_0_in__6[1]),
        .Q(O27[1]));
FDCE #(
    .INIT(1'b0)) 
     \ycord_reg[2] 
       (.C(clk25_BUFG),
        .CE(sel),
        .CLR(I1),
        .D(p_0_in__6[2]),
        .Q(O27[2]));
FDCE #(
    .INIT(1'b0)) 
     \ycord_reg[3] 
       (.C(clk25_BUFG),
        .CE(sel),
        .CLR(I1),
        .D(p_0_in__6[3]),
        .Q(O27[3]));
FDCE #(
    .INIT(1'b0)) 
     \ycord_reg[4] 
       (.C(clk25_BUFG),
        .CE(sel),
        .CLR(I1),
        .D(p_0_in__6[4]),
        .Q(O27[4]));
FDCE #(
    .INIT(1'b0)) 
     \ycord_reg[5] 
       (.C(clk25_BUFG),
        .CE(sel),
        .CLR(I1),
        .D(p_0_in__6[5]),
        .Q(O27[5]));
FDCE #(
    .INIT(1'b0)) 
     \ycord_reg[6] 
       (.C(clk25_BUFG),
        .CE(sel),
        .CLR(I1),
        .D(p_0_in__6[6]),
        .Q(O27[6]));
FDCE #(
    .INIT(1'b0)) 
     \ycord_reg[7] 
       (.C(clk25_BUFG),
        .CE(sel),
        .CLR(I1),
        .D(p_0_in__6[7]),
        .Q(O27[7]));
FDCE #(
    .INIT(1'b0)) 
     \ycord_reg[8] 
       (.C(clk25_BUFG),
        .CE(sel),
        .CLR(I1),
        .D(p_0_in__6[8]),
        .Q(O27[8]));
FDCE #(
    .INIT(1'b0)) 
     \ycord_reg[9] 
       (.C(clk25_BUFG),
        .CE(sel),
        .CLR(I1),
        .D(p_0_in__6[9]),
        .Q(O27[9]));
endmodule

module ball
   (O1,
    Q,
    O7,
    O2,
    O9,
    O3,
    O4,
    O27,
    O5,
    O28,
    O29,
    O30,
    O31,
    O32,
    O33,
    O34,
    O35,
    clk25_BUFG,
    I1,
    I2,
    I39,
    I40,
    I41,
    I43,
    game_lost,
    I44,
    I49,
    I3,
    I4,
    I5,
    I47,
    I6,
    I7,
    I8,
    pad_far_right_bounce,
    pad_right_bounce,
    pad_center_bounce,
    pad_left_bounce,
    pad_far_left_bounce,
    I48,
    S2_IBUF,
    barrier_bounce,
    pong_left_bounce,
    pong_right_bounce,
    D);
  output O1;
  output [9:0]Q;
  output [0:0]O7;
  output [9:0]O2;
  output [0:0]O9;
  output O3;
  output O4;
  output O27;
  output O5;
  output O28;
  output O29;
  output [3:0]O30;
  output [3:0]O31;
  output [0:0]O32;
  output O33;
  output O34;
  output [0:0]O35;
  input clk25_BUFG;
  input I1;
  input I2;
  input [1:0]I39;
  input [0:0]I40;
  input [0:0]I41;
  input I43;
  input game_lost;
  input I44;
  input I49;
  input I3;
  input I4;
  input I5;
  input [9:0]I47;
  input I6;
  input I7;
  input I8;
  input pad_far_right_bounce;
  input pad_right_bounce;
  input pad_center_bounce;
  input pad_left_bounce;
  input pad_far_left_bounce;
  input [9:0]I48;
  input S2_IBUF;
  input barrier_bounce;
  input pong_left_bounce;
  input pong_right_bounce;
  input [0:0]D;

  wire [0:0]D;
  wire I1;
  wire I2;
  wire I3;
  wire [1:0]I39;
  wire I4;
  wire [0:0]I40;
  wire [0:0]I41;
  wire I43;
  wire I44;
  wire [9:0]I47;
  wire [9:0]I48;
  wire I49;
  wire I5;
  wire I6;
  wire I7;
  wire I8;
  wire O1;
  wire [9:0]O2;
  wire O27;
  wire O28;
  wire O29;
  wire O3;
  wire [3:0]O30;
  wire [3:0]O31;
  wire [0:0]O32;
  wire O33;
  wire O34;
  wire [0:0]O35;
  wire O4;
  wire O5;
  wire [0:0]O7;
  wire [0:0]O9;
  wire [9:0]Q;
  wire S2_IBUF;
  wire barrier_bounce;
  wire barrier_bounce_ok;
  wire clk25_BUFG;
  wire game_lost;
  wire n_0_barrier_bounce_ok_i_1;
  wire \n_0_brick_bounce[1][8]_i_16 ;
  wire \n_0_brick_bounce[1][8]_i_17 ;
  wire \n_0_brick_bounce[1][8]_i_25 ;
  wire \n_0_brick_bounce[1][8]_i_26 ;
  wire \n_0_brick_bounce[1][8]_i_28 ;
  wire \n_0_brick_bounce[1][8]_i_29 ;
  wire \n_0_brick_bounce[1][8]_i_30 ;
  wire \n_0_brick_bounce[1][8]_i_31 ;
  wire \n_0_brick_bounce[1][8]_i_32 ;
  wire \n_0_brick_bounce[1][8]_i_33 ;
  wire \n_0_brick_bounce[1][8]_i_35 ;
  wire \n_0_brick_bounce[1][8]_i_36 ;
  wire \n_0_brick_bounce[1][8]_i_37 ;
  wire \n_0_brick_bounce[1][8]_i_55 ;
  wire \n_0_brick_bounce[1][8]_i_56 ;
  wire \n_0_brick_bounce[1][8]_i_58 ;
  wire \n_0_brick_bounce[1][8]_i_59 ;
  wire \n_0_brick_bounce[1][8]_i_60 ;
  wire \n_0_brick_bounce[1][8]_i_61 ;
  wire \n_0_brick_bounce[1][8]_i_62 ;
  wire \n_0_brick_bounce[1][8]_i_63 ;
  wire \n_0_brick_bounce[1][8]_i_64 ;
  wire \n_0_brick_bounce[1][8]_i_67 ;
  wire \n_0_brick_bounce[1][8]_i_68 ;
  wire \n_0_brick_bounce[1][8]_i_71 ;
  wire \n_0_brick_bounce[1][8]_i_72 ;
  wire \n_0_brick_bounce_reg[1][8]_i_15 ;
  wire \n_0_brick_bounce_reg[1][8]_i_24 ;
  wire \n_0_inc_type[0]_i_1 ;
  wire \n_0_inc_type[0]_i_2 ;
  wire \n_0_inc_type[0]_i_3 ;
  wire \n_0_inc_type[0]_i_4 ;
  wire \n_0_inc_type[0]_i_5 ;
  wire \n_0_inc_type[1]_i_1 ;
  wire \n_0_inc_type[1]_i_2 ;
  wire \n_0_inc_type[1]_i_3 ;
  wire \n_0_inc_type[1]_i_4 ;
  wire \n_0_inc_type[1]_i_5 ;
  wire \n_0_inc_type[2]_i_1 ;
  wire \n_0_inc_type[2]_i_2 ;
  wire \n_0_inc_type[2]_i_3 ;
  wire \n_0_inc_type[2]_i_4 ;
  wire \n_0_inc_type[2]_i_5 ;
  wire \n_0_inc_type[2]_i_6 ;
  wire \n_0_inc_type[2]_i_7 ;
  wire \n_0_inc_type[3]_i_1 ;
  wire \n_0_inc_type[3]_i_2 ;
  wire \n_0_inc_type[3]_i_3 ;
  wire \n_0_inc_type[3]_i_4 ;
  wire \n_0_inc_type[3]_i_5 ;
  wire \n_0_inc_type[3]_i_7 ;
  wire \n_0_inc_type_reg[0] ;
  wire \n_0_inc_type_reg[1] ;
  wire \n_0_inc_type_reg[2] ;
  wire \n_0_inc_type_reg[3] ;
  wire \n_0_pong_bounce[0]_i_1 ;
  wire \n_0_pong_bounce[1]_i_1 ;
  wire \n_0_pong_bounce[1]_i_2 ;
  wire \n_0_tempo[0]_i_1 ;
  wire \n_0_tempo[1]_i_1 ;
  wire \n_0_tempo[2]_i_1 ;
  wire \n_0_tempo[2]_i_2 ;
  wire \n_0_tempo_reg[0] ;
  wire \n_0_tempo_reg[1] ;
  wire \n_0_tempo_reg[2] ;
  wire n_0_tempo_start_i_1;
  wire n_0_tempo_start_i_2;
  wire n_0_tempo_start_reg;
  wire \n_0_xball[0]_i_1 ;
  wire \n_0_xball[0]_i_2 ;
  wire \n_0_xball[0]_i_3 ;
  wire \n_0_xball[0]_i_5 ;
  wire \n_0_xball[0]_i_6 ;
  wire \n_0_xball[0]_i_7 ;
  wire \n_0_xball[0]_i_8 ;
  wire \n_0_xball[0]_i_9 ;
  wire \n_0_xball[1]_i_1 ;
  wire \n_0_xball[1]_i_10 ;
  wire \n_0_xball[1]_i_2 ;
  wire \n_0_xball[1]_i_3 ;
  wire \n_0_xball[1]_i_4 ;
  wire \n_0_xball[1]_i_5 ;
  wire \n_0_xball[1]_i_6 ;
  wire \n_0_xball[1]_i_7 ;
  wire \n_0_xball[1]_i_8 ;
  wire \n_0_xball[1]_i_9 ;
  wire \n_0_xball[2]_i_1 ;
  wire \n_0_xball[2]_i_10 ;
  wire \n_0_xball[2]_i_11 ;
  wire \n_0_xball[2]_i_12 ;
  wire \n_0_xball[2]_i_2 ;
  wire \n_0_xball[2]_i_3 ;
  wire \n_0_xball[2]_i_4 ;
  wire \n_0_xball[2]_i_5 ;
  wire \n_0_xball[2]_i_6 ;
  wire \n_0_xball[2]_i_7 ;
  wire \n_0_xball[2]_i_8 ;
  wire \n_0_xball[2]_i_9 ;
  wire \n_0_xball[3]_i_1 ;
  wire \n_0_xball[3]_i_10 ;
  wire \n_0_xball[3]_i_11 ;
  wire \n_0_xball[3]_i_12 ;
  wire \n_0_xball[3]_i_13 ;
  wire \n_0_xball[3]_i_14 ;
  wire \n_0_xball[3]_i_15 ;
  wire \n_0_xball[3]_i_16 ;
  wire \n_0_xball[3]_i_17 ;
  wire \n_0_xball[3]_i_2 ;
  wire \n_0_xball[3]_i_3 ;
  wire \n_0_xball[3]_i_4 ;
  wire \n_0_xball[3]_i_5 ;
  wire \n_0_xball[3]_i_6 ;
  wire \n_0_xball[3]_i_7 ;
  wire \n_0_xball[3]_i_8 ;
  wire \n_0_xball[3]_i_9 ;
  wire \n_0_xball[4]_i_10 ;
  wire \n_0_xball[4]_i_11 ;
  wire \n_0_xball[4]_i_12 ;
  wire \n_0_xball[4]_i_13 ;
  wire \n_0_xball[4]_i_14 ;
  wire \n_0_xball[4]_i_15 ;
  wire \n_0_xball[4]_i_16 ;
  wire \n_0_xball[4]_i_17 ;
  wire \n_0_xball[4]_i_18 ;
  wire \n_0_xball[4]_i_3 ;
  wire \n_0_xball[4]_i_4 ;
  wire \n_0_xball[4]_i_5 ;
  wire \n_0_xball[4]_i_6 ;
  wire \n_0_xball[4]_i_7 ;
  wire \n_0_xball[4]_i_8 ;
  wire \n_0_xball[4]_i_9 ;
  wire \n_0_xball[5]_i_1 ;
  wire \n_0_xball[5]_i_10 ;
  wire \n_0_xball[5]_i_11 ;
  wire \n_0_xball[5]_i_12 ;
  wire \n_0_xball[5]_i_13 ;
  wire \n_0_xball[5]_i_14 ;
  wire \n_0_xball[5]_i_15 ;
  wire \n_0_xball[5]_i_16 ;
  wire \n_0_xball[5]_i_17 ;
  wire \n_0_xball[5]_i_2 ;
  wire \n_0_xball[5]_i_3 ;
  wire \n_0_xball[5]_i_4 ;
  wire \n_0_xball[5]_i_5 ;
  wire \n_0_xball[5]_i_6 ;
  wire \n_0_xball[5]_i_7 ;
  wire \n_0_xball[5]_i_8 ;
  wire \n_0_xball[5]_i_9 ;
  wire \n_0_xball[6]_i_1 ;
  wire \n_0_xball[6]_i_10 ;
  wire \n_0_xball[6]_i_11 ;
  wire \n_0_xball[6]_i_12 ;
  wire \n_0_xball[6]_i_13 ;
  wire \n_0_xball[6]_i_14 ;
  wire \n_0_xball[6]_i_15 ;
  wire \n_0_xball[6]_i_16 ;
  wire \n_0_xball[6]_i_17 ;
  wire \n_0_xball[6]_i_18 ;
  wire \n_0_xball[6]_i_19 ;
  wire \n_0_xball[6]_i_2 ;
  wire \n_0_xball[6]_i_20 ;
  wire \n_0_xball[6]_i_21 ;
  wire \n_0_xball[6]_i_3 ;
  wire \n_0_xball[6]_i_4 ;
  wire \n_0_xball[6]_i_5 ;
  wire \n_0_xball[6]_i_6 ;
  wire \n_0_xball[6]_i_7 ;
  wire \n_0_xball[6]_i_8 ;
  wire \n_0_xball[6]_i_9 ;
  wire \n_0_xball[7]_i_1 ;
  wire \n_0_xball[7]_i_10 ;
  wire \n_0_xball[7]_i_11 ;
  wire \n_0_xball[7]_i_12 ;
  wire \n_0_xball[7]_i_13 ;
  wire \n_0_xball[7]_i_14 ;
  wire \n_0_xball[7]_i_15 ;
  wire \n_0_xball[7]_i_16 ;
  wire \n_0_xball[7]_i_17 ;
  wire \n_0_xball[7]_i_18 ;
  wire \n_0_xball[7]_i_19 ;
  wire \n_0_xball[7]_i_2 ;
  wire \n_0_xball[7]_i_20 ;
  wire \n_0_xball[7]_i_21 ;
  wire \n_0_xball[7]_i_22 ;
  wire \n_0_xball[7]_i_23 ;
  wire \n_0_xball[7]_i_24 ;
  wire \n_0_xball[7]_i_25 ;
  wire \n_0_xball[7]_i_26 ;
  wire \n_0_xball[7]_i_3 ;
  wire \n_0_xball[7]_i_4 ;
  wire \n_0_xball[7]_i_6 ;
  wire \n_0_xball[7]_i_7 ;
  wire \n_0_xball[7]_i_8 ;
  wire \n_0_xball[7]_i_9 ;
  wire \n_0_xball[8]_i_1 ;
  wire \n_0_xball[8]_i_10 ;
  wire \n_0_xball[8]_i_11 ;
  wire \n_0_xball[8]_i_12 ;
  wire \n_0_xball[8]_i_13 ;
  wire \n_0_xball[8]_i_14 ;
  wire \n_0_xball[8]_i_15 ;
  wire \n_0_xball[8]_i_16 ;
  wire \n_0_xball[8]_i_17 ;
  wire \n_0_xball[8]_i_18 ;
  wire \n_0_xball[8]_i_2 ;
  wire \n_0_xball[8]_i_3 ;
  wire \n_0_xball[8]_i_4 ;
  wire \n_0_xball[8]_i_5 ;
  wire \n_0_xball[8]_i_6 ;
  wire \n_0_xball[8]_i_7 ;
  wire \n_0_xball[8]_i_8 ;
  wire \n_0_xball[8]_i_9 ;
  wire \n_0_xball[9]_i_1 ;
  wire \n_0_xball[9]_i_10 ;
  wire \n_0_xball[9]_i_11 ;
  wire \n_0_xball[9]_i_12 ;
  wire \n_0_xball[9]_i_13 ;
  wire \n_0_xball[9]_i_15 ;
  wire \n_0_xball[9]_i_16 ;
  wire \n_0_xball[9]_i_17 ;
  wire \n_0_xball[9]_i_18 ;
  wire \n_0_xball[9]_i_19 ;
  wire \n_0_xball[9]_i_2 ;
  wire \n_0_xball[9]_i_20 ;
  wire \n_0_xball[9]_i_21 ;
  wire \n_0_xball[9]_i_22 ;
  wire \n_0_xball[9]_i_23 ;
  wire \n_0_xball[9]_i_24 ;
  wire \n_0_xball[9]_i_25 ;
  wire \n_0_xball[9]_i_26 ;
  wire \n_0_xball[9]_i_27 ;
  wire \n_0_xball[9]_i_28 ;
  wire \n_0_xball[9]_i_29 ;
  wire \n_0_xball[9]_i_3 ;
  wire \n_0_xball[9]_i_30 ;
  wire \n_0_xball[9]_i_31 ;
  wire \n_0_xball[9]_i_32 ;
  wire \n_0_xball[9]_i_33 ;
  wire \n_0_xball[9]_i_34 ;
  wire \n_0_xball[9]_i_4 ;
  wire \n_0_xball[9]_i_5 ;
  wire \n_0_xball[9]_i_6 ;
  wire \n_0_xball[9]_i_7 ;
  wire \n_0_xball[9]_i_9 ;
  wire \n_0_xball_reg[0]_i_4 ;
  wire \n_0_xball_reg[7]_i_5 ;
  wire \n_0_yball[0]_i_1 ;
  wire \n_0_yball[0]_i_3 ;
  wire \n_0_yball[0]_i_4 ;
  wire \n_0_yball[0]_i_5 ;
  wire \n_0_yball[0]_i_6 ;
  wire \n_0_yball[0]_i_7 ;
  wire \n_0_yball[1]_i_1 ;
  wire \n_0_yball[1]_i_2 ;
  wire \n_0_yball[1]_i_3 ;
  wire \n_0_yball[1]_i_4 ;
  wire \n_0_yball[1]_i_5 ;
  wire \n_0_yball[1]_i_6 ;
  wire \n_0_yball[2]_i_1 ;
  wire \n_0_yball[2]_i_10 ;
  wire \n_0_yball[2]_i_11 ;
  wire \n_0_yball[2]_i_2 ;
  wire \n_0_yball[2]_i_6 ;
  wire \n_0_yball[2]_i_7 ;
  wire \n_0_yball[2]_i_8 ;
  wire \n_0_yball[2]_i_9 ;
  wire \n_0_yball[3]_i_1 ;
  wire \n_0_yball[3]_i_10 ;
  wire \n_0_yball[3]_i_11 ;
  wire \n_0_yball[3]_i_12 ;
  wire \n_0_yball[3]_i_13 ;
  wire \n_0_yball[3]_i_2 ;
  wire \n_0_yball[3]_i_3 ;
  wire \n_0_yball[3]_i_4 ;
  wire \n_0_yball[3]_i_5 ;
  wire \n_0_yball[3]_i_6 ;
  wire \n_0_yball[3]_i_7 ;
  wire \n_0_yball[3]_i_8 ;
  wire \n_0_yball[3]_i_9 ;
  wire \n_0_yball[4]_i_1 ;
  wire \n_0_yball[4]_i_10 ;
  wire \n_0_yball[4]_i_11 ;
  wire \n_0_yball[4]_i_12 ;
  wire \n_0_yball[4]_i_13 ;
  wire \n_0_yball[4]_i_14 ;
  wire \n_0_yball[4]_i_15 ;
  wire \n_0_yball[4]_i_16 ;
  wire \n_0_yball[4]_i_17 ;
  wire \n_0_yball[4]_i_18 ;
  wire \n_0_yball[4]_i_19 ;
  wire \n_0_yball[4]_i_2 ;
  wire \n_0_yball[4]_i_20 ;
  wire \n_0_yball[4]_i_21 ;
  wire \n_0_yball[4]_i_22 ;
  wire \n_0_yball[4]_i_23 ;
  wire \n_0_yball[4]_i_24 ;
  wire \n_0_yball[4]_i_25 ;
  wire \n_0_yball[4]_i_26 ;
  wire \n_0_yball[4]_i_27 ;
  wire \n_0_yball[4]_i_28 ;
  wire \n_0_yball[4]_i_29 ;
  wire \n_0_yball[4]_i_30 ;
  wire \n_0_yball[4]_i_31 ;
  wire \n_0_yball[4]_i_4 ;
  wire \n_0_yball[4]_i_6 ;
  wire \n_0_yball[4]_i_8 ;
  wire \n_0_yball[4]_i_9 ;
  wire \n_0_yball[5]_i_1 ;
  wire \n_0_yball[5]_i_10 ;
  wire \n_0_yball[5]_i_11 ;
  wire \n_0_yball[5]_i_13 ;
  wire \n_0_yball[5]_i_14 ;
  wire \n_0_yball[5]_i_15 ;
  wire \n_0_yball[5]_i_16 ;
  wire \n_0_yball[5]_i_17 ;
  wire \n_0_yball[5]_i_18 ;
  wire \n_0_yball[5]_i_19 ;
  wire \n_0_yball[5]_i_20 ;
  wire \n_0_yball[5]_i_21 ;
  wire \n_0_yball[5]_i_3 ;
  wire \n_0_yball[5]_i_4 ;
  wire \n_0_yball[5]_i_5 ;
  wire \n_0_yball[5]_i_6 ;
  wire \n_0_yball[5]_i_7 ;
  wire \n_0_yball[5]_i_8 ;
  wire \n_0_yball[5]_i_9 ;
  wire \n_0_yball[6]_i_1 ;
  wire \n_0_yball[6]_i_10 ;
  wire \n_0_yball[6]_i_11 ;
  wire \n_0_yball[6]_i_12 ;
  wire \n_0_yball[6]_i_13 ;
  wire \n_0_yball[6]_i_14 ;
  wire \n_0_yball[6]_i_15 ;
  wire \n_0_yball[6]_i_16 ;
  wire \n_0_yball[6]_i_17 ;
  wire \n_0_yball[6]_i_18 ;
  wire \n_0_yball[6]_i_19 ;
  wire \n_0_yball[6]_i_2 ;
  wire \n_0_yball[6]_i_21 ;
  wire \n_0_yball[6]_i_22 ;
  wire \n_0_yball[6]_i_23 ;
  wire \n_0_yball[6]_i_24 ;
  wire \n_0_yball[6]_i_25 ;
  wire \n_0_yball[6]_i_4 ;
  wire \n_0_yball[6]_i_6 ;
  wire \n_0_yball[6]_i_7 ;
  wire \n_0_yball[6]_i_8 ;
  wire \n_0_yball[6]_i_9 ;
  wire \n_0_yball[7]_i_1 ;
  wire \n_0_yball[7]_i_10 ;
  wire \n_0_yball[7]_i_13 ;
  wire \n_0_yball[7]_i_14 ;
  wire \n_0_yball[7]_i_15 ;
  wire \n_0_yball[7]_i_16 ;
  wire \n_0_yball[7]_i_17 ;
  wire \n_0_yball[7]_i_18 ;
  wire \n_0_yball[7]_i_19 ;
  wire \n_0_yball[7]_i_2 ;
  wire \n_0_yball[7]_i_20 ;
  wire \n_0_yball[7]_i_21 ;
  wire \n_0_yball[7]_i_22 ;
  wire \n_0_yball[7]_i_23 ;
  wire \n_0_yball[7]_i_24 ;
  wire \n_0_yball[7]_i_25 ;
  wire \n_0_yball[7]_i_3 ;
  wire \n_0_yball[7]_i_4 ;
  wire \n_0_yball[7]_i_5 ;
  wire \n_0_yball[7]_i_6 ;
  wire \n_0_yball[7]_i_7 ;
  wire \n_0_yball[7]_i_8 ;
  wire \n_0_yball[7]_i_9 ;
  wire \n_0_yball[8]_i_1 ;
  wire \n_0_yball[8]_i_10 ;
  wire \n_0_yball[8]_i_11 ;
  wire \n_0_yball[8]_i_12 ;
  wire \n_0_yball[8]_i_13 ;
  wire \n_0_yball[8]_i_14 ;
  wire \n_0_yball[8]_i_15 ;
  wire \n_0_yball[8]_i_16 ;
  wire \n_0_yball[8]_i_17 ;
  wire \n_0_yball[8]_i_18 ;
  wire \n_0_yball[8]_i_19 ;
  wire \n_0_yball[8]_i_2 ;
  wire \n_0_yball[8]_i_20 ;
  wire \n_0_yball[8]_i_21 ;
  wire \n_0_yball[8]_i_22 ;
  wire \n_0_yball[8]_i_23 ;
  wire \n_0_yball[8]_i_24 ;
  wire \n_0_yball[8]_i_25 ;
  wire \n_0_yball[8]_i_6 ;
  wire \n_0_yball[8]_i_7 ;
  wire \n_0_yball[8]_i_8 ;
  wire \n_0_yball[8]_i_9 ;
  wire \n_0_yball[9]_i_1 ;
  wire \n_0_yball[9]_i_10 ;
  wire \n_0_yball[9]_i_11 ;
  wire \n_0_yball[9]_i_12 ;
  wire \n_0_yball[9]_i_13 ;
  wire \n_0_yball[9]_i_14 ;
  wire \n_0_yball[9]_i_15 ;
  wire \n_0_yball[9]_i_17 ;
  wire \n_0_yball[9]_i_18 ;
  wire \n_0_yball[9]_i_19 ;
  wire \n_0_yball[9]_i_2 ;
  wire \n_0_yball[9]_i_20 ;
  wire \n_0_yball[9]_i_21 ;
  wire \n_0_yball[9]_i_22 ;
  wire \n_0_yball[9]_i_23 ;
  wire \n_0_yball[9]_i_24 ;
  wire \n_0_yball[9]_i_25 ;
  wire \n_0_yball[9]_i_26 ;
  wire \n_0_yball[9]_i_27 ;
  wire \n_0_yball[9]_i_3 ;
  wire \n_0_yball[9]_i_4 ;
  wire \n_0_yball[9]_i_5 ;
  wire \n_0_yball[9]_i_6 ;
  wire \n_0_yball[9]_i_7 ;
  wire \n_0_yball[9]_i_8 ;
  wire \n_0_yball[9]_i_9 ;
  wire \n_0_yball_reg[0]_i_2 ;
  wire \n_0_yball_reg[2]_i_4 ;
  wire \n_0_yball_reg[2]_i_5 ;
  wire \n_0_yball_reg[4]_i_3 ;
  wire \n_0_yball_reg[4]_i_5 ;
  wire \n_0_yball_reg[4]_i_7 ;
  wire \n_0_yball_reg[5]_i_12 ;
  wire \n_0_yball_reg[5]_i_2 ;
  wire \n_0_yball_reg[6]_i_20 ;
  wire \n_0_yball_reg[6]_i_5 ;
  wire \n_0_yball_reg[7]_i_11 ;
  wire \n_0_yball_reg[7]_i_12 ;
  wire \n_0_yball_reg[8]_i_3 ;
  wire \n_0_yball_reg[8]_i_5 ;
  wire \n_0_zone_pad_bounce[0]_i_1 ;
  wire \n_0_zone_pad_bounce[1]_i_1 ;
  wire \n_0_zone_pad_bounce[2]_i_1 ;
  wire \n_0_zone_pad_bounce[3]_i_1 ;
  wire \n_0_zone_pad_bounce[4]_i_1 ;
  wire \n_0_zone_pad_bounce[4]_i_2 ;
  wire \n_1_brick_bounce_reg[1][8]_i_15 ;
  wire \n_1_brick_bounce_reg[1][8]_i_24 ;
  wire \n_1_xball_reg[0]_i_4 ;
  wire \n_1_xball_reg[7]_i_5 ;
  wire \n_1_yball_reg[0]_i_2 ;
  wire \n_1_yball_reg[4]_i_3 ;
  wire \n_2_brick_bounce_reg[1][8]_i_15 ;
  wire \n_2_brick_bounce_reg[1][8]_i_24 ;
  wire \n_2_xball_reg[0]_i_4 ;
  wire \n_2_xball_reg[7]_i_5 ;
  wire \n_2_yball_reg[0]_i_2 ;
  wire \n_2_yball_reg[4]_i_3 ;
  wire \n_3_brick_bounce_reg[1][8]_i_15 ;
  wire \n_3_brick_bounce_reg[1][8]_i_24 ;
  wire \n_3_xball_reg[0]_i_4 ;
  wire \n_3_xball_reg[7]_i_5 ;
  wire \n_3_xball_reg[9]_i_14 ;
  wire \n_3_yball_reg[0]_i_2 ;
  wire \n_3_yball_reg[4]_i_3 ;
  wire \n_3_yball_reg[9]_i_16 ;
  wire \n_4_yball_reg[0]_i_2 ;
  wire \n_4_yball_reg[4]_i_3 ;
  wire \n_5_yball_reg[0]_i_2 ;
  wire \n_5_yball_reg[4]_i_3 ;
  wire \n_6_yball_reg[0]_i_2 ;
  wire \n_6_yball_reg[4]_i_3 ;
  wire \n_6_yball_reg[9]_i_16 ;
  wire \n_7_yball_reg[0]_i_2 ;
  wire \n_7_yball_reg[4]_i_3 ;
  wire \n_7_yball_reg[9]_i_16 ;
  wire pad_center_bounce;
  wire pad_far_left_bounce;
  wire pad_far_right_bounce;
  wire pad_left_bounce;
  wire pad_right_bounce;
  wire [9:0]plusOp0_out;
  wire pong_left_bounce;
  wire pong_right_bounce;
  wire [4:0]zone_pad_bounce;
  wire [3:1]\NLW_brick_bounce_reg[1][8]_i_11_CO_UNCONNECTED ;
  wire [3:0]\NLW_brick_bounce_reg[1][8]_i_11_O_UNCONNECTED ;
  wire [3:1]\NLW_brick_bounce_reg[1][8]_i_14_CO_UNCONNECTED ;
  wire [3:0]\NLW_brick_bounce_reg[1][8]_i_14_O_UNCONNECTED ;
  wire [3:0]\NLW_brick_bounce_reg[1][8]_i_15_O_UNCONNECTED ;
  wire [3:0]\NLW_brick_bounce_reg[1][8]_i_24_O_UNCONNECTED ;
  wire [3:1]\NLW_xball_reg[9]_i_14_CO_UNCONNECTED ;
  wire [3:2]\NLW_xball_reg[9]_i_14_O_UNCONNECTED ;
  wire [3:1]\NLW_yball_reg[9]_i_16_CO_UNCONNECTED ;
  wire [3:2]\NLW_yball_reg[9]_i_16_O_UNCONNECTED ;

LUT6 #(
    .INIT(64'h00000002FFFF0002)) 
     barrier_bounce_ok_i_1
       (.I0(barrier_bounce),
        .I1(\n_0_tempo_reg[2] ),
        .I2(\n_0_tempo_reg[1] ),
        .I3(\n_0_tempo_reg[0] ),
        .I4(barrier_bounce_ok),
        .I5(I43),
        .O(n_0_barrier_bounce_ok_i_1));
FDCE #(
    .INIT(1'b0)) 
     barrier_bounce_ok_reg
       (.C(clk25_BUFG),
        .CE(1'b1),
        .CLR(I1),
        .D(n_0_barrier_bounce_ok_i_1),
        .Q(barrier_bounce_ok));
LUT6 #(
    .INIT(64'h1540FFFF00001540)) 
     \brick_bounce[1][8]_i_16 
       (.I0(I47[8]),
        .I1(\n_0_brick_bounce[1][8]_i_35 ),
        .I2(O2[7]),
        .I3(O2[8]),
        .I4(I47[9]),
        .I5(\n_0_brick_bounce[1][8]_i_36 ),
        .O(\n_0_brick_bounce[1][8]_i_16 ));
LUT5 #(
    .INIT(32'h28888222)) 
     \brick_bounce[1][8]_i_17 
       (.I0(\n_0_brick_bounce[1][8]_i_37 ),
        .I1(O2[8]),
        .I2(O2[7]),
        .I3(\n_0_brick_bounce[1][8]_i_35 ),
        .I4(I47[8]),
        .O(\n_0_brick_bounce[1][8]_i_17 ));
LUT4 #(
    .INIT(16'h9009)) 
     \brick_bounce[1][8]_i_20 
       (.I0(Q[9]),
        .I1(I48[9]),
        .I2(Q[8]),
        .I3(I48[8]),
        .O(O35));
LUT4 #(
    .INIT(16'h9009)) 
     \brick_bounce[1][8]_i_23 
       (.I0(O2[9]),
        .I1(I47[9]),
        .I2(O2[8]),
        .I3(I47[8]),
        .O(O32));
LUT6 #(
    .INIT(64'h1540FFFF00001540)) 
     \brick_bounce[1][8]_i_25 
       (.I0(I48[8]),
        .I1(\n_0_brick_bounce[1][8]_i_62 ),
        .I2(Q[7]),
        .I3(Q[8]),
        .I4(I48[9]),
        .I5(\n_0_brick_bounce[1][8]_i_63 ),
        .O(\n_0_brick_bounce[1][8]_i_25 ));
LUT5 #(
    .INIT(32'h28888222)) 
     \brick_bounce[1][8]_i_26 
       (.I0(\n_0_brick_bounce[1][8]_i_64 ),
        .I1(Q[8]),
        .I2(Q[7]),
        .I3(\n_0_brick_bounce[1][8]_i_62 ),
        .I4(I48[8]),
        .O(\n_0_brick_bounce[1][8]_i_26 ));
LUT6 #(
    .INIT(64'h15403FFF0000D540)) 
     \brick_bounce[1][8]_i_28 
       (.I0(I47[4]),
        .I1(O2[3]),
        .I2(\n_0_brick_bounce[1][8]_i_67 ),
        .I3(O2[4]),
        .I4(I47[5]),
        .I5(O2[5]),
        .O(\n_0_brick_bounce[1][8]_i_28 ));
LUT6 #(
    .INIT(64'h000154035400FFFD)) 
     \brick_bounce[1][8]_i_29 
       (.I0(I47[2]),
        .I1(O2[0]),
        .I2(O2[1]),
        .I3(O2[2]),
        .I4(I47[3]),
        .I5(O2[3]),
        .O(\n_0_brick_bounce[1][8]_i_29 ));
LUT4 #(
    .INIT(16'h091D)) 
     \brick_bounce[1][8]_i_30 
       (.I0(O2[0]),
        .I1(O2[1]),
        .I2(I47[1]),
        .I3(I47[0]),
        .O(\n_0_brick_bounce[1][8]_i_30 ));
LUT4 #(
    .INIT(16'h9009)) 
     \brick_bounce[1][8]_i_31 
       (.I0(O33),
        .I1(I47[7]),
        .I2(O34),
        .I3(I47[6]),
        .O(\n_0_brick_bounce[1][8]_i_31 ));
LUT6 #(
    .INIT(64'h0990909060090909)) 
     \brick_bounce[1][8]_i_32 
       (.I0(O2[5]),
        .I1(I47[5]),
        .I2(O2[4]),
        .I3(\n_0_brick_bounce[1][8]_i_67 ),
        .I4(O2[3]),
        .I5(I47[4]),
        .O(\n_0_brick_bounce[1][8]_i_32 ));
LUT6 #(
    .INIT(64'h6060600906060660)) 
     \brick_bounce[1][8]_i_33 
       (.I0(O2[3]),
        .I1(I47[3]),
        .I2(O2[2]),
        .I3(O2[1]),
        .I4(O2[0]),
        .I5(I47[2]),
        .O(\n_0_brick_bounce[1][8]_i_33 ));
(* SOFT_HLUTNM = "soft_lutpair43" *) 
   LUT5 #(
    .INIT(32'h80000000)) 
     \brick_bounce[1][8]_i_35 
       (.I0(\n_0_brick_bounce[1][8]_i_67 ),
        .I1(O2[5]),
        .I2(O2[6]),
        .I3(O2[3]),
        .I4(O2[4]),
        .O(\n_0_brick_bounce[1][8]_i_35 ));
LUT5 #(
    .INIT(32'h9AAAAAAA)) 
     \brick_bounce[1][8]_i_36 
       (.I0(O2[9]),
        .I1(\n_0_brick_bounce[1][8]_i_68 ),
        .I2(\n_0_brick_bounce[1][8]_i_67 ),
        .I3(O2[8]),
        .I4(O2[7]),
        .O(\n_0_brick_bounce[1][8]_i_36 ));
LUT6 #(
    .INIT(64'hAAAA6AAA55559555)) 
     \brick_bounce[1][8]_i_37 
       (.I0(I47[9]),
        .I1(O2[7]),
        .I2(O2[8]),
        .I3(\n_0_brick_bounce[1][8]_i_67 ),
        .I4(\n_0_brick_bounce[1][8]_i_68 ),
        .I5(O2[9]),
        .O(\n_0_brick_bounce[1][8]_i_37 ));
LUT4 #(
    .INIT(16'h9009)) 
     \brick_bounce[1][8]_i_42 
       (.I0(Q[7]),
        .I1(I48[7]),
        .I2(Q[6]),
        .I3(I48[6]),
        .O(O30[3]));
LUT4 #(
    .INIT(16'h9009)) 
     \brick_bounce[1][8]_i_43 
       (.I0(Q[5]),
        .I1(I48[5]),
        .I2(Q[4]),
        .I3(I48[4]),
        .O(O30[2]));
LUT4 #(
    .INIT(16'h9009)) 
     \brick_bounce[1][8]_i_44 
       (.I0(Q[3]),
        .I1(I48[3]),
        .I2(Q[2]),
        .I3(I48[2]),
        .O(O30[1]));
LUT4 #(
    .INIT(16'h9009)) 
     \brick_bounce[1][8]_i_45 
       (.I0(Q[1]),
        .I1(I48[1]),
        .I2(Q[0]),
        .I3(I48[0]),
        .O(O30[0]));
LUT4 #(
    .INIT(16'h9009)) 
     \brick_bounce[1][8]_i_50 
       (.I0(O2[7]),
        .I1(I47[7]),
        .I2(O2[6]),
        .I3(I47[6]),
        .O(O31[3]));
LUT4 #(
    .INIT(16'h9009)) 
     \brick_bounce[1][8]_i_51 
       (.I0(O2[5]),
        .I1(I47[5]),
        .I2(O2[4]),
        .I3(I47[4]),
        .O(O31[2]));
LUT4 #(
    .INIT(16'h9009)) 
     \brick_bounce[1][8]_i_52 
       (.I0(O2[3]),
        .I1(I47[3]),
        .I2(O2[2]),
        .I3(I47[2]),
        .O(O31[1]));
LUT4 #(
    .INIT(16'h9009)) 
     \brick_bounce[1][8]_i_53 
       (.I0(O2[1]),
        .I1(I47[1]),
        .I2(O2[0]),
        .I3(I47[0]),
        .O(O31[0]));
LUT6 #(
    .INIT(64'h15403FFF0000D540)) 
     \brick_bounce[1][8]_i_55 
       (.I0(I48[4]),
        .I1(Q[3]),
        .I2(\n_0_brick_bounce[1][8]_i_71 ),
        .I3(Q[4]),
        .I4(I48[5]),
        .I5(Q[5]),
        .O(\n_0_brick_bounce[1][8]_i_55 ));
LUT6 #(
    .INIT(64'h000154035400FFFD)) 
     \brick_bounce[1][8]_i_56 
       (.I0(I48[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(I48[3]),
        .I5(Q[3]),
        .O(\n_0_brick_bounce[1][8]_i_56 ));
LUT4 #(
    .INIT(16'h9009)) 
     \brick_bounce[1][8]_i_58 
       (.I0(O28),
        .I1(I48[7]),
        .I2(O29),
        .I3(I48[6]),
        .O(\n_0_brick_bounce[1][8]_i_58 ));
LUT6 #(
    .INIT(64'h0990909060090909)) 
     \brick_bounce[1][8]_i_59 
       (.I0(Q[5]),
        .I1(I48[5]),
        .I2(Q[4]),
        .I3(\n_0_brick_bounce[1][8]_i_71 ),
        .I4(Q[3]),
        .I5(I48[4]),
        .O(\n_0_brick_bounce[1][8]_i_59 ));
LUT6 #(
    .INIT(64'h6060600906060660)) 
     \brick_bounce[1][8]_i_60 
       (.I0(Q[3]),
        .I1(I48[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(I48[2]),
        .O(\n_0_brick_bounce[1][8]_i_60 ));
LUT4 #(
    .INIT(16'h0690)) 
     \brick_bounce[1][8]_i_61 
       (.I0(Q[1]),
        .I1(I48[1]),
        .I2(Q[0]),
        .I3(I48[0]),
        .O(\n_0_brick_bounce[1][8]_i_61 ));
(* SOFT_HLUTNM = "soft_lutpair36" *) 
   LUT5 #(
    .INIT(32'h80000000)) 
     \brick_bounce[1][8]_i_62 
       (.I0(\n_0_brick_bounce[1][8]_i_71 ),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\n_0_brick_bounce[1][8]_i_62 ));
LUT5 #(
    .INIT(32'h9AAAAAAA)) 
     \brick_bounce[1][8]_i_63 
       (.I0(Q[9]),
        .I1(\n_0_brick_bounce[1][8]_i_72 ),
        .I2(\n_0_brick_bounce[1][8]_i_71 ),
        .I3(Q[8]),
        .I4(Q[7]),
        .O(\n_0_brick_bounce[1][8]_i_63 ));
LUT6 #(
    .INIT(64'hAAAA6AAA55559555)) 
     \brick_bounce[1][8]_i_64 
       (.I0(I48[9]),
        .I1(Q[7]),
        .I2(Q[8]),
        .I3(\n_0_brick_bounce[1][8]_i_71 ),
        .I4(\n_0_brick_bounce[1][8]_i_72 ),
        .I5(Q[9]),
        .O(\n_0_brick_bounce[1][8]_i_64 ));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \brick_bounce[1][8]_i_65 
       (.I0(O2[7]),
        .I1(O2[4]),
        .I2(O2[3]),
        .I3(O2[6]),
        .I4(O2[5]),
        .I5(\n_0_brick_bounce[1][8]_i_67 ),
        .O(O33));
(* SOFT_HLUTNM = "soft_lutpair43" *) 
   LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \brick_bounce[1][8]_i_66 
       (.I0(O2[6]),
        .I1(O2[4]),
        .I2(O2[3]),
        .I3(O2[5]),
        .I4(\n_0_brick_bounce[1][8]_i_67 ),
        .O(O34));
(* SOFT_HLUTNM = "soft_lutpair87" *) 
   LUT3 #(
    .INIT(8'hFE)) 
     \brick_bounce[1][8]_i_67 
       (.I0(O2[2]),
        .I1(O2[1]),
        .I2(O2[0]),
        .O(\n_0_brick_bounce[1][8]_i_67 ));
(* SOFT_HLUTNM = "soft_lutpair80" *) 
   LUT4 #(
    .INIT(16'h7FFF)) 
     \brick_bounce[1][8]_i_68 
       (.I0(O2[4]),
        .I1(O2[3]),
        .I2(O2[6]),
        .I3(O2[5]),
        .O(\n_0_brick_bounce[1][8]_i_68 ));
(* SOFT_HLUTNM = "soft_lutpair36" *) 
   LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \brick_bounce[1][8]_i_69 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(\n_0_brick_bounce[1][8]_i_71 ),
        .O(O29));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \brick_bounce[1][8]_i_70 
       (.I0(Q[7]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[6]),
        .I4(Q[5]),
        .I5(\n_0_brick_bounce[1][8]_i_71 ),
        .O(O28));
(* SOFT_HLUTNM = "soft_lutpair91" *) 
   LUT3 #(
    .INIT(8'hFE)) 
     \brick_bounce[1][8]_i_71 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\n_0_brick_bounce[1][8]_i_71 ));
(* SOFT_HLUTNM = "soft_lutpair81" *) 
   LUT4 #(
    .INIT(16'h7FFF)) 
     \brick_bounce[1][8]_i_72 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[6]),
        .I3(Q[5]),
        .O(\n_0_brick_bounce[1][8]_i_72 ));
CARRY4 \brick_bounce_reg[1][8]_i_11 
       (.CI(\n_0_brick_bounce_reg[1][8]_i_15 ),
        .CO({\NLW_brick_bounce_reg[1][8]_i_11_CO_UNCONNECTED [3:1],O9}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\n_0_brick_bounce[1][8]_i_16 }),
        .O(\NLW_brick_bounce_reg[1][8]_i_11_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\n_0_brick_bounce[1][8]_i_17 }));
CARRY4 \brick_bounce_reg[1][8]_i_14 
       (.CI(\n_0_brick_bounce_reg[1][8]_i_24 ),
        .CO({\NLW_brick_bounce_reg[1][8]_i_14_CO_UNCONNECTED [3:1],O7}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\n_0_brick_bounce[1][8]_i_25 }),
        .O(\NLW_brick_bounce_reg[1][8]_i_14_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\n_0_brick_bounce[1][8]_i_26 }));
CARRY4 \brick_bounce_reg[1][8]_i_15 
       (.CI(1'b0),
        .CO({\n_0_brick_bounce_reg[1][8]_i_15 ,\n_1_brick_bounce_reg[1][8]_i_15 ,\n_2_brick_bounce_reg[1][8]_i_15 ,\n_3_brick_bounce_reg[1][8]_i_15 }),
        .CYINIT(1'b1),
        .DI({I40,\n_0_brick_bounce[1][8]_i_28 ,\n_0_brick_bounce[1][8]_i_29 ,\n_0_brick_bounce[1][8]_i_30 }),
        .O(\NLW_brick_bounce_reg[1][8]_i_15_O_UNCONNECTED [3:0]),
        .S({\n_0_brick_bounce[1][8]_i_31 ,\n_0_brick_bounce[1][8]_i_32 ,\n_0_brick_bounce[1][8]_i_33 ,I41}));
CARRY4 \brick_bounce_reg[1][8]_i_24 
       (.CI(1'b0),
        .CO({\n_0_brick_bounce_reg[1][8]_i_24 ,\n_1_brick_bounce_reg[1][8]_i_24 ,\n_2_brick_bounce_reg[1][8]_i_24 ,\n_3_brick_bounce_reg[1][8]_i_24 }),
        .CYINIT(1'b1),
        .DI({I39[1],\n_0_brick_bounce[1][8]_i_55 ,\n_0_brick_bounce[1][8]_i_56 ,I39[0]}),
        .O(\NLW_brick_bounce_reg[1][8]_i_24_O_UNCONNECTED [3:0]),
        .S({\n_0_brick_bounce[1][8]_i_58 ,\n_0_brick_bounce[1][8]_i_59 ,\n_0_brick_bounce[1][8]_i_60 ,\n_0_brick_bounce[1][8]_i_61 }));
LUT6 #(
    .INIT(64'hC43FC43FC43F003B)) 
     \inc_type[0]_i_1 
       (.I0(barrier_bounce_ok),
        .I1(\n_0_inc_type[3]_i_5 ),
        .I2(I3),
        .I3(\n_0_inc_type_reg[0] ),
        .I4(\n_0_inc_type[0]_i_2 ),
        .I5(\n_0_inc_type[0]_i_3 ),
        .O(\n_0_inc_type[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair53" *) 
   LUT5 #(
    .INIT(32'hFFFFEF00)) 
     \inc_type[0]_i_2 
       (.I0(\n_0_inc_type_reg[2] ),
        .I1(\n_0_inc_type_reg[3] ),
        .I2(\n_0_inc_type_reg[0] ),
        .I3(zone_pad_bounce[3]),
        .I4(\n_0_inc_type[0]_i_4 ),
        .O(\n_0_inc_type[0]_i_2 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFF80000)) 
     \inc_type[0]_i_3 
       (.I0(\n_0_inc_type_reg[2] ),
        .I1(\n_0_inc_type_reg[1] ),
        .I2(\n_0_inc_type_reg[3] ),
        .I3(\n_0_inc_type_reg[0] ),
        .I4(zone_pad_bounce[2]),
        .I5(\n_0_inc_type[0]_i_5 ),
        .O(\n_0_inc_type[0]_i_3 ));
LUT6 #(
    .INIT(64'hFFFCFFFF00000008)) 
     \inc_type[0]_i_4 
       (.I0(zone_pad_bounce[0]),
        .I1(\n_0_inc_type_reg[2] ),
        .I2(\n_0_inc_type_reg[3] ),
        .I3(\n_0_inc_type_reg[1] ),
        .I4(\n_0_inc_type_reg[0] ),
        .I5(zone_pad_bounce[4]),
        .O(\n_0_inc_type[0]_i_4 ));
LUT6 #(
    .INIT(64'hAAAAAAAEAAAEAAAA)) 
     \inc_type[0]_i_5 
       (.I0(I3),
        .I1(zone_pad_bounce[1]),
        .I2(\n_0_inc_type_reg[0] ),
        .I3(\n_0_inc_type_reg[3] ),
        .I4(\n_0_inc_type_reg[2] ),
        .I5(\n_0_inc_type_reg[1] ),
        .O(\n_0_inc_type[0]_i_5 ));
LUT6 #(
    .INIT(64'h4FFFF44444FFF444)) 
     \inc_type[1]_i_1 
       (.I0(\n_0_inc_type[1]_i_2 ),
        .I1(\n_0_inc_type[2]_i_5 ),
        .I2(I3),
        .I3(\n_0_inc_type[3]_i_5 ),
        .I4(\n_0_inc_type_reg[1] ),
        .I5(barrier_bounce_ok),
        .O(\n_0_inc_type[1]_i_1 ));
LUT6 #(
    .INIT(64'h0000005700570057)) 
     \inc_type[1]_i_2 
       (.I0(zone_pad_bounce[1]),
        .I1(\n_0_inc_type_reg[3] ),
        .I2(\n_0_inc_type[1]_i_3 ),
        .I3(\n_0_inc_type[1]_i_4 ),
        .I4(\n_0_inc_type[2]_i_2 ),
        .I5(zone_pad_bounce[0]),
        .O(\n_0_inc_type[1]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair88" *) 
   LUT3 #(
    .INIT(8'hE7)) 
     \inc_type[1]_i_3 
       (.I0(\n_0_inc_type_reg[0] ),
        .I1(\n_0_inc_type_reg[1] ),
        .I2(\n_0_inc_type_reg[2] ),
        .O(\n_0_inc_type[1]_i_3 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFCA8FFA8)) 
     \inc_type[1]_i_4 
       (.I0(zone_pad_bounce[3]),
        .I1(\n_0_inc_type_reg[2] ),
        .I2(\n_0_inc_type_reg[3] ),
        .I3(zone_pad_bounce[2]),
        .I4(\n_0_inc_type_reg[1] ),
        .I5(\n_0_inc_type[1]_i_5 ),
        .O(\n_0_inc_type[1]_i_4 ));
LUT6 #(
    .INIT(64'hFFF0F0FFF0F0F0E0)) 
     \inc_type[1]_i_5 
       (.I0(\n_0_inc_type_reg[2] ),
        .I1(\n_0_inc_type_reg[3] ),
        .I2(zone_pad_bounce[4]),
        .I3(\n_0_inc_type_reg[0] ),
        .I4(\n_0_inc_type_reg[1] ),
        .I5(zone_pad_bounce[3]),
        .O(\n_0_inc_type[1]_i_5 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFF20000)) 
     \inc_type[2]_i_1 
       (.I0(zone_pad_bounce[0]),
        .I1(\n_0_inc_type[2]_i_2 ),
        .I2(\n_0_inc_type[2]_i_3 ),
        .I3(\n_0_inc_type[2]_i_4 ),
        .I4(\n_0_inc_type[2]_i_5 ),
        .I5(\n_0_inc_type[2]_i_6 ),
        .O(\n_0_inc_type[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair86" *) 
   LUT4 #(
    .INIT(16'h0313)) 
     \inc_type[2]_i_2 
       (.I0(\n_0_inc_type_reg[1] ),
        .I1(\n_0_inc_type_reg[3] ),
        .I2(\n_0_inc_type_reg[2] ),
        .I3(\n_0_inc_type_reg[0] ),
        .O(\n_0_inc_type[2]_i_2 ));
LUT6 #(
    .INIT(64'hFCFCFCCCFCCCFC88)) 
     \inc_type[2]_i_3 
       (.I0(\n_0_inc_type_reg[3] ),
        .I1(zone_pad_bounce[3]),
        .I2(zone_pad_bounce[1]),
        .I3(\n_0_inc_type_reg[2] ),
        .I4(\n_0_inc_type_reg[1] ),
        .I5(\n_0_inc_type_reg[0] ),
        .O(\n_0_inc_type[2]_i_3 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFE0F0E0)) 
     \inc_type[2]_i_4 
       (.I0(\n_0_inc_type_reg[1] ),
        .I1(\n_0_inc_type_reg[2] ),
        .I2(zone_pad_bounce[2]),
        .I3(\n_0_inc_type_reg[3] ),
        .I4(zone_pad_bounce[1]),
        .I5(zone_pad_bounce[4]),
        .O(\n_0_inc_type[2]_i_4 ));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \inc_type[2]_i_5 
       (.I0(barrier_bounce_ok),
        .I1(O3),
        .I2(O4),
        .I3(I7),
        .I4(I8),
        .I5(I3),
        .O(\n_0_inc_type[2]_i_5 ));
LUT6 #(
    .INIT(64'h88B888B888B8B8BB)) 
     \inc_type[2]_i_6 
       (.I0(\n_0_inc_type[2]_i_7 ),
        .I1(\n_0_inc_type[3]_i_5 ),
        .I2(\n_0_inc_type_reg[3] ),
        .I3(\n_0_inc_type_reg[1] ),
        .I4(O4),
        .I5(I8),
        .O(\n_0_inc_type[2]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair55" *) 
   LUT5 #(
    .INIT(32'hB2B24D00)) 
     \inc_type[2]_i_7 
       (.I0(\n_0_inc_type_reg[1] ),
        .I1(\n_0_inc_type_reg[3] ),
        .I2(\n_0_inc_type_reg[2] ),
        .I3(barrier_bounce_ok),
        .I4(I3),
        .O(\n_0_inc_type[2]_i_7 ));
LUT6 #(
    .INIT(64'h1000101010001000)) 
     \inc_type[3]_i_1 
       (.I0(I44),
        .I1(I1),
        .I2(I43),
        .I3(\n_0_inc_type[3]_i_3 ),
        .I4(\n_0_inc_type[3]_i_4 ),
        .I5(\n_0_inc_type[3]_i_5 ),
        .O(\n_0_inc_type[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair56" *) 
   LUT5 #(
    .INIT(32'h3F37C0C4)) 
     \inc_type[3]_i_2 
       (.I0(O5),
        .I1(\n_0_inc_type[3]_i_5 ),
        .I2(I3),
        .I3(barrier_bounce_ok),
        .I4(\n_0_inc_type_reg[3] ),
        .O(\n_0_inc_type[3]_i_2 ));
LUT6 #(
    .INIT(64'h55005C55CC5C00CC)) 
     \inc_type[3]_i_3 
       (.I0(\n_0_yball[9]_i_4 ),
        .I1(I5),
        .I2(\n_0_inc_type_reg[0] ),
        .I3(\n_0_inc_type_reg[3] ),
        .I4(\n_0_inc_type_reg[1] ),
        .I5(\n_0_inc_type_reg[2] ),
        .O(\n_0_inc_type[3]_i_3 ));
LUT6 #(
    .INIT(64'h181818FF18181800)) 
     \inc_type[3]_i_4 
       (.I0(\n_0_inc_type_reg[2] ),
        .I1(\n_0_inc_type_reg[1] ),
        .I2(\n_0_inc_type_reg[3] ),
        .I3(barrier_bounce_ok),
        .I4(I3),
        .I5(\n_0_inc_type[3]_i_7 ),
        .O(\n_0_inc_type[3]_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair52" *) 
   LUT4 #(
    .INIT(16'h0001)) 
     \inc_type[3]_i_5 
       (.I0(O4),
        .I1(O3),
        .I2(I8),
        .I3(I7),
        .O(\n_0_inc_type[3]_i_5 ));
LUT5 #(
    .INIT(32'h00000001)) 
     \inc_type[3]_i_6 
       (.I0(zone_pad_bounce[2]),
        .I1(zone_pad_bounce[1]),
        .I2(zone_pad_bounce[4]),
        .I3(zone_pad_bounce[3]),
        .I4(zone_pad_bounce[0]),
        .O(O5));
LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFEEB)) 
     \inc_type[3]_i_7 
       (.I0(O1),
        .I1(zone_pad_bounce[3]),
        .I2(zone_pad_bounce[4]),
        .I3(zone_pad_bounce[2]),
        .I4(zone_pad_bounce[1]),
        .I5(zone_pad_bounce[0]),
        .O(\n_0_inc_type[3]_i_7 ));
FDCE #(
    .INIT(1'b0)) 
     \inc_type_reg[0] 
       (.C(clk25_BUFG),
        .CE(\n_0_inc_type[3]_i_1 ),
        .CLR(I1),
        .D(\n_0_inc_type[0]_i_1 ),
        .Q(\n_0_inc_type_reg[0] ));
FDCE #(
    .INIT(1'b0)) 
     \inc_type_reg[1] 
       (.C(clk25_BUFG),
        .CE(\n_0_inc_type[3]_i_1 ),
        .CLR(I1),
        .D(\n_0_inc_type[1]_i_1 ),
        .Q(\n_0_inc_type_reg[1] ));
FDPE #(
    .INIT(1'b1)) 
     \inc_type_reg[2] 
       (.C(clk25_BUFG),
        .CE(\n_0_inc_type[3]_i_1 ),
        .D(\n_0_inc_type[2]_i_1 ),
        .PRE(I1),
        .Q(\n_0_inc_type_reg[2] ));
FDCE #(
    .INIT(1'b0)) 
     \inc_type_reg[3] 
       (.C(clk25_BUFG),
        .CE(\n_0_inc_type[3]_i_1 ),
        .CLR(I1),
        .D(\n_0_inc_type[3]_i_2 ),
        .Q(\n_0_inc_type_reg[3] ));
FDCE #(
    .INIT(1'b0)) 
     lock_reg
       (.C(clk25_BUFG),
        .CE(1'b1),
        .CLR(I1),
        .D(I2),
        .Q(O1));
LUT5 #(
    .INIT(32'h0002F0F2)) 
     \pong_bounce[0]_i_1 
       (.I0(pong_right_bounce),
        .I1(\n_0_pong_bounce[1]_i_2 ),
        .I2(O3),
        .I3(O4),
        .I4(I43),
        .O(\n_0_pong_bounce[0]_i_1 ));
LUT5 #(
    .INIT(32'h0002FF02)) 
     \pong_bounce[1]_i_1 
       (.I0(pong_left_bounce),
        .I1(\n_0_pong_bounce[1]_i_2 ),
        .I2(O3),
        .I3(O4),
        .I4(I43),
        .O(\n_0_pong_bounce[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair92" *) 
   LUT3 #(
    .INIT(8'hFE)) 
     \pong_bounce[1]_i_2 
       (.I0(\n_0_tempo_reg[2] ),
        .I1(\n_0_tempo_reg[1] ),
        .I2(\n_0_tempo_reg[0] ),
        .O(\n_0_pong_bounce[1]_i_2 ));
FDCE #(
    .INIT(1'b0)) 
     \pong_bounce_reg[0] 
       (.C(clk25_BUFG),
        .CE(1'b1),
        .CLR(I1),
        .D(\n_0_pong_bounce[0]_i_1 ),
        .Q(O3));
FDCE #(
    .INIT(1'b0)) 
     \pong_bounce_reg[1] 
       (.C(clk25_BUFG),
        .CE(1'b1),
        .CLR(I1),
        .D(\n_0_pong_bounce[1]_i_1 ),
        .Q(O4));
LUT6 #(
    .INIT(64'h55778A8A77778A8A)) 
     \tempo[0]_i_1 
       (.I0(I43),
        .I1(n_0_tempo_start_reg),
        .I2(\n_0_tempo[2]_i_2 ),
        .I3(\n_0_tempo_reg[2] ),
        .I4(\n_0_tempo_reg[0] ),
        .I5(\n_0_tempo_reg[1] ),
        .O(\n_0_tempo[0]_i_1 ));
LUT6 #(
    .INIT(64'h5575FDFD88880000)) 
     \tempo[1]_i_1 
       (.I0(I43),
        .I1(n_0_tempo_start_reg),
        .I2(\n_0_tempo[2]_i_2 ),
        .I3(\n_0_tempo_reg[2] ),
        .I4(\n_0_tempo_reg[0] ),
        .I5(\n_0_tempo_reg[1] ),
        .O(\n_0_tempo[1]_i_1 ));
LUT6 #(
    .INIT(64'h5588FD00FD00FD00)) 
     \tempo[2]_i_1 
       (.I0(I43),
        .I1(n_0_tempo_start_reg),
        .I2(\n_0_tempo[2]_i_2 ),
        .I3(\n_0_tempo_reg[2] ),
        .I4(\n_0_tempo_reg[0] ),
        .I5(\n_0_tempo_reg[1] ),
        .O(\n_0_tempo[2]_i_1 ));
LUT3 #(
    .INIT(8'h01)) 
     \tempo[2]_i_2 
       (.I0(O4),
        .I1(O3),
        .I2(barrier_bounce_ok),
        .O(\n_0_tempo[2]_i_2 ));
FDCE #(
    .INIT(1'b0)) 
     \tempo_reg[0] 
       (.C(clk25_BUFG),
        .CE(1'b1),
        .CLR(I1),
        .D(\n_0_tempo[0]_i_1 ),
        .Q(\n_0_tempo_reg[0] ));
FDCE #(
    .INIT(1'b0)) 
     \tempo_reg[1] 
       (.C(clk25_BUFG),
        .CE(1'b1),
        .CLR(I1),
        .D(\n_0_tempo[1]_i_1 ),
        .Q(\n_0_tempo_reg[1] ));
FDCE #(
    .INIT(1'b0)) 
     \tempo_reg[2] 
       (.C(clk25_BUFG),
        .CE(1'b1),
        .CLR(I1),
        .D(\n_0_tempo[2]_i_1 ),
        .Q(\n_0_tempo_reg[2] ));
LUT6 #(
    .INIT(64'h7777777722222220)) 
     tempo_start_i_1
       (.I0(I43),
        .I1(n_0_tempo_start_i_2),
        .I2(O4),
        .I3(O3),
        .I4(barrier_bounce_ok),
        .I5(n_0_tempo_start_reg),
        .O(n_0_tempo_start_i_1));
(* SOFT_HLUTNM = "soft_lutpair92" *) 
   LUT3 #(
    .INIT(8'h80)) 
     tempo_start_i_2
       (.I0(\n_0_tempo_reg[1] ),
        .I1(\n_0_tempo_reg[0] ),
        .I2(\n_0_tempo_reg[2] ),
        .O(n_0_tempo_start_i_2));
FDCE #(
    .INIT(1'b0)) 
     tempo_start_reg
       (.C(clk25_BUFG),
        .CE(1'b1),
        .CLR(I1),
        .D(n_0_tempo_start_i_1),
        .Q(n_0_tempo_start_reg));
LUT6 #(
    .INIT(64'h000000008F888088)) 
     \xball[0]_i_1 
       (.I0(\n_0_xball[0]_i_2 ),
        .I1(Q[0]),
        .I2(\n_0_xball[0]_i_3 ),
        .I3(\n_0_inc_type[2]_i_5 ),
        .I4(plusOp0_out[0]),
        .I5(I49),
        .O(\n_0_xball[0]_i_1 ));
LUT6 #(
    .INIT(64'hFDFDFDFDBFBFBFFF)) 
     \xball[0]_i_2 
       (.I0(\n_0_inc_type_reg[1] ),
        .I1(\n_0_inc_type_reg[3] ),
        .I2(\n_0_yball[9]_i_4 ),
        .I3(I7),
        .I4(O3),
        .I5(\n_0_inc_type_reg[2] ),
        .O(\n_0_xball[0]_i_2 ));
LUT6 #(
    .INIT(64'h5555555555555554)) 
     \xball[0]_i_3 
       (.I0(O1),
        .I1(zone_pad_bounce[0]),
        .I2(zone_pad_bounce[3]),
        .I3(zone_pad_bounce[4]),
        .I4(zone_pad_bounce[1]),
        .I5(zone_pad_bounce[2]),
        .O(\n_0_xball[0]_i_3 ));
LUT4 #(
    .INIT(16'hBE9A)) 
     \xball[0]_i_5 
       (.I0(\n_0_inc_type_reg[2] ),
        .I1(\n_0_inc_type_reg[1] ),
        .I2(\n_0_inc_type_reg[3] ),
        .I3(\n_0_inc_type_reg[0] ),
        .O(\n_0_xball[0]_i_5 ));
LUT5 #(
    .INIT(32'h4165BE9A)) 
     \xball[0]_i_6 
       (.I0(\n_0_inc_type_reg[2] ),
        .I1(\n_0_inc_type_reg[1] ),
        .I2(\n_0_inc_type_reg[3] ),
        .I3(\n_0_inc_type_reg[0] ),
        .I4(Q[3]),
        .O(\n_0_xball[0]_i_6 ));
LUT6 #(
    .INIT(64'h5555655656956696)) 
     \xball[0]_i_7 
       (.I0(Q[2]),
        .I1(\n_0_inc_type_reg[2] ),
        .I2(\n_0_inc_type_reg[3] ),
        .I3(\n_0_inc_type_reg[1] ),
        .I4(S2_IBUF),
        .I5(\n_0_inc_type_reg[0] ),
        .O(\n_0_xball[0]_i_7 ));
LUT6 #(
    .INIT(64'h9AA659659AA66969)) 
     \xball[0]_i_8 
       (.I0(Q[1]),
        .I1(\n_0_inc_type_reg[1] ),
        .I2(\n_0_inc_type_reg[3] ),
        .I3(\n_0_inc_type_reg[2] ),
        .I4(S2_IBUF),
        .I5(\n_0_inc_type_reg[0] ),
        .O(\n_0_xball[0]_i_8 ));
LUT5 #(
    .INIT(32'hAAAAA96A)) 
     \xball[0]_i_9 
       (.I0(Q[0]),
        .I1(\n_0_inc_type_reg[2] ),
        .I2(\n_0_inc_type_reg[3] ),
        .I3(\n_0_inc_type_reg[1] ),
        .I4(S2_IBUF),
        .O(\n_0_xball[0]_i_9 ));
LUT6 #(
    .INIT(64'h00000000FFFF4155)) 
     \xball[1]_i_1 
       (.I0(\n_0_inc_type[2]_i_5 ),
        .I1(Q[1]),
        .I2(\n_0_xball[1]_i_2 ),
        .I3(\n_0_xball[9]_i_5 ),
        .I4(\n_0_xball[1]_i_3 ),
        .I5(\n_0_xball[1]_i_4 ),
        .O(\n_0_xball[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair47" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \xball[1]_i_10 
       (.I0(\n_0_inc_type_reg[1] ),
        .I1(\n_0_inc_type_reg[3] ),
        .O(\n_0_xball[1]_i_10 ));
LUT2 #(
    .INIT(4'h9)) 
     \xball[1]_i_2 
       (.I0(\n_0_inc_type_reg[3] ),
        .I1(\n_0_inc_type_reg[1] ),
        .O(\n_0_xball[1]_i_2 ));
LUT6 #(
    .INIT(64'h00000000F7F7FF00)) 
     \xball[1]_i_3 
       (.I0(\n_0_xball[1]_i_5 ),
        .I1(\n_0_xball[1]_i_6 ),
        .I2(\n_0_xball[1]_i_7 ),
        .I3(plusOp0_out[1]),
        .I4(\n_0_xball[0]_i_3 ),
        .I5(I3),
        .O(\n_0_xball[1]_i_3 ));
LUT6 #(
    .INIT(64'hAABABAAABBBBBBBB)) 
     \xball[1]_i_4 
       (.I0(I49),
        .I1(\n_0_xball[1]_i_8 ),
        .I2(barrier_bounce_ok),
        .I3(Q[1]),
        .I4(\n_0_xball[1]_i_2 ),
        .I5(\n_0_inc_type[3]_i_5 ),
        .O(\n_0_xball[1]_i_4 ));
LUT6 #(
    .INIT(64'h36333363FFFFFFFF)) 
     \xball[1]_i_5 
       (.I0(\n_0_inc_type_reg[3] ),
        .I1(Q[1]),
        .I2(\n_0_inc_type_reg[2] ),
        .I3(\n_0_inc_type_reg[1] ),
        .I4(\n_0_inc_type_reg[0] ),
        .I5(zone_pad_bounce[1]),
        .O(\n_0_xball[1]_i_5 ));
LUT6 #(
    .INIT(64'h0001FFFEFFFFFFFF)) 
     \xball[1]_i_6 
       (.I0(\n_0_inc_type_reg[1] ),
        .I1(\n_0_inc_type_reg[2] ),
        .I2(\n_0_inc_type_reg[0] ),
        .I3(\n_0_inc_type_reg[3] ),
        .I4(Q[1]),
        .I5(zone_pad_bounce[4]),
        .O(\n_0_xball[1]_i_6 ));
LUT6 #(
    .INIT(64'hFFFFAAEAEEAEAAEA)) 
     \xball[1]_i_7 
       (.I0(\n_0_xball[1]_i_9 ),
        .I1(zone_pad_bounce[2]),
        .I2(\n_0_xball[1]_i_10 ),
        .I3(\n_0_inc_type_reg[2] ),
        .I4(Q[1]),
        .I5(zone_pad_bounce[0]),
        .O(\n_0_xball[1]_i_7 ));
LUT6 #(
    .INIT(64'hCF8D008F00CDCF8D)) 
     \xball[1]_i_8 
       (.I0(\n_0_inc_type_reg[2] ),
        .I1(I5),
        .I2(\n_0_yball[9]_i_4 ),
        .I3(Q[1]),
        .I4(\n_0_inc_type_reg[1] ),
        .I5(\n_0_inc_type_reg[3] ),
        .O(\n_0_xball[1]_i_8 ));
LUT6 #(
    .INIT(64'hFFEB001400000000)) 
     \xball[1]_i_9 
       (.I0(\n_0_inc_type_reg[2] ),
        .I1(\n_0_inc_type_reg[0] ),
        .I2(\n_0_inc_type_reg[1] ),
        .I3(\n_0_inc_type_reg[3] ),
        .I4(Q[1]),
        .I5(zone_pad_bounce[3]),
        .O(\n_0_xball[1]_i_9 ));
LUT5 #(
    .INIT(32'h0000AA08)) 
     \xball[2]_i_1 
       (.I0(\n_0_xball[2]_i_2 ),
        .I1(\n_0_inc_type[3]_i_5 ),
        .I2(\n_0_xball[2]_i_3 ),
        .I3(\n_0_xball[2]_i_4 ),
        .I4(I49),
        .O(\n_0_xball[2]_i_1 ));
LUT6 #(
    .INIT(64'h00082000AAA28AAA)) 
     \xball[2]_i_10 
       (.I0(zone_pad_bounce[1]),
        .I1(\n_0_inc_type_reg[1] ),
        .I2(\n_0_inc_type_reg[2] ),
        .I3(Q[1]),
        .I4(\n_0_inc_type_reg[0] ),
        .I5(Q[2]),
        .O(\n_0_xball[2]_i_10 ));
LUT6 #(
    .INIT(64'h000000001F3C141F)) 
     \xball[2]_i_11 
       (.I0(\n_0_inc_type_reg[2] ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\n_0_inc_type_reg[1] ),
        .I4(\n_0_inc_type_reg[3] ),
        .I5(\n_0_yball[9]_i_4 ),
        .O(\n_0_xball[2]_i_11 ));
LUT6 #(
    .INIT(64'hAAAAAAA9A9AAAAAA)) 
     \xball[2]_i_12 
       (.I0(Q[2]),
        .I1(\n_0_inc_type_reg[2] ),
        .I2(\n_0_inc_type_reg[3] ),
        .I3(\n_0_inc_type_reg[1] ),
        .I4(Q[1]),
        .I5(\n_0_inc_type_reg[0] ),
        .O(\n_0_xball[2]_i_12 ));
LUT6 #(
    .INIT(64'h00FFB8FFFFFFB8FF)) 
     \xball[2]_i_2 
       (.I0(\n_0_xball[2]_i_5 ),
        .I1(\n_0_xball[0]_i_3 ),
        .I2(plusOp0_out[2]),
        .I3(\n_0_xball[9]_i_5 ),
        .I4(I3),
        .I5(\n_0_xball[2]_i_3 ),
        .O(\n_0_xball[2]_i_2 ));
LUT5 #(
    .INIT(32'h9F60F906)) 
     \xball[2]_i_3 
       (.I0(\n_0_inc_type_reg[3] ),
        .I1(\n_0_inc_type_reg[1] ),
        .I2(\n_0_inc_type_reg[0] ),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(\n_0_xball[2]_i_3 ));
LUT6 #(
    .INIT(64'hFFFFFFFF30930000)) 
     \xball[2]_i_4 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(\n_0_inc_type_reg[1] ),
        .I3(\n_0_inc_type_reg[3] ),
        .I4(I5),
        .I5(\n_0_xball[2]_i_6 ),
        .O(\n_0_xball[2]_i_4 ));
LUT6 #(
    .INIT(64'hF1F1F1F1FFFFF1FF)) 
     \xball[2]_i_5 
       (.I0(Q[2]),
        .I1(\n_0_xball[2]_i_7 ),
        .I2(\n_0_xball[2]_i_8 ),
        .I3(\n_0_xball[2]_i_9 ),
        .I4(\n_0_xball[2]_i_10 ),
        .I5(\n_0_inc_type_reg[3] ),
        .O(\n_0_xball[2]_i_5 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFF8008)) 
     \xball[2]_i_6 
       (.I0(\n_0_inc_type_reg[2] ),
        .I1(I5),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\n_0_xball[9]_i_5 ),
        .I5(\n_0_xball[2]_i_11 ),
        .O(\n_0_xball[2]_i_6 ));
LUT4 #(
    .INIT(16'h0155)) 
     \xball[2]_i_7 
       (.I0(zone_pad_bounce[0]),
        .I1(zone_pad_bounce[2]),
        .I2(zone_pad_bounce[1]),
        .I3(\n_0_inc_type_reg[3] ),
        .O(\n_0_xball[2]_i_7 ));
LUT6 #(
    .INIT(64'h8700FFFF87008700)) 
     \xball[2]_i_8 
       (.I0(Q[1]),
        .I1(\n_0_xball[9]_i_22 ),
        .I2(Q[2]),
        .I3(zone_pad_bounce[4]),
        .I4(\n_0_xball[2]_i_12 ),
        .I5(zone_pad_bounce[3]),
        .O(\n_0_xball[2]_i_8 ));
LUT6 #(
    .INIT(64'hFF0F6F9FFF0FFF0F)) 
     \xball[2]_i_9 
       (.I0(\n_0_inc_type_reg[0] ),
        .I1(Q[1]),
        .I2(zone_pad_bounce[2]),
        .I3(Q[2]),
        .I4(\n_0_inc_type_reg[2] ),
        .I5(\n_0_inc_type_reg[1] ),
        .O(\n_0_xball[2]_i_9 ));
LUT6 #(
    .INIT(64'h000000000000FF15)) 
     \xball[3]_i_1 
       (.I0(\n_0_inc_type[2]_i_5 ),
        .I1(\n_0_xball[9]_i_5 ),
        .I2(\n_0_xball[3]_i_2 ),
        .I3(\n_0_xball[3]_i_3 ),
        .I4(\n_0_xball[3]_i_4 ),
        .I5(I49),
        .O(\n_0_xball[3]_i_1 ));
LUT6 #(
    .INIT(64'h8A0008828A00008A)) 
     \xball[3]_i_10 
       (.I0(I5),
        .I1(\n_0_inc_type_reg[1] ),
        .I2(\n_0_inc_type_reg[3] ),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\n_0_xball[3]_i_10 ));
LUT6 #(
    .INIT(64'hFFFFFFFF393CC363)) 
     \xball[3]_i_11 
       (.I0(\n_0_inc_type_reg[0] ),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\n_0_inc_type_reg[1] ),
        .I5(\n_0_inc_type_reg[2] ),
        .O(\n_0_xball[3]_i_11 ));
LUT6 #(
    .INIT(64'h6969693963696969)) 
     \xball[3]_i_12 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(\n_0_inc_type_reg[2] ),
        .I3(\n_0_inc_type_reg[1] ),
        .I4(\n_0_inc_type_reg[0] ),
        .I5(Q[1]),
        .O(\n_0_xball[3]_i_12 ));
LUT2 #(
    .INIT(4'h6)) 
     \xball[3]_i_13 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\n_0_xball[3]_i_13 ));
(* SOFT_HLUTNM = "soft_lutpair91" *) 
   LUT3 #(
    .INIT(8'h56)) 
     \xball[3]_i_14 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(\n_0_xball[3]_i_14 ));
LUT6 #(
    .INIT(64'h0045FFBABFAA4055)) 
     \xball[3]_i_15 
       (.I0(\n_0_inc_type_reg[3] ),
        .I1(Q[1]),
        .I2(\n_0_xball[9]_i_31 ),
        .I3(\n_0_xball[9]_i_32 ),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\n_0_xball[3]_i_15 ));
(* SOFT_HLUTNM = "soft_lutpair69" *) 
   LUT5 #(
    .INIT(32'h000E0000)) 
     \xball[3]_i_16 
       (.I0(O3),
        .I1(I7),
        .I2(O4),
        .I3(I8),
        .I4(\n_0_inc_type_reg[2] ),
        .O(\n_0_xball[3]_i_16 ));
(* SOFT_HLUTNM = "soft_lutpair40" *) 
   LUT3 #(
    .INIT(8'h54)) 
     \xball[3]_i_17 
       (.I0(\n_0_inc_type_reg[2] ),
        .I1(I8),
        .I2(O4),
        .O(\n_0_xball[3]_i_17 ));
LUT6 #(
    .INIT(64'h47B8887744BBB847)) 
     \xball[3]_i_2 
       (.I0(\n_0_inc_type_reg[2] ),
        .I1(\n_0_xball[1]_i_2 ),
        .I2(\n_0_inc_type_reg[0] ),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\n_0_xball[3]_i_2 ));
LUT6 #(
    .INIT(64'h00000000EEEEEE2E)) 
     \xball[3]_i_3 
       (.I0(plusOp0_out[3]),
        .I1(\n_0_xball[0]_i_3 ),
        .I2(\n_0_xball[3]_i_5 ),
        .I3(\n_0_xball[3]_i_6 ),
        .I4(\n_0_xball[3]_i_7 ),
        .I5(I3),
        .O(\n_0_xball[3]_i_3 ));
LUT5 #(
    .INIT(32'h0000000D)) 
     \xball[3]_i_4 
       (.I0(\n_0_inc_type[3]_i_5 ),
        .I1(\n_0_xball[3]_i_2 ),
        .I2(\n_0_xball[3]_i_8 ),
        .I3(\n_0_xball[3]_i_9 ),
        .I4(\n_0_xball[3]_i_10 ),
        .O(\n_0_xball[3]_i_4 ));
LUT5 #(
    .INIT(32'hFBAAFBFB)) 
     \xball[3]_i_5 
       (.I0(\n_0_inc_type_reg[3] ),
        .I1(zone_pad_bounce[3]),
        .I2(\n_0_xball[3]_i_11 ),
        .I3(\n_0_xball[3]_i_12 ),
        .I4(zone_pad_bounce[1]),
        .O(\n_0_xball[3]_i_5 ));
LUT6 #(
    .INIT(64'h00000000FEEEFEAA)) 
     \xball[3]_i_6 
       (.I0(zone_pad_bounce[0]),
        .I1(\n_0_inc_type_reg[3] ),
        .I2(\n_0_inc_type_reg[2] ),
        .I3(zone_pad_bounce[3]),
        .I4(zone_pad_bounce[1]),
        .I5(\n_0_xball[3]_i_13 ),
        .O(\n_0_xball[3]_i_6 ));
LUT6 #(
    .INIT(64'h4700FFFF47004700)) 
     \xball[3]_i_7 
       (.I0(\n_0_xball[3]_i_14 ),
        .I1(\n_0_xball[9]_i_22 ),
        .I2(\n_0_xball[3]_i_13 ),
        .I3(zone_pad_bounce[4]),
        .I4(\n_0_xball[3]_i_15 ),
        .I5(zone_pad_bounce[2]),
        .O(\n_0_xball[3]_i_7 ));
LUT6 #(
    .INIT(64'h0051510010415100)) 
     \xball[3]_i_8 
       (.I0(\n_0_yball[9]_i_4 ),
        .I1(\n_0_inc_type_reg[1] ),
        .I2(\n_0_inc_type_reg[3] ),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\n_0_xball[3]_i_8 ));
LUT6 #(
    .INIT(64'hFFFFFFFFAEECC00A)) 
     \xball[3]_i_9 
       (.I0(\n_0_xball[3]_i_16 ),
        .I1(\n_0_xball[3]_i_17 ),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\n_0_xball[9]_i_5 ),
        .O(\n_0_xball[3]_i_9 ));
LUT6 #(
    .INIT(64'h1F1F1FF1F00F0F0F)) 
     \xball[4]_i_10 
       (.I0(I7),
        .I1(O3),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(\n_0_yball[9]_i_4 ),
        .O(\n_0_xball[4]_i_10 ));
(* SOFT_HLUTNM = "soft_lutpair79" *) 
   LUT4 #(
    .INIT(16'h5556)) 
     \xball[4]_i_11 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .O(\n_0_xball[4]_i_11 ));
(* SOFT_HLUTNM = "soft_lutpair79" *) 
   LUT4 #(
    .INIT(16'h9555)) 
     \xball[4]_i_12 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .O(\n_0_xball[4]_i_12 ));
LUT6 #(
    .INIT(64'h0BF400FF00FF708F)) 
     \xball[4]_i_13 
       (.I0(Q[1]),
        .I1(\n_0_xball[9]_i_31 ),
        .I2(\n_0_xball[9]_i_32 ),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\n_0_xball[4]_i_13 ));
(* SOFT_HLUTNM = "soft_lutpair51" *) 
   LUT5 #(
    .INIT(32'h00200222)) 
     \xball[4]_i_14 
       (.I0(zone_pad_bounce[3]),
        .I1(\n_0_inc_type_reg[2] ),
        .I2(\n_0_inc_type_reg[1] ),
        .I3(\n_0_xball[4]_i_16 ),
        .I4(\n_0_xball[4]_i_17 ),
        .O(\n_0_xball[4]_i_14 ));
LUT6 #(
    .INIT(64'hFFBFF0BFFF80F080)) 
     \xball[4]_i_15 
       (.I0(\n_0_xball[4]_i_12 ),
        .I1(\n_0_inc_type_reg[0] ),
        .I2(\n_0_inc_type_reg[1] ),
        .I3(\n_0_inc_type_reg[2] ),
        .I4(\n_0_xball[4]_i_16 ),
        .I5(\n_0_xball[4]_i_18 ),
        .O(\n_0_xball[4]_i_15 ));
(* SOFT_HLUTNM = "soft_lutpair39" *) 
   LUT5 #(
    .INIT(32'h3339333C)) 
     \xball[4]_i_16 
       (.I0(\n_0_inc_type_reg[0] ),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .O(\n_0_xball[4]_i_16 ));
(* SOFT_HLUTNM = "soft_lutpair39" *) 
   LUT5 #(
    .INIT(32'hB40F0F0F)) 
     \xball[4]_i_17 
       (.I0(Q[1]),
        .I1(\n_0_inc_type_reg[0] ),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(Q[2]),
        .O(\n_0_xball[4]_i_17 ));
(* SOFT_HLUTNM = "soft_lutpair89" *) 
   LUT3 #(
    .INIT(8'h95)) 
     \xball[4]_i_18 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .O(\n_0_xball[4]_i_18 ));
LUT6 #(
    .INIT(64'h002000E00F2FFFEF)) 
     \xball[4]_i_2 
       (.I0(\n_0_xball[4]_i_3 ),
        .I1(I3),
        .I2(\n_0_inc_type[3]_i_5 ),
        .I3(barrier_bounce_ok),
        .I4(\n_0_xball[4]_i_4 ),
        .I5(\n_0_xball[4]_i_5 ),
        .O(O27));
LUT6 #(
    .INIT(64'h00005555FC005555)) 
     \xball[4]_i_3 
       (.I0(plusOp0_out[4]),
        .I1(\n_0_xball[4]_i_6 ),
        .I2(\n_0_xball[9]_i_23 ),
        .I3(\n_0_xball[4]_i_7 ),
        .I4(\n_0_xball[0]_i_3 ),
        .I5(\n_0_xball[4]_i_8 ),
        .O(\n_0_xball[4]_i_3 ));
LUT6 #(
    .INIT(64'h000000009CC6FFFF)) 
     \xball[4]_i_4 
       (.I0(\n_0_inc_type_reg[2] ),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(\n_0_xball[1]_i_2 ),
        .I5(\n_0_xball[4]_i_9 ),
        .O(\n_0_xball[4]_i_4 ));
LUT6 #(
    .INIT(64'h444F444F444FFFFF)) 
     \xball[4]_i_5 
       (.I0(\n_0_xball[4]_i_10 ),
        .I1(\n_0_xball[1]_i_2 ),
        .I2(\n_0_xball[8]_i_11 ),
        .I3(\n_0_xball[4]_i_11 ),
        .I4(\n_0_xball[7]_i_11 ),
        .I5(\n_0_xball[4]_i_12 ),
        .O(\n_0_xball[4]_i_5 ));
(* SOFT_HLUTNM = "soft_lutpair89" *) 
   LUT3 #(
    .INIT(8'h56)) 
     \xball[4]_i_6 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .O(\n_0_xball[4]_i_6 ));
LUT6 #(
    .INIT(64'h01FEFFFFFFFFFFFF)) 
     \xball[4]_i_7 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(zone_pad_bounce[4]),
        .I5(\n_0_xball[9]_i_22 ),
        .O(\n_0_xball[4]_i_7 ));
LUT6 #(
    .INIT(64'h5510555555105510)) 
     \xball[4]_i_8 
       (.I0(\n_0_inc_type_reg[3] ),
        .I1(\n_0_xball[4]_i_13 ),
        .I2(zone_pad_bounce[2]),
        .I3(\n_0_xball[4]_i_14 ),
        .I4(\n_0_xball[4]_i_15 ),
        .I5(zone_pad_bounce[1]),
        .O(\n_0_xball[4]_i_8 ));
LUT6 #(
    .INIT(64'h0000000055569555)) 
     \xball[4]_i_9 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(\n_0_inc_type_reg[0] ),
        .I5(\n_0_xball[1]_i_2 ),
        .O(\n_0_xball[4]_i_9 ));
LUT6 #(
    .INIT(64'hFFFFFFFFEEF0E2F0)) 
     \xball[5]_i_1 
       (.I0(\n_0_xball[5]_i_2 ),
        .I1(barrier_bounce_ok),
        .I2(\n_0_xball[5]_i_3 ),
        .I3(\n_0_inc_type[3]_i_5 ),
        .I4(\n_0_xball[5]_i_4 ),
        .I5(I49),
        .O(\n_0_xball[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair71" *) 
   LUT4 #(
    .INIT(16'h5556)) 
     \xball[5]_i_10 
       (.I0(Q[5]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[4]),
        .O(\n_0_xball[5]_i_10 ));
LUT6 #(
    .INIT(64'hBABBAAAABABBBABB)) 
     \xball[5]_i_11 
       (.I0(\n_0_inc_type_reg[3] ),
        .I1(\n_0_xball[5]_i_12 ),
        .I2(\n_0_xball[5]_i_13 ),
        .I3(zone_pad_bounce[2]),
        .I4(\n_0_xball[5]_i_14 ),
        .I5(zone_pad_bounce[1]),
        .O(\n_0_xball[5]_i_11 ));
LUT5 #(
    .INIT(32'h00200222)) 
     \xball[5]_i_12 
       (.I0(zone_pad_bounce[3]),
        .I1(\n_0_inc_type_reg[2] ),
        .I2(\n_0_inc_type_reg[1] ),
        .I3(\n_0_xball[5]_i_15 ),
        .I4(\n_0_xball[5]_i_16 ),
        .O(\n_0_xball[5]_i_12 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \xball[5]_i_13 
       (.I0(\n_0_xball[5]_i_7 ),
        .I1(\n_0_xball[5]_i_8 ),
        .I2(\n_0_xball[9]_i_31 ),
        .I3(\n_0_xball[5]_i_10 ),
        .I4(\n_0_xball[9]_i_32 ),
        .I5(\n_0_xball[5]_i_17 ),
        .O(\n_0_xball[5]_i_13 ));
LUT6 #(
    .INIT(64'hFFBFF0BFFF80F080)) 
     \xball[5]_i_14 
       (.I0(\n_0_xball[5]_i_8 ),
        .I1(\n_0_inc_type_reg[0] ),
        .I2(\n_0_inc_type_reg[1] ),
        .I3(\n_0_inc_type_reg[2] ),
        .I4(\n_0_xball[5]_i_15 ),
        .I5(\n_0_xball[5]_i_17 ),
        .O(\n_0_xball[5]_i_14 ));
LUT6 #(
    .INIT(64'h333333333333393C)) 
     \xball[5]_i_15 
       (.I0(\n_0_inc_type_reg[0] ),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\n_0_xball[5]_i_15 ));
LUT6 #(
    .INIT(64'hB40F0F0F0F0F0F0F)) 
     \xball[5]_i_16 
       (.I0(Q[1]),
        .I1(\n_0_inc_type_reg[0] ),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\n_0_xball[5]_i_16 ));
(* SOFT_HLUTNM = "soft_lutpair37" *) 
   LUT4 #(
    .INIT(16'h9555)) 
     \xball[5]_i_17 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\n_0_xball[5]_i_17 ));
LUT5 #(
    .INIT(32'hB8BBB888)) 
     \xball[5]_i_2 
       (.I0(\n_0_xball[5]_i_4 ),
        .I1(I3),
        .I2(\n_0_xball[5]_i_5 ),
        .I3(\n_0_xball[0]_i_3 ),
        .I4(plusOp0_out[5]),
        .O(\n_0_xball[5]_i_2 ));
LUT6 #(
    .INIT(64'h444F444F444FFFFF)) 
     \xball[5]_i_3 
       (.I0(\n_0_xball[5]_i_6 ),
        .I1(\n_0_xball[1]_i_2 ),
        .I2(\n_0_xball[8]_i_11 ),
        .I3(\n_0_xball[5]_i_7 ),
        .I4(\n_0_xball[7]_i_11 ),
        .I5(\n_0_xball[5]_i_8 ),
        .O(\n_0_xball[5]_i_3 ));
LUT6 #(
    .INIT(64'h828282BEBE82BEBE)) 
     \xball[5]_i_4 
       (.I0(\n_0_xball[5]_i_9 ),
        .I1(\n_0_inc_type_reg[3] ),
        .I2(\n_0_inc_type_reg[1] ),
        .I3(\n_0_inc_type_reg[0] ),
        .I4(\n_0_xball[5]_i_8 ),
        .I5(\n_0_xball[5]_i_7 ),
        .O(\n_0_xball[5]_i_4 ));
LUT6 #(
    .INIT(64'h1111F111FFFFFFFF)) 
     \xball[5]_i_5 
       (.I0(\n_0_xball[9]_i_23 ),
        .I1(\n_0_xball[5]_i_10 ),
        .I2(zone_pad_bounce[4]),
        .I3(\n_0_xball[9]_i_22 ),
        .I4(\n_0_xball[5]_i_7 ),
        .I5(\n_0_xball[5]_i_11 ),
        .O(\n_0_xball[5]_i_5 ));
LUT6 #(
    .INIT(64'h7777777D43333331)) 
     \xball[5]_i_6 
       (.I0(I5),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\n_0_yball[9]_i_4 ),
        .O(\n_0_xball[5]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair68" *) 
   LUT5 #(
    .INIT(32'h55555556)) 
     \xball[5]_i_7 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[2]),
        .O(\n_0_xball[5]_i_7 ));
(* SOFT_HLUTNM = "soft_lutpair68" *) 
   LUT5 #(
    .INIT(32'h95555555)) 
     \xball[5]_i_8 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[1]),
        .O(\n_0_xball[5]_i_8 ));
(* SOFT_HLUTNM = "soft_lutpair37" *) 
   LUT5 #(
    .INIT(32'h9CCCCCC6)) 
     \xball[5]_i_9 
       (.I0(\n_0_inc_type_reg[2] ),
        .I1(Q[5]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\n_0_xball[5]_i_9 ));
LUT6 #(
    .INIT(64'hFFFFFFFFEEF0E2F0)) 
     \xball[6]_i_1 
       (.I0(\n_0_xball[6]_i_2 ),
        .I1(barrier_bounce_ok),
        .I2(\n_0_xball[6]_i_3 ),
        .I3(\n_0_inc_type[3]_i_5 ),
        .I4(\n_0_xball[6]_i_4 ),
        .I5(I49),
        .O(\n_0_xball[6]_i_1 ));
LUT6 #(
    .INIT(64'h9555555555555555)) 
     \xball[6]_i_10 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[1]),
        .O(\n_0_xball[6]_i_10 ));
LUT6 #(
    .INIT(64'h9CCCCCCCCCCCCCC6)) 
     \xball[6]_i_11 
       (.I0(\n_0_inc_type_reg[2] ),
        .I1(Q[6]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[5]),
        .O(\n_0_xball[6]_i_11 ));
LUT6 #(
    .INIT(64'h5555555555555556)) 
     \xball[6]_i_12 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[1]),
        .O(\n_0_xball[6]_i_12 ));
(* SOFT_HLUTNM = "soft_lutpair71" *) 
   LUT4 #(
    .INIT(16'hFFFE)) 
     \xball[6]_i_13 
       (.I0(Q[5]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[4]),
        .O(\n_0_xball[6]_i_13 ));
(* SOFT_HLUTNM = "soft_lutpair50" *) 
   LUT5 #(
    .INIT(32'h00200222)) 
     \xball[6]_i_14 
       (.I0(zone_pad_bounce[3]),
        .I1(\n_0_inc_type_reg[2] ),
        .I2(\n_0_inc_type_reg[1] ),
        .I3(\n_0_xball[6]_i_18 ),
        .I4(\n_0_xball[6]_i_19 ),
        .O(\n_0_xball[6]_i_14 ));
LUT6 #(
    .INIT(64'h0700F8FF07BBF844)) 
     \xball[6]_i_15 
       (.I0(Q[1]),
        .I1(\n_0_xball[9]_i_31 ),
        .I2(\n_0_xball[6]_i_13 ),
        .I3(\n_0_xball[9]_i_32 ),
        .I4(Q[6]),
        .I5(\n_0_xball[6]_i_20 ),
        .O(\n_0_xball[6]_i_15 ));
LUT6 #(
    .INIT(64'hFFBFF0BFFF80F080)) 
     \xball[6]_i_16 
       (.I0(\n_0_xball[6]_i_10 ),
        .I1(\n_0_inc_type_reg[0] ),
        .I2(\n_0_inc_type_reg[1] ),
        .I3(\n_0_inc_type_reg[2] ),
        .I4(\n_0_xball[6]_i_18 ),
        .I5(\n_0_xball[6]_i_21 ),
        .O(\n_0_xball[6]_i_16 ));
(* SOFT_HLUTNM = "soft_lutpair38" *) 
   LUT5 #(
    .INIT(32'h55555556)) 
     \xball[6]_i_17 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[5]),
        .O(\n_0_xball[6]_i_17 ));
(* SOFT_HLUTNM = "soft_lutpair73" *) 
   LUT4 #(
    .INIT(16'h393C)) 
     \xball[6]_i_18 
       (.I0(\n_0_inc_type_reg[0] ),
        .I1(Q[6]),
        .I2(\n_0_xball[6]_i_13 ),
        .I3(Q[1]),
        .O(\n_0_xball[6]_i_18 ));
(* SOFT_HLUTNM = "soft_lutpair73" *) 
   LUT4 #(
    .INIT(16'h0FB4)) 
     \xball[6]_i_19 
       (.I0(Q[1]),
        .I1(\n_0_inc_type_reg[0] ),
        .I2(Q[6]),
        .I3(\n_0_xball[6]_i_20 ),
        .O(\n_0_xball[6]_i_19 ));
LUT6 #(
    .INIT(64'hB8BBBBBBB8BB8888)) 
     \xball[6]_i_2 
       (.I0(\n_0_xball[6]_i_4 ),
        .I1(I3),
        .I2(\n_0_xball[6]_i_5 ),
        .I3(\n_0_xball[6]_i_6 ),
        .I4(\n_0_xball[0]_i_3 ),
        .I5(plusOp0_out[6]),
        .O(\n_0_xball[6]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair81" *) 
   LUT4 #(
    .INIT(16'h7FFF)) 
     \xball[6]_i_20 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[5]),
        .O(\n_0_xball[6]_i_20 ));
(* SOFT_HLUTNM = "soft_lutpair38" *) 
   LUT5 #(
    .INIT(32'h95555555)) 
     \xball[6]_i_21 
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\n_0_xball[6]_i_21 ));
LUT6 #(
    .INIT(64'hF0FCF0FCF0FEF0FF)) 
     \xball[6]_i_3 
       (.I0(\n_0_xball[6]_i_7 ),
        .I1(\n_0_xball[6]_i_8 ),
        .I2(\n_0_xball[6]_i_9 ),
        .I3(\n_0_yball[9]_i_4 ),
        .I4(\n_0_inc_type_reg[2] ),
        .I5(\n_0_xball[6]_i_10 ),
        .O(\n_0_xball[6]_i_3 ));
LUT6 #(
    .INIT(64'h828282BEBE82BEBE)) 
     \xball[6]_i_4 
       (.I0(\n_0_xball[6]_i_11 ),
        .I1(\n_0_inc_type_reg[3] ),
        .I2(\n_0_inc_type_reg[1] ),
        .I3(\n_0_inc_type_reg[0] ),
        .I4(\n_0_xball[6]_i_10 ),
        .I5(\n_0_xball[6]_i_12 ),
        .O(\n_0_xball[6]_i_4 ));
LUT6 #(
    .INIT(64'hC0008040FF0080FF)) 
     \xball[6]_i_5 
       (.I0(Q[1]),
        .I1(\n_0_xball[9]_i_22 ),
        .I2(zone_pad_bounce[4]),
        .I3(Q[6]),
        .I4(\n_0_xball[6]_i_13 ),
        .I5(\n_0_xball[9]_i_23 ),
        .O(\n_0_xball[6]_i_5 ));
LUT6 #(
    .INIT(64'hBABBAAAABABBBABB)) 
     \xball[6]_i_6 
       (.I0(\n_0_inc_type_reg[3] ),
        .I1(\n_0_xball[6]_i_14 ),
        .I2(\n_0_xball[6]_i_15 ),
        .I3(zone_pad_bounce[2]),
        .I4(\n_0_xball[6]_i_16 ),
        .I5(zone_pad_bounce[1]),
        .O(\n_0_xball[6]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair42" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \xball[6]_i_7 
       (.I0(\n_0_inc_type_reg[3] ),
        .I1(\n_0_inc_type_reg[1] ),
        .O(\n_0_xball[6]_i_7 ));
LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
     \xball[6]_i_8 
       (.I0(\n_0_xball[1]_i_2 ),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\n_0_xball[6]_i_8 ));
LUT6 #(
    .INIT(64'h7530337500000000)) 
     \xball[6]_i_9 
       (.I0(\n_0_xball[6]_i_17 ),
        .I1(\n_0_xball[6]_i_12 ),
        .I2(\n_0_inc_type_reg[2] ),
        .I3(\n_0_inc_type_reg[1] ),
        .I4(\n_0_inc_type_reg[3] ),
        .I5(I5),
        .O(\n_0_xball[6]_i_9 ));
LUT5 #(
    .INIT(32'h0000AA08)) 
     \xball[7]_i_1 
       (.I0(\n_0_xball[7]_i_2 ),
        .I1(\n_0_inc_type[3]_i_5 ),
        .I2(\n_0_xball[7]_i_3 ),
        .I3(\n_0_xball[7]_i_4 ),
        .I4(I49),
        .O(\n_0_xball[7]_i_1 ));
LUT6 #(
    .INIT(64'h028A028A028A0202)) 
     \xball[7]_i_10 
       (.I0(\n_0_xball[1]_i_2 ),
        .I1(\n_0_yball[9]_i_4 ),
        .I2(\n_0_xball[7]_i_22 ),
        .I3(\n_0_xball[7]_i_21 ),
        .I4(O3),
        .I5(I7),
        .O(\n_0_xball[7]_i_10 ));
(* SOFT_HLUTNM = "soft_lutpair40" *) 
   LUT5 #(
    .INIT(32'hABAB03AB)) 
     \xball[7]_i_11 
       (.I0(\n_0_inc_type_reg[2] ),
        .I1(O4),
        .I2(I8),
        .I3(\n_0_inc_type_reg[3] ),
        .I4(\n_0_inc_type_reg[1] ),
        .O(\n_0_xball[7]_i_11 ));
LUT4 #(
    .INIT(16'h04D3)) 
     \xball[7]_i_12 
       (.I0(\n_0_inc_type_reg[0] ),
        .I1(\n_0_inc_type_reg[3] ),
        .I2(\n_0_inc_type_reg[1] ),
        .I3(\n_0_inc_type_reg[2] ),
        .O(\n_0_xball[7]_i_12 ));
LUT2 #(
    .INIT(4'h9)) 
     \xball[7]_i_13 
       (.I0(Q[6]),
        .I1(Q[7]),
        .O(\n_0_xball[7]_i_13 ));
LUT2 #(
    .INIT(4'h9)) 
     \xball[7]_i_14 
       (.I0(Q[5]),
        .I1(Q[6]),
        .O(\n_0_xball[7]_i_14 ));
LUT2 #(
    .INIT(4'h9)) 
     \xball[7]_i_15 
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(\n_0_xball[7]_i_15 ));
LUT5 #(
    .INIT(32'h4165BE9A)) 
     \xball[7]_i_16 
       (.I0(\n_0_inc_type_reg[2] ),
        .I1(\n_0_inc_type_reg[1] ),
        .I2(\n_0_inc_type_reg[3] ),
        .I3(\n_0_inc_type_reg[0] ),
        .I4(Q[4]),
        .O(\n_0_xball[7]_i_16 ));
LUT6 #(
    .INIT(64'hFFCAF0CAFFFFFFFF)) 
     \xball[7]_i_17 
       (.I0(\n_0_xball[7]_i_22 ),
        .I1(\n_0_xball[7]_i_25 ),
        .I2(\n_0_inc_type_reg[2] ),
        .I3(\n_0_inc_type_reg[1] ),
        .I4(\n_0_xball[7]_i_26 ),
        .I5(zone_pad_bounce[1]),
        .O(\n_0_xball[7]_i_17 ));
LUT6 #(
    .INIT(64'h0700F8FF07BBF844)) 
     \xball[7]_i_18 
       (.I0(Q[1]),
        .I1(\n_0_xball[9]_i_31 ),
        .I2(\n_0_xball[7]_i_23 ),
        .I3(\n_0_xball[9]_i_32 ),
        .I4(Q[7]),
        .I5(\n_0_xball[7]_i_24 ),
        .O(\n_0_xball[7]_i_18 ));
LUT5 #(
    .INIT(32'h00200222)) 
     \xball[7]_i_19 
       (.I0(zone_pad_bounce[3]),
        .I1(\n_0_inc_type_reg[2] ),
        .I2(\n_0_inc_type_reg[1] ),
        .I3(\n_0_xball[7]_i_25 ),
        .I4(\n_0_xball[7]_i_26 ),
        .O(\n_0_xball[7]_i_19 ));
LUT6 #(
    .INIT(64'h00FFE0FFFFFFE0FF)) 
     \xball[7]_i_2 
       (.I0(\n_0_xball[0]_i_3 ),
        .I1(plusOp0_out[7]),
        .I2(\n_0_xball[7]_i_6 ),
        .I3(\n_0_xball[9]_i_5 ),
        .I4(I3),
        .I5(\n_0_xball[7]_i_3 ),
        .O(\n_0_xball[7]_i_2 ));
LUT6 #(
    .INIT(64'h75FF33FF30FF30FF)) 
     \xball[7]_i_20 
       (.I0(\n_0_xball[7]_i_8 ),
        .I1(\n_0_xball[7]_i_21 ),
        .I2(\n_0_xball[9]_i_29 ),
        .I3(\n_0_xball[0]_i_3 ),
        .I4(\n_0_xball[9]_i_22 ),
        .I5(zone_pad_bounce[4]),
        .O(\n_0_xball[7]_i_20 ));
LUT6 #(
    .INIT(64'h5555555555555556)) 
     \xball[7]_i_21 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[6]),
        .O(\n_0_xball[7]_i_21 ));
LUT6 #(
    .INIT(64'h9555555555555555)) 
     \xball[7]_i_22 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(Q[4]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\n_0_xball[7]_i_22 ));
(* SOFT_HLUTNM = "soft_lutpair48" *) 
   LUT5 #(
    .INIT(32'hFFFFFFFE)) 
     \xball[7]_i_23 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(Q[5]),
        .O(\n_0_xball[7]_i_23 ));
(* SOFT_HLUTNM = "soft_lutpair48" *) 
   LUT5 #(
    .INIT(32'h7FFFFFFF)) 
     \xball[7]_i_24 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[6]),
        .O(\n_0_xball[7]_i_24 ));
(* SOFT_HLUTNM = "soft_lutpair74" *) 
   LUT4 #(
    .INIT(16'h393C)) 
     \xball[7]_i_25 
       (.I0(\n_0_inc_type_reg[0] ),
        .I1(Q[7]),
        .I2(\n_0_xball[7]_i_23 ),
        .I3(Q[1]),
        .O(\n_0_xball[7]_i_25 ));
(* SOFT_HLUTNM = "soft_lutpair74" *) 
   LUT4 #(
    .INIT(16'h0FB4)) 
     \xball[7]_i_26 
       (.I0(Q[1]),
        .I1(\n_0_inc_type_reg[0] ),
        .I2(Q[7]),
        .I3(\n_0_xball[7]_i_24 ),
        .O(\n_0_xball[7]_i_26 ));
LUT6 #(
    .INIT(64'hBE82BEBEBE828282)) 
     \xball[7]_i_3 
       (.I0(\n_0_xball[7]_i_7 ),
        .I1(\n_0_inc_type_reg[3] ),
        .I2(\n_0_inc_type_reg[1] ),
        .I3(\n_0_xball[7]_i_8 ),
        .I4(\n_0_inc_type_reg[0] ),
        .I5(\n_0_xball[7]_i_9 ),
        .O(\n_0_xball[7]_i_3 ));
LUT6 #(
    .INIT(64'hEEEFEEEFEEEFFFFF)) 
     \xball[7]_i_4 
       (.I0(\n_0_xball[7]_i_10 ),
        .I1(\n_0_xball[9]_i_5 ),
        .I2(\n_0_xball[7]_i_8 ),
        .I3(\n_0_xball[8]_i_11 ),
        .I4(\n_0_xball[7]_i_11 ),
        .I5(\n_0_xball[7]_i_9 ),
        .O(\n_0_xball[7]_i_4 ));
LUT6 #(
    .INIT(64'hFFFFFFFF0000FF5D)) 
     \xball[7]_i_6 
       (.I0(\n_0_xball[7]_i_17 ),
        .I1(zone_pad_bounce[2]),
        .I2(\n_0_xball[7]_i_18 ),
        .I3(\n_0_xball[7]_i_19 ),
        .I4(\n_0_inc_type_reg[3] ),
        .I5(\n_0_xball[7]_i_20 ),
        .O(\n_0_xball[7]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair88" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \xball[7]_i_7 
       (.I0(\n_0_xball[7]_i_21 ),
        .I1(\n_0_inc_type_reg[2] ),
        .I2(\n_0_xball[7]_i_22 ),
        .O(\n_0_xball[7]_i_7 ));
(* SOFT_HLUTNM = "soft_lutpair90" *) 
   LUT3 #(
    .INIT(8'h56)) 
     \xball[7]_i_8 
       (.I0(Q[7]),
        .I1(\n_0_xball[7]_i_23 ),
        .I2(Q[1]),
        .O(\n_0_xball[7]_i_8 ));
(* SOFT_HLUTNM = "soft_lutpair90" *) 
   LUT3 #(
    .INIT(8'h65)) 
     \xball[7]_i_9 
       (.I0(Q[7]),
        .I1(\n_0_xball[7]_i_24 ),
        .I2(Q[1]),
        .O(\n_0_xball[7]_i_9 ));
LUT6 #(
    .INIT(64'hFFFFFFFFB000B0FF)) 
     \xball[8]_i_1 
       (.I0(\n_0_xball[8]_i_2 ),
        .I1(I3),
        .I2(\n_0_xball[8]_i_3 ),
        .I3(\n_0_xball[9]_i_5 ),
        .I4(\n_0_xball[8]_i_4 ),
        .I5(I49),
        .O(\n_0_xball[8]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair83" *) 
   LUT3 #(
    .INIT(8'h56)) 
     \xball[8]_i_10 
       (.I0(Q[8]),
        .I1(\n_0_xball[9]_i_19 ),
        .I2(Q[1]),
        .O(\n_0_xball[8]_i_10 ));
LUT6 #(
    .INIT(64'h51FF51FF51FFFFFF)) 
     \xball[8]_i_11 
       (.I0(\n_0_inc_type_reg[2] ),
        .I1(\n_0_inc_type_reg[1] ),
        .I2(\n_0_inc_type_reg[3] ),
        .I3(\n_0_yball[9]_i_4 ),
        .I4(I7),
        .I5(O3),
        .O(\n_0_xball[8]_i_11 ));
LUT6 #(
    .INIT(64'h01FF010101010101)) 
     \xball[8]_i_12 
       (.I0(\n_0_xball[8]_i_14 ),
        .I1(\n_0_inc_type_reg[2] ),
        .I2(\n_0_yball[9]_i_4 ),
        .I3(\n_0_xball[8]_i_5 ),
        .I4(\n_0_xball[1]_i_2 ),
        .I5(I5),
        .O(\n_0_xball[8]_i_12 ));
LUT6 #(
    .INIT(64'h5100005151100041)) 
     \xball[8]_i_13 
       (.I0(\n_0_yball[9]_i_4 ),
        .I1(\n_0_inc_type_reg[1] ),
        .I2(\n_0_inc_type_reg[3] ),
        .I3(\n_0_xball[9]_i_18 ),
        .I4(Q[8]),
        .I5(Q[1]),
        .O(\n_0_xball[8]_i_13 ));
(* SOFT_HLUTNM = "soft_lutpair93" *) 
   LUT3 #(
    .INIT(8'h65)) 
     \xball[8]_i_14 
       (.I0(Q[8]),
        .I1(\n_0_xball[9]_i_18 ),
        .I2(Q[1]),
        .O(\n_0_xball[8]_i_14 ));
LUT6 #(
    .INIT(64'hFFBFF0BFFF80F080)) 
     \xball[8]_i_15 
       (.I0(\n_0_xball[8]_i_14 ),
        .I1(\n_0_inc_type_reg[0] ),
        .I2(\n_0_inc_type_reg[1] ),
        .I3(\n_0_inc_type_reg[2] ),
        .I4(\n_0_xball[8]_i_18 ),
        .I5(\n_0_xball[8]_i_6 ),
        .O(\n_0_xball[8]_i_15 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFF00B8B8)) 
     \xball[8]_i_16 
       (.I0(\n_0_xball[8]_i_14 ),
        .I1(\n_0_inc_type_reg[0] ),
        .I2(\n_0_xball[8]_i_6 ),
        .I3(\n_0_xball[8]_i_18 ),
        .I4(\n_0_inc_type_reg[1] ),
        .I5(\n_0_inc_type_reg[2] ),
        .O(\n_0_xball[8]_i_16 ));
LUT6 #(
    .INIT(64'h0700F8FF07BBF844)) 
     \xball[8]_i_17 
       (.I0(Q[1]),
        .I1(\n_0_xball[9]_i_31 ),
        .I2(\n_0_xball[9]_i_19 ),
        .I3(\n_0_xball[9]_i_32 ),
        .I4(Q[8]),
        .I5(\n_0_xball[9]_i_18 ),
        .O(\n_0_xball[8]_i_17 ));
(* SOFT_HLUTNM = "soft_lutpair45" *) 
   LUT4 #(
    .INIT(16'h393C)) 
     \xball[8]_i_18 
       (.I0(\n_0_inc_type_reg[0] ),
        .I1(Q[8]),
        .I2(\n_0_xball[9]_i_19 ),
        .I3(Q[1]),
        .O(\n_0_xball[8]_i_18 ));
LUT6 #(
    .INIT(64'h0000000053FFFF53)) 
     \xball[8]_i_2 
       (.I0(\n_0_xball[8]_i_5 ),
        .I1(\n_0_xball[8]_i_6 ),
        .I2(\n_0_inc_type_reg[2] ),
        .I3(\n_0_inc_type_reg[3] ),
        .I4(\n_0_inc_type_reg[1] ),
        .I5(\n_0_xball[8]_i_7 ),
        .O(\n_0_xball[8]_i_2 ));
LUT6 #(
    .INIT(64'hFEFEFEFEAEAEAEFE)) 
     \xball[8]_i_3 
       (.I0(I3),
        .I1(plusOp0_out[8]),
        .I2(\n_0_xball[0]_i_3 ),
        .I3(\n_0_xball[8]_i_8 ),
        .I4(\n_0_inc_type_reg[3] ),
        .I5(\n_0_xball[8]_i_9 ),
        .O(\n_0_xball[8]_i_3 ));
LUT6 #(
    .INIT(64'h0000000000007770)) 
     \xball[8]_i_4 
       (.I0(\n_0_xball[8]_i_2 ),
        .I1(\n_0_inc_type[3]_i_5 ),
        .I2(\n_0_xball[8]_i_10 ),
        .I3(\n_0_xball[8]_i_11 ),
        .I4(\n_0_xball[8]_i_12 ),
        .I5(\n_0_xball[8]_i_13 ),
        .O(\n_0_xball[8]_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair94" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \xball[8]_i_5 
       (.I0(Q[8]),
        .I1(\n_0_xball[9]_i_19 ),
        .O(\n_0_xball[8]_i_5 ));
(* SOFT_HLUTNM = "soft_lutpair93" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \xball[8]_i_6 
       (.I0(Q[8]),
        .I1(\n_0_xball[9]_i_18 ),
        .O(\n_0_xball[8]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair42" *) 
   LUT5 #(
    .INIT(32'h00ACAC00)) 
     \xball[8]_i_7 
       (.I0(\n_0_xball[8]_i_10 ),
        .I1(\n_0_xball[8]_i_14 ),
        .I2(\n_0_inc_type_reg[0] ),
        .I3(\n_0_inc_type_reg[1] ),
        .I4(\n_0_inc_type_reg[3] ),
        .O(\n_0_xball[8]_i_7 ));
LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
     \xball[8]_i_8 
       (.I0(zone_pad_bounce[1]),
        .I1(\n_0_xball[8]_i_15 ),
        .I2(zone_pad_bounce[3]),
        .I3(\n_0_xball[8]_i_16 ),
        .I4(zone_pad_bounce[2]),
        .I5(\n_0_xball[8]_i_17 ),
        .O(\n_0_xball[8]_i_8 ));
LUT6 #(
    .INIT(64'hCDC3414141414141)) 
     \xball[8]_i_9 
       (.I0(\n_0_xball[9]_i_23 ),
        .I1(Q[8]),
        .I2(\n_0_xball[9]_i_19 ),
        .I3(Q[1]),
        .I4(\n_0_xball[9]_i_22 ),
        .I5(zone_pad_bounce[4]),
        .O(\n_0_xball[8]_i_9 ));
LUT6 #(
    .INIT(64'hEAEAEAEEEAEAEAEA)) 
     \xball[9]_i_1 
       (.I0(\n_0_inc_type[3]_i_1 ),
        .I1(I43),
        .I2(game_lost),
        .I3(I44),
        .I4(I1),
        .I5(\n_0_xball[9]_i_3 ),
        .O(\n_0_xball[9]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair94" *) 
   LUT3 #(
    .INIT(8'h56)) 
     \xball[9]_i_10 
       (.I0(Q[9]),
        .I1(\n_0_xball[9]_i_19 ),
        .I2(Q[8]),
        .O(\n_0_xball[9]_i_10 ));
(* SOFT_HLUTNM = "soft_lutpair47" *) 
   LUT5 #(
    .INIT(32'h00CACA00)) 
     \xball[9]_i_11 
       (.I0(\n_0_xball[9]_i_20 ),
        .I1(\n_0_xball[9]_i_21 ),
        .I2(\n_0_inc_type_reg[0] ),
        .I3(\n_0_inc_type_reg[1] ),
        .I4(\n_0_inc_type_reg[3] ),
        .O(\n_0_xball[9]_i_11 ));
LUT6 #(
    .INIT(64'h40FF40FF40FFFFFF)) 
     \xball[9]_i_12 
       (.I0(\n_0_xball[9]_i_21 ),
        .I1(\n_0_xball[9]_i_22 ),
        .I2(zone_pad_bounce[4]),
        .I3(\n_0_xball[0]_i_3 ),
        .I4(\n_0_xball[9]_i_10 ),
        .I5(\n_0_xball[9]_i_23 ),
        .O(\n_0_xball[9]_i_12 ));
LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
     \xball[9]_i_13 
       (.I0(zone_pad_bounce[1]),
        .I1(\n_0_xball[9]_i_24 ),
        .I2(zone_pad_bounce[2]),
        .I3(\n_0_xball[9]_i_25 ),
        .I4(zone_pad_bounce[3]),
        .I5(\n_0_xball[9]_i_26 ),
        .O(\n_0_xball[9]_i_13 ));
LUT6 #(
    .INIT(64'h3C33FFFF39333C33)) 
     \xball[9]_i_15 
       (.I0(Q[1]),
        .I1(Q[9]),
        .I2(\n_0_xball[9]_i_18 ),
        .I3(Q[8]),
        .I4(\n_0_inc_type_reg[3] ),
        .I5(\n_0_inc_type_reg[1] ),
        .O(\n_0_xball[9]_i_15 ));
LUT6 #(
    .INIT(64'hFFFFFFFF4400440F)) 
     \xball[9]_i_16 
       (.I0(\n_0_xball[9]_i_21 ),
        .I1(I5),
        .I2(\n_0_yball[9]_i_4 ),
        .I3(\n_0_inc_type_reg[2] ),
        .I4(\n_0_xball[9]_i_20 ),
        .I5(\n_0_xball[9]_i_5 ),
        .O(\n_0_xball[9]_i_16 ));
(* SOFT_HLUTNM = "soft_lutpair49" *) 
   LUT5 #(
    .INIT(32'h002082A2)) 
     \xball[9]_i_17 
       (.I0(I5),
        .I1(\n_0_inc_type_reg[3] ),
        .I2(\n_0_inc_type_reg[1] ),
        .I3(\n_0_xball[9]_i_21 ),
        .I4(\n_0_xball[9]_i_10 ),
        .O(\n_0_xball[9]_i_17 ));
LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
     \xball[9]_i_18 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(\n_0_xball[9]_i_18 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \xball[9]_i_19 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[6]),
        .O(\n_0_xball[9]_i_19 ));
LUT6 #(
    .INIT(64'h000000000000FF45)) 
     \xball[9]_i_2 
       (.I0(\n_0_inc_type[2]_i_5 ),
        .I1(\n_0_xball[9]_i_4 ),
        .I2(\n_0_xball[9]_i_5 ),
        .I3(\n_0_xball[9]_i_6 ),
        .I4(\n_0_xball[9]_i_7 ),
        .I5(I49),
        .O(\n_0_xball[9]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair44" *) 
   LUT4 #(
    .INIT(16'h5595)) 
     \xball[9]_i_20 
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(Q[1]),
        .I3(\n_0_xball[9]_i_18 ),
        .O(\n_0_xball[9]_i_20 ));
(* SOFT_HLUTNM = "soft_lutpair83" *) 
   LUT4 #(
    .INIT(16'h5556)) 
     \xball[9]_i_21 
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(Q[1]),
        .I3(\n_0_xball[9]_i_19 ),
        .O(\n_0_xball[9]_i_21 ));
(* SOFT_HLUTNM = "soft_lutpair82" *) 
   LUT4 #(
    .INIT(16'h0001)) 
     \xball[9]_i_22 
       (.I0(\n_0_inc_type_reg[1] ),
        .I1(\n_0_inc_type_reg[2] ),
        .I2(\n_0_inc_type_reg[0] ),
        .I3(\n_0_inc_type_reg[3] ),
        .O(\n_0_xball[9]_i_22 ));
LUT6 #(
    .INIT(64'h000000000001FFFF)) 
     \xball[9]_i_23 
       (.I0(\n_0_inc_type_reg[1] ),
        .I1(\n_0_inc_type_reg[2] ),
        .I2(\n_0_inc_type_reg[0] ),
        .I3(\n_0_inc_type_reg[3] ),
        .I4(zone_pad_bounce[4]),
        .I5(\n_0_xball[9]_i_29 ),
        .O(\n_0_xball[9]_i_23 ));
LUT6 #(
    .INIT(64'hFFFFE2E2FF00AAAA)) 
     \xball[9]_i_24 
       (.I0(\n_0_xball[9]_i_9 ),
        .I1(\n_0_inc_type_reg[0] ),
        .I2(\n_0_xball[9]_i_20 ),
        .I3(\n_0_xball[9]_i_30 ),
        .I4(\n_0_inc_type_reg[2] ),
        .I5(\n_0_inc_type_reg[1] ),
        .O(\n_0_xball[9]_i_24 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \xball[9]_i_25 
       (.I0(\n_0_xball[9]_i_21 ),
        .I1(\n_0_xball[9]_i_20 ),
        .I2(\n_0_xball[9]_i_31 ),
        .I3(\n_0_xball[9]_i_10 ),
        .I4(\n_0_xball[9]_i_32 ),
        .I5(\n_0_xball[9]_i_9 ),
        .O(\n_0_xball[9]_i_25 ));
LUT6 #(
    .INIT(64'hFFFFFFFFCFC0AAAA)) 
     \xball[9]_i_26 
       (.I0(\n_0_xball[9]_i_33 ),
        .I1(\n_0_xball[9]_i_10 ),
        .I2(\n_0_inc_type_reg[0] ),
        .I3(\n_0_xball[9]_i_21 ),
        .I4(\n_0_inc_type_reg[1] ),
        .I5(\n_0_inc_type_reg[2] ),
        .O(\n_0_xball[9]_i_26 ));
LUT2 #(
    .INIT(4'h9)) 
     \xball[9]_i_27 
       (.I0(Q[8]),
        .I1(Q[9]),
        .O(\n_0_xball[9]_i_27 ));
LUT2 #(
    .INIT(4'h9)) 
     \xball[9]_i_28 
       (.I0(Q[7]),
        .I1(Q[8]),
        .O(\n_0_xball[9]_i_28 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFCEECC)) 
     \xball[9]_i_29 
       (.I0(\n_0_yball[8]_i_20 ),
        .I1(zone_pad_bounce[0]),
        .I2(zone_pad_bounce[2]),
        .I3(zone_pad_bounce[1]),
        .I4(\n_0_inc_type_reg[3] ),
        .I5(\n_0_xball[9]_i_34 ),
        .O(\n_0_xball[9]_i_29 ));
(* SOFT_HLUTNM = "soft_lutpair41" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \xball[9]_i_3 
       (.I0(\n_0_inc_type[2]_i_5 ),
        .I1(\n_0_xball[0]_i_3 ),
        .O(\n_0_xball[9]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair45" *) 
   LUT5 #(
    .INIT(32'h3333393C)) 
     \xball[9]_i_30 
       (.I0(\n_0_inc_type_reg[0] ),
        .I1(Q[9]),
        .I2(Q[8]),
        .I3(Q[1]),
        .I4(\n_0_xball[9]_i_19 ),
        .O(\n_0_xball[9]_i_30 ));
(* SOFT_HLUTNM = "soft_lutpair51" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \xball[9]_i_31 
       (.I0(\n_0_inc_type_reg[1] ),
        .I1(\n_0_inc_type_reg[2] ),
        .O(\n_0_xball[9]_i_31 ));
(* SOFT_HLUTNM = "soft_lutpair86" *) 
   LUT3 #(
    .INIT(8'hEA)) 
     \xball[9]_i_32 
       (.I0(\n_0_inc_type_reg[2] ),
        .I1(\n_0_inc_type_reg[1] ),
        .I2(\n_0_inc_type_reg[0] ),
        .O(\n_0_xball[9]_i_32 ));
(* SOFT_HLUTNM = "soft_lutpair44" *) 
   LUT5 #(
    .INIT(32'h0FB40F0F)) 
     \xball[9]_i_33 
       (.I0(Q[1]),
        .I1(\n_0_inc_type_reg[0] ),
        .I2(Q[9]),
        .I3(\n_0_xball[9]_i_18 ),
        .I4(Q[8]),
        .O(\n_0_xball[9]_i_33 ));
(* SOFT_HLUTNM = "soft_lutpair53" *) 
   LUT3 #(
    .INIT(8'hA8)) 
     \xball[9]_i_34 
       (.I0(zone_pad_bounce[3]),
        .I1(\n_0_inc_type_reg[2] ),
        .I2(\n_0_inc_type_reg[3] ),
        .O(\n_0_xball[9]_i_34 ));
LUT6 #(
    .INIT(64'h000000001DFFFF1D)) 
     \xball[9]_i_4 
       (.I0(\n_0_xball[9]_i_9 ),
        .I1(\n_0_inc_type_reg[2] ),
        .I2(\n_0_xball[9]_i_10 ),
        .I3(\n_0_inc_type_reg[3] ),
        .I4(\n_0_inc_type_reg[1] ),
        .I5(\n_0_xball[9]_i_11 ),
        .O(\n_0_xball[9]_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair52" *) 
   LUT5 #(
    .INIT(32'h00000001)) 
     \xball[9]_i_5 
       (.I0(I7),
        .I1(I8),
        .I2(O3),
        .I3(O4),
        .I4(barrier_bounce_ok),
        .O(\n_0_xball[9]_i_5 ));
LUT6 #(
    .INIT(64'h00000000ABABAB00)) 
     \xball[9]_i_6 
       (.I0(\n_0_xball[9]_i_12 ),
        .I1(\n_0_inc_type_reg[3] ),
        .I2(\n_0_xball[9]_i_13 ),
        .I3(plusOp0_out[9]),
        .I4(\n_0_xball[0]_i_3 ),
        .I5(I3),
        .O(\n_0_xball[9]_i_6 ));
LUT6 #(
    .INIT(64'h0000000000007770)) 
     \xball[9]_i_7 
       (.I0(\n_0_xball[9]_i_4 ),
        .I1(\n_0_inc_type[3]_i_5 ),
        .I2(\n_0_xball[9]_i_15 ),
        .I3(\n_0_yball[9]_i_4 ),
        .I4(\n_0_xball[9]_i_16 ),
        .I5(\n_0_xball[9]_i_17 ),
        .O(\n_0_xball[9]_i_7 ));
LUT3 #(
    .INIT(8'h65)) 
     \xball[9]_i_9 
       (.I0(Q[9]),
        .I1(\n_0_xball[9]_i_18 ),
        .I2(Q[8]),
        .O(\n_0_xball[9]_i_9 ));
FDCE #(
    .INIT(1'b0)) 
     \xball_reg[0] 
       (.C(clk25_BUFG),
        .CE(\n_0_xball[9]_i_1 ),
        .CLR(I1),
        .D(\n_0_xball[0]_i_1 ),
        .Q(Q[0]));
CARRY4 \xball_reg[0]_i_4 
       (.CI(1'b0),
        .CO({\n_0_xball_reg[0]_i_4 ,\n_1_xball_reg[0]_i_4 ,\n_2_xball_reg[0]_i_4 ,\n_3_xball_reg[0]_i_4 }),
        .CYINIT(1'b0),
        .DI({\n_0_xball[0]_i_5 ,Q[2:0]}),
        .O(plusOp0_out[3:0]),
        .S({\n_0_xball[0]_i_6 ,\n_0_xball[0]_i_7 ,\n_0_xball[0]_i_8 ,\n_0_xball[0]_i_9 }));
FDCE #(
    .INIT(1'b0)) 
     \xball_reg[1] 
       (.C(clk25_BUFG),
        .CE(\n_0_xball[9]_i_1 ),
        .CLR(I1),
        .D(\n_0_xball[1]_i_1 ),
        .Q(Q[1]));
FDCE #(
    .INIT(1'b0)) 
     \xball_reg[2] 
       (.C(clk25_BUFG),
        .CE(\n_0_xball[9]_i_1 ),
        .CLR(I1),
        .D(\n_0_xball[2]_i_1 ),
        .Q(Q[2]));
FDCE #(
    .INIT(1'b0)) 
     \xball_reg[3] 
       (.C(clk25_BUFG),
        .CE(\n_0_xball[9]_i_1 ),
        .CLR(I1),
        .D(\n_0_xball[3]_i_1 ),
        .Q(Q[3]));
FDCE #(
    .INIT(1'b0)) 
     \xball_reg[4] 
       (.C(clk25_BUFG),
        .CE(\n_0_xball[9]_i_1 ),
        .CLR(I1),
        .D(D),
        .Q(Q[4]));
FDPE #(
    .INIT(1'b1)) 
     \xball_reg[5] 
       (.C(clk25_BUFG),
        .CE(\n_0_xball[9]_i_1 ),
        .D(\n_0_xball[5]_i_1 ),
        .PRE(I1),
        .Q(Q[5]));
FDPE #(
    .INIT(1'b1)) 
     \xball_reg[6] 
       (.C(clk25_BUFG),
        .CE(\n_0_xball[9]_i_1 ),
        .D(\n_0_xball[6]_i_1 ),
        .PRE(I1),
        .Q(Q[6]));
FDCE #(
    .INIT(1'b0)) 
     \xball_reg[7] 
       (.C(clk25_BUFG),
        .CE(\n_0_xball[9]_i_1 ),
        .CLR(I1),
        .D(\n_0_xball[7]_i_1 ),
        .Q(Q[7]));
CARRY4 \xball_reg[7]_i_5 
       (.CI(\n_0_xball_reg[0]_i_4 ),
        .CO({\n_0_xball_reg[7]_i_5 ,\n_1_xball_reg[7]_i_5 ,\n_2_xball_reg[7]_i_5 ,\n_3_xball_reg[7]_i_5 }),
        .CYINIT(1'b0),
        .DI({Q[6:4],\n_0_xball[7]_i_12 }),
        .O(plusOp0_out[7:4]),
        .S({\n_0_xball[7]_i_13 ,\n_0_xball[7]_i_14 ,\n_0_xball[7]_i_15 ,\n_0_xball[7]_i_16 }));
FDPE #(
    .INIT(1'b1)) 
     \xball_reg[8] 
       (.C(clk25_BUFG),
        .CE(\n_0_xball[9]_i_1 ),
        .D(\n_0_xball[8]_i_1 ),
        .PRE(I1),
        .Q(Q[8]));
FDCE #(
    .INIT(1'b0)) 
     \xball_reg[9] 
       (.C(clk25_BUFG),
        .CE(\n_0_xball[9]_i_1 ),
        .CLR(I1),
        .D(\n_0_xball[9]_i_2 ),
        .Q(Q[9]));
CARRY4 \xball_reg[9]_i_14 
       (.CI(\n_0_xball_reg[7]_i_5 ),
        .CO({\NLW_xball_reg[9]_i_14_CO_UNCONNECTED [3:1],\n_3_xball_reg[9]_i_14 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[7]}),
        .O({\NLW_xball_reg[9]_i_14_O_UNCONNECTED [3:2],plusOp0_out[9:8]}),
        .S({1'b0,1'b0,\n_0_xball[9]_i_27 ,\n_0_xball[9]_i_28 }));
(* SOFT_HLUTNM = "soft_lutpair41" *) 
   LUT5 #(
    .INIT(32'h0000BA8A)) 
     \yball[0]_i_1 
       (.I0(O2[0]),
        .I1(\n_0_xball[0]_i_3 ),
        .I2(\n_0_inc_type[2]_i_5 ),
        .I3(\n_7_yball_reg[0]_i_2 ),
        .I4(I49),
        .O(\n_0_yball[0]_i_1 ));
LUT3 #(
    .INIT(8'hA8)) 
     \yball[0]_i_3 
       (.I0(\n_0_inc_type_reg[3] ),
        .I1(\n_0_inc_type_reg[1] ),
        .I2(\n_0_inc_type_reg[2] ),
        .O(\n_0_yball[0]_i_3 ));
LUT4 #(
    .INIT(16'h1FE0)) 
     \yball[0]_i_4 
       (.I0(\n_0_inc_type_reg[2] ),
        .I1(\n_0_inc_type_reg[1] ),
        .I2(\n_0_inc_type_reg[3] ),
        .I3(O2[3]),
        .O(\n_0_yball[0]_i_4 ));
LUT6 #(
    .INIT(64'h55555555655666AA)) 
     \yball[0]_i_5 
       (.I0(O2[2]),
        .I1(\n_0_inc_type_reg[1] ),
        .I2(\n_0_inc_type_reg[0] ),
        .I3(\n_0_inc_type_reg[2] ),
        .I4(S2_IBUF),
        .I5(\n_0_inc_type_reg[3] ),
        .O(\n_0_yball[0]_i_5 ));
LUT6 #(
    .INIT(64'h6A9AA6A95A5559A6)) 
     \yball[0]_i_6 
       (.I0(O2[1]),
        .I1(\n_0_inc_type_reg[0] ),
        .I2(\n_0_inc_type_reg[3] ),
        .I3(\n_0_inc_type_reg[2] ),
        .I4(\n_0_inc_type_reg[1] ),
        .I5(S2_IBUF),
        .O(\n_0_yball[0]_i_6 ));
LUT6 #(
    .INIT(64'h9AA9AAAAAAAA9AA9)) 
     \yball[0]_i_7 
       (.I0(O2[0]),
        .I1(S2_IBUF),
        .I2(\n_0_inc_type_reg[1] ),
        .I3(\n_0_inc_type_reg[3] ),
        .I4(\n_0_inc_type_reg[0] ),
        .I5(\n_0_inc_type_reg[2] ),
        .O(\n_0_yball[0]_i_7 ));
LUT6 #(
    .INIT(64'h4545454444444544)) 
     \yball[1]_i_1 
       (.I0(I49),
        .I1(\n_0_yball[1]_i_2 ),
        .I2(I4),
        .I3(\n_0_yball[1]_i_3 ),
        .I4(barrier_bounce_ok),
        .I5(\n_0_yball[1]_i_4 ),
        .O(\n_0_yball[1]_i_1 ));
LUT6 #(
    .INIT(64'hFFFF477447744774)) 
     \yball[1]_i_2 
       (.I0(\n_0_yball[1]_i_5 ),
        .I1(\n_0_yball[9]_i_4 ),
        .I2(\n_0_yball[1]_i_6 ),
        .I3(O2[1]),
        .I4(\n_0_yball[1]_i_4 ),
        .I5(I6),
        .O(\n_0_yball[1]_i_2 ));
LUT5 #(
    .INIT(32'h2EEE2E22)) 
     \yball[1]_i_3 
       (.I0(\n_6_yball_reg[0]_i_2 ),
        .I1(\n_0_xball[0]_i_3 ),
        .I2(\n_0_yball[7]_i_15 ),
        .I3(O2[1]),
        .I4(\n_0_yball[7]_i_14 ),
        .O(\n_0_yball[1]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair70" *) 
   LUT5 #(
    .INIT(32'h69AAAA69)) 
     \yball[1]_i_4 
       (.I0(O2[1]),
        .I1(\n_0_inc_type_reg[0] ),
        .I2(\n_0_inc_type_reg[2] ),
        .I3(\n_0_inc_type_reg[3] ),
        .I4(\n_0_inc_type_reg[1] ),
        .O(\n_0_yball[1]_i_4 ));
LUT6 #(
    .INIT(64'hAFBEAFAFAFBEAFFA)) 
     \yball[1]_i_5 
       (.I0(\n_0_yball[8]_i_21 ),
        .I1(\n_0_inc_type_reg[2] ),
        .I2(O2[1]),
        .I3(\n_0_inc_type_reg[0] ),
        .I4(\n_0_inc_type_reg[3] ),
        .I5(\n_0_inc_type_reg[1] ),
        .O(\n_0_yball[1]_i_5 ));
(* SOFT_HLUTNM = "soft_lutpair70" *) 
   LUT4 #(
    .INIT(16'h8088)) 
     \yball[1]_i_6 
       (.I0(\n_0_inc_type_reg[2] ),
        .I1(\n_0_inc_type_reg[0] ),
        .I2(\n_0_inc_type_reg[1] ),
        .I3(\n_0_inc_type_reg[3] ),
        .O(\n_0_yball[1]_i_6 ));
LUT6 #(
    .INIT(64'h5510555555105510)) 
     \yball[2]_i_1 
       (.I0(I49),
        .I1(\n_0_yball[2]_i_2 ),
        .I2(I6),
        .I3(\n_0_yball_reg[2]_i_4 ),
        .I4(I4),
        .I5(\n_0_yball_reg[2]_i_5 ),
        .O(\n_0_yball[2]_i_1 ));
LUT6 #(
    .INIT(64'h888844F488884444)) 
     \yball[2]_i_10 
       (.I0(O2[1]),
        .I1(\n_0_yball[7]_i_14 ),
        .I2(zone_pad_bounce[4]),
        .I3(\n_0_inc_type_reg[2] ),
        .I4(O2[2]),
        .I5(\n_0_yball[2]_i_11 ),
        .O(\n_0_yball[2]_i_10 ));
(* SOFT_HLUTNM = "soft_lutpair49" *) 
   LUT2 #(
    .INIT(4'h1)) 
     \yball[2]_i_11 
       (.I0(\n_0_inc_type_reg[3] ),
        .I1(\n_0_inc_type_reg[1] ),
        .O(\n_0_yball[2]_i_11 ));
LUT6 #(
    .INIT(64'hDEFFFF7B21000084)) 
     \yball[2]_i_2 
       (.I0(\n_0_inc_type_reg[0] ),
        .I1(O2[1]),
        .I2(\n_0_inc_type_reg[2] ),
        .I3(\n_0_inc_type_reg[3] ),
        .I4(\n_0_inc_type_reg[1] ),
        .I5(O2[2]),
        .O(\n_0_yball[2]_i_2 ));
LUT6 #(
    .INIT(64'hA27F00FF02FD00FF)) 
     \yball[2]_i_6 
       (.I0(\n_0_inc_type_reg[0] ),
        .I1(\n_0_inc_type_reg[3] ),
        .I2(O2[1]),
        .I3(O2[2]),
        .I4(\n_0_inc_type_reg[2] ),
        .I5(\n_0_inc_type_reg[1] ),
        .O(\n_0_yball[2]_i_6 ));
LUT6 #(
    .INIT(64'h1111114114141141)) 
     \yball[2]_i_7 
       (.I0(\n_0_yball[8]_i_21 ),
        .I1(O2[2]),
        .I2(O2[1]),
        .I3(\n_0_yball[8]_i_22 ),
        .I4(\n_0_yball[8]_i_23 ),
        .I5(\n_0_inc_type_reg[1] ),
        .O(\n_0_yball[2]_i_7 ));
LUT5 #(
    .INIT(32'hF4FFF400)) 
     \yball[2]_i_8 
       (.I0(O2[2]),
        .I1(\n_0_yball[4]_i_15 ),
        .I2(\n_0_yball[2]_i_10 ),
        .I3(\n_0_xball[0]_i_3 ),
        .I4(\n_5_yball_reg[0]_i_2 ),
        .O(\n_0_yball[2]_i_8 ));
LUT6 #(
    .INIT(64'h820000417DFFFFBE)) 
     \yball[2]_i_9 
       (.I0(O2[1]),
        .I1(\n_0_inc_type_reg[2] ),
        .I2(\n_0_inc_type_reg[0] ),
        .I3(\n_0_inc_type_reg[3] ),
        .I4(\n_0_inc_type_reg[1] ),
        .I5(O2[2]),
        .O(\n_0_yball[2]_i_9 ));
LUT6 #(
    .INIT(64'h4444444545454445)) 
     \yball[3]_i_1 
       (.I0(I49),
        .I1(\n_0_yball[3]_i_2 ),
        .I2(I4),
        .I3(\n_0_yball[3]_i_3 ),
        .I4(barrier_bounce_ok),
        .I5(\n_0_yball[3]_i_4 ),
        .O(\n_0_yball[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair63" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \yball[3]_i_10 
       (.I0(O2[2]),
        .I1(O2[3]),
        .O(\n_0_yball[3]_i_10 ));
LUT6 #(
    .INIT(64'h33CC48B712EDCC33)) 
     \yball[3]_i_11 
       (.I0(\n_0_inc_type_reg[0] ),
        .I1(\n_0_inc_type_reg[1] ),
        .I2(\n_0_inc_type_reg[2] ),
        .I3(O2[3]),
        .I4(O2[2]),
        .I5(O2[1]),
        .O(\n_0_yball[3]_i_11 ));
LUT6 #(
    .INIT(64'hCC3312ED48B733CC)) 
     \yball[3]_i_12 
       (.I0(\n_0_inc_type_reg[0] ),
        .I1(\n_0_inc_type_reg[1] ),
        .I2(\n_0_inc_type_reg[2] ),
        .I3(O2[3]),
        .I4(O2[2]),
        .I5(O2[1]),
        .O(\n_0_yball[3]_i_12 ));
LUT6 #(
    .INIT(64'h2338FFFFEBBBFFFF)) 
     \yball[3]_i_13 
       (.I0(\n_0_inc_type_reg[3] ),
        .I1(O2[3]),
        .I2(O2[2]),
        .I3(O2[1]),
        .I4(\n_0_inc_type_reg[2] ),
        .I5(\n_0_inc_type_reg[1] ),
        .O(\n_0_yball[3]_i_13 ));
LUT6 #(
    .INIT(64'hAEFEAEFEAEFEAEAE)) 
     \yball[3]_i_2 
       (.I0(\n_0_yball[3]_i_5 ),
        .I1(\n_0_yball[3]_i_6 ),
        .I2(\n_0_yball[9]_i_4 ),
        .I3(\n_0_yball[3]_i_7 ),
        .I4(O3),
        .I5(I7),
        .O(\n_0_yball[3]_i_2 ));
LUT6 #(
    .INIT(64'hEEEA0000EEEAFFFF)) 
     \yball[3]_i_3 
       (.I0(\n_0_yball[3]_i_8 ),
        .I1(\n_0_yball[3]_i_9 ),
        .I2(\n_0_yball[3]_i_10 ),
        .I3(\n_0_yball[7]_i_15 ),
        .I4(\n_0_xball[0]_i_3 ),
        .I5(\n_4_yball_reg[0]_i_2 ),
        .O(\n_0_yball[3]_i_3 ));
LUT5 #(
    .INIT(32'hB28E8EB2)) 
     \yball[3]_i_4 
       (.I0(\n_0_yball[3]_i_11 ),
        .I1(\n_0_inc_type_reg[3] ),
        .I2(\n_0_inc_type_reg[1] ),
        .I3(O2[3]),
        .I4(O2[2]),
        .O(\n_0_yball[3]_i_4 ));
LUT6 #(
    .INIT(64'h00288200AA2882AA)) 
     \yball[3]_i_5 
       (.I0(I6),
        .I1(O2[3]),
        .I2(O2[2]),
        .I3(\n_0_inc_type_reg[1] ),
        .I4(\n_0_inc_type_reg[3] ),
        .I5(\n_0_yball[3]_i_12 ),
        .O(\n_0_yball[3]_i_5 ));
LUT6 #(
    .INIT(64'h447477FCFFFF77FC)) 
     \yball[3]_i_6 
       (.I0(\n_0_inc_type_reg[2] ),
        .I1(\n_0_yball[3]_i_10 ),
        .I2(\n_0_inc_type_reg[3] ),
        .I3(\n_0_inc_type_reg[1] ),
        .I4(\n_0_inc_type_reg[0] ),
        .I5(\n_0_yball[3]_i_13 ),
        .O(\n_0_yball[3]_i_6 ));
LUT6 #(
    .INIT(64'hCC3330CF887733CC)) 
     \yball[3]_i_7 
       (.I0(\n_0_inc_type_reg[1] ),
        .I1(\n_0_yball[8]_i_23 ),
        .I2(\n_0_yball[8]_i_22 ),
        .I3(O2[3]),
        .I4(O2[2]),
        .I5(O2[1]),
        .O(\n_0_yball[3]_i_7 ));
(* SOFT_HLUTNM = "soft_lutpair63" *) 
   LUT5 #(
    .INIT(32'h01555501)) 
     \yball[3]_i_8 
       (.I0(\n_0_yball[7]_i_14 ),
        .I1(zone_pad_bounce[4]),
        .I2(\n_0_yball[4]_i_15 ),
        .I3(O2[2]),
        .I4(O2[3]),
        .O(\n_0_yball[3]_i_8 ));
(* SOFT_HLUTNM = "soft_lutpair87" *) 
   LUT3 #(
    .INIT(8'h56)) 
     \yball[3]_i_9 
       (.I0(O2[3]),
        .I1(O2[2]),
        .I2(O2[1]),
        .O(\n_0_yball[3]_i_9 ));
LUT6 #(
    .INIT(64'h4454555444444444)) 
     \yball[4]_i_1 
       (.I0(I49),
        .I1(\n_0_yball[4]_i_2 ),
        .I2(\n_7_yball_reg[4]_i_3 ),
        .I3(\n_0_xball[0]_i_3 ),
        .I4(\n_0_yball[4]_i_4 ),
        .I5(\n_0_inc_type[2]_i_5 ),
        .O(\n_0_yball[4]_i_1 ));
LUT2 #(
    .INIT(4'h9)) 
     \yball[4]_i_10 
       (.I0(O2[6]),
        .I1(O2[7]),
        .O(\n_0_yball[4]_i_10 ));
LUT2 #(
    .INIT(4'h9)) 
     \yball[4]_i_11 
       (.I0(O2[5]),
        .I1(O2[6]),
        .O(\n_0_yball[4]_i_11 ));
LUT2 #(
    .INIT(4'h9)) 
     \yball[4]_i_12 
       (.I0(O2[4]),
        .I1(O2[5]),
        .O(\n_0_yball[4]_i_12 ));
LUT4 #(
    .INIT(16'h1FE0)) 
     \yball[4]_i_13 
       (.I0(\n_0_inc_type_reg[2] ),
        .I1(\n_0_inc_type_reg[1] ),
        .I2(\n_0_inc_type_reg[3] ),
        .I3(O2[4]),
        .O(\n_0_yball[4]_i_13 ));
(* SOFT_HLUTNM = "soft_lutpair65" *) 
   LUT3 #(
    .INIT(8'h56)) 
     \yball[4]_i_14 
       (.I0(O2[4]),
        .I1(O2[3]),
        .I2(O2[2]),
        .O(\n_0_yball[4]_i_14 ));
LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
     \yball[4]_i_15 
       (.I0(\n_0_yball[7]_i_23 ),
        .I1(zone_pad_bounce[2]),
        .I2(zone_pad_bounce[1]),
        .I3(\n_0_yball[4]_i_17 ),
        .I4(\n_0_yball[4]_i_25 ),
        .I5(zone_pad_bounce[3]),
        .O(\n_0_yball[4]_i_15 ));
(* SOFT_HLUTNM = "soft_lutpair64" *) 
   LUT4 #(
    .INIT(16'h5556)) 
     \yball[4]_i_16 
       (.I0(O2[4]),
        .I1(O2[2]),
        .I2(O2[3]),
        .I3(O2[1]),
        .O(\n_0_yball[4]_i_16 ));
(* SOFT_HLUTNM = "soft_lutpair46" *) 
   LUT3 #(
    .INIT(8'h01)) 
     \yball[4]_i_17 
       (.I0(\n_0_inc_type_reg[1] ),
        .I1(\n_0_inc_type_reg[3] ),
        .I2(\n_0_inc_type_reg[2] ),
        .O(\n_0_yball[4]_i_17 ));
LUT6 #(
    .INIT(64'hA50F0F4B870F0F5A)) 
     \yball[4]_i_18 
       (.I0(\n_0_inc_type_reg[1] ),
        .I1(\n_0_inc_type_reg[2] ),
        .I2(O2[4]),
        .I3(O2[2]),
        .I4(O2[3]),
        .I5(O2[1]),
        .O(\n_0_yball[4]_i_18 ));
LUT6 #(
    .INIT(64'h8A7500FF00FF15EA)) 
     \yball[4]_i_19 
       (.I0(\n_0_inc_type_reg[1] ),
        .I1(O2[1]),
        .I2(\n_0_inc_type_reg[2] ),
        .I3(O2[4]),
        .I4(O2[3]),
        .I5(O2[2]),
        .O(\n_0_yball[4]_i_19 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4700)) 
     \yball[4]_i_2 
       (.I0(\n_0_yball_reg[4]_i_5 ),
        .I1(\n_0_xball[1]_i_2 ),
        .I2(\n_0_yball[4]_i_6 ),
        .I3(I6),
        .I4(\n_0_yball_reg[4]_i_7 ),
        .I5(\n_0_yball[4]_i_8 ),
        .O(\n_0_yball[4]_i_2 ));
LUT6 #(
    .INIT(64'hAAAEEEEEAAAEAAAE)) 
     \yball[4]_i_20 
       (.I0(\n_0_yball[4]_i_26 ),
        .I1(\n_0_inc_type_reg[0] ),
        .I2(\n_0_yball[4]_i_27 ),
        .I3(\n_0_inc_type_reg[3] ),
        .I4(\n_0_yball[4]_i_16 ),
        .I5(\n_0_yball[8]_i_20 ),
        .O(\n_0_yball[4]_i_20 ));
LUT6 #(
    .INIT(64'h0000015155550151)) 
     \yball[4]_i_21 
       (.I0(\n_0_yball[8]_i_21 ),
        .I1(\n_0_yball[4]_i_16 ),
        .I2(\n_0_yball[8]_i_22 ),
        .I3(\n_0_yball[4]_i_14 ),
        .I4(\n_0_yball[8]_i_23 ),
        .I5(\n_0_yball[4]_i_28 ),
        .O(\n_0_yball[4]_i_21 ));
LUT6 #(
    .INIT(64'h010D01C1C1CD0DCD)) 
     \yball[4]_i_22 
       (.I0(\n_0_yball[4]_i_29 ),
        .I1(\n_0_inc_type_reg[1] ),
        .I2(\n_0_inc_type_reg[0] ),
        .I3(\n_0_yball[4]_i_14 ),
        .I4(\n_0_inc_type_reg[2] ),
        .I5(\n_0_yball[4]_i_16 ),
        .O(\n_0_yball[4]_i_22 ));
(* SOFT_HLUTNM = "soft_lutpair60" *) 
   LUT5 #(
    .INIT(32'hB40F0F0F)) 
     \yball[4]_i_23 
       (.I0(O2[1]),
        .I1(\n_0_inc_type_reg[2] ),
        .I2(O2[4]),
        .I3(O2[3]),
        .I4(O2[2]),
        .O(\n_0_yball[4]_i_23 ));
LUT6 #(
    .INIT(64'h0C50FFFFFFFFFFFF)) 
     \yball[4]_i_24 
       (.I0(\n_0_yball[4]_i_30 ),
        .I1(\n_0_yball[4]_i_14 ),
        .I2(\n_0_inc_type_reg[1] ),
        .I3(\n_0_inc_type_reg[3] ),
        .I4(\n_0_inc_type[3]_i_5 ),
        .I5(\n_0_yball[4]_i_31 ),
        .O(\n_0_yball[4]_i_24 ));
(* SOFT_HLUTNM = "soft_lutpair55" *) 
   LUT2 #(
    .INIT(4'h1)) 
     \yball[4]_i_25 
       (.I0(\n_0_inc_type_reg[3] ),
        .I1(\n_0_inc_type_reg[2] ),
        .O(\n_0_yball[4]_i_25 ));
LUT6 #(
    .INIT(64'h11750074FFFF0074)) 
     \yball[4]_i_26 
       (.I0(\n_0_inc_type_reg[0] ),
        .I1(\n_0_inc_type_reg[1] ),
        .I2(\n_0_inc_type_reg[3] ),
        .I3(\n_0_yball[4]_i_14 ),
        .I4(\n_0_yball[4]_i_30 ),
        .I5(\n_0_inc_type_reg[2] ),
        .O(\n_0_yball[4]_i_26 ));
(* SOFT_HLUTNM = "soft_lutpair60" *) 
   LUT5 #(
    .INIT(32'h807FFFFF)) 
     \yball[4]_i_27 
       (.I0(O2[1]),
        .I1(O2[3]),
        .I2(O2[2]),
        .I3(O2[4]),
        .I4(\n_0_inc_type_reg[2] ),
        .O(\n_0_yball[4]_i_27 ));
(* SOFT_HLUTNM = "soft_lutpair64" *) 
   LUT5 #(
    .INIT(32'hC3339333)) 
     \yball[4]_i_28 
       (.I0(\n_0_inc_type_reg[1] ),
        .I1(O2[4]),
        .I2(O2[2]),
        .I3(O2[3]),
        .I4(O2[1]),
        .O(\n_0_yball[4]_i_28 ));
(* SOFT_HLUTNM = "soft_lutpair65" *) 
   LUT5 #(
    .INIT(32'hC3339333)) 
     \yball[4]_i_29 
       (.I0(\n_0_inc_type_reg[2] ),
        .I1(O2[4]),
        .I2(O2[2]),
        .I3(O2[3]),
        .I4(O2[1]),
        .O(\n_0_yball[4]_i_29 ));
LUT3 #(
    .INIT(8'h6A)) 
     \yball[4]_i_30 
       (.I0(O2[4]),
        .I1(O2[3]),
        .I2(O2[2]),
        .O(\n_0_yball[4]_i_30 ));
(* SOFT_HLUTNM = "soft_lutpair56" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \yball[4]_i_31 
       (.I0(barrier_bounce_ok),
        .I1(I3),
        .O(\n_0_yball[4]_i_31 ));
LUT6 #(
    .INIT(64'hCCCF4445CFCF4445)) 
     \yball[4]_i_4 
       (.I0(\n_0_yball[7]_i_14 ),
        .I1(\n_0_yball[4]_i_14 ),
        .I2(\n_0_yball[4]_i_15 ),
        .I3(zone_pad_bounce[4]),
        .I4(\n_0_yball[4]_i_16 ),
        .I5(\n_0_yball[4]_i_17 ),
        .O(\n_0_yball[4]_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair54" *) 
   LUT4 #(
    .INIT(16'h42BD)) 
     \yball[4]_i_6 
       (.I0(\n_0_inc_type_reg[1] ),
        .I1(O2[2]),
        .I2(O2[3]),
        .I3(O2[4]),
        .O(\n_0_yball[4]_i_6 ));
LUT6 #(
    .INIT(64'h00000000AAFFFFBA)) 
     \yball[4]_i_8 
       (.I0(\n_0_yball[4]_i_22 ),
        .I1(\n_0_yball[4]_i_23 ),
        .I2(\n_0_inc_type_reg[0] ),
        .I3(\n_0_inc_type_reg[1] ),
        .I4(\n_0_inc_type_reg[3] ),
        .I5(\n_0_yball[4]_i_24 ),
        .O(\n_0_yball[4]_i_8 ));
LUT3 #(
    .INIT(8'h1F)) 
     \yball[4]_i_9 
       (.I0(\n_0_inc_type_reg[2] ),
        .I1(\n_0_inc_type_reg[1] ),
        .I2(\n_0_inc_type_reg[3] ),
        .O(\n_0_yball[4]_i_9 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0047)) 
     \yball[5]_i_1 
       (.I0(\n_0_yball_reg[5]_i_2 ),
        .I1(barrier_bounce_ok),
        .I2(\n_0_yball[5]_i_3 ),
        .I3(I4),
        .I4(\n_0_yball[5]_i_4 ),
        .I5(\n_0_yball[5]_i_5 ),
        .O(\n_0_yball[5]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \yball[5]_i_10 
       (.I0(\n_0_yball[5]_i_16 ),
        .I1(\n_0_yball[5]_i_15 ),
        .I2(\n_0_inc_type_reg[0] ),
        .I3(\n_0_yball[5]_i_18 ),
        .I4(\n_0_inc_type_reg[1] ),
        .I5(\n_0_yball[5]_i_17 ),
        .O(\n_0_yball[5]_i_10 ));
(* SOFT_HLUTNM = "soft_lutpair54" *) 
   LUT5 #(
    .INIT(32'h4002BFFD)) 
     \yball[5]_i_11 
       (.I0(\n_0_inc_type_reg[1] ),
        .I1(O2[3]),
        .I2(O2[2]),
        .I3(O2[4]),
        .I4(O2[5]),
        .O(\n_0_yball[5]_i_11 ));
LUT6 #(
    .INIT(64'hF7F7F733FFFFFFFF)) 
     \yball[5]_i_13 
       (.I0(\n_0_inc_type_reg[1] ),
        .I1(\n_0_inc_type_reg[2] ),
        .I2(\n_0_yball[5]_i_8 ),
        .I3(\n_0_inc_type_reg[3] ),
        .I4(\n_0_yball[5]_i_21 ),
        .I5(\n_0_inc_type_reg[0] ),
        .O(\n_0_yball[5]_i_13 ));
LUT6 #(
    .INIT(64'hDCCCCCC714444444)) 
     \yball[5]_i_14 
       (.I0(\n_0_inc_type_reg[2] ),
        .I1(O2[5]),
        .I2(O2[2]),
        .I3(O2[3]),
        .I4(O2[4]),
        .I5(\n_0_xball[6]_i_7 ),
        .O(\n_0_yball[5]_i_14 ));
LUT6 #(
    .INIT(64'h0F0F0F0F0F0F0F78)) 
     \yball[5]_i_15 
       (.I0(O2[1]),
        .I1(\n_0_inc_type_reg[2] ),
        .I2(O2[5]),
        .I3(O2[2]),
        .I4(O2[3]),
        .I5(O2[4]),
        .O(\n_0_yball[5]_i_15 ));
LUT6 #(
    .INIT(64'hB40F0F0F0F0F0F0F)) 
     \yball[5]_i_16 
       (.I0(O2[1]),
        .I1(\n_0_inc_type_reg[2] ),
        .I2(O2[5]),
        .I3(O2[4]),
        .I4(O2[2]),
        .I5(O2[3]),
        .O(\n_0_yball[5]_i_16 ));
LUT6 #(
    .INIT(64'h333333333333393C)) 
     \yball[5]_i_17 
       (.I0(\n_0_inc_type_reg[2] ),
        .I1(O2[5]),
        .I2(O2[4]),
        .I3(O2[1]),
        .I4(O2[3]),
        .I5(O2[2]),
        .O(\n_0_yball[5]_i_17 ));
LUT6 #(
    .INIT(64'hC333333393333333)) 
     \yball[5]_i_18 
       (.I0(\n_0_inc_type_reg[2] ),
        .I1(O2[5]),
        .I2(O2[3]),
        .I3(O2[2]),
        .I4(O2[4]),
        .I5(O2[1]),
        .O(\n_0_yball[5]_i_18 ));
LUT6 #(
    .INIT(64'h333333333333393C)) 
     \yball[5]_i_19 
       (.I0(\n_0_yball[8]_i_22 ),
        .I1(O2[5]),
        .I2(O2[4]),
        .I3(O2[1]),
        .I4(O2[3]),
        .I5(O2[2]),
        .O(\n_0_yball[5]_i_19 ));
LUT6 #(
    .INIT(64'hC333333393333333)) 
     \yball[5]_i_20 
       (.I0(\n_0_inc_type_reg[1] ),
        .I1(O2[5]),
        .I2(O2[3]),
        .I3(O2[2]),
        .I4(O2[4]),
        .I5(O2[1]),
        .O(\n_0_yball[5]_i_20 ));
(* SOFT_HLUTNM = "soft_lutpair61" *) 
   LUT5 #(
    .INIT(32'h95555555)) 
     \yball[5]_i_21 
       (.I0(O2[5]),
        .I1(O2[3]),
        .I2(O2[2]),
        .I3(O2[4]),
        .I4(O2[1]),
        .O(\n_0_yball[5]_i_21 ));
LUT6 #(
    .INIT(64'hBBB00000BBB0FFFF)) 
     \yball[5]_i_3 
       (.I0(\n_0_yball[5]_i_8 ),
        .I1(\n_0_yball[7]_i_14 ),
        .I2(\n_0_yball[7]_i_15 ),
        .I3(\n_0_yball[5]_i_9 ),
        .I4(\n_0_xball[0]_i_3 ),
        .I5(\n_6_yball_reg[4]_i_3 ),
        .O(\n_0_yball[5]_i_3 ));
LUT6 #(
    .INIT(64'h4700FFFF47004700)) 
     \yball[5]_i_4 
       (.I0(\n_0_yball[5]_i_10 ),
        .I1(\n_0_xball[1]_i_2 ),
        .I2(\n_0_yball[5]_i_11 ),
        .I3(I6),
        .I4(\n_0_yball_reg[5]_i_12 ),
        .I5(I5),
        .O(\n_0_yball[5]_i_4 ));
LUT6 #(
    .INIT(64'hAAAAAAAAFFFFBBBF)) 
     \yball[5]_i_5 
       (.I0(I49),
        .I1(\n_0_yball[5]_i_13 ),
        .I2(\n_0_inc_type_reg[0] ),
        .I3(\n_0_yball[5]_i_11 ),
        .I4(\n_0_yball[5]_i_14 ),
        .I5(\n_0_yball[9]_i_4 ),
        .O(\n_0_yball[5]_i_5 ));
LUT5 #(
    .INIT(32'h93333336)) 
     \yball[5]_i_6 
       (.I0(\n_0_inc_type_reg[1] ),
        .I1(O2[5]),
        .I2(O2[2]),
        .I3(O2[3]),
        .I4(O2[4]),
        .O(\n_0_yball[5]_i_6 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \yball[5]_i_7 
       (.I0(\n_0_yball[5]_i_15 ),
        .I1(\n_0_yball[5]_i_16 ),
        .I2(\n_0_inc_type_reg[0] ),
        .I3(\n_0_yball[5]_i_17 ),
        .I4(\n_0_inc_type_reg[1] ),
        .I5(\n_0_yball[5]_i_18 ),
        .O(\n_0_yball[5]_i_7 ));
(* SOFT_HLUTNM = "soft_lutpair61" *) 
   LUT5 #(
    .INIT(32'h55555556)) 
     \yball[5]_i_8 
       (.I0(O2[5]),
        .I1(O2[4]),
        .I2(O2[1]),
        .I3(O2[3]),
        .I4(O2[2]),
        .O(\n_0_yball[5]_i_8 ));
(* SOFT_HLUTNM = "soft_lutpair75" *) 
   LUT4 #(
    .INIT(16'h5556)) 
     \yball[5]_i_9 
       (.I0(O2[5]),
        .I1(O2[2]),
        .I2(O2[3]),
        .I3(O2[4]),
        .O(\n_0_yball[5]_i_9 ));
LUT6 #(
    .INIT(64'h5510551055105555)) 
     \yball[6]_i_1 
       (.I0(I49),
        .I1(\n_0_yball[6]_i_2 ),
        .I2(I5),
        .I3(\n_0_yball[6]_i_4 ),
        .I4(I4),
        .I5(\n_0_yball_reg[6]_i_5 ),
        .O(\n_0_yball[6]_i_1 ));
LUT6 #(
    .INIT(64'h9CCCCCCCCCCCCCC6)) 
     \yball[6]_i_10 
       (.I0(\n_0_inc_type_reg[1] ),
        .I1(O2[6]),
        .I2(O2[5]),
        .I3(O2[3]),
        .I4(O2[2]),
        .I5(O2[4]),
        .O(\n_0_yball[6]_i_10 ));
LUT6 #(
    .INIT(64'h0C030C020C000C02)) 
     \yball[6]_i_11 
       (.I0(\n_0_yball[6]_i_17 ),
        .I1(\n_0_inc_type_reg[3] ),
        .I2(\n_0_yball[6]_i_18 ),
        .I3(\n_0_inc_type_reg[1] ),
        .I4(\n_0_inc_type_reg[0] ),
        .I5(\n_0_yball[6]_i_19 ),
        .O(\n_0_yball[6]_i_11 ));
LUT6 #(
    .INIT(64'hCF55CF55CF550055)) 
     \yball[6]_i_12 
       (.I0(\n_5_yball_reg[4]_i_3 ),
        .I1(\n_0_yball[6]_i_8 ),
        .I2(\n_0_yball[7]_i_14 ),
        .I3(\n_0_xball[0]_i_3 ),
        .I4(\n_0_yball[7]_i_15 ),
        .I5(\n_0_yball[6]_i_7 ),
        .O(\n_0_yball[6]_i_12 ));
LUT5 #(
    .INIT(32'h8EBE82B2)) 
     \yball[6]_i_13 
       (.I0(\n_0_yball_reg[6]_i_20 ),
        .I1(\n_0_inc_type_reg[3] ),
        .I2(\n_0_inc_type_reg[1] ),
        .I3(\n_0_yball[6]_i_21 ),
        .I4(\n_0_yball[6]_i_7 ),
        .O(\n_0_yball[6]_i_13 ));
(* SOFT_HLUTNM = "soft_lutpair80" *) 
   LUT4 #(
    .INIT(16'h7FFF)) 
     \yball[6]_i_14 
       (.I0(O2[4]),
        .I1(O2[2]),
        .I2(O2[3]),
        .I3(O2[5]),
        .O(\n_0_yball[6]_i_14 ));
LUT2 #(
    .INIT(4'hB)) 
     \yball[6]_i_15 
       (.I0(\n_0_yball[6]_i_22 ),
        .I1(\n_0_inc_type_reg[2] ),
        .O(\n_0_yball[6]_i_15 ));
LUT6 #(
    .INIT(64'h11750074FFFF0074)) 
     \yball[6]_i_16 
       (.I0(\n_0_inc_type_reg[0] ),
        .I1(\n_0_inc_type_reg[1] ),
        .I2(\n_0_inc_type_reg[3] ),
        .I3(\n_0_yball[6]_i_7 ),
        .I4(\n_0_yball[6]_i_21 ),
        .I5(\n_0_inc_type_reg[2] ),
        .O(\n_0_yball[6]_i_16 ));
(* SOFT_HLUTNM = "soft_lutpair77" *) 
   LUT4 #(
    .INIT(16'h393C)) 
     \yball[6]_i_17 
       (.I0(\n_0_inc_type_reg[2] ),
        .I1(O2[6]),
        .I2(\n_0_yball[6]_i_23 ),
        .I3(O2[1]),
        .O(\n_0_yball[6]_i_17 ));
LUT6 #(
    .INIT(64'hC3C90000C3C60000)) 
     \yball[6]_i_18 
       (.I0(\n_0_inc_type_reg[2] ),
        .I1(O2[6]),
        .I2(\n_0_yball[6]_i_14 ),
        .I3(O2[1]),
        .I4(\n_0_inc_type_reg[1] ),
        .I5(\n_0_inc_type_reg[0] ),
        .O(\n_0_yball[6]_i_18 ));
(* SOFT_HLUTNM = "soft_lutpair77" *) 
   LUT4 #(
    .INIT(16'h0F78)) 
     \yball[6]_i_19 
       (.I0(O2[1]),
        .I1(\n_0_inc_type_reg[2] ),
        .I2(O2[6]),
        .I3(\n_0_yball[6]_i_23 ),
        .O(\n_0_yball[6]_i_19 ));
LUT6 #(
    .INIT(64'hFE02FE0EFE02F202)) 
     \yball[6]_i_2 
       (.I0(\n_0_yball[6]_i_6 ),
        .I1(\n_0_inc_type_reg[3] ),
        .I2(\n_0_inc_type_reg[0] ),
        .I3(\n_0_yball[6]_i_7 ),
        .I4(\n_0_inc_type_reg[2] ),
        .I5(\n_0_yball[6]_i_8 ),
        .O(\n_0_yball[6]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair62" *) 
   LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \yball[6]_i_21 
       (.I0(O2[6]),
        .I1(O2[5]),
        .I2(O2[3]),
        .I3(O2[2]),
        .I4(O2[4]),
        .O(\n_0_yball[6]_i_21 ));
LUT6 #(
    .INIT(64'h9555555555555555)) 
     \yball[6]_i_22 
       (.I0(O2[6]),
        .I1(O2[4]),
        .I2(O2[2]),
        .I3(O2[3]),
        .I4(O2[5]),
        .I5(O2[1]),
        .O(\n_0_yball[6]_i_22 ));
(* SOFT_HLUTNM = "soft_lutpair75" *) 
   LUT4 #(
    .INIT(16'hFFFE)) 
     \yball[6]_i_23 
       (.I0(O2[5]),
        .I1(O2[2]),
        .I2(O2[3]),
        .I3(O2[4]),
        .O(\n_0_yball[6]_i_23 ));
LUT6 #(
    .INIT(64'h40BF738C44BB748B)) 
     \yball[6]_i_24 
       (.I0(\n_0_yball[6]_i_23 ),
        .I1(\n_0_inc_type_reg[1] ),
        .I2(\n_0_inc_type_reg[2] ),
        .I3(O2[6]),
        .I4(\n_0_yball[6]_i_14 ),
        .I5(O2[1]),
        .O(\n_0_yball[6]_i_24 ));
LUT6 #(
    .INIT(64'h0444FBBB3477CB88)) 
     \yball[6]_i_25 
       (.I0(\n_0_yball[6]_i_23 ),
        .I1(\n_0_inc_type_reg[1] ),
        .I2(O2[1]),
        .I3(\n_0_inc_type_reg[2] ),
        .I4(O2[6]),
        .I5(\n_0_yball[6]_i_14 ),
        .O(\n_0_yball[6]_i_25 ));
LUT6 #(
    .INIT(64'h11111111FFF11111)) 
     \yball[6]_i_4 
       (.I0(\n_0_yball[6]_i_9 ),
        .I1(\n_0_yball[9]_i_4 ),
        .I2(\n_0_yball[6]_i_10 ),
        .I3(\n_0_xball[1]_i_2 ),
        .I4(I6),
        .I5(\n_0_yball[6]_i_11 ),
        .O(\n_0_yball[6]_i_4 ));
LUT4 #(
    .INIT(16'h3C39)) 
     \yball[6]_i_6 
       (.I0(\n_0_inc_type_reg[1] ),
        .I1(O2[6]),
        .I2(\n_0_yball[6]_i_14 ),
        .I3(O2[1]),
        .O(\n_0_yball[6]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair58" *) 
   LUT5 #(
    .INIT(32'h55555556)) 
     \yball[6]_i_7 
       (.I0(O2[6]),
        .I1(O2[4]),
        .I2(O2[3]),
        .I3(O2[2]),
        .I4(O2[5]),
        .O(\n_0_yball[6]_i_7 ));
LUT6 #(
    .INIT(64'h5555555555555556)) 
     \yball[6]_i_8 
       (.I0(O2[6]),
        .I1(O2[5]),
        .I2(O2[2]),
        .I3(O2[3]),
        .I4(O2[4]),
        .I5(O2[1]),
        .O(\n_0_yball[6]_i_8 ));
LUT6 #(
    .INIT(64'h00000000FD55FDFD)) 
     \yball[6]_i_9 
       (.I0(\n_0_inc_type_reg[0] ),
        .I1(\n_0_yball[6]_i_15 ),
        .I2(\n_0_inc_type_reg[3] ),
        .I3(\n_0_yball[6]_i_8 ),
        .I4(\n_0_yball[8]_i_20 ),
        .I5(\n_0_yball[6]_i_16 ),
        .O(\n_0_yball[6]_i_9 ));
LUT6 #(
    .INIT(64'hEEEEEEEEEFEEEFFF)) 
     \yball[7]_i_1 
       (.I0(\n_0_yball[7]_i_2 ),
        .I1(\n_0_yball[7]_i_3 ),
        .I2(\n_0_yball[7]_i_4 ),
        .I3(barrier_bounce_ok),
        .I4(\n_0_yball[7]_i_5 ),
        .I5(I4),
        .O(\n_0_yball[7]_i_1 ));
LUT6 #(
    .INIT(64'h5555555555555556)) 
     \yball[7]_i_10 
       (.I0(O2[7]),
        .I1(O2[5]),
        .I2(O2[2]),
        .I3(O2[3]),
        .I4(O2[4]),
        .I5(O2[6]),
        .O(\n_0_yball[7]_i_10 ));
LUT3 #(
    .INIT(8'h56)) 
     \yball[7]_i_13 
       (.I0(O2[7]),
        .I1(\n_0_yball[9]_i_17 ),
        .I2(O2[1]),
        .O(\n_0_yball[7]_i_13 ));
LUT6 #(
    .INIT(64'hFFFFFFF4F4FFF4F4)) 
     \yball[7]_i_14 
       (.I0(\n_0_yball[7]_i_23 ),
        .I1(zone_pad_bounce[2]),
        .I2(\n_0_yball[7]_i_24 ),
        .I3(\n_0_yball[4]_i_17 ),
        .I4(zone_pad_bounce[4]),
        .I5(zone_pad_bounce[1]),
        .O(\n_0_yball[7]_i_14 ));
(* SOFT_HLUTNM = "soft_lutpair46" *) 
   LUT5 #(
    .INIT(32'h0000FEFF)) 
     \yball[7]_i_15 
       (.I0(\n_0_inc_type_reg[1] ),
        .I1(\n_0_inc_type_reg[3] ),
        .I2(\n_0_inc_type_reg[2] ),
        .I3(zone_pad_bounce[4]),
        .I4(\n_0_yball[4]_i_15 ),
        .O(\n_0_yball[7]_i_15 ));
(* SOFT_HLUTNM = "soft_lutpair76" *) 
   LUT3 #(
    .INIT(8'h65)) 
     \yball[7]_i_16 
       (.I0(O2[7]),
        .I1(\n_0_yball[7]_i_25 ),
        .I2(O2[1]),
        .O(\n_0_yball[7]_i_16 ));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \yball[7]_i_17 
       (.I0(O2[7]),
        .I1(O2[6]),
        .I2(O2[4]),
        .I3(O2[2]),
        .I4(O2[3]),
        .I5(O2[5]),
        .O(\n_0_yball[7]_i_17 ));
(* SOFT_HLUTNM = "soft_lutpair76" *) 
   LUT4 #(
    .INIT(16'h3C39)) 
     \yball[7]_i_18 
       (.I0(\n_0_inc_type_reg[1] ),
        .I1(O2[7]),
        .I2(\n_0_yball[7]_i_25 ),
        .I3(O2[1]),
        .O(\n_0_yball[7]_i_18 ));
LUT6 #(
    .INIT(64'h44BB748B40BF738C)) 
     \yball[7]_i_19 
       (.I0(\n_0_yball[7]_i_25 ),
        .I1(\n_0_inc_type_reg[1] ),
        .I2(\n_0_inc_type_reg[2] ),
        .I3(O2[7]),
        .I4(\n_0_yball[9]_i_17 ),
        .I5(O2[1]),
        .O(\n_0_yball[7]_i_19 ));
LUT6 #(
    .INIT(64'hFFFFFFFF0D0DFF0D)) 
     \yball[7]_i_2 
       (.I0(\n_0_yball[7]_i_6 ),
        .I1(\n_0_yball[7]_i_7 ),
        .I2(\n_0_yball[9]_i_4 ),
        .I3(I5),
        .I4(\n_0_yball[7]_i_8 ),
        .I5(I49),
        .O(\n_0_yball[7]_i_2 ));
LUT6 #(
    .INIT(64'h4044BFBB4377BC88)) 
     \yball[7]_i_20 
       (.I0(\n_0_yball[7]_i_25 ),
        .I1(\n_0_inc_type_reg[1] ),
        .I2(O2[1]),
        .I3(\n_0_inc_type_reg[2] ),
        .I4(O2[7]),
        .I5(\n_0_yball[9]_i_17 ),
        .O(\n_0_yball[7]_i_20 ));
LUT6 #(
    .INIT(64'h40BF738C44BB748B)) 
     \yball[7]_i_21 
       (.I0(\n_0_yball[9]_i_17 ),
        .I1(\n_0_inc_type_reg[1] ),
        .I2(\n_0_inc_type_reg[2] ),
        .I3(O2[7]),
        .I4(\n_0_yball[7]_i_25 ),
        .I5(O2[1]),
        .O(\n_0_yball[7]_i_21 ));
LUT6 #(
    .INIT(64'h0444FBBB3477CB88)) 
     \yball[7]_i_22 
       (.I0(\n_0_yball[9]_i_17 ),
        .I1(\n_0_inc_type_reg[1] ),
        .I2(O2[1]),
        .I3(\n_0_inc_type_reg[2] ),
        .I4(O2[7]),
        .I5(\n_0_yball[7]_i_25 ),
        .O(\n_0_yball[7]_i_22 ));
(* SOFT_HLUTNM = "soft_lutpair82" *) 
   LUT4 #(
    .INIT(16'h0514)) 
     \yball[7]_i_23 
       (.I0(\n_0_inc_type_reg[3] ),
        .I1(\n_0_inc_type_reg[0] ),
        .I2(\n_0_inc_type_reg[2] ),
        .I3(\n_0_inc_type_reg[1] ),
        .O(\n_0_yball[7]_i_23 ));
(* SOFT_HLUTNM = "soft_lutpair78" *) 
   LUT4 #(
    .INIT(16'hFEAA)) 
     \yball[7]_i_24 
       (.I0(zone_pad_bounce[0]),
        .I1(\n_0_inc_type_reg[3] ),
        .I2(\n_0_inc_type_reg[2] ),
        .I3(zone_pad_bounce[3]),
        .O(\n_0_yball[7]_i_24 ));
(* SOFT_HLUTNM = "soft_lutpair62" *) 
   LUT5 #(
    .INIT(32'h7FFFFFFF)) 
     \yball[7]_i_25 
       (.I0(O2[5]),
        .I1(O2[3]),
        .I2(O2[2]),
        .I3(O2[4]),
        .I4(O2[6]),
        .O(\n_0_yball[7]_i_25 ));
LUT6 #(
    .INIT(64'h00220A00AA220AAA)) 
     \yball[7]_i_3 
       (.I0(I6),
        .I1(\n_0_yball[7]_i_9 ),
        .I2(\n_0_yball[7]_i_10 ),
        .I3(\n_0_inc_type_reg[1] ),
        .I4(\n_0_inc_type_reg[3] ),
        .I5(\n_0_yball_reg[7]_i_11 ),
        .O(\n_0_yball[7]_i_3 ));
LUT5 #(
    .INIT(32'hBE8EB282)) 
     \yball[7]_i_4 
       (.I0(\n_0_yball_reg[7]_i_12 ),
        .I1(\n_0_inc_type_reg[3] ),
        .I2(\n_0_inc_type_reg[1] ),
        .I3(\n_0_yball[7]_i_9 ),
        .I4(\n_0_yball[7]_i_10 ),
        .O(\n_0_yball[7]_i_4 ));
LUT6 #(
    .INIT(64'hCF55CF55CF550055)) 
     \yball[7]_i_5 
       (.I0(\n_4_yball_reg[4]_i_3 ),
        .I1(\n_0_yball[7]_i_13 ),
        .I2(\n_0_yball[7]_i_14 ),
        .I3(\n_0_xball[0]_i_3 ),
        .I4(\n_0_yball[7]_i_15 ),
        .I5(\n_0_yball[7]_i_10 ),
        .O(\n_0_yball[7]_i_5 ));
LUT6 #(
    .INIT(64'hF7F7F733FFFFFFFF)) 
     \yball[7]_i_6 
       (.I0(\n_0_inc_type_reg[1] ),
        .I1(\n_0_inc_type_reg[2] ),
        .I2(\n_0_yball[7]_i_13 ),
        .I3(\n_0_inc_type_reg[3] ),
        .I4(\n_0_yball[7]_i_16 ),
        .I5(\n_0_inc_type_reg[0] ),
        .O(\n_0_yball[7]_i_6 ));
LUT6 #(
    .INIT(64'h333B000A3FFF0F0A)) 
     \yball[7]_i_7 
       (.I0(\n_0_inc_type_reg[3] ),
        .I1(\n_0_inc_type_reg[2] ),
        .I2(\n_0_yball[7]_i_10 ),
        .I3(\n_0_inc_type_reg[1] ),
        .I4(\n_0_yball[7]_i_17 ),
        .I5(\n_0_inc_type_reg[0] ),
        .O(\n_0_yball[7]_i_7 ));
LUT6 #(
    .INIT(64'hFE02FE0EFE02F202)) 
     \yball[7]_i_8 
       (.I0(\n_0_yball[7]_i_18 ),
        .I1(\n_0_inc_type_reg[3] ),
        .I2(\n_0_inc_type_reg[0] ),
        .I3(\n_0_yball[7]_i_10 ),
        .I4(\n_0_inc_type_reg[2] ),
        .I5(\n_0_yball[7]_i_13 ),
        .O(\n_0_yball[7]_i_8 ));
LUT6 #(
    .INIT(64'h800000007FFFFFFF)) 
     \yball[7]_i_9 
       (.I0(O2[5]),
        .I1(O2[3]),
        .I2(O2[2]),
        .I3(O2[4]),
        .I4(O2[6]),
        .I5(O2[7]),
        .O(\n_0_yball[7]_i_9 ));
LUT5 #(
    .INIT(32'h54555454)) 
     \yball[8]_i_1 
       (.I0(I49),
        .I1(\n_0_yball[8]_i_2 ),
        .I2(\n_0_yball_reg[8]_i_3 ),
        .I3(I4),
        .I4(\n_0_yball_reg[8]_i_5 ),
        .O(\n_0_yball[8]_i_1 ));
LUT6 #(
    .INIT(64'h0000015155550151)) 
     \yball[8]_i_10 
       (.I0(\n_0_yball[8]_i_21 ),
        .I1(\n_0_yball[8]_i_19 ),
        .I2(\n_0_yball[8]_i_22 ),
        .I3(\n_0_yball[8]_i_7 ),
        .I4(\n_0_yball[8]_i_23 ),
        .I5(\n_0_yball[8]_i_24 ),
        .O(\n_0_yball[8]_i_10 ));
LUT6 #(
    .INIT(64'h444FFFFF444F0000)) 
     \yball[8]_i_11 
       (.I0(\n_0_yball[8]_i_19 ),
        .I1(\n_0_yball[7]_i_14 ),
        .I2(\n_0_yball[8]_i_7 ),
        .I3(\n_0_yball[7]_i_15 ),
        .I4(\n_0_xball[0]_i_3 ),
        .I5(\n_7_yball_reg[9]_i_16 ),
        .O(\n_0_yball[8]_i_11 ));
LUT5 #(
    .INIT(32'h0F55330F)) 
     \yball[8]_i_12 
       (.I0(\n_0_yball[8]_i_6 ),
        .I1(\n_0_yball[8]_i_7 ),
        .I2(\n_0_yball[8]_i_25 ),
        .I3(\n_0_inc_type_reg[3] ),
        .I4(\n_0_inc_type_reg[1] ),
        .O(\n_0_yball[8]_i_12 ));
(* SOFT_HLUTNM = "soft_lutpair72" *) 
   LUT4 #(
    .INIT(16'h393C)) 
     \yball[8]_i_13 
       (.I0(O2[1]),
        .I1(O2[8]),
        .I2(\n_0_yball[9]_i_18 ),
        .I3(\n_0_inc_type_reg[2] ),
        .O(\n_0_yball[8]_i_13 ));
(* SOFT_HLUTNM = "soft_lutpair59" *) 
   LUT5 #(
    .INIT(32'h0F0F0F78)) 
     \yball[8]_i_14 
       (.I0(O2[1]),
        .I1(\n_0_inc_type_reg[2] ),
        .I2(O2[8]),
        .I3(\n_0_yball[9]_i_17 ),
        .I4(O2[7]),
        .O(\n_0_yball[8]_i_14 ));
(* SOFT_HLUTNM = "soft_lutpair72" *) 
   LUT4 #(
    .INIT(16'h3C39)) 
     \yball[8]_i_15 
       (.I0(\n_0_inc_type_reg[2] ),
        .I1(O2[8]),
        .I2(\n_0_yball[9]_i_18 ),
        .I3(O2[1]),
        .O(\n_0_yball[8]_i_15 ));
(* SOFT_HLUTNM = "soft_lutpair59" *) 
   LUT5 #(
    .INIT(32'h3333393C)) 
     \yball[8]_i_16 
       (.I0(\n_0_inc_type_reg[2] ),
        .I1(O2[8]),
        .I2(O2[7]),
        .I3(O2[1]),
        .I4(\n_0_yball[9]_i_17 ),
        .O(\n_0_yball[8]_i_16 ));
LUT6 #(
    .INIT(64'h007400741175FFFF)) 
     \yball[8]_i_17 
       (.I0(\n_0_inc_type_reg[0] ),
        .I1(\n_0_inc_type_reg[1] ),
        .I2(\n_0_inc_type_reg[3] ),
        .I3(\n_0_yball[8]_i_7 ),
        .I4(\n_0_inc_type_reg[2] ),
        .I5(\n_0_yball[8]_i_6 ),
        .O(\n_0_yball[8]_i_17 ));
(* SOFT_HLUTNM = "soft_lutpair84" *) 
   LUT4 #(
    .INIT(16'h2DFF)) 
     \yball[8]_i_18 
       (.I0(O2[1]),
        .I1(\n_0_yball[9]_i_18 ),
        .I2(O2[8]),
        .I3(\n_0_inc_type_reg[2] ),
        .O(\n_0_yball[8]_i_18 ));
(* SOFT_HLUTNM = "soft_lutpair57" *) 
   LUT4 #(
    .INIT(16'h5556)) 
     \yball[8]_i_19 
       (.I0(O2[8]),
        .I1(O2[7]),
        .I2(O2[1]),
        .I3(\n_0_yball[9]_i_17 ),
        .O(\n_0_yball[8]_i_19 ));
LUT6 #(
    .INIT(64'h00220A00AA220AAA)) 
     \yball[8]_i_2 
       (.I0(I6),
        .I1(\n_0_yball[8]_i_6 ),
        .I2(\n_0_yball[8]_i_7 ),
        .I3(\n_0_inc_type_reg[1] ),
        .I4(\n_0_inc_type_reg[3] ),
        .I5(\n_0_yball[8]_i_8 ),
        .O(\n_0_yball[8]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair50" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \yball[8]_i_20 
       (.I0(\n_0_inc_type_reg[2] ),
        .I1(\n_0_inc_type_reg[1] ),
        .O(\n_0_yball[8]_i_20 ));
(* SOFT_HLUTNM = "soft_lutpair69" *) 
   LUT2 #(
    .INIT(4'h1)) 
     \yball[8]_i_21 
       (.I0(O3),
        .I1(I7),
        .O(\n_0_yball[8]_i_21 ));
(* SOFT_HLUTNM = "soft_lutpair78" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \yball[8]_i_22 
       (.I0(\n_0_inc_type_reg[0] ),
        .I1(\n_0_inc_type_reg[2] ),
        .O(\n_0_yball[8]_i_22 ));
LUT2 #(
    .INIT(4'h1)) 
     \yball[8]_i_23 
       (.I0(\n_0_inc_type_reg[3] ),
        .I1(\n_0_inc_type_reg[0] ),
        .O(\n_0_yball[8]_i_23 ));
(* SOFT_HLUTNM = "soft_lutpair66" *) 
   LUT4 #(
    .INIT(16'h3C39)) 
     \yball[8]_i_24 
       (.I0(\n_0_inc_type_reg[1] ),
        .I1(O2[8]),
        .I2(\n_0_yball[9]_i_18 ),
        .I3(O2[1]),
        .O(\n_0_yball[8]_i_24 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \yball[8]_i_25 
       (.I0(\n_0_yball[8]_i_14 ),
        .I1(\n_0_yball[8]_i_13 ),
        .I2(\n_0_inc_type_reg[0] ),
        .I3(\n_0_yball[8]_i_16 ),
        .I4(\n_0_inc_type_reg[1] ),
        .I5(\n_0_yball[8]_i_15 ),
        .O(\n_0_yball[8]_i_25 ));
(* SOFT_HLUTNM = "soft_lutpair95" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \yball[8]_i_6 
       (.I0(O2[8]),
        .I1(\n_0_yball[9]_i_18 ),
        .O(\n_0_yball[8]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair85" *) 
   LUT3 #(
    .INIT(8'h56)) 
     \yball[8]_i_7 
       (.I0(O2[8]),
        .I1(\n_0_yball[9]_i_17 ),
        .I2(O2[7]),
        .O(\n_0_yball[8]_i_7 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \yball[8]_i_8 
       (.I0(\n_0_yball[8]_i_13 ),
        .I1(\n_0_yball[8]_i_14 ),
        .I2(\n_0_inc_type_reg[0] ),
        .I3(\n_0_yball[8]_i_15 ),
        .I4(\n_0_inc_type_reg[1] ),
        .I5(\n_0_yball[8]_i_16 ),
        .O(\n_0_yball[8]_i_8 ));
LUT6 #(
    .INIT(64'hAAAEEEEEAAAEAAAE)) 
     \yball[8]_i_9 
       (.I0(\n_0_yball[8]_i_17 ),
        .I1(\n_0_inc_type_reg[0] ),
        .I2(\n_0_yball[8]_i_18 ),
        .I3(\n_0_inc_type_reg[3] ),
        .I4(\n_0_yball[8]_i_19 ),
        .I5(\n_0_yball[8]_i_20 ),
        .O(\n_0_yball[8]_i_9 ));
LUT6 #(
    .INIT(64'h5555005155555555)) 
     \yball[9]_i_1 
       (.I0(I49),
        .I1(\n_0_yball[9]_i_2 ),
        .I2(\n_0_yball[9]_i_3 ),
        .I3(\n_0_yball[9]_i_4 ),
        .I4(\n_0_yball[9]_i_5 ),
        .I5(\n_0_yball[9]_i_6 ),
        .O(\n_0_yball[9]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair95" *) 
   LUT3 #(
    .INIT(8'h65)) 
     \yball[9]_i_10 
       (.I0(O2[9]),
        .I1(\n_0_yball[9]_i_18 ),
        .I2(O2[8]),
        .O(\n_0_yball[9]_i_10 ));
LUT3 #(
    .INIT(8'h53)) 
     \yball[9]_i_11 
       (.I0(\n_0_yball[9]_i_9 ),
        .I1(\n_0_yball[9]_i_10 ),
        .I2(\n_0_inc_type_reg[1] ),
        .O(\n_0_yball[9]_i_11 ));
LUT6 #(
    .INIT(64'hFFFFFFFF1FF01FFC)) 
     \yball[9]_i_12 
       (.I0(\n_0_yball[9]_i_19 ),
        .I1(\n_0_inc_type_reg[0] ),
        .I2(\n_0_inc_type_reg[1] ),
        .I3(\n_0_inc_type_reg[3] ),
        .I4(\n_0_yball[9]_i_20 ),
        .I5(\n_0_yball[9]_i_21 ),
        .O(\n_0_yball[9]_i_12 ));
LUT6 #(
    .INIT(64'hFE02FE0EFE02F202)) 
     \yball[9]_i_13 
       (.I0(\n_0_yball[9]_i_22 ),
        .I1(\n_0_inc_type_reg[3] ),
        .I2(\n_0_inc_type_reg[0] ),
        .I3(\n_0_yball[9]_i_9 ),
        .I4(\n_0_inc_type_reg[2] ),
        .I5(\n_0_yball[9]_i_7 ),
        .O(\n_0_yball[9]_i_13 ));
LUT6 #(
    .INIT(64'hAFCA0000A0CA0000)) 
     \yball[9]_i_14 
       (.I0(\n_0_yball[9]_i_23 ),
        .I1(\n_0_yball[9]_i_10 ),
        .I2(\n_0_inc_type_reg[1] ),
        .I3(\n_0_inc_type_reg[3] ),
        .I4(barrier_bounce_ok),
        .I5(\n_0_yball[9]_i_9 ),
        .O(\n_0_yball[9]_i_14 ));
LUT4 #(
    .INIT(16'hE0EE)) 
     \yball[9]_i_15 
       (.I0(\n_0_yball[7]_i_15 ),
        .I1(\n_0_yball[9]_i_9 ),
        .I2(\n_0_yball[9]_i_7 ),
        .I3(\n_0_yball[7]_i_14 ),
        .O(\n_0_yball[9]_i_15 ));
(* SOFT_HLUTNM = "soft_lutpair58" *) 
   LUT5 #(
    .INIT(32'hFFFFFFFE)) 
     \yball[9]_i_17 
       (.I0(O2[6]),
        .I1(O2[4]),
        .I2(O2[3]),
        .I3(O2[2]),
        .I4(O2[5]),
        .O(\n_0_yball[9]_i_17 ));
LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
     \yball[9]_i_18 
       (.I0(O2[6]),
        .I1(O2[4]),
        .I2(O2[2]),
        .I3(O2[3]),
        .I4(O2[5]),
        .I5(O2[7]),
        .O(\n_0_yball[9]_i_18 ));
(* SOFT_HLUTNM = "soft_lutpair67" *) 
   LUT5 #(
    .INIT(32'h3333C393)) 
     \yball[9]_i_19 
       (.I0(\n_0_inc_type_reg[2] ),
        .I1(O2[9]),
        .I2(O2[8]),
        .I3(O2[1]),
        .I4(\n_0_yball[9]_i_18 ),
        .O(\n_0_yball[9]_i_19 ));
LUT6 #(
    .INIT(64'hF7F7F733FFFFFFFF)) 
     \yball[9]_i_2 
       (.I0(\n_0_inc_type_reg[1] ),
        .I1(\n_0_inc_type_reg[2] ),
        .I2(\n_0_yball[9]_i_7 ),
        .I3(\n_0_inc_type_reg[3] ),
        .I4(\n_0_yball[9]_i_8 ),
        .I5(\n_0_inc_type_reg[0] ),
        .O(\n_0_yball[9]_i_2 ));
LUT6 #(
    .INIT(64'h0F0F0F0F0F0F0F78)) 
     \yball[9]_i_20 
       (.I0(O2[1]),
        .I1(\n_0_inc_type_reg[2] ),
        .I2(O2[9]),
        .I3(O2[8]),
        .I4(O2[7]),
        .I5(\n_0_yball[9]_i_17 ),
        .O(\n_0_yball[9]_i_20 ));
LUT6 #(
    .INIT(64'h00FF000000004747)) 
     \yball[9]_i_21 
       (.I0(\n_0_yball[9]_i_9 ),
        .I1(\n_0_inc_type_reg[2] ),
        .I2(\n_0_yball[9]_i_7 ),
        .I3(\n_0_yball[9]_i_26 ),
        .I4(\n_0_inc_type_reg[0] ),
        .I5(\n_0_inc_type_reg[1] ),
        .O(\n_0_yball[9]_i_21 ));
(* SOFT_HLUTNM = "soft_lutpair66" *) 
   LUT5 #(
    .INIT(32'h3333C393)) 
     \yball[9]_i_22 
       (.I0(\n_0_inc_type_reg[1] ),
        .I1(O2[9]),
        .I2(O2[8]),
        .I3(O2[1]),
        .I4(\n_0_yball[9]_i_18 ),
        .O(\n_0_yball[9]_i_22 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \yball[9]_i_23 
       (.I0(\n_0_yball[9]_i_20 ),
        .I1(\n_0_yball[9]_i_26 ),
        .I2(\n_0_inc_type_reg[0] ),
        .I3(\n_0_yball[9]_i_27 ),
        .I4(\n_0_inc_type_reg[1] ),
        .I5(\n_0_yball[9]_i_19 ),
        .O(\n_0_yball[9]_i_23 ));
LUT2 #(
    .INIT(4'h9)) 
     \yball[9]_i_24 
       (.I0(O2[8]),
        .I1(O2[9]),
        .O(\n_0_yball[9]_i_24 ));
LUT2 #(
    .INIT(4'h9)) 
     \yball[9]_i_25 
       (.I0(O2[7]),
        .I1(O2[8]),
        .O(\n_0_yball[9]_i_25 ));
(* SOFT_HLUTNM = "soft_lutpair67" *) 
   LUT5 #(
    .INIT(32'h39333C33)) 
     \yball[9]_i_26 
       (.I0(O2[1]),
        .I1(O2[9]),
        .I2(\n_0_yball[9]_i_18 ),
        .I3(O2[8]),
        .I4(\n_0_inc_type_reg[2] ),
        .O(\n_0_yball[9]_i_26 ));
LUT6 #(
    .INIT(64'h333333333339333C)) 
     \yball[9]_i_27 
       (.I0(\n_0_inc_type_reg[2] ),
        .I1(O2[9]),
        .I2(O2[8]),
        .I3(\n_0_yball[9]_i_17 ),
        .I4(O2[1]),
        .I5(O2[7]),
        .O(\n_0_yball[9]_i_27 ));
LUT6 #(
    .INIT(64'h007400741175FFFF)) 
     \yball[9]_i_3 
       (.I0(\n_0_inc_type_reg[0] ),
        .I1(\n_0_inc_type_reg[1] ),
        .I2(\n_0_inc_type_reg[3] ),
        .I3(\n_0_yball[9]_i_9 ),
        .I4(\n_0_inc_type_reg[2] ),
        .I5(\n_0_yball[9]_i_10 ),
        .O(\n_0_yball[9]_i_3 ));
LUT2 #(
    .INIT(4'h1)) 
     \yball[9]_i_4 
       (.I0(O4),
        .I1(I8),
        .O(\n_0_yball[9]_i_4 ));
LUT6 #(
    .INIT(64'hE000FFFFE000E000)) 
     \yball[9]_i_5 
       (.I0(\n_0_yball[9]_i_11 ),
        .I1(\n_0_xball[1]_i_2 ),
        .I2(I6),
        .I3(\n_0_yball[9]_i_12 ),
        .I4(\n_0_yball[9]_i_13 ),
        .I5(I5),
        .O(\n_0_yball[9]_i_5 ));
LUT6 #(
    .INIT(64'hFFFFFFFFAAAAEEAF)) 
     \yball[9]_i_6 
       (.I0(\n_0_yball[9]_i_14 ),
        .I1(\n_0_yball[9]_i_15 ),
        .I2(\n_6_yball_reg[9]_i_16 ),
        .I3(\n_0_xball[0]_i_3 ),
        .I4(barrier_bounce_ok),
        .I5(I4),
        .O(\n_0_yball[9]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair57" *) 
   LUT5 #(
    .INIT(32'h55555556)) 
     \yball[9]_i_7 
       (.I0(O2[9]),
        .I1(O2[8]),
        .I2(\n_0_yball[9]_i_17 ),
        .I3(O2[1]),
        .I4(O2[7]),
        .O(\n_0_yball[9]_i_7 ));
(* SOFT_HLUTNM = "soft_lutpair84" *) 
   LUT4 #(
    .INIT(16'h5595)) 
     \yball[9]_i_8 
       (.I0(O2[9]),
        .I1(O2[8]),
        .I2(O2[1]),
        .I3(\n_0_yball[9]_i_18 ),
        .O(\n_0_yball[9]_i_8 ));
(* SOFT_HLUTNM = "soft_lutpair85" *) 
   LUT4 #(
    .INIT(16'h5556)) 
     \yball[9]_i_9 
       (.I0(O2[9]),
        .I1(O2[8]),
        .I2(O2[7]),
        .I3(\n_0_yball[9]_i_17 ),
        .O(\n_0_yball[9]_i_9 ));
FDCE #(
    .INIT(1'b0)) 
     \yball_reg[0] 
       (.C(clk25_BUFG),
        .CE(\n_0_xball[9]_i_1 ),
        .CLR(I1),
        .D(\n_0_yball[0]_i_1 ),
        .Q(O2[0]));
CARRY4 \yball_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\n_0_yball_reg[0]_i_2 ,\n_1_yball_reg[0]_i_2 ,\n_2_yball_reg[0]_i_2 ,\n_3_yball_reg[0]_i_2 }),
        .CYINIT(1'b0),
        .DI({\n_0_yball[0]_i_3 ,O2[2:0]}),
        .O({\n_4_yball_reg[0]_i_2 ,\n_5_yball_reg[0]_i_2 ,\n_6_yball_reg[0]_i_2 ,\n_7_yball_reg[0]_i_2 }),
        .S({\n_0_yball[0]_i_4 ,\n_0_yball[0]_i_5 ,\n_0_yball[0]_i_6 ,\n_0_yball[0]_i_7 }));
FDCE #(
    .INIT(1'b0)) 
     \yball_reg[1] 
       (.C(clk25_BUFG),
        .CE(\n_0_xball[9]_i_1 ),
        .CLR(I1),
        .D(\n_0_yball[1]_i_1 ),
        .Q(O2[1]));
FDCE #(
    .INIT(1'b0)) 
     \yball_reg[2] 
       (.C(clk25_BUFG),
        .CE(\n_0_xball[9]_i_1 ),
        .CLR(I1),
        .D(\n_0_yball[2]_i_1 ),
        .Q(O2[2]));
MUXF7 \yball_reg[2]_i_4 
       (.I0(\n_0_yball[2]_i_6 ),
        .I1(\n_0_yball[2]_i_7 ),
        .O(\n_0_yball_reg[2]_i_4 ),
        .S(\n_0_yball[9]_i_4 ));
MUXF7 \yball_reg[2]_i_5 
       (.I0(\n_0_yball[2]_i_8 ),
        .I1(\n_0_yball[2]_i_9 ),
        .O(\n_0_yball_reg[2]_i_5 ),
        .S(barrier_bounce_ok));
FDCE #(
    .INIT(1'b0)) 
     \yball_reg[3] 
       (.C(clk25_BUFG),
        .CE(\n_0_xball[9]_i_1 ),
        .CLR(I1),
        .D(\n_0_yball[3]_i_1 ),
        .Q(O2[3]));
FDCE #(
    .INIT(1'b0)) 
     \yball_reg[4] 
       (.C(clk25_BUFG),
        .CE(\n_0_xball[9]_i_1 ),
        .CLR(I1),
        .D(\n_0_yball[4]_i_1 ),
        .Q(O2[4]));
CARRY4 \yball_reg[4]_i_3 
       (.CI(\n_0_yball_reg[0]_i_2 ),
        .CO({\n_0_yball_reg[4]_i_3 ,\n_1_yball_reg[4]_i_3 ,\n_2_yball_reg[4]_i_3 ,\n_3_yball_reg[4]_i_3 }),
        .CYINIT(1'b0),
        .DI({O2[6:4],\n_0_yball[4]_i_9 }),
        .O({\n_4_yball_reg[4]_i_3 ,\n_5_yball_reg[4]_i_3 ,\n_6_yball_reg[4]_i_3 ,\n_7_yball_reg[4]_i_3 }),
        .S({\n_0_yball[4]_i_10 ,\n_0_yball[4]_i_11 ,\n_0_yball[4]_i_12 ,\n_0_yball[4]_i_13 }));
MUXF7 \yball_reg[4]_i_5 
       (.I0(\n_0_yball[4]_i_18 ),
        .I1(\n_0_yball[4]_i_19 ),
        .O(\n_0_yball_reg[4]_i_5 ),
        .S(\n_0_inc_type_reg[0] ));
MUXF7 \yball_reg[4]_i_7 
       (.I0(\n_0_yball[4]_i_20 ),
        .I1(\n_0_yball[4]_i_21 ),
        .O(\n_0_yball_reg[4]_i_7 ),
        .S(\n_0_yball[9]_i_4 ));
FDPE #(
    .INIT(1'b1)) 
     \yball_reg[5] 
       (.C(clk25_BUFG),
        .CE(\n_0_xball[9]_i_1 ),
        .D(\n_0_yball[5]_i_1 ),
        .PRE(I1),
        .Q(O2[5]));
MUXF7 \yball_reg[5]_i_12 
       (.I0(\n_0_yball[5]_i_19 ),
        .I1(\n_0_yball[5]_i_20 ),
        .O(\n_0_yball_reg[5]_i_12 ),
        .S(\n_0_yball[8]_i_23 ));
MUXF7 \yball_reg[5]_i_2 
       (.I0(\n_0_yball[5]_i_6 ),
        .I1(\n_0_yball[5]_i_7 ),
        .O(\n_0_yball_reg[5]_i_2 ),
        .S(\n_0_xball[1]_i_2 ));
FDCE #(
    .INIT(1'b0)) 
     \yball_reg[6] 
       (.C(clk25_BUFG),
        .CE(\n_0_xball[9]_i_1 ),
        .CLR(I1),
        .D(\n_0_yball[6]_i_1 ),
        .Q(O2[6]));
MUXF7 \yball_reg[6]_i_20 
       (.I0(\n_0_yball[6]_i_24 ),
        .I1(\n_0_yball[6]_i_25 ),
        .O(\n_0_yball_reg[6]_i_20 ),
        .S(\n_0_inc_type_reg[0] ));
MUXF7 \yball_reg[6]_i_5 
       (.I0(\n_0_yball[6]_i_12 ),
        .I1(\n_0_yball[6]_i_13 ),
        .O(\n_0_yball_reg[6]_i_5 ),
        .S(barrier_bounce_ok));
FDPE #(
    .INIT(1'b1)) 
     \yball_reg[7] 
       (.C(clk25_BUFG),
        .CE(\n_0_xball[9]_i_1 ),
        .D(\n_0_yball[7]_i_1 ),
        .PRE(I1),
        .Q(O2[7]));
MUXF7 \yball_reg[7]_i_11 
       (.I0(\n_0_yball[7]_i_19 ),
        .I1(\n_0_yball[7]_i_20 ),
        .O(\n_0_yball_reg[7]_i_11 ),
        .S(\n_0_inc_type_reg[0] ));
MUXF7 \yball_reg[7]_i_12 
       (.I0(\n_0_yball[7]_i_21 ),
        .I1(\n_0_yball[7]_i_22 ),
        .O(\n_0_yball_reg[7]_i_12 ),
        .S(\n_0_inc_type_reg[0] ));
FDCE #(
    .INIT(1'b0)) 
     \yball_reg[8] 
       (.C(clk25_BUFG),
        .CE(\n_0_xball[9]_i_1 ),
        .CLR(I1),
        .D(\n_0_yball[8]_i_1 ),
        .Q(O2[8]));
MUXF7 \yball_reg[8]_i_3 
       (.I0(\n_0_yball[8]_i_9 ),
        .I1(\n_0_yball[8]_i_10 ),
        .O(\n_0_yball_reg[8]_i_3 ),
        .S(\n_0_yball[9]_i_4 ));
MUXF7 \yball_reg[8]_i_5 
       (.I0(\n_0_yball[8]_i_11 ),
        .I1(\n_0_yball[8]_i_12 ),
        .O(\n_0_yball_reg[8]_i_5 ),
        .S(barrier_bounce_ok));
FDCE #(
    .INIT(1'b0)) 
     \yball_reg[9] 
       (.C(clk25_BUFG),
        .CE(\n_0_xball[9]_i_1 ),
        .CLR(I1),
        .D(\n_0_yball[9]_i_1 ),
        .Q(O2[9]));
CARRY4 \yball_reg[9]_i_16 
       (.CI(\n_0_yball_reg[4]_i_3 ),
        .CO({\NLW_yball_reg[9]_i_16_CO_UNCONNECTED [3:1],\n_3_yball_reg[9]_i_16 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,O2[7]}),
        .O({\NLW_yball_reg[9]_i_16_O_UNCONNECTED [3:2],\n_6_yball_reg[9]_i_16 ,\n_7_yball_reg[9]_i_16 }),
        .S({1'b0,1'b0,\n_0_yball[9]_i_24 ,\n_0_yball[9]_i_25 }));
LUT6 #(
    .INIT(64'h0000000000000002)) 
     \zone_pad_bounce[0]_i_1 
       (.I0(pad_far_right_bounce),
        .I1(zone_pad_bounce[0]),
        .I2(zone_pad_bounce[3]),
        .I3(zone_pad_bounce[4]),
        .I4(zone_pad_bounce[1]),
        .I5(zone_pad_bounce[2]),
        .O(\n_0_zone_pad_bounce[0]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000000002)) 
     \zone_pad_bounce[1]_i_1 
       (.I0(pad_right_bounce),
        .I1(zone_pad_bounce[0]),
        .I2(zone_pad_bounce[3]),
        .I3(zone_pad_bounce[4]),
        .I4(zone_pad_bounce[1]),
        .I5(zone_pad_bounce[2]),
        .O(\n_0_zone_pad_bounce[1]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000000002)) 
     \zone_pad_bounce[2]_i_1 
       (.I0(pad_center_bounce),
        .I1(zone_pad_bounce[0]),
        .I2(zone_pad_bounce[3]),
        .I3(zone_pad_bounce[4]),
        .I4(zone_pad_bounce[1]),
        .I5(zone_pad_bounce[2]),
        .O(\n_0_zone_pad_bounce[2]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000000002)) 
     \zone_pad_bounce[3]_i_1 
       (.I0(pad_left_bounce),
        .I1(zone_pad_bounce[0]),
        .I2(zone_pad_bounce[3]),
        .I3(zone_pad_bounce[4]),
        .I4(zone_pad_bounce[1]),
        .I5(zone_pad_bounce[2]),
        .O(\n_0_zone_pad_bounce[3]_i_1 ));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAB)) 
     \zone_pad_bounce[4]_i_1 
       (.I0(I43),
        .I1(zone_pad_bounce[0]),
        .I2(zone_pad_bounce[3]),
        .I3(zone_pad_bounce[4]),
        .I4(zone_pad_bounce[1]),
        .I5(zone_pad_bounce[2]),
        .O(\n_0_zone_pad_bounce[4]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000000002)) 
     \zone_pad_bounce[4]_i_2 
       (.I0(pad_far_left_bounce),
        .I1(zone_pad_bounce[0]),
        .I2(zone_pad_bounce[3]),
        .I3(zone_pad_bounce[4]),
        .I4(zone_pad_bounce[1]),
        .I5(zone_pad_bounce[2]),
        .O(\n_0_zone_pad_bounce[4]_i_2 ));
FDCE #(
    .INIT(1'b0)) 
     \zone_pad_bounce_reg[0] 
       (.C(clk25_BUFG),
        .CE(\n_0_zone_pad_bounce[4]_i_1 ),
        .CLR(I1),
        .D(\n_0_zone_pad_bounce[0]_i_1 ),
        .Q(zone_pad_bounce[0]));
FDCE #(
    .INIT(1'b0)) 
     \zone_pad_bounce_reg[1] 
       (.C(clk25_BUFG),
        .CE(\n_0_zone_pad_bounce[4]_i_1 ),
        .CLR(I1),
        .D(\n_0_zone_pad_bounce[1]_i_1 ),
        .Q(zone_pad_bounce[1]));
FDCE #(
    .INIT(1'b0)) 
     \zone_pad_bounce_reg[2] 
       (.C(clk25_BUFG),
        .CE(\n_0_zone_pad_bounce[4]_i_1 ),
        .CLR(I1),
        .D(\n_0_zone_pad_bounce[2]_i_1 ),
        .Q(zone_pad_bounce[2]));
FDCE #(
    .INIT(1'b0)) 
     \zone_pad_bounce_reg[3] 
       (.C(clk25_BUFG),
        .CE(\n_0_zone_pad_bounce[4]_i_1 ),
        .CLR(I1),
        .D(\n_0_zone_pad_bounce[3]_i_1 ),
        .Q(zone_pad_bounce[3]));
FDCE #(
    .INIT(1'b0)) 
     \zone_pad_bounce_reg[4] 
       (.C(clk25_BUFG),
        .CE(\n_0_zone_pad_bounce[4]_i_1 ),
        .CLR(I1),
        .D(\n_0_zone_pad_bounce[4]_i_2 ),
        .Q(zone_pad_bounce[4]));
endmodule

module bounce
   (\brick_bounce[1] ,
    O1,
    \brick_bounce[0] ,
    O2,
    O3,
    O4,
    barrier_bounce,
    pong_left_bounce,
    pong_right_bounce,
    pad_far_left_bounce,
    pad_left_bounce,
    pad_center_bounce,
    pad_right_bounce,
    pad_far_right_bounce,
    O23,
    O24,
    O25,
    O26,
    O5,
    O6,
    O8,
    O47,
    O48,
    O10,
    no_brick,
    I1,
    clk25_BUFG,
    I2,
    I3,
    I4,
    I5,
    I6,
    I7,
    I8,
    I9,
    I10,
    I11,
    I12,
    I13,
    I14,
    I15,
    I16,
    I17,
    I18,
    I19,
    I20,
    I21,
    I22,
    I23,
    I24,
    I25,
    I26,
    I27,
    I28,
    I29,
    ouest_IBUF,
    S0_IBUF,
    O9,
    I50,
    I51,
    O7,
    I52,
    I30,
    I53,
    CO,
    I54,
    I31,
    I32,
    I33,
    I34,
    I43,
    I35,
    I58,
    I59);
  output [8:0]\brick_bounce[1] ;
  output O1;
  output [8:0]\brick_bounce[0] ;
  output O2;
  output O3;
  output O4;
  output barrier_bounce;
  output pong_left_bounce;
  output pong_right_bounce;
  output pad_far_left_bounce;
  output pad_left_bounce;
  output pad_center_bounce;
  output pad_right_bounce;
  output pad_far_right_bounce;
  output O23;
  output O24;
  output O25;
  output O26;
  output O5;
  output O6;
  output O8;
  output O47;
  output O48;
  output O10;
  output no_brick;
  input I1;
  input clk25_BUFG;
  input I2;
  input I3;
  input I4;
  input I5;
  input I6;
  input I7;
  input I8;
  input I9;
  input I10;
  input I11;
  input I12;
  input I13;
  input I14;
  input I15;
  input I16;
  input I17;
  input I18;
  input I19;
  input I20;
  input I21;
  input I22;
  input I23;
  input I24;
  input I25;
  input I26;
  input I27;
  input I28;
  input I29;
  input ouest_IBUF;
  input S0_IBUF;
  input [0:0]O9;
  input [0:0]I50;
  input [0:0]I51;
  input [0:0]O7;
  input [0:0]I52;
  input [0:0]I30;
  input [0:0]I53;
  input [0:0]CO;
  input [0:0]I54;
  input [0:0]I31;
  input I32;
  input I33;
  input I34;
  input I43;
  input I35;
  input [0:0]I58;
  input [0:0]I59;

  wire [0:0]CO;
  wire I1;
  wire I10;
  wire I11;
  wire I12;
  wire I13;
  wire I14;
  wire I15;
  wire I16;
  wire I17;
  wire I18;
  wire I19;
  wire I2;
  wire I20;
  wire I21;
  wire I22;
  wire I23;
  wire I24;
  wire I25;
  wire I26;
  wire I27;
  wire I28;
  wire I29;
  wire I3;
  wire [0:0]I30;
  wire [0:0]I31;
  wire I32;
  wire I33;
  wire I34;
  wire I35;
  wire I4;
  wire I43;
  wire I5;
  wire [0:0]I50;
  wire [0:0]I51;
  wire [0:0]I52;
  wire [0:0]I53;
  wire [0:0]I54;
  wire [0:0]I58;
  wire [0:0]I59;
  wire I6;
  wire I7;
  wire I8;
  wire I9;
  wire O1;
  wire O10;
  wire O2;
  wire O23;
  wire O24;
  wire O25;
  wire O26;
  wire O3;
  wire O4;
  wire O47;
  wire O48;
  wire O5;
  wire O6;
  wire [0:0]O7;
  wire O8;
  wire [0:0]O9;
  wire S0_IBUF;
  wire barrier_bounce;
  wire [8:0]\brick_bounce[0] ;
  wire [8:0]\brick_bounce[1] ;
  wire clk25_BUFG;
  wire \n_0_FSM_sequential_etat_prochain_reg[2]_i_10 ;
  wire \n_0_FSM_sequential_etat_prochain_reg[2]_i_8 ;
  wire \n_0_FSM_sequential_etat_prochain_reg[2]_i_9 ;
  wire no_brick;
  wire ouest_IBUF;
  wire pad_center_bounce;
  wire pad_far_left_bounce;
  wire pad_far_right_bounce;
  wire pad_left_bounce;
  wire pad_right_bounce;
  wire pong_left_bounce;
  wire pong_right_bounce;

LUT6 #(
    .INIT(64'h8000000000000000)) 
     \FSM_sequential_etat_prochain_reg[2]_i_10 
       (.I0(\brick_bounce[0] [1]),
        .I1(\brick_bounce[1] [7]),
        .I2(\brick_bounce[0] [3]),
        .I3(\brick_bounce[0] [7]),
        .I4(\brick_bounce[0] [0]),
        .I5(\brick_bounce[1] [2]),
        .O(\n_0_FSM_sequential_etat_prochain_reg[2]_i_10 ));
LUT2 #(
    .INIT(4'hB)) 
     \FSM_sequential_etat_prochain_reg[2]_i_2__0 
       (.I0(ouest_IBUF),
        .I1(S0_IBUF),
        .O(O1));
LUT3 #(
    .INIT(8'h80)) 
     \FSM_sequential_etat_prochain_reg[2]_i_4 
       (.I0(\n_0_FSM_sequential_etat_prochain_reg[2]_i_8 ),
        .I1(\n_0_FSM_sequential_etat_prochain_reg[2]_i_9 ),
        .I2(\n_0_FSM_sequential_etat_prochain_reg[2]_i_10 ),
        .O(no_brick));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \FSM_sequential_etat_prochain_reg[2]_i_8 
       (.I0(\brick_bounce[1] [0]),
        .I1(\brick_bounce[0] [2]),
        .I2(\brick_bounce[1] [1]),
        .I3(\brick_bounce[1] [6]),
        .I4(\brick_bounce[1] [8]),
        .I5(\brick_bounce[0] [8]),
        .O(\n_0_FSM_sequential_etat_prochain_reg[2]_i_8 ));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \FSM_sequential_etat_prochain_reg[2]_i_9 
       (.I0(\brick_bounce[0] [6]),
        .I1(\brick_bounce[1] [3]),
        .I2(\brick_bounce[1] [4]),
        .I3(\brick_bounce[0] [4]),
        .I4(\brick_bounce[0] [5]),
        .I5(\brick_bounce[1] [5]),
        .O(\n_0_FSM_sequential_etat_prochain_reg[2]_i_9 ));
(* SOFT_HLUTNM = "soft_lutpair98" *) 
   LUT2 #(
    .INIT(4'h8)) 
     VGA_red_OBUF_inst_i_7
       (.I0(I54),
        .I1(I31),
        .O(O26));
FDCE #(
    .INIT(1'b0)) 
     barrier_bounce_reg
       (.C(clk25_BUFG),
        .CE(1'b1),
        .CLR(O1),
        .D(I22),
        .Q(barrier_bounce));
FDCE #(
    .INIT(1'b0)) 
     \brick_bounce_reg[0][0] 
       (.C(clk25_BUFG),
        .CE(1'b1),
        .CLR(O1),
        .D(I18),
        .Q(\brick_bounce[0] [0]));
FDCE #(
    .INIT(1'b0)) 
     \brick_bounce_reg[0][1] 
       (.C(clk25_BUFG),
        .CE(1'b1),
        .CLR(O1),
        .D(I17),
        .Q(\brick_bounce[0] [1]));
FDCE #(
    .INIT(1'b0)) 
     \brick_bounce_reg[0][2] 
       (.C(clk25_BUFG),
        .CE(1'b1),
        .CLR(O1),
        .D(I16),
        .Q(\brick_bounce[0] [2]));
FDCE #(
    .INIT(1'b0)) 
     \brick_bounce_reg[0][3] 
       (.C(clk25_BUFG),
        .CE(1'b1),
        .CLR(O1),
        .D(I15),
        .Q(\brick_bounce[0] [3]));
FDCE #(
    .INIT(1'b0)) 
     \brick_bounce_reg[0][4] 
       (.C(clk25_BUFG),
        .CE(1'b1),
        .CLR(O1),
        .D(I14),
        .Q(\brick_bounce[0] [4]));
FDCE #(
    .INIT(1'b0)) 
     \brick_bounce_reg[0][5] 
       (.C(clk25_BUFG),
        .CE(1'b1),
        .CLR(O1),
        .D(I13),
        .Q(\brick_bounce[0] [5]));
FDCE #(
    .INIT(1'b0)) 
     \brick_bounce_reg[0][6] 
       (.C(clk25_BUFG),
        .CE(1'b1),
        .CLR(O1),
        .D(I12),
        .Q(\brick_bounce[0] [6]));
FDCE #(
    .INIT(1'b0)) 
     \brick_bounce_reg[0][7] 
       (.C(clk25_BUFG),
        .CE(1'b1),
        .CLR(O1),
        .D(I11),
        .Q(\brick_bounce[0] [7]));
FDCE #(
    .INIT(1'b0)) 
     \brick_bounce_reg[0][8] 
       (.C(clk25_BUFG),
        .CE(1'b1),
        .CLR(O1),
        .D(I10),
        .Q(\brick_bounce[0] [8]));
FDCE #(
    .INIT(1'b0)) 
     \brick_bounce_reg[1][0] 
       (.C(clk25_BUFG),
        .CE(1'b1),
        .CLR(O1),
        .D(I9),
        .Q(\brick_bounce[1] [0]));
FDCE #(
    .INIT(1'b0)) 
     \brick_bounce_reg[1][1] 
       (.C(clk25_BUFG),
        .CE(1'b1),
        .CLR(O1),
        .D(I8),
        .Q(\brick_bounce[1] [1]));
FDCE #(
    .INIT(1'b0)) 
     \brick_bounce_reg[1][2] 
       (.C(clk25_BUFG),
        .CE(1'b1),
        .CLR(O1),
        .D(I7),
        .Q(\brick_bounce[1] [2]));
FDCE #(
    .INIT(1'b0)) 
     \brick_bounce_reg[1][3] 
       (.C(clk25_BUFG),
        .CE(1'b1),
        .CLR(O1),
        .D(I6),
        .Q(\brick_bounce[1] [3]));
FDCE #(
    .INIT(1'b0)) 
     \brick_bounce_reg[1][4] 
       (.C(clk25_BUFG),
        .CE(1'b1),
        .CLR(O1),
        .D(I5),
        .Q(\brick_bounce[1] [4]));
FDCE #(
    .INIT(1'b0)) 
     \brick_bounce_reg[1][5] 
       (.C(clk25_BUFG),
        .CE(1'b1),
        .CLR(O1),
        .D(I4),
        .Q(\brick_bounce[1] [5]));
FDCE #(
    .INIT(1'b0)) 
     \brick_bounce_reg[1][6] 
       (.C(clk25_BUFG),
        .CE(1'b1),
        .CLR(O1),
        .D(I3),
        .Q(\brick_bounce[1] [6]));
FDCE #(
    .INIT(1'b0)) 
     \brick_bounce_reg[1][7] 
       (.C(clk25_BUFG),
        .CE(1'b1),
        .CLR(O1),
        .D(I2),
        .Q(\brick_bounce[1] [7]));
FDCE #(
    .INIT(1'b0)) 
     \brick_bounce_reg[1][8] 
       (.C(clk25_BUFG),
        .CE(1'b1),
        .CLR(O1),
        .D(I1),
        .Q(\brick_bounce[1] [8]));
LUT4 #(
    .INIT(16'h8000)) 
     leftbounce_i_3
       (.I0(O9),
        .I1(I50),
        .I2(I51),
        .I3(O7),
        .O(O23));
FDCE #(
    .INIT(1'b0)) 
     leftbounce_reg
       (.C(clk25_BUFG),
        .CE(1'b1),
        .CLR(O1),
        .D(I19),
        .Q(O2));
LUT6 #(
    .INIT(64'h0101010100010000)) 
     lock_i_1
       (.I0(O3),
        .I1(O2),
        .I2(O4),
        .I3(I34),
        .I4(I43),
        .I5(I35),
        .O(O8));
FDCE #(
    .INIT(1'b0)) 
     pad_center_bounce_reg
       (.C(clk25_BUFG),
        .CE(1'b1),
        .CLR(O1),
        .D(I27),
        .Q(pad_center_bounce));
FDCE #(
    .INIT(1'b0)) 
     pad_far_left_bounce_reg
       (.C(clk25_BUFG),
        .CE(1'b1),
        .CLR(O1),
        .D(I25),
        .Q(pad_far_left_bounce));
FDCE #(
    .INIT(1'b0)) 
     pad_far_right_bounce_reg
       (.C(clk25_BUFG),
        .CE(1'b1),
        .CLR(O1),
        .D(I29),
        .Q(pad_far_right_bounce));
LUT2 #(
    .INIT(4'h8)) 
     pad_left_bounce_i_2
       (.I0(I52),
        .I1(I30),
        .O(O24));
(* SOFT_HLUTNM = "soft_lutpair97" *) 
   LUT2 #(
    .INIT(4'h8)) 
     pad_left_bounce_i_3
       (.I0(I53),
        .I1(CO),
        .O(O25));
FDCE #(
    .INIT(1'b0)) 
     pad_left_bounce_reg
       (.C(clk25_BUFG),
        .CE(1'b1),
        .CLR(O1),
        .D(I26),
        .Q(pad_left_bounce));
(* SOFT_HLUTNM = "soft_lutpair98" *) 
   LUT4 #(
    .INIT(16'h8FFF)) 
     pad_right_bounce_i_2
       (.I0(I31),
        .I1(I54),
        .I2(I58),
        .I3(I59),
        .O(O48));
(* SOFT_HLUTNM = "soft_lutpair97" *) 
   LUT4 #(
    .INIT(16'hF888)) 
     pad_right_bounce_i_3
       (.I0(CO),
        .I1(I53),
        .I2(I30),
        .I3(I52),
        .O(O47));
FDCE #(
    .INIT(1'b0)) 
     pad_right_bounce_reg
       (.C(clk25_BUFG),
        .CE(1'b1),
        .CLR(O1),
        .D(I28),
        .Q(pad_right_bounce));
FDCE #(
    .INIT(1'b0)) 
     pong_left_bounce_reg
       (.C(clk25_BUFG),
        .CE(1'b1),
        .CLR(O1),
        .D(I23),
        .Q(pong_left_bounce));
FDCE #(
    .INIT(1'b0)) 
     pong_right_bounce_reg
       (.C(clk25_BUFG),
        .CE(1'b1),
        .CLR(O1),
        .D(I24),
        .Q(pong_right_bounce));
FDCE #(
    .INIT(1'b0)) 
     rightbounce_reg
       (.C(clk25_BUFG),
        .CE(1'b1),
        .CLR(O1),
        .D(I20),
        .Q(O3));
(* SOFT_HLUTNM = "soft_lutpair96" *) 
   LUT5 #(
    .INIT(32'h00010000)) 
     \yball[2]_i_3 
       (.I0(O3),
        .I1(O2),
        .I2(I33),
        .I3(I32),
        .I4(O4),
        .O(O10));
LUT4 #(
    .INIT(16'h1110)) 
     \yball[6]_i_3 
       (.I0(O2),
        .I1(I32),
        .I2(O3),
        .I3(I33),
        .O(O6));
(* SOFT_HLUTNM = "soft_lutpair96" *) 
   LUT5 #(
    .INIT(32'hFFFFFFFE)) 
     \yball[8]_i_4 
       (.I0(O3),
        .I1(O2),
        .I2(O4),
        .I3(I32),
        .I4(I33),
        .O(O5));
FDCE #(
    .INIT(1'b0)) 
     ybounce_reg
       (.C(clk25_BUFG),
        .CE(1'b1),
        .CLR(O1),
        .D(I21),
        .Q(O4));
endmodule

module button_mgr
   (D,
    game_rqt,
    CLK,
    I1,
    sud_IBUF,
    nord_IBUF,
    est_IBUF);
  output [0:0]D;
  output game_rqt;
  input CLK;
  input I1;
  input sud_IBUF;
  input nord_IBUF;
  input est_IBUF;

  wire CLK;
  wire [0:0]D;
  wire I1;
  wire [21:0]compteur_reg;
  wire est_IBUF;
  wire game_rqt;
  wire n_0_appui_nord_est_i_1;
  wire n_0_appui_sud_i_1;
  wire \n_0_compteur[0]_i_1 ;
  wire \n_0_compteur[0]_i_10 ;
  wire \n_0_compteur[0]_i_11 ;
  wire \n_0_compteur[0]_i_3 ;
  wire \n_0_compteur[0]_i_4 ;
  wire \n_0_compteur[0]_i_5 ;
  wire \n_0_compteur[0]_i_6 ;
  wire \n_0_compteur[0]_i_7 ;
  wire \n_0_compteur[0]_i_8 ;
  wire \n_0_compteur[0]_i_9 ;
  wire \n_0_compteur[12]_i_2 ;
  wire \n_0_compteur[12]_i_3 ;
  wire \n_0_compteur[12]_i_4 ;
  wire \n_0_compteur[12]_i_5 ;
  wire \n_0_compteur[16]_i_2 ;
  wire \n_0_compteur[16]_i_3 ;
  wire \n_0_compteur[16]_i_4 ;
  wire \n_0_compteur[16]_i_5 ;
  wire \n_0_compteur[20]_i_2 ;
  wire \n_0_compteur[20]_i_3 ;
  wire \n_0_compteur[4]_i_2 ;
  wire \n_0_compteur[4]_i_3 ;
  wire \n_0_compteur[4]_i_4 ;
  wire \n_0_compteur[4]_i_5 ;
  wire \n_0_compteur[8]_i_2 ;
  wire \n_0_compteur[8]_i_3 ;
  wire \n_0_compteur[8]_i_4 ;
  wire \n_0_compteur[8]_i_5 ;
  wire \n_0_compteur_reg[0]_i_2 ;
  wire \n_0_compteur_reg[12]_i_1 ;
  wire \n_0_compteur_reg[16]_i_1 ;
  wire \n_0_compteur_reg[4]_i_1 ;
  wire \n_0_compteur_reg[8]_i_1 ;
  wire n_0_lock_i_1__0;
  wire n_0_lock_reg;
  wire \n_1_compteur_reg[0]_i_2 ;
  wire \n_1_compteur_reg[12]_i_1 ;
  wire \n_1_compteur_reg[16]_i_1 ;
  wire \n_1_compteur_reg[4]_i_1 ;
  wire \n_1_compteur_reg[8]_i_1 ;
  wire \n_2_compteur_reg[0]_i_2 ;
  wire \n_2_compteur_reg[12]_i_1 ;
  wire \n_2_compteur_reg[16]_i_1 ;
  wire \n_2_compteur_reg[4]_i_1 ;
  wire \n_2_compteur_reg[8]_i_1 ;
  wire \n_3_compteur_reg[0]_i_2 ;
  wire \n_3_compteur_reg[12]_i_1 ;
  wire \n_3_compteur_reg[16]_i_1 ;
  wire \n_3_compteur_reg[20]_i_1 ;
  wire \n_3_compteur_reg[4]_i_1 ;
  wire \n_3_compteur_reg[8]_i_1 ;
  wire \n_4_compteur_reg[0]_i_2 ;
  wire \n_4_compteur_reg[12]_i_1 ;
  wire \n_4_compteur_reg[16]_i_1 ;
  wire \n_4_compteur_reg[4]_i_1 ;
  wire \n_4_compteur_reg[8]_i_1 ;
  wire \n_5_compteur_reg[0]_i_2 ;
  wire \n_5_compteur_reg[12]_i_1 ;
  wire \n_5_compteur_reg[16]_i_1 ;
  wire \n_5_compteur_reg[4]_i_1 ;
  wire \n_5_compteur_reg[8]_i_1 ;
  wire \n_6_compteur_reg[0]_i_2 ;
  wire \n_6_compteur_reg[12]_i_1 ;
  wire \n_6_compteur_reg[16]_i_1 ;
  wire \n_6_compteur_reg[20]_i_1 ;
  wire \n_6_compteur_reg[4]_i_1 ;
  wire \n_6_compteur_reg[8]_i_1 ;
  wire \n_7_compteur_reg[0]_i_2 ;
  wire \n_7_compteur_reg[12]_i_1 ;
  wire \n_7_compteur_reg[16]_i_1 ;
  wire \n_7_compteur_reg[20]_i_1 ;
  wire \n_7_compteur_reg[4]_i_1 ;
  wire \n_7_compteur_reg[8]_i_1 ;
  wire nord_IBUF;
  wire sud_IBUF;
  wire [3:1]\NLW_compteur_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_compteur_reg[20]_i_1_O_UNCONNECTED ;

LUT5 #(
    .INIT(32'h04040400)) 
     appui_nord_est_i_1
       (.I0(n_0_lock_reg),
        .I1(\n_0_compteur[0]_i_3 ),
        .I2(game_rqt),
        .I3(est_IBUF),
        .I4(nord_IBUF),
        .O(n_0_appui_nord_est_i_1));
FDCE #(
    .INIT(1'b0)) 
     appui_nord_est_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(I1),
        .D(n_0_appui_nord_est_i_1),
        .Q(game_rqt));
LUT4 #(
    .INIT(16'h0400)) 
     appui_sud_i_1
       (.I0(n_0_lock_reg),
        .I1(\n_0_compteur[0]_i_3 ),
        .I2(D),
        .I3(sud_IBUF),
        .O(n_0_appui_sud_i_1));
FDCE #(
    .INIT(1'b0)) 
     appui_sud_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(I1),
        .D(n_0_appui_sud_i_1),
        .Q(D));
LUT5 #(
    .INIT(32'h66666662)) 
     \compteur[0]_i_1 
       (.I0(n_0_lock_reg),
        .I1(\n_0_compteur[0]_i_3 ),
        .I2(sud_IBUF),
        .I3(nord_IBUF),
        .I4(est_IBUF),
        .O(\n_0_compteur[0]_i_1 ));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \compteur[0]_i_10 
       (.I0(compteur_reg[6]),
        .I1(compteur_reg[10]),
        .I2(compteur_reg[7]),
        .I3(compteur_reg[2]),
        .I4(compteur_reg[14]),
        .I5(compteur_reg[13]),
        .O(\n_0_compteur[0]_i_10 ));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \compteur[0]_i_11 
       (.I0(compteur_reg[20]),
        .I1(compteur_reg[8]),
        .I2(compteur_reg[9]),
        .I3(compteur_reg[5]),
        .I4(compteur_reg[21]),
        .I5(compteur_reg[0]),
        .O(\n_0_compteur[0]_i_11 ));
LUT4 #(
    .INIT(16'h8000)) 
     \compteur[0]_i_3 
       (.I0(\n_0_compteur[0]_i_8 ),
        .I1(\n_0_compteur[0]_i_9 ),
        .I2(\n_0_compteur[0]_i_10 ),
        .I3(\n_0_compteur[0]_i_11 ),
        .O(\n_0_compteur[0]_i_3 ));
LUT1 #(
    .INIT(2'h1)) 
     \compteur[0]_i_4 
       (.I0(compteur_reg[3]),
        .O(\n_0_compteur[0]_i_4 ));
LUT1 #(
    .INIT(2'h1)) 
     \compteur[0]_i_5 
       (.I0(compteur_reg[2]),
        .O(\n_0_compteur[0]_i_5 ));
LUT1 #(
    .INIT(2'h1)) 
     \compteur[0]_i_6 
       (.I0(compteur_reg[1]),
        .O(\n_0_compteur[0]_i_6 ));
LUT1 #(
    .INIT(2'h1)) 
     \compteur[0]_i_7 
       (.I0(compteur_reg[0]),
        .O(\n_0_compteur[0]_i_7 ));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \compteur[0]_i_8 
       (.I0(compteur_reg[16]),
        .I1(compteur_reg[1]),
        .I2(compteur_reg[4]),
        .I3(compteur_reg[3]),
        .I4(compteur_reg[12]),
        .I5(compteur_reg[18]),
        .O(\n_0_compteur[0]_i_8 ));
LUT4 #(
    .INIT(16'h8000)) 
     \compteur[0]_i_9 
       (.I0(compteur_reg[11]),
        .I1(compteur_reg[15]),
        .I2(compteur_reg[17]),
        .I3(compteur_reg[19]),
        .O(\n_0_compteur[0]_i_9 ));
LUT1 #(
    .INIT(2'h1)) 
     \compteur[12]_i_2 
       (.I0(compteur_reg[15]),
        .O(\n_0_compteur[12]_i_2 ));
LUT1 #(
    .INIT(2'h1)) 
     \compteur[12]_i_3 
       (.I0(compteur_reg[14]),
        .O(\n_0_compteur[12]_i_3 ));
LUT1 #(
    .INIT(2'h1)) 
     \compteur[12]_i_4 
       (.I0(compteur_reg[13]),
        .O(\n_0_compteur[12]_i_4 ));
LUT1 #(
    .INIT(2'h1)) 
     \compteur[12]_i_5 
       (.I0(compteur_reg[12]),
        .O(\n_0_compteur[12]_i_5 ));
LUT1 #(
    .INIT(2'h1)) 
     \compteur[16]_i_2 
       (.I0(compteur_reg[19]),
        .O(\n_0_compteur[16]_i_2 ));
LUT1 #(
    .INIT(2'h1)) 
     \compteur[16]_i_3 
       (.I0(compteur_reg[18]),
        .O(\n_0_compteur[16]_i_3 ));
LUT1 #(
    .INIT(2'h1)) 
     \compteur[16]_i_4 
       (.I0(compteur_reg[17]),
        .O(\n_0_compteur[16]_i_4 ));
LUT1 #(
    .INIT(2'h1)) 
     \compteur[16]_i_5 
       (.I0(compteur_reg[16]),
        .O(\n_0_compteur[16]_i_5 ));
LUT1 #(
    .INIT(2'h1)) 
     \compteur[20]_i_2 
       (.I0(compteur_reg[21]),
        .O(\n_0_compteur[20]_i_2 ));
LUT1 #(
    .INIT(2'h1)) 
     \compteur[20]_i_3 
       (.I0(compteur_reg[20]),
        .O(\n_0_compteur[20]_i_3 ));
LUT1 #(
    .INIT(2'h1)) 
     \compteur[4]_i_2 
       (.I0(compteur_reg[7]),
        .O(\n_0_compteur[4]_i_2 ));
LUT1 #(
    .INIT(2'h1)) 
     \compteur[4]_i_3 
       (.I0(compteur_reg[6]),
        .O(\n_0_compteur[4]_i_3 ));
LUT1 #(
    .INIT(2'h1)) 
     \compteur[4]_i_4 
       (.I0(compteur_reg[5]),
        .O(\n_0_compteur[4]_i_4 ));
LUT1 #(
    .INIT(2'h1)) 
     \compteur[4]_i_5 
       (.I0(compteur_reg[4]),
        .O(\n_0_compteur[4]_i_5 ));
LUT1 #(
    .INIT(2'h1)) 
     \compteur[8]_i_2 
       (.I0(compteur_reg[11]),
        .O(\n_0_compteur[8]_i_2 ));
LUT1 #(
    .INIT(2'h1)) 
     \compteur[8]_i_3 
       (.I0(compteur_reg[10]),
        .O(\n_0_compteur[8]_i_3 ));
LUT1 #(
    .INIT(2'h1)) 
     \compteur[8]_i_4 
       (.I0(compteur_reg[9]),
        .O(\n_0_compteur[8]_i_4 ));
LUT1 #(
    .INIT(2'h1)) 
     \compteur[8]_i_5 
       (.I0(compteur_reg[8]),
        .O(\n_0_compteur[8]_i_5 ));
FDPE #(
    .INIT(1'b1)) 
     \compteur_reg[0] 
       (.C(CLK),
        .CE(\n_0_compteur[0]_i_1 ),
        .D(\n_7_compteur_reg[0]_i_2 ),
        .PRE(I1),
        .Q(compteur_reg[0]));
CARRY4 \compteur_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\n_0_compteur_reg[0]_i_2 ,\n_1_compteur_reg[0]_i_2 ,\n_2_compteur_reg[0]_i_2 ,\n_3_compteur_reg[0]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\n_4_compteur_reg[0]_i_2 ,\n_5_compteur_reg[0]_i_2 ,\n_6_compteur_reg[0]_i_2 ,\n_7_compteur_reg[0]_i_2 }),
        .S({\n_0_compteur[0]_i_4 ,\n_0_compteur[0]_i_5 ,\n_0_compteur[0]_i_6 ,\n_0_compteur[0]_i_7 }));
FDPE #(
    .INIT(1'b1)) 
     \compteur_reg[10] 
       (.C(CLK),
        .CE(\n_0_compteur[0]_i_1 ),
        .D(\n_5_compteur_reg[8]_i_1 ),
        .PRE(I1),
        .Q(compteur_reg[10]));
FDPE #(
    .INIT(1'b1)) 
     \compteur_reg[11] 
       (.C(CLK),
        .CE(\n_0_compteur[0]_i_1 ),
        .D(\n_4_compteur_reg[8]_i_1 ),
        .PRE(I1),
        .Q(compteur_reg[11]));
FDPE #(
    .INIT(1'b1)) 
     \compteur_reg[12] 
       (.C(CLK),
        .CE(\n_0_compteur[0]_i_1 ),
        .D(\n_7_compteur_reg[12]_i_1 ),
        .PRE(I1),
        .Q(compteur_reg[12]));
CARRY4 \compteur_reg[12]_i_1 
       (.CI(\n_0_compteur_reg[8]_i_1 ),
        .CO({\n_0_compteur_reg[12]_i_1 ,\n_1_compteur_reg[12]_i_1 ,\n_2_compteur_reg[12]_i_1 ,\n_3_compteur_reg[12]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\n_4_compteur_reg[12]_i_1 ,\n_5_compteur_reg[12]_i_1 ,\n_6_compteur_reg[12]_i_1 ,\n_7_compteur_reg[12]_i_1 }),
        .S({\n_0_compteur[12]_i_2 ,\n_0_compteur[12]_i_3 ,\n_0_compteur[12]_i_4 ,\n_0_compteur[12]_i_5 }));
FDPE #(
    .INIT(1'b1)) 
     \compteur_reg[13] 
       (.C(CLK),
        .CE(\n_0_compteur[0]_i_1 ),
        .D(\n_6_compteur_reg[12]_i_1 ),
        .PRE(I1),
        .Q(compteur_reg[13]));
FDPE #(
    .INIT(1'b1)) 
     \compteur_reg[14] 
       (.C(CLK),
        .CE(\n_0_compteur[0]_i_1 ),
        .D(\n_5_compteur_reg[12]_i_1 ),
        .PRE(I1),
        .Q(compteur_reg[14]));
FDPE #(
    .INIT(1'b1)) 
     \compteur_reg[15] 
       (.C(CLK),
        .CE(\n_0_compteur[0]_i_1 ),
        .D(\n_4_compteur_reg[12]_i_1 ),
        .PRE(I1),
        .Q(compteur_reg[15]));
FDPE #(
    .INIT(1'b1)) 
     \compteur_reg[16] 
       (.C(CLK),
        .CE(\n_0_compteur[0]_i_1 ),
        .D(\n_7_compteur_reg[16]_i_1 ),
        .PRE(I1),
        .Q(compteur_reg[16]));
CARRY4 \compteur_reg[16]_i_1 
       (.CI(\n_0_compteur_reg[12]_i_1 ),
        .CO({\n_0_compteur_reg[16]_i_1 ,\n_1_compteur_reg[16]_i_1 ,\n_2_compteur_reg[16]_i_1 ,\n_3_compteur_reg[16]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\n_4_compteur_reg[16]_i_1 ,\n_5_compteur_reg[16]_i_1 ,\n_6_compteur_reg[16]_i_1 ,\n_7_compteur_reg[16]_i_1 }),
        .S({\n_0_compteur[16]_i_2 ,\n_0_compteur[16]_i_3 ,\n_0_compteur[16]_i_4 ,\n_0_compteur[16]_i_5 }));
FDPE #(
    .INIT(1'b1)) 
     \compteur_reg[17] 
       (.C(CLK),
        .CE(\n_0_compteur[0]_i_1 ),
        .D(\n_6_compteur_reg[16]_i_1 ),
        .PRE(I1),
        .Q(compteur_reg[17]));
FDPE #(
    .INIT(1'b1)) 
     \compteur_reg[18] 
       (.C(CLK),
        .CE(\n_0_compteur[0]_i_1 ),
        .D(\n_5_compteur_reg[16]_i_1 ),
        .PRE(I1),
        .Q(compteur_reg[18]));
FDPE #(
    .INIT(1'b1)) 
     \compteur_reg[19] 
       (.C(CLK),
        .CE(\n_0_compteur[0]_i_1 ),
        .D(\n_4_compteur_reg[16]_i_1 ),
        .PRE(I1),
        .Q(compteur_reg[19]));
FDPE #(
    .INIT(1'b1)) 
     \compteur_reg[1] 
       (.C(CLK),
        .CE(\n_0_compteur[0]_i_1 ),
        .D(\n_6_compteur_reg[0]_i_2 ),
        .PRE(I1),
        .Q(compteur_reg[1]));
FDPE #(
    .INIT(1'b1)) 
     \compteur_reg[20] 
       (.C(CLK),
        .CE(\n_0_compteur[0]_i_1 ),
        .D(\n_7_compteur_reg[20]_i_1 ),
        .PRE(I1),
        .Q(compteur_reg[20]));
CARRY4 \compteur_reg[20]_i_1 
       (.CI(\n_0_compteur_reg[16]_i_1 ),
        .CO({\NLW_compteur_reg[20]_i_1_CO_UNCONNECTED [3:1],\n_3_compteur_reg[20]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\NLW_compteur_reg[20]_i_1_O_UNCONNECTED [3:2],\n_6_compteur_reg[20]_i_1 ,\n_7_compteur_reg[20]_i_1 }),
        .S({1'b0,1'b0,\n_0_compteur[20]_i_2 ,\n_0_compteur[20]_i_3 }));
FDPE #(
    .INIT(1'b1)) 
     \compteur_reg[21] 
       (.C(CLK),
        .CE(\n_0_compteur[0]_i_1 ),
        .D(\n_6_compteur_reg[20]_i_1 ),
        .PRE(I1),
        .Q(compteur_reg[21]));
FDPE #(
    .INIT(1'b1)) 
     \compteur_reg[2] 
       (.C(CLK),
        .CE(\n_0_compteur[0]_i_1 ),
        .D(\n_5_compteur_reg[0]_i_2 ),
        .PRE(I1),
        .Q(compteur_reg[2]));
FDPE #(
    .INIT(1'b1)) 
     \compteur_reg[3] 
       (.C(CLK),
        .CE(\n_0_compteur[0]_i_1 ),
        .D(\n_4_compteur_reg[0]_i_2 ),
        .PRE(I1),
        .Q(compteur_reg[3]));
FDPE #(
    .INIT(1'b1)) 
     \compteur_reg[4] 
       (.C(CLK),
        .CE(\n_0_compteur[0]_i_1 ),
        .D(\n_7_compteur_reg[4]_i_1 ),
        .PRE(I1),
        .Q(compteur_reg[4]));
CARRY4 \compteur_reg[4]_i_1 
       (.CI(\n_0_compteur_reg[0]_i_2 ),
        .CO({\n_0_compteur_reg[4]_i_1 ,\n_1_compteur_reg[4]_i_1 ,\n_2_compteur_reg[4]_i_1 ,\n_3_compteur_reg[4]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\n_4_compteur_reg[4]_i_1 ,\n_5_compteur_reg[4]_i_1 ,\n_6_compteur_reg[4]_i_1 ,\n_7_compteur_reg[4]_i_1 }),
        .S({\n_0_compteur[4]_i_2 ,\n_0_compteur[4]_i_3 ,\n_0_compteur[4]_i_4 ,\n_0_compteur[4]_i_5 }));
FDPE #(
    .INIT(1'b1)) 
     \compteur_reg[5] 
       (.C(CLK),
        .CE(\n_0_compteur[0]_i_1 ),
        .D(\n_6_compteur_reg[4]_i_1 ),
        .PRE(I1),
        .Q(compteur_reg[5]));
FDPE #(
    .INIT(1'b1)) 
     \compteur_reg[6] 
       (.C(CLK),
        .CE(\n_0_compteur[0]_i_1 ),
        .D(\n_5_compteur_reg[4]_i_1 ),
        .PRE(I1),
        .Q(compteur_reg[6]));
FDPE #(
    .INIT(1'b1)) 
     \compteur_reg[7] 
       (.C(CLK),
        .CE(\n_0_compteur[0]_i_1 ),
        .D(\n_4_compteur_reg[4]_i_1 ),
        .PRE(I1),
        .Q(compteur_reg[7]));
FDPE #(
    .INIT(1'b1)) 
     \compteur_reg[8] 
       (.C(CLK),
        .CE(\n_0_compteur[0]_i_1 ),
        .D(\n_7_compteur_reg[8]_i_1 ),
        .PRE(I1),
        .Q(compteur_reg[8]));
CARRY4 \compteur_reg[8]_i_1 
       (.CI(\n_0_compteur_reg[4]_i_1 ),
        .CO({\n_0_compteur_reg[8]_i_1 ,\n_1_compteur_reg[8]_i_1 ,\n_2_compteur_reg[8]_i_1 ,\n_3_compteur_reg[8]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\n_4_compteur_reg[8]_i_1 ,\n_5_compteur_reg[8]_i_1 ,\n_6_compteur_reg[8]_i_1 ,\n_7_compteur_reg[8]_i_1 }),
        .S({\n_0_compteur[8]_i_2 ,\n_0_compteur[8]_i_3 ,\n_0_compteur[8]_i_4 ,\n_0_compteur[8]_i_5 }));
FDPE #(
    .INIT(1'b1)) 
     \compteur_reg[9] 
       (.C(CLK),
        .CE(\n_0_compteur[0]_i_1 ),
        .D(\n_6_compteur_reg[8]_i_1 ),
        .PRE(I1),
        .Q(compteur_reg[9]));
LUT5 #(
    .INIT(32'hFEFEFF00)) 
     lock_i_1__0
       (.I0(est_IBUF),
        .I1(nord_IBUF),
        .I2(sud_IBUF),
        .I3(n_0_lock_reg),
        .I4(\n_0_compteur[0]_i_3 ),
        .O(n_0_lock_i_1__0));
FDCE #(
    .INIT(1'b0)) 
     lock_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(I1),
        .D(n_0_lock_i_1__0),
        .Q(n_0_lock_reg));
endmodule

module decor
   (O,
    O10,
    O1,
    O36,
    O44,
    p_1_out,
    I55,
    I56,
    I60,
    I47,
    I67,
    I68,
    I69);
  output [3:0]O;
  output [0:0]O10;
  output [3:0]O1;
  output O36;
  output O44;
  output [0:0]p_1_out;
  input I55;
  input [0:0]I56;
  input [0:0]I60;
  input [9:0]I47;
  input [2:0]I67;
  input [2:0]I68;
  input [1:0]I69;

  wire [9:0]I47;
  wire I55;
  wire [0:0]I56;
  wire [0:0]I60;
  wire [2:0]I67;
  wire [2:0]I68;
  wire [1:0]I69;
  wire [3:0]O;
  wire [3:0]O1;
  wire [0:0]O10;
  wire O36;
  wire O44;
  wire n_0_VGA_green_OBUF_inst_i_14;
  wire n_0_VGA_green_OBUF_inst_i_15;
  wire n_0_VGA_green_OBUF_inst_i_28;
  wire n_0_VGA_green_OBUF_inst_i_32;
  wire n_0_VGA_green_OBUF_inst_i_33;
  wire n_0_VGA_green_OBUF_inst_i_34;
  wire n_0_VGA_green_OBUF_inst_i_35;
  wire n_0_VGA_green_OBUF_inst_i_36;
  wire n_0_VGA_green_OBUF_inst_i_37;
  wire n_0_VGA_green_OBUF_inst_i_40;
  wire n_0_VGA_green_OBUF_inst_i_42;
  wire n_0_VGA_green_OBUF_inst_i_43;
  wire n_0_VGA_green_OBUF_inst_i_44;
  wire n_0_VGA_green_OBUF_inst_i_45;
  wire n_0_VGA_green_OBUF_inst_i_46;
  wire n_0_VGA_green_OBUF_inst_i_8;
  wire n_1_VGA_green_OBUF_inst_i_14;
  wire n_1_VGA_green_OBUF_inst_i_19;
  wire n_1_VGA_green_OBUF_inst_i_33;
  wire n_1_VGA_green_OBUF_inst_i_8;
  wire n_2_VGA_green_OBUF_inst_i_14;
  wire n_2_VGA_green_OBUF_inst_i_19;
  wire n_2_VGA_green_OBUF_inst_i_33;
  wire n_2_VGA_green_OBUF_inst_i_5;
  wire n_2_VGA_green_OBUF_inst_i_8;
  wire n_3_VGA_green_OBUF_inst_i_14;
  wire n_3_VGA_green_OBUF_inst_i_19;
  wire n_3_VGA_green_OBUF_inst_i_33;
  wire n_3_VGA_green_OBUF_inst_i_5;
  wire n_3_VGA_green_OBUF_inst_i_8;
  wire [0:0]p_1_out;
  wire sel;
  wire [3:0]NLW_VGA_green_OBUF_inst_i_14_O_UNCONNECTED;
  wire [3:2]NLW_VGA_green_OBUF_inst_i_5_CO_UNCONNECTED;
  wire [3:0]NLW_VGA_green_OBUF_inst_i_5_O_UNCONNECTED;
  wire [3:0]NLW_VGA_green_OBUF_inst_i_8_O_UNCONNECTED;

CARRY4 VGA_green_OBUF_inst_i_14
       (.CI(1'b0),
        .CO({n_0_VGA_green_OBUF_inst_i_14,n_1_VGA_green_OBUF_inst_i_14,n_2_VGA_green_OBUF_inst_i_14,n_3_VGA_green_OBUF_inst_i_14}),
        .CYINIT(1'b1),
        .DI(I47[3:0]),
        .O(NLW_VGA_green_OBUF_inst_i_14_O_UNCONNECTED[3:0]),
        .S({n_0_VGA_green_OBUF_inst_i_28,I67}));
LUT6 #(
    .INIT(64'h55565656AAA9A9A9)) 
     VGA_green_OBUF_inst_i_15
       (.I0(I47[7]),
        .I1(O1[2]),
        .I2(O1[1]),
        .I3(O1[0]),
        .I4(n_0_VGA_green_OBUF_inst_i_32),
        .I5(O1[3]),
        .O(n_0_VGA_green_OBUF_inst_i_15));
CARRY4 VGA_green_OBUF_inst_i_19
       (.CI(n_0_VGA_green_OBUF_inst_i_33),
        .CO({O10,n_1_VGA_green_OBUF_inst_i_19,n_2_VGA_green_OBUF_inst_i_19,n_3_VGA_green_OBUF_inst_i_19}),
        .CYINIT(1'b0),
        .DI({O1[2:0],O[3]}),
        .O(O1),
        .S({n_0_VGA_green_OBUF_inst_i_34,n_0_VGA_green_OBUF_inst_i_35,n_0_VGA_green_OBUF_inst_i_36,n_0_VGA_green_OBUF_inst_i_37}));
(* SOFT_HLUTNM = "soft_lutpair99" *) 
   LUT5 #(
    .INIT(32'h01111111)) 
     VGA_green_OBUF_inst_i_20
       (.I0(O1[2]),
        .I1(O1[1]),
        .I2(O1[0]),
        .I3(O[2]),
        .I4(O[3]),
        .O(O36));
LUT3 #(
    .INIT(8'h69)) 
     VGA_green_OBUF_inst_i_28
       (.I0(I47[3]),
        .I1(O[3]),
        .I2(O[2]),
        .O(n_0_VGA_green_OBUF_inst_i_28));
(* SOFT_HLUTNM = "soft_lutpair99" *) 
   LUT2 #(
    .INIT(4'h8)) 
     VGA_green_OBUF_inst_i_32
       (.I0(O[2]),
        .I1(O[3]),
        .O(n_0_VGA_green_OBUF_inst_i_32));
CARRY4 VGA_green_OBUF_inst_i_33
       (.CI(1'b0),
        .CO({n_0_VGA_green_OBUF_inst_i_33,n_1_VGA_green_OBUF_inst_i_33,n_2_VGA_green_OBUF_inst_i_33,n_3_VGA_green_OBUF_inst_i_33}),
        .CYINIT(1'b0),
        .DI({n_0_VGA_green_OBUF_inst_i_40,sel,O[1],1'b0}),
        .O(O),
        .S({n_0_VGA_green_OBUF_inst_i_42,n_0_VGA_green_OBUF_inst_i_43,n_0_VGA_green_OBUF_inst_i_44,n_0_VGA_green_OBUF_inst_i_45}));
LUT2 #(
    .INIT(4'h9)) 
     VGA_green_OBUF_inst_i_34
       (.I0(O1[2]),
        .I1(O1[3]),
        .O(n_0_VGA_green_OBUF_inst_i_34));
LUT2 #(
    .INIT(4'h9)) 
     VGA_green_OBUF_inst_i_35
       (.I0(O1[1]),
        .I1(O1[2]),
        .O(n_0_VGA_green_OBUF_inst_i_35));
LUT2 #(
    .INIT(4'h9)) 
     VGA_green_OBUF_inst_i_36
       (.I0(O1[0]),
        .I1(O1[1]),
        .O(n_0_VGA_green_OBUF_inst_i_36));
LUT2 #(
    .INIT(4'h9)) 
     VGA_green_OBUF_inst_i_37
       (.I0(O[3]),
        .I1(O1[0]),
        .O(n_0_VGA_green_OBUF_inst_i_37));
LUT4 #(
    .INIT(16'hFFF7)) 
     VGA_green_OBUF_inst_i_40
       (.I0(n_0_VGA_green_OBUF_inst_i_46),
        .I1(I60),
        .I2(O1[2]),
        .I3(O1[1]),
        .O(n_0_VGA_green_OBUF_inst_i_40));
LUT4 #(
    .INIT(16'h0008)) 
     VGA_green_OBUF_inst_i_41
       (.I0(n_0_VGA_green_OBUF_inst_i_46),
        .I1(I60),
        .I2(O1[2]),
        .I3(O1[1]),
        .O(sel));
LUT5 #(
    .INIT(32'hFFF70008)) 
     VGA_green_OBUF_inst_i_42
       (.I0(n_0_VGA_green_OBUF_inst_i_46),
        .I1(I60),
        .I2(O1[2]),
        .I3(O1[1]),
        .I4(O[3]),
        .O(n_0_VGA_green_OBUF_inst_i_42));
LUT5 #(
    .INIT(32'hFFF70008)) 
     VGA_green_OBUF_inst_i_43
       (.I0(n_0_VGA_green_OBUF_inst_i_46),
        .I1(I60),
        .I2(O1[2]),
        .I3(O1[1]),
        .I4(O[2]),
        .O(n_0_VGA_green_OBUF_inst_i_43));
LUT1 #(
    .INIT(2'h1)) 
     VGA_green_OBUF_inst_i_44
       (.I0(O[1]),
        .O(n_0_VGA_green_OBUF_inst_i_44));
LUT1 #(
    .INIT(2'h2)) 
     VGA_green_OBUF_inst_i_45
       (.I0(O[0]),
        .O(n_0_VGA_green_OBUF_inst_i_45));
LUT6 #(
    .INIT(64'h0000000000010000)) 
     VGA_green_OBUF_inst_i_46
       (.I0(O[3]),
        .I1(O[2]),
        .I2(O[1]),
        .I3(O[0]),
        .I4(O1[3]),
        .I5(O1[0]),
        .O(n_0_VGA_green_OBUF_inst_i_46));
CARRY4 VGA_green_OBUF_inst_i_5
       (.CI(n_0_VGA_green_OBUF_inst_i_8),
        .CO({NLW_VGA_green_OBUF_inst_i_5_CO_UNCONNECTED[3:2],n_2_VGA_green_OBUF_inst_i_5,n_3_VGA_green_OBUF_inst_i_5}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,I47[9:8]}),
        .O({NLW_VGA_green_OBUF_inst_i_5_O_UNCONNECTED[3],p_1_out,NLW_VGA_green_OBUF_inst_i_5_O_UNCONNECTED[1:0]}),
        .S({1'b0,1'b1,I69}));
CARRY4 VGA_green_OBUF_inst_i_8
       (.CI(n_0_VGA_green_OBUF_inst_i_14),
        .CO({n_0_VGA_green_OBUF_inst_i_8,n_1_VGA_green_OBUF_inst_i_8,n_2_VGA_green_OBUF_inst_i_8,n_3_VGA_green_OBUF_inst_i_8}),
        .CYINIT(1'b0),
        .DI(I47[7:4]),
        .O(NLW_VGA_green_OBUF_inst_i_8_O_UNCONNECTED[3:0]),
        .S({n_0_VGA_green_OBUF_inst_i_15,I68}));
LUT3 #(
    .INIT(8'h80)) 
     VGA_red_OBUF_inst_i_4
       (.I0(p_1_out),
        .I1(I55),
        .I2(I56),
        .O(O44));
endmodule

module game
   (precFrame,
    game_lost,
    E,
    out4,
    O1,
    O2,
    etat_present,
    O3,
    O4,
    p_15_in,
    O5,
    O6,
    O7,
    out5,
    O8,
    O9,
    O10,
    led_OBUF,
    O11,
    O12,
    O13,
    O14,
    precFrame07_out,
    clk25_BUFG,
    I1,
    out,
    I2,
    I3,
    I4,
    RS232_left,
    I5,
    Q,
    I6,
    I7,
    I8,
    I9,
    S0_IBUF,
    CO,
    RS232_right,
    D,
    I10,
    I11,
    rot_button_IBUF,
    I12,
    no_brick,
    I13,
    game_rqt);
  output precFrame;
  output game_lost;
  output [0:0]E;
  output out4;
  output O1;
  output [0:0]O2;
  output [1:0]etat_present;
  output [0:0]O3;
  output O4;
  output p_15_in;
  output O5;
  output O6;
  output O7;
  output out5;
  output [0:0]O8;
  output [1:0]O9;
  output [0:0]O10;
  output [0:0]led_OBUF;
  output O11;
  output O12;
  output O13;
  output [0:0]O14;
  input precFrame07_out;
  input clk25_BUFG;
  input I1;
  input [0:0]out;
  input I2;
  input I3;
  input I4;
  input RS232_left;
  input I5;
  input [1:0]Q;
  input I6;
  input I7;
  input I8;
  input I9;
  input S0_IBUF;
  input [0:0]CO;
  input RS232_right;
  input [0:0]D;
  input I10;
  input I11;
  input rot_button_IBUF;
  input I12;
  input no_brick;
  input I13;
  input game_rqt;

  wire [0:0]CO;
  wire [0:0]D;
  wire [0:0]E;
  wire I1;
  wire I10;
  wire I11;
  wire I12;
  wire I13;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire I8;
  wire I9;
  wire O1;
  wire [0:0]O10;
  wire O11;
  wire O12;
  wire O13;
  wire [0:0]O14;
  wire [0:0]O2;
  wire [0:0]O3;
  wire O4;
  wire O5;
  wire O6;
  wire O7;
  wire [0:0]O8;
  wire [1:0]O9;
  wire [1:0]Q;
  wire RS232_left;
  wire RS232_right;
  wire S0_IBUF;
  wire clk25_BUFG;
  wire [1:0]etat_present;
  wire game_lost;
  wire game_rqt;
  wire [0:0]led_OBUF;
  wire no_brick;
  wire [0:0]out;
  wire out4;
  wire out5;
  wire p_15_in;
  wire precFrame;
  wire precFrame07_out;
  wire rot_button_IBUF;

game_mgr game_manager
       (.I1(I1),
        .I4(I4),
        .I6(I6),
        .O1(etat_present[1]),
        .O11(O11),
        .O12(O12),
        .O2(O2),
        .O3(etat_present[0]),
        .O4(O1),
        .O5(O5),
        .O6(O6),
        .Q(Q),
        .clk25_BUFG(clk25_BUFG),
        .game_rqt(game_rqt),
        .out4(out4));
master_slave_mgr master_slave_select
       (.CO(CO),
        .D(D),
        .I1(I1),
        .I11(I11),
        .I5(I5),
        .I7(I7),
        .I8(I8),
        .I9(I9),
        .O1(O1),
        .O10(O10),
        .O14(O14),
        .O3(O3),
        .O4(O4),
        .O8(O8),
        .Q(O9),
        .RS232_left(RS232_left),
        .RS232_right(RS232_right),
        .S0_IBUF(S0_IBUF),
        .clk25_BUFG(clk25_BUFG),
        .led_OBUF(led_OBUF),
        .out4(out4),
        .p_15_in(p_15_in));
mode mmode
       (.E(E),
        .I1(I1),
        .I10(I10),
        .I12(I12),
        .I13(I13),
        .I2(I2),
        .I3(I3),
        .O1(O1),
        .O13(O13),
        .O7(O7),
        .clk25_BUFG(clk25_BUFG),
        .game_lost(game_lost),
        .no_brick(no_brick),
        .out(out),
        .out4(out4),
        .out5(out5),
        .precFrame(precFrame),
        .precFrame07_out(precFrame07_out),
        .rot_button_IBUF(rot_button_IBUF));
endmodule

module game_mgr
   (O2,
    O1,
    O3,
    O5,
    O6,
    O4,
    O11,
    O12,
    I4,
    out4,
    I1,
    Q,
    I6,
    game_rqt,
    clk25_BUFG);
  output [0:0]O2;
  output O1;
  output O3;
  output O5;
  output O6;
  output O4;
  output O11;
  output O12;
  input I4;
  input out4;
  input I1;
  input [1:0]Q;
  input I6;
  input game_rqt;
  input clk25_BUFG;

  wire I1;
  wire I4;
  wire I6;
  wire O1;
  wire O11;
  wire O12;
  wire [0:0]O2;
  wire O3;
  wire O4;
  wire O5;
  wire O6;
  wire [1:0]Q;
  wire clk25_BUFG;
  wire game_rqt;
  wire \n_0_etat_present[0]_i_1 ;
  wire \n_0_etat_present[1]_i_1 ;
  wire out4;

(* SOFT_HLUTNM = "soft_lutpair27" *) 
   LUT5 #(
    .INIT(32'hFFFFFF06)) 
     VGA_green_OBUF_inst_i_26
       (.I0(O3),
        .I1(O1),
        .I2(I1),
        .I3(Q[1]),
        .I4(I6),
        .O(O5));
(* SOFT_HLUTNM = "soft_lutpair27" *) 
   LUT4 #(
    .INIT(16'hABBA)) 
     \brick_bounce[1][5]_i_4 
       (.I0(Q[1]),
        .I1(I1),
        .I2(O1),
        .I3(O3),
        .O(O6));
(* SOFT_HLUTNM = "soft_lutpair28" *) 
   LUT5 #(
    .INIT(32'hFF06FFFF)) 
     \brick_bounce[1][6]_i_3 
       (.I0(O3),
        .I1(O1),
        .I2(I1),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(O12));
(* SOFT_HLUTNM = "soft_lutpair28" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \brick_bounce[1][8]_i_7 
       (.I0(O1),
        .I1(O3),
        .O(O11));
(* SOFT_HLUTNM = "soft_lutpair29" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \etat_present[0]_i_1 
       (.I0(game_rqt),
        .I1(I1),
        .O(\n_0_etat_present[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair29" *) 
   LUT4 #(
    .INIT(16'h00C6)) 
     \etat_present[1]_i_1 
       (.I0(O3),
        .I1(O1),
        .I2(game_rqt),
        .I3(I1),
        .O(\n_0_etat_present[1]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \etat_present_reg[0] 
       (.C(clk25_BUFG),
        .CE(1'b1),
        .D(\n_0_etat_present[0]_i_1 ),
        .Q(O3),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \etat_present_reg[1] 
       (.C(clk25_BUFG),
        .CE(1'b1),
        .D(\n_0_etat_present[1]_i_1 ),
        .Q(O1),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT5 #(
    .INIT(32'h02000002)) 
     \xpad[9]_i_1 
       (.I0(I4),
        .I1(out4),
        .I2(I1),
        .I3(O1),
        .I4(O3),
        .O(O2));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT3 #(
    .INIT(8'h06)) 
     \ypong_left[8]_i_4 
       (.I0(O3),
        .I1(O1),
        .I2(I1),
        .O(O4));
endmodule

module ip_rotary
   (CO,
    D,
    E,
    out,
    rqt_TX17_out,
    own_rot_left,
    O1,
    O2,
    rot_button_IBUF,
    CLK,
    I1,
    rot_a_IBUF,
    rot_b_IBUF,
    Q,
    S,
    p_15_in,
    I2);
  output [0:0]CO;
  output [3:0]D;
  output [0:0]E;
  output [1:0]out;
  output rqt_TX17_out;
  output own_rot_left;
  output [3:0]O1;
  output O2;
  input rot_button_IBUF;
  input CLK;
  input I1;
  input rot_a_IBUF;
  input rot_b_IBUF;
  input [2:0]Q;
  input [1:0]S;
  input p_15_in;
  input I2;

  wire CLK;
  wire [0:0]CO;
  wire [3:0]D;
  wire [0:0]E;
  wire I1;
  wire I2;
  wire [3:0]O1;
  wire O2;
  wire [2:0]Q;
  wire [1:0]S;
  wire [1:0]out;
  wire own_press;
  wire own_rot_left;
  wire p_15_in;
  wire qa;
  wire qb;
  wire rot_a_IBUF;
  wire rot_b_IBUF;
  wire rot_button_IBUF;
  wire rqt_TX17_out;

Move IP_Move
       (.CLK(CLK),
        .CO(CO),
        .D(D),
        .E(E),
        .I1(I1),
        .I2(I2),
        .O1({O1[2],O1[0]}),
        .O2(O2),
        .Q(Q),
        .S(S),
        .out(out),
        .own_press(own_press),
        .own_rot_left(own_rot_left),
        .p_15_in(p_15_in),
        .qa(qa),
        .qb(qb),
        .rqt_TX17_out(rqt_TX17_out));
rotary codeur
       (.CLK(CLK),
        .I1(I1),
        .I2(I2),
        .O1({O1[3],O1[1]}),
        .out(out[1]),
        .own_press(own_press),
        .qa(qa),
        .qb(qb),
        .rot_a_IBUF(rot_a_IBUF),
        .rot_b_IBUF(rot_b_IBUF),
        .rot_button_IBUF(rot_button_IBUF));
endmodule

module ip_uart
   (RS232_left,
    RS232_right,
    O1,
    RX_CLK,
    O2,
    O3,
    O4,
    O5,
    CLK,
    I1,
    E,
    rqt_TX17_out,
    Q,
    p_15_in,
    rxd_IBUF,
    I2,
    D,
    I3,
    I4,
    I5);
  output RS232_left;
  output RS232_right;
  output O1;
  output RX_CLK;
  output O2;
  output O3;
  output O4;
  output [0:0]O5;
  input CLK;
  input I1;
  input [0:0]E;
  input rqt_TX17_out;
  input [1:0]Q;
  input p_15_in;
  input rxd_IBUF;
  input I2;
  input [3:0]D;
  input [0:0]I3;
  input [0:0]I4;
  input [0:0]I5;

  wire CLK;
  wire [3:0]D;
  wire [0:0]E;
  wire I1;
  wire I2;
  wire [0:0]I3;
  wire [0:0]I4;
  wire [0:0]I5;
  wire O1;
  wire O2;
  wire O3;
  wire O4;
  wire [0:0]O5;
  wire [1:0]Q;
  wire RS232_left;
  wire RS232_left10_out;
  wire RS232_right;
  wire RS232_right7_out;
  wire RX_CLK;
  wire [7:0]data_TX;
  wire incoming;
  wire n_5_RS232;
  wire n_7_direction;
  wire p_15_in;
  wire rqt_TX17_out;
  wire rxd_IBUF;
  wire start_TX;
  wire start_tempo_UART_RX11_out;

UARTcomponent RS232
       (.CLK(CLK),
        .D(n_7_direction),
        .I1(I1),
        .I2(O3),
        .I3({data_TX[7],data_TX[4],data_TX[1:0]}),
        .I4(I2),
        .O1(n_5_RS232),
        .O5(O5),
        .Q(Q),
        .RS232_left(RS232_left),
        .RS232_left10_out(RS232_left10_out),
        .RS232_right(RS232_right),
        .RS232_right7_out(RS232_right7_out),
        .RX_CLK(RX_CLK),
        .incoming(incoming),
        .p_15_in(p_15_in),
        .rxd_IBUF(rxd_IBUF),
        .start_TX(start_TX),
        .start_tempo_UART_RX11_out(start_tempo_UART_RX11_out));
move_RS232 direction
       (.CLK(CLK),
        .D(n_7_direction),
        .E(E),
        .I1(I1),
        .I2(n_5_RS232),
        .I3(Q),
        .I4(D),
        .I5(I3),
        .I6(I4),
        .I7(I5),
        .O1(O1),
        .O2(O2),
        .O3(O3),
        .O4(O4),
        .Q({data_TX[7],data_TX[4],data_TX[1:0]}),
        .RS232_left(RS232_left),
        .RS232_left10_out(RS232_left10_out),
        .RS232_right(RS232_right),
        .RS232_right7_out(RS232_right7_out),
        .incoming(incoming),
        .p_15_in(p_15_in),
        .rqt_TX17_out(rqt_TX17_out),
        .start_TX(start_TX),
        .start_tempo_UART_RX11_out(start_tempo_UART_RX11_out));
endmodule

module master_slave_mgr
   (O3,
    O4,
    p_15_in,
    O8,
    Q,
    O10,
    led_OBUF,
    O14,
    out4,
    O1,
    RS232_left,
    I5,
    I7,
    I8,
    I9,
    S0_IBUF,
    CO,
    RS232_right,
    D,
    I11,
    clk25_BUFG,
    I1);
  output [0:0]O3;
  output O4;
  output p_15_in;
  output [0:0]O8;
  output [1:0]Q;
  output [0:0]O10;
  output [0:0]led_OBUF;
  output [0:0]O14;
  input out4;
  input O1;
  input RS232_left;
  input I5;
  input I7;
  input I8;
  input I9;
  input S0_IBUF;
  input [0:0]CO;
  input RS232_right;
  input [0:0]D;
  input I11;
  input clk25_BUFG;
  input I1;

  wire [0:0]CO;
  wire [0:0]D;
  wire [1:1]EF;
  wire I1;
  wire I11;
  wire I5;
  wire I7;
  wire I8;
  wire I9;
  wire O1;
  wire [0:0]O10;
  wire [0:0]O14;
  wire [0:0]O3;
  wire O4;
  wire [0:0]O8;
  wire [1:0]Q;
  wire RS232_left;
  wire RS232_right;
  wire S0_IBUF;
  wire clk25_BUFG;
  wire [0:0]led_OBUF;
  wire out4;
  wire p_15_in;

(* SOFT_HLUTNM = "soft_lutpair32" *) 
   LUT3 #(
    .INIT(8'h9C)) 
     \EP[1]_i_1 
       (.I0(D),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(EF));
FDCE #(
    .INIT(1'b0)) 
     \EP_reg[0] 
       (.C(clk25_BUFG),
        .CE(1'b1),
        .CLR(I1),
        .D(D),
        .Q(Q[0]));
FDCE #(
    .INIT(1'b0)) 
     \EP_reg[1] 
       (.C(clk25_BUFG),
        .CE(1'b1),
        .CLR(I1),
        .D(EF),
        .Q(Q[1]));
LUT3 #(
    .INIT(8'h60)) 
     \data_TX[7]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(I11),
        .O(O14));
(* SOFT_HLUTNM = "soft_lutpair31" *) 
   LUT3 #(
    .INIT(8'h82)) 
     \led_OBUF[7]_inst_i_1 
       (.I0(S0_IBUF),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(led_OBUF));
(* SOFT_HLUTNM = "soft_lutpair30" *) 
   LUT3 #(
    .INIT(8'h82)) 
     \tempo_UART_RX[8]_i_1 
       (.I0(I9),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(O10));
(* SOFT_HLUTNM = "soft_lutpair30" *) 
   LUT4 #(
    .INIT(16'h6066)) 
     \tempo_UART_TX[7]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(I7),
        .I3(I8),
        .O(O8));
LUT6 #(
    .INIT(64'h4040444040404040)) 
     \ypong_right[8]_i_1 
       (.I0(out4),
        .I1(O1),
        .I2(O4),
        .I3(RS232_left),
        .I4(p_15_in),
        .I5(I5),
        .O(O3));
(* SOFT_HLUTNM = "soft_lutpair31" *) 
   LUT4 #(
    .INIT(16'h8008)) 
     \ypong_right[8]_i_3 
       (.I0(CO),
        .I1(RS232_right),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(O4));
(* SOFT_HLUTNM = "soft_lutpair32" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \ypong_right[8]_i_4 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(p_15_in));
endmodule

module mode
   (precFrame,
    game_lost,
    E,
    out4,
    O7,
    out5,
    O13,
    precFrame07_out,
    clk25_BUFG,
    O1,
    I1,
    out,
    I2,
    I3,
    I10,
    rot_button_IBUF,
    I12,
    no_brick,
    I13);
  output precFrame;
  output game_lost;
  output [0:0]E;
  output out4;
  output O7;
  output out5;
  output O13;
  input precFrame07_out;
  input clk25_BUFG;
  input O1;
  input I1;
  input [0:0]out;
  input I2;
  input I3;
  input I10;
  input rot_button_IBUF;
  input I12;
  input no_brick;
  input I13;

  wire [0:0]E;
  wire I1;
  wire I10;
  wire I12;
  wire I13;
  wire I2;
  wire I3;
  wire O1;
  wire O13;
  wire O7;
  wire [0:0]Timer;
  wire clk25_BUFG;
  wire game_lost;
  wire n_5_MAETAT;
  wire n_6_MAETAT;
  wire n_7_MAETAT;
  wire n_9_MAETAT;
  wire no_brick;
  wire [0:0]out;
  wire out4;
  wire out5;
  wire precFrame;
  wire precFrame07_out;
  wire rot_button_IBUF;

MAE MAETAT
       (.E(E),
        .I1(I1),
        .I10(I10),
        .I12(I12),
        .I13(I13),
        .I2(I2),
        .I3(I3),
        .O1(O1),
        .O13(O13),
        .O2(n_5_MAETAT),
        .O3(n_7_MAETAT),
        .O4(n_9_MAETAT),
        .O7(O7),
        .Q(Timer),
        .clk25_BUFG(clk25_BUFG),
        .no_brick(no_brick),
        .out(out),
        .out2(n_6_MAETAT),
        .out4(out4),
        .out5(out5),
        .precFrame(precFrame),
        .precFrame07_out(precFrame07_out),
        .rot_button_IBUF(rot_button_IBUF));
Timer_Lost Timerr_Lost
       (.I1(I1),
        .I2(n_6_MAETAT),
        .I3(n_9_MAETAT),
        .I4(n_5_MAETAT),
        .I5(n_7_MAETAT),
        .Q(Timer),
        .clk25_BUFG(clk25_BUFG),
        .game_lost(game_lost));
endmodule

module move_RS232
   (RS232_left,
    RS232_right,
    O1,
    O2,
    start_TX,
    O3,
    O4,
    D,
    Q,
    RS232_left10_out,
    CLK,
    I1,
    RS232_right7_out,
    E,
    rqt_TX17_out,
    I2,
    p_15_in,
    I3,
    incoming,
    start_tempo_UART_RX11_out,
    I4,
    I5,
    I6,
    I7);
  output RS232_left;
  output RS232_right;
  output O1;
  output O2;
  output start_TX;
  output O3;
  output O4;
  output [0:0]D;
  output [3:0]Q;
  input RS232_left10_out;
  input CLK;
  input I1;
  input RS232_right7_out;
  input [0:0]E;
  input rqt_TX17_out;
  input I2;
  input p_15_in;
  input [1:0]I3;
  input incoming;
  input start_tempo_UART_RX11_out;
  input [3:0]I4;
  input [0:0]I5;
  input [0:0]I6;
  input [0:0]I7;

  wire CLK;
  wire [0:0]D;
  wire [0:0]E;
  wire I1;
  wire I2;
  wire [1:0]I3;
  wire [3:0]I4;
  wire [0:0]I5;
  wire [0:0]I6;
  wire [0:0]I7;
  wire O1;
  wire O2;
  wire O3;
  wire O4;
  wire [3:0]Q;
  wire RS232_left;
  wire RS232_left10_out;
  wire RS232_right;
  wire RS232_right7_out;
  wire incoming;
  wire [7:0]message_TX;
  wire n_0_ready_TX_i_1;
  wire n_0_start_TX_i_1;
  wire n_0_start_tempo_UART_RX_i_1;
  wire n_0_start_tempo_UART_RX_i_3;
  wire \n_0_tempo_UART_RX[8]_i_3 ;
  wire \n_0_tempo_UART_TX[7]_i_3 ;
  wire [7:0]p_0_in__1;
  wire [8:0]p_0_in__4;
  wire p_15_in;
  wire rqt_TX17_out;
  wire start_TX;
  wire start_tempo_UART_RX11_out;
  wire [8:0]tempo_UART_RX_reg__0;
  wire [7:0]tempo_UART_TX_reg__0;

FDCE #(
    .INIT(1'b0)) 
     RS232_left_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(I1),
        .D(RS232_left10_out),
        .Q(RS232_left));
FDCE #(
    .INIT(1'b0)) 
     RS232_right_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(I1),
        .D(RS232_right7_out),
        .Q(RS232_right));
LUT6 #(
    .INIT(64'hEFBFBFEFBFEFEFBF)) 
     \TX_BUF[9]_i_2 
       (.I0(I2),
        .I1(Q[2]),
        .I2(p_15_in),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(Q[1]),
        .O(D));
FDCE #(
    .INIT(1'b0)) 
     \data_TX_reg[0] 
       (.C(CLK),
        .CE(I5),
        .CLR(I1),
        .D(message_TX[0]),
        .Q(Q[0]));
FDCE #(
    .INIT(1'b0)) 
     \data_TX_reg[1] 
       (.C(CLK),
        .CE(I5),
        .CLR(I1),
        .D(message_TX[1]),
        .Q(Q[1]));
FDCE #(
    .INIT(1'b0)) 
     \data_TX_reg[4] 
       (.C(CLK),
        .CE(I5),
        .CLR(I1),
        .D(message_TX[4]),
        .Q(Q[2]));
FDCE #(
    .INIT(1'b0)) 
     \data_TX_reg[7] 
       (.C(CLK),
        .CE(I5),
        .CLR(I1),
        .D(message_TX[7]),
        .Q(Q[3]));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT3 #(
    .INIT(8'h7F)) 
     \message_TX[7]_i_3 
       (.I0(tempo_UART_TX_reg__0[7]),
        .I1(\n_0_tempo_UART_TX[7]_i_3 ),
        .I2(tempo_UART_TX_reg__0[6]),
        .O(O4));
FDCE #(
    .INIT(1'b0)) 
     \message_TX_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(I1),
        .D(I4[0]),
        .Q(message_TX[0]));
FDCE #(
    .INIT(1'b0)) 
     \message_TX_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(I1),
        .D(I4[1]),
        .Q(message_TX[1]));
FDCE #(
    .INIT(1'b0)) 
     \message_TX_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(I1),
        .D(I4[2]),
        .Q(message_TX[4]));
FDCE #(
    .INIT(1'b0)) 
     \message_TX_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(I1),
        .D(I4[3]),
        .Q(message_TX[7]));
LUT5 #(
    .INIT(32'hFF996000)) 
     ready_TX_i_1
       (.I0(I3[0]),
        .I1(I3[1]),
        .I2(O1),
        .I3(O4),
        .I4(O2),
        .O(n_0_ready_TX_i_1));
FDCE #(
    .INIT(1'b0)) 
     ready_TX_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(I1),
        .D(n_0_ready_TX_i_1),
        .Q(O2));
FDCE #(
    .INIT(1'b0)) 
     rqt_TX_reg
       (.C(CLK),
        .CE(E),
        .CLR(I1),
        .D(rqt_TX17_out),
        .Q(O1));
LUT4 #(
    .INIT(16'hEB28)) 
     start_TX_i_1
       (.I0(O2),
        .I1(I3[1]),
        .I2(I3[0]),
        .I3(start_TX),
        .O(n_0_start_TX_i_1));
FDCE #(
    .INIT(1'b0)) 
     start_TX_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(I1),
        .D(n_0_start_TX_i_1),
        .Q(start_TX));
LUT6 #(
    .INIT(64'hFFFF0000CFFF8888)) 
     start_tempo_UART_RX_i_1
       (.I0(incoming),
        .I1(start_tempo_UART_RX11_out),
        .I2(tempo_UART_RX_reg__0[8]),
        .I3(n_0_start_tempo_UART_RX_i_3),
        .I4(O3),
        .I5(p_15_in),
        .O(n_0_start_tempo_UART_RX_i_1));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT3 #(
    .INIT(8'h80)) 
     start_tempo_UART_RX_i_3
       (.I0(tempo_UART_RX_reg__0[7]),
        .I1(\n_0_tempo_UART_RX[8]_i_3 ),
        .I2(tempo_UART_RX_reg__0[6]),
        .O(n_0_start_tempo_UART_RX_i_3));
FDCE #(
    .INIT(1'b0)) 
     start_tempo_UART_RX_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(I1),
        .D(n_0_start_tempo_UART_RX_i_1),
        .Q(O3));
LUT1 #(
    .INIT(2'h1)) 
     \tempo_UART_RX[0]_i_1 
       (.I0(tempo_UART_RX_reg__0[0]),
        .O(p_0_in__4[0]));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \tempo_UART_RX[1]_i_1 
       (.I0(tempo_UART_RX_reg__0[0]),
        .I1(tempo_UART_RX_reg__0[1]),
        .O(p_0_in__4[1]));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \tempo_UART_RX[2]_i_1 
       (.I0(tempo_UART_RX_reg__0[2]),
        .I1(tempo_UART_RX_reg__0[1]),
        .I2(tempo_UART_RX_reg__0[0]),
        .O(p_0_in__4[2]));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \tempo_UART_RX[3]_i_1 
       (.I0(tempo_UART_RX_reg__0[3]),
        .I1(tempo_UART_RX_reg__0[0]),
        .I2(tempo_UART_RX_reg__0[1]),
        .I3(tempo_UART_RX_reg__0[2]),
        .O(p_0_in__4[3]));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \tempo_UART_RX[4]_i_1 
       (.I0(tempo_UART_RX_reg__0[4]),
        .I1(tempo_UART_RX_reg__0[2]),
        .I2(tempo_UART_RX_reg__0[1]),
        .I3(tempo_UART_RX_reg__0[0]),
        .I4(tempo_UART_RX_reg__0[3]),
        .O(p_0_in__4[4]));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \tempo_UART_RX[5]_i_1 
       (.I0(tempo_UART_RX_reg__0[5]),
        .I1(tempo_UART_RX_reg__0[3]),
        .I2(tempo_UART_RX_reg__0[0]),
        .I3(tempo_UART_RX_reg__0[1]),
        .I4(tempo_UART_RX_reg__0[2]),
        .I5(tempo_UART_RX_reg__0[4]),
        .O(p_0_in__4[5]));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \tempo_UART_RX[6]_i_1 
       (.I0(tempo_UART_RX_reg__0[6]),
        .I1(\n_0_tempo_UART_RX[8]_i_3 ),
        .O(p_0_in__4[6]));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \tempo_UART_RX[7]_i_1 
       (.I0(tempo_UART_RX_reg__0[7]),
        .I1(\n_0_tempo_UART_RX[8]_i_3 ),
        .I2(tempo_UART_RX_reg__0[6]),
        .O(p_0_in__4[7]));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \tempo_UART_RX[8]_i_2 
       (.I0(tempo_UART_RX_reg__0[8]),
        .I1(tempo_UART_RX_reg__0[6]),
        .I2(\n_0_tempo_UART_RX[8]_i_3 ),
        .I3(tempo_UART_RX_reg__0[7]),
        .O(p_0_in__4[8]));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \tempo_UART_RX[8]_i_3 
       (.I0(tempo_UART_RX_reg__0[5]),
        .I1(tempo_UART_RX_reg__0[3]),
        .I2(tempo_UART_RX_reg__0[0]),
        .I3(tempo_UART_RX_reg__0[1]),
        .I4(tempo_UART_RX_reg__0[2]),
        .I5(tempo_UART_RX_reg__0[4]),
        .O(\n_0_tempo_UART_RX[8]_i_3 ));
FDCE #(
    .INIT(1'b0)) 
     \tempo_UART_RX_reg[0] 
       (.C(CLK),
        .CE(I7),
        .CLR(I1),
        .D(p_0_in__4[0]),
        .Q(tempo_UART_RX_reg__0[0]));
FDCE #(
    .INIT(1'b0)) 
     \tempo_UART_RX_reg[1] 
       (.C(CLK),
        .CE(I7),
        .CLR(I1),
        .D(p_0_in__4[1]),
        .Q(tempo_UART_RX_reg__0[1]));
FDCE #(
    .INIT(1'b0)) 
     \tempo_UART_RX_reg[2] 
       (.C(CLK),
        .CE(I7),
        .CLR(I1),
        .D(p_0_in__4[2]),
        .Q(tempo_UART_RX_reg__0[2]));
FDCE #(
    .INIT(1'b0)) 
     \tempo_UART_RX_reg[3] 
       (.C(CLK),
        .CE(I7),
        .CLR(I1),
        .D(p_0_in__4[3]),
        .Q(tempo_UART_RX_reg__0[3]));
FDCE #(
    .INIT(1'b0)) 
     \tempo_UART_RX_reg[4] 
       (.C(CLK),
        .CE(I7),
        .CLR(I1),
        .D(p_0_in__4[4]),
        .Q(tempo_UART_RX_reg__0[4]));
FDCE #(
    .INIT(1'b0)) 
     \tempo_UART_RX_reg[5] 
       (.C(CLK),
        .CE(I7),
        .CLR(I1),
        .D(p_0_in__4[5]),
        .Q(tempo_UART_RX_reg__0[5]));
FDCE #(
    .INIT(1'b0)) 
     \tempo_UART_RX_reg[6] 
       (.C(CLK),
        .CE(I7),
        .CLR(I1),
        .D(p_0_in__4[6]),
        .Q(tempo_UART_RX_reg__0[6]));
FDCE #(
    .INIT(1'b0)) 
     \tempo_UART_RX_reg[7] 
       (.C(CLK),
        .CE(I7),
        .CLR(I1),
        .D(p_0_in__4[7]),
        .Q(tempo_UART_RX_reg__0[7]));
FDCE #(
    .INIT(1'b0)) 
     \tempo_UART_RX_reg[8] 
       (.C(CLK),
        .CE(I7),
        .CLR(I1),
        .D(p_0_in__4[8]),
        .Q(tempo_UART_RX_reg__0[8]));
LUT1 #(
    .INIT(2'h1)) 
     \tempo_UART_TX[0]_i_1 
       (.I0(tempo_UART_TX_reg__0[0]),
        .O(p_0_in__1[0]));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \tempo_UART_TX[1]_i_1 
       (.I0(tempo_UART_TX_reg__0[0]),
        .I1(tempo_UART_TX_reg__0[1]),
        .O(p_0_in__1[1]));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \tempo_UART_TX[2]_i_1 
       (.I0(tempo_UART_TX_reg__0[2]),
        .I1(tempo_UART_TX_reg__0[1]),
        .I2(tempo_UART_TX_reg__0[0]),
        .O(p_0_in__1[2]));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \tempo_UART_TX[3]_i_1 
       (.I0(tempo_UART_TX_reg__0[3]),
        .I1(tempo_UART_TX_reg__0[0]),
        .I2(tempo_UART_TX_reg__0[1]),
        .I3(tempo_UART_TX_reg__0[2]),
        .O(p_0_in__1[3]));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \tempo_UART_TX[4]_i_1 
       (.I0(tempo_UART_TX_reg__0[4]),
        .I1(tempo_UART_TX_reg__0[2]),
        .I2(tempo_UART_TX_reg__0[1]),
        .I3(tempo_UART_TX_reg__0[0]),
        .I4(tempo_UART_TX_reg__0[3]),
        .O(p_0_in__1[4]));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \tempo_UART_TX[5]_i_1 
       (.I0(tempo_UART_TX_reg__0[5]),
        .I1(tempo_UART_TX_reg__0[3]),
        .I2(tempo_UART_TX_reg__0[0]),
        .I3(tempo_UART_TX_reg__0[1]),
        .I4(tempo_UART_TX_reg__0[2]),
        .I5(tempo_UART_TX_reg__0[4]),
        .O(p_0_in__1[5]));
LUT2 #(
    .INIT(4'h6)) 
     \tempo_UART_TX[6]_i_1 
       (.I0(tempo_UART_TX_reg__0[6]),
        .I1(\n_0_tempo_UART_TX[7]_i_3 ),
        .O(p_0_in__1[6]));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \tempo_UART_TX[7]_i_2 
       (.I0(tempo_UART_TX_reg__0[7]),
        .I1(\n_0_tempo_UART_TX[7]_i_3 ),
        .I2(tempo_UART_TX_reg__0[6]),
        .O(p_0_in__1[7]));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \tempo_UART_TX[7]_i_3 
       (.I0(tempo_UART_TX_reg__0[5]),
        .I1(tempo_UART_TX_reg__0[3]),
        .I2(tempo_UART_TX_reg__0[0]),
        .I3(tempo_UART_TX_reg__0[1]),
        .I4(tempo_UART_TX_reg__0[2]),
        .I5(tempo_UART_TX_reg__0[4]),
        .O(\n_0_tempo_UART_TX[7]_i_3 ));
FDCE #(
    .INIT(1'b0)) 
     \tempo_UART_TX_reg[0] 
       (.C(CLK),
        .CE(I6),
        .CLR(I1),
        .D(p_0_in__1[0]),
        .Q(tempo_UART_TX_reg__0[0]));
FDCE #(
    .INIT(1'b0)) 
     \tempo_UART_TX_reg[1] 
       (.C(CLK),
        .CE(I6),
        .CLR(I1),
        .D(p_0_in__1[1]),
        .Q(tempo_UART_TX_reg__0[1]));
FDCE #(
    .INIT(1'b0)) 
     \tempo_UART_TX_reg[2] 
       (.C(CLK),
        .CE(I6),
        .CLR(I1),
        .D(p_0_in__1[2]),
        .Q(tempo_UART_TX_reg__0[2]));
FDCE #(
    .INIT(1'b0)) 
     \tempo_UART_TX_reg[3] 
       (.C(CLK),
        .CE(I6),
        .CLR(I1),
        .D(p_0_in__1[3]),
        .Q(tempo_UART_TX_reg__0[3]));
FDCE #(
    .INIT(1'b0)) 
     \tempo_UART_TX_reg[4] 
       (.C(CLK),
        .CE(I6),
        .CLR(I1),
        .D(p_0_in__1[4]),
        .Q(tempo_UART_TX_reg__0[4]));
FDCE #(
    .INIT(1'b0)) 
     \tempo_UART_TX_reg[5] 
       (.C(CLK),
        .CE(I6),
        .CLR(I1),
        .D(p_0_in__1[5]),
        .Q(tempo_UART_TX_reg__0[5]));
FDCE #(
    .INIT(1'b0)) 
     \tempo_UART_TX_reg[6] 
       (.C(CLK),
        .CE(I6),
        .CLR(I1),
        .D(p_0_in__1[6]),
        .Q(tempo_UART_TX_reg__0[6]));
FDCE #(
    .INIT(1'b0)) 
     \tempo_UART_TX_reg[7] 
       (.C(CLK),
        .CE(I6),
        .CLR(I1),
        .D(p_0_in__1[7]),
        .Q(tempo_UART_TX_reg__0[7]));
endmodule

module objects
   (\brick_bounce[1] ,
    O1,
    \brick_bounce[0] ,
    leftbounce,
    rightbounce,
    ybounce,
    barrier_bounce,
    pong_left_bounce,
    pong_right_bounce,
    pad_far_left_bounce,
    pad_left_bounce,
    pad_center_bounce,
    pad_right_bounce,
    pad_far_right_bounce,
    CO,
    Q,
    O2,
    O3,
    O4,
    O5,
    O6,
    O7,
    O8,
    O9,
    O,
    O10,
    O11,
    O12,
    O13,
    O14,
    O15,
    O16,
    plusOp12,
    O17,
    plusOp14,
    O18,
    plusOp10,
    plusOp8,
    O19,
    O20,
    O21,
    O22,
    O23,
    O24,
    O25,
    O26,
    O27,
    O28,
    O29,
    O30,
    O31,
    O32,
    O33,
    O34,
    O35,
    O36,
    O37,
    O38,
    O39,
    O40,
    O41,
    O42,
    O43,
    O44,
    p_1_out,
    O45,
    O46,
    O47,
    O48,
    no_brick,
    O49,
    O50,
    plusOp16,
    O51,
    I1,
    clk25_BUFG,
    I2,
    I3,
    I4,
    I5,
    I6,
    I7,
    I8,
    I9,
    I10,
    I11,
    I12,
    I13,
    I14,
    I15,
    I16,
    I17,
    I18,
    I19,
    I20,
    I21,
    I22,
    I23,
    I24,
    I25,
    I26,
    I27,
    I28,
    I29,
    S,
    I30,
    I31,
    DI,
    I32,
    I33,
    I34,
    I35,
    I36,
    I37,
    I38,
    I39,
    I40,
    I41,
    S3_IBUF,
    own_rot_left,
    I42,
    out,
    I43,
    game_lost,
    I44,
    ouest_IBUF,
    S0_IBUF,
    I45,
    RS232_right,
    p_15_in,
    I46,
    I47,
    I48,
    I49,
    I50,
    I51,
    I52,
    I53,
    I54,
    S2_IBUF,
    I55,
    I56,
    I57,
    I58,
    I59,
    I60,
    E,
    I61,
    D,
    I62,
    I63,
    I64,
    I65,
    I66,
    I67,
    I68,
    I69);
  output [8:0]\brick_bounce[1] ;
  output O1;
  output [8:0]\brick_bounce[0] ;
  output leftbounce;
  output rightbounce;
  output ybounce;
  output barrier_bounce;
  output pong_left_bounce;
  output pong_right_bounce;
  output pad_far_left_bounce;
  output pad_left_bounce;
  output pad_center_bounce;
  output pad_right_bounce;
  output pad_far_right_bounce;
  output [0:0]CO;
  output [8:0]Q;
  output [0:0]O2;
  output [0:0]O3;
  output [0:0]O4;
  output [0:0]O5;
  output [9:0]O6;
  output [0:0]O7;
  output [9:0]O8;
  output [0:0]O9;
  output [3:0]O;
  output [0:0]O10;
  output [3:0]O11;
  output O12;
  output [6:0]O13;
  output O14;
  output [6:0]O15;
  output [2:0]O16;
  output [7:0]plusOp12;
  output [2:0]O17;
  output [8:0]plusOp14;
  output [0:0]O18;
  output [8:0]plusOp10;
  output [8:0]plusOp8;
  output [0:0]O19;
  output [1:0]O20;
  output [0:0]O21;
  output [2:0]O22;
  output O23;
  output O24;
  output O25;
  output O26;
  output O27;
  output O28;
  output O29;
  output [3:0]O30;
  output [3:0]O31;
  output [0:0]O32;
  output O33;
  output O34;
  output [0:0]O35;
  output O36;
  output O37;
  output O38;
  output [1:0]O39;
  output [2:0]O40;
  output [0:0]O41;
  output [2:0]O42;
  output [0:0]O43;
  output O44;
  output [0:0]p_1_out;
  output O45;
  output O46;
  output O47;
  output O48;
  output no_brick;
  output [2:0]O49;
  output [0:0]O50;
  output [8:0]plusOp16;
  output [0:0]O51;
  input I1;
  input clk25_BUFG;
  input I2;
  input I3;
  input I4;
  input I5;
  input I6;
  input I7;
  input I8;
  input I9;
  input I10;
  input I11;
  input I12;
  input I13;
  input I14;
  input I15;
  input I16;
  input I17;
  input I18;
  input I19;
  input I20;
  input I21;
  input I22;
  input I23;
  input I24;
  input I25;
  input I26;
  input I27;
  input I28;
  input I29;
  input [0:0]S;
  input [0:0]I30;
  input [0:0]I31;
  input [0:0]DI;
  input [0:0]I32;
  input [0:0]I33;
  input [0:0]I34;
  input [0:0]I35;
  input [0:0]I36;
  input [0:0]I37;
  input [0:0]I38;
  input [1:0]I39;
  input [0:0]I40;
  input [0:0]I41;
  input S3_IBUF;
  input own_rot_left;
  input I42;
  input [0:0]out;
  input I43;
  input game_lost;
  input I44;
  input ouest_IBUF;
  input S0_IBUF;
  input [1:0]I45;
  input RS232_right;
  input p_15_in;
  input I46;
  input [9:0]I47;
  input [9:0]I48;
  input I49;
  input [0:0]I50;
  input [0:0]I51;
  input [0:0]I52;
  input [0:0]I53;
  input [0:0]I54;
  input S2_IBUF;
  input I55;
  input [0:0]I56;
  input I57;
  input [0:0]I58;
  input [0:0]I59;
  input [0:0]I60;
  input [0:0]E;
  input [0:0]I61;
  input [0:0]D;
  input [0:0]I62;
  input [3:0]I63;
  input [3:0]I64;
  input [3:0]I65;
  input [1:0]I66;
  input [2:0]I67;
  input [2:0]I68;
  input [1:0]I69;

  wire [0:0]CO;
  wire [0:0]D;
  wire [0:0]DI;
  wire [0:0]E;
  wire I1;
  wire I10;
  wire I11;
  wire I12;
  wire I13;
  wire I14;
  wire I15;
  wire I16;
  wire I17;
  wire I18;
  wire I19;
  wire I2;
  wire I20;
  wire I21;
  wire I22;
  wire I23;
  wire I24;
  wire I25;
  wire I26;
  wire I27;
  wire I28;
  wire I29;
  wire I3;
  wire [0:0]I30;
  wire [0:0]I31;
  wire [0:0]I32;
  wire [0:0]I33;
  wire [0:0]I34;
  wire [0:0]I35;
  wire [0:0]I36;
  wire [0:0]I37;
  wire [0:0]I38;
  wire [1:0]I39;
  wire I4;
  wire [0:0]I40;
  wire [0:0]I41;
  wire I42;
  wire I43;
  wire I44;
  wire [1:0]I45;
  wire I46;
  wire [9:0]I47;
  wire [9:0]I48;
  wire I49;
  wire I5;
  wire [0:0]I50;
  wire [0:0]I51;
  wire [0:0]I52;
  wire [0:0]I53;
  wire [0:0]I54;
  wire I55;
  wire [0:0]I56;
  wire I57;
  wire [0:0]I58;
  wire [0:0]I59;
  wire I6;
  wire [0:0]I60;
  wire [0:0]I61;
  wire [0:0]I62;
  wire [3:0]I63;
  wire [3:0]I64;
  wire [3:0]I65;
  wire [1:0]I66;
  wire [2:0]I67;
  wire [2:0]I68;
  wire [1:0]I69;
  wire I7;
  wire I8;
  wire I9;
  wire [3:0]O;
  wire O1;
  wire [0:0]O10;
  wire [3:0]O11;
  wire O12;
  wire [6:0]O13;
  wire O14;
  wire [6:0]O15;
  wire [2:0]O16;
  wire [2:0]O17;
  wire [0:0]O18;
  wire [0:0]O19;
  wire [0:0]O2;
  wire [1:0]O20;
  wire [0:0]O21;
  wire [2:0]O22;
  wire O23;
  wire O24;
  wire O25;
  wire O26;
  wire O27;
  wire O28;
  wire O29;
  wire [0:0]O3;
  wire [3:0]O30;
  wire [3:0]O31;
  wire [0:0]O32;
  wire O33;
  wire O34;
  wire [0:0]O35;
  wire O36;
  wire O37;
  wire O38;
  wire [1:0]O39;
  wire [0:0]O4;
  wire [2:0]O40;
  wire [0:0]O41;
  wire [2:0]O42;
  wire [0:0]O43;
  wire O44;
  wire O45;
  wire O46;
  wire O47;
  wire O48;
  wire [2:0]O49;
  wire [0:0]O5;
  wire [0:0]O50;
  wire [0:0]O51;
  wire [9:0]O6;
  wire [0:0]O7;
  wire [9:0]O8;
  wire [0:0]O9;
  wire [8:0]Q;
  wire RS232_right;
  wire [0:0]S;
  wire S0_IBUF;
  wire S2_IBUF;
  wire S3_IBUF;
  wire barrier_bounce;
  wire [8:0]\brick_bounce[0] ;
  wire [8:0]\brick_bounce[1] ;
  wire clk25_BUFG;
  wire game_lost;
  wire leftbounce;
  wire leqOp24_in;
  wire n_0_ball_ctrl;
  wire n_23_ball_ctrl;
  wire n_24_ball_ctrl;
  wire n_26_ball_ctrl;
  wire n_34_bounce_ctrl;
  wire n_35_bounce_ctrl;
  wire n_36_bounce_ctrl;
  wire n_39_bounce_ctrl;
  wire no_brick;
  wire ouest_IBUF;
  wire [0:0]out;
  wire own_rot_left;
  wire p_15_in;
  wire [0:0]p_1_out;
  wire pad_center_bounce;
  wire pad_far_left_bounce;
  wire pad_far_right_bounce;
  wire pad_left_bounce;
  wire pad_right_bounce;
  wire [8:0]plusOp10;
  wire [7:0]plusOp12;
  wire [8:0]plusOp14;
  wire [8:0]plusOp16;
  wire [8:0]plusOp8;
  wire pong_left_bounce;
  wire pong_right_bounce;
  wire rightbounce;
  wire ybounce;

ball ball_ctrl
       (.D(D),
        .I1(O1),
        .I2(n_36_bounce_ctrl),
        .I3(ybounce),
        .I39(I39),
        .I4(n_34_bounce_ctrl),
        .I40(I40),
        .I41(I41),
        .I43(I43),
        .I44(I44),
        .I47(I47),
        .I48(I48),
        .I49(I49),
        .I5(n_35_bounce_ctrl),
        .I6(n_39_bounce_ctrl),
        .I7(rightbounce),
        .I8(leftbounce),
        .O1(n_0_ball_ctrl),
        .O2(O8),
        .O27(O27),
        .O28(O28),
        .O29(O29),
        .O3(n_23_ball_ctrl),
        .O30(O30),
        .O31(O31),
        .O32(O32),
        .O33(O33),
        .O34(O34),
        .O35(O35),
        .O4(n_24_ball_ctrl),
        .O5(n_26_ball_ctrl),
        .O7(O7),
        .O9(O9),
        .Q(O6),
        .S2_IBUF(S2_IBUF),
        .barrier_bounce(barrier_bounce),
        .clk25_BUFG(clk25_BUFG),
        .game_lost(game_lost),
        .pad_center_bounce(pad_center_bounce),
        .pad_far_left_bounce(pad_far_left_bounce),
        .pad_far_right_bounce(pad_far_right_bounce),
        .pad_left_bounce(pad_left_bounce),
        .pad_right_bounce(pad_right_bounce),
        .pong_left_bounce(pong_left_bounce),
        .pong_right_bounce(pong_right_bounce));
bounce bounce_ctrl
       (.CO(leqOp24_in),
        .I1(I1),
        .I10(I10),
        .I11(I11),
        .I12(I12),
        .I13(I13),
        .I14(I14),
        .I15(I15),
        .I16(I16),
        .I17(I17),
        .I18(I18),
        .I19(I19),
        .I2(I2),
        .I20(I20),
        .I21(I21),
        .I22(I22),
        .I23(I23),
        .I24(I24),
        .I25(I25),
        .I26(I26),
        .I27(I27),
        .I28(I28),
        .I29(I29),
        .I3(I3),
        .I30(O3),
        .I31(O2),
        .I32(n_24_ball_ctrl),
        .I33(n_23_ball_ctrl),
        .I34(n_26_ball_ctrl),
        .I35(n_0_ball_ctrl),
        .I4(I4),
        .I43(I43),
        .I5(I5),
        .I50(I50),
        .I51(I51),
        .I52(I52),
        .I53(I53),
        .I54(I54),
        .I58(I58),
        .I59(I59),
        .I6(I6),
        .I7(I7),
        .I8(I8),
        .I9(I9),
        .O1(O1),
        .O10(n_39_bounce_ctrl),
        .O2(leftbounce),
        .O23(O23),
        .O24(O24),
        .O25(O25),
        .O26(O26),
        .O3(rightbounce),
        .O4(ybounce),
        .O47(O47),
        .O48(O48),
        .O5(n_34_bounce_ctrl),
        .O6(n_35_bounce_ctrl),
        .O7(O7),
        .O8(n_36_bounce_ctrl),
        .O9(O9),
        .S0_IBUF(S0_IBUF),
        .barrier_bounce(barrier_bounce),
        .\brick_bounce[0] (\brick_bounce[0] ),
        .\brick_bounce[1] (\brick_bounce[1] ),
        .clk25_BUFG(clk25_BUFG),
        .no_brick(no_brick),
        .ouest_IBUF(ouest_IBUF),
        .pad_center_bounce(pad_center_bounce),
        .pad_far_left_bounce(pad_far_left_bounce),
        .pad_far_right_bounce(pad_far_right_bounce),
        .pad_left_bounce(pad_left_bounce),
        .pad_right_bounce(pad_right_bounce),
        .pong_left_bounce(pong_left_bounce),
        .pong_right_bounce(pong_right_bounce));
decor fond_ecran
       (.I47(I47),
        .I55(I55),
        .I56(I56),
        .I60(I60),
        .I67(I67),
        .I68(I68),
        .I69(I69),
        .O(O),
        .O1(O11),
        .O10(O10),
        .O36(O36),
        .O44(O44),
        .p_1_out(p_1_out));
pad pad_ctrl
       (.CO(CO),
        .DI(DI),
        .E(E),
        .I1(O1),
        .I30(I30),
        .I31(I31),
        .I32(I32),
        .I33(I33),
        .I34(I34),
        .I35(I35),
        .I36(I36),
        .I37(I37),
        .I38(I38),
        .I42(I42),
        .I45(I45),
        .I46(I46),
        .I47(I47[7:2]),
        .I48(I48),
        .I57(I57),
        .I61(I61),
        .I62(I62),
        .I63(I63),
        .I64(I64),
        .I65(I65),
        .I66(I66),
        .O1(leqOp24_in),
        .O12(O12),
        .O16(O16),
        .O17(O17),
        .O18(O18),
        .O19(O19),
        .O2(O2),
        .O20(O20),
        .O21(O21),
        .O22(O22),
        .O3(O3),
        .O37(O37),
        .O38(O38),
        .O39(O39),
        .O4(O4),
        .O40(O40),
        .O41(O41),
        .O42(O42),
        .O43(O43),
        .O45(O45),
        .O46(O46),
        .O49(O49),
        .O5(O5),
        .O50(O50),
        .O51(O51),
        .O6(O13),
        .O7(O14),
        .O8(O15),
        .Q(Q),
        .RS232_right(RS232_right),
        .S(S),
        .S3_IBUF(S3_IBUF),
        .clk25_BUFG(clk25_BUFG),
        .out(out),
        .own_rot_left(own_rot_left),
        .p_15_in(p_15_in),
        .plusOp10(plusOp10),
        .plusOp12(plusOp12),
        .plusOp14(plusOp14),
        .plusOp16(plusOp16),
        .plusOp8(plusOp8));
endmodule

module pad
   (CO,
    Q,
    O2,
    O1,
    O3,
    O4,
    O5,
    O12,
    O6,
    O7,
    O8,
    O16,
    plusOp12,
    O17,
    plusOp14,
    O18,
    plusOp10,
    plusOp8,
    O19,
    O20,
    O21,
    O22,
    O37,
    O38,
    O39,
    O40,
    O41,
    O42,
    O43,
    O45,
    O46,
    O49,
    O50,
    plusOp16,
    O51,
    S,
    I30,
    I31,
    DI,
    I32,
    I33,
    I34,
    I35,
    I36,
    I37,
    I38,
    S3_IBUF,
    own_rot_left,
    I42,
    out,
    I1,
    I45,
    RS232_right,
    p_15_in,
    I46,
    I47,
    I48,
    I57,
    E,
    clk25_BUFG,
    I61,
    I62,
    I63,
    I64,
    I65,
    I66);
  output [0:0]CO;
  output [8:0]Q;
  output [0:0]O2;
  output [0:0]O1;
  output [0:0]O3;
  output [0:0]O4;
  output [0:0]O5;
  output O12;
  output [6:0]O6;
  output O7;
  output [6:0]O8;
  output [2:0]O16;
  output [7:0]plusOp12;
  output [2:0]O17;
  output [8:0]plusOp14;
  output [0:0]O18;
  output [8:0]plusOp10;
  output [8:0]plusOp8;
  output [0:0]O19;
  output [1:0]O20;
  output [0:0]O21;
  output [2:0]O22;
  output O37;
  output O38;
  output [1:0]O39;
  output [2:0]O40;
  output [0:0]O41;
  output [2:0]O42;
  output [0:0]O43;
  output O45;
  output O46;
  output [2:0]O49;
  output [0:0]O50;
  output [8:0]plusOp16;
  output [0:0]O51;
  input [0:0]S;
  input [0:0]I30;
  input [0:0]I31;
  input [0:0]DI;
  input [0:0]I32;
  input [0:0]I33;
  input [0:0]I34;
  input [0:0]I35;
  input [0:0]I36;
  input [0:0]I37;
  input [0:0]I38;
  input S3_IBUF;
  input own_rot_left;
  input I42;
  input [0:0]out;
  input I1;
  input [1:0]I45;
  input RS232_right;
  input p_15_in;
  input I46;
  input [5:0]I47;
  input [9:0]I48;
  input I57;
  input [0:0]E;
  input clk25_BUFG;
  input [0:0]I61;
  input [0:0]I62;
  input [3:0]I63;
  input [3:0]I64;
  input [3:0]I65;
  input [1:0]I66;

  wire [0:0]CO;
  wire [0:0]DI;
  wire [0:0]E;
  wire I1;
  wire [0:0]I30;
  wire [0:0]I31;
  wire [0:0]I32;
  wire [0:0]I33;
  wire [0:0]I34;
  wire [0:0]I35;
  wire [0:0]I36;
  wire [0:0]I37;
  wire [0:0]I38;
  wire I42;
  wire [1:0]I45;
  wire I46;
  wire [5:0]I47;
  wire [9:0]I48;
  wire I57;
  wire [0:0]I61;
  wire [0:0]I62;
  wire [3:0]I63;
  wire [3:0]I64;
  wire [3:0]I65;
  wire [1:0]I66;
  wire [0:0]O1;
  wire O12;
  wire [2:0]O16;
  wire [2:0]O17;
  wire [0:0]O18;
  wire [0:0]O19;
  wire [0:0]O2;
  wire [1:0]O20;
  wire [0:0]O21;
  wire [2:0]O22;
  wire [0:0]O3;
  wire O37;
  wire O38;
  wire [1:0]O39;
  wire [0:0]O4;
  wire [2:0]O40;
  wire [0:0]O41;
  wire [2:0]O42;
  wire [0:0]O43;
  wire O45;
  wire O46;
  wire [2:0]O49;
  wire [0:0]O5;
  wire [0:0]O50;
  wire [0:0]O51;
  wire [6:0]O6;
  wire O7;
  wire [6:0]O8;
  wire [8:0]Q;
  wire RS232_right;
  wire [0:0]S;
  wire S3_IBUF;
  wire clk25_BUFG;
  wire ltOp;
  wire n_0_VGA_blue_OBUF_inst_i_32;
  wire n_0_VGA_blue_OBUF_inst_i_33;
  wire n_0_VGA_blue_OBUF_inst_i_35;
  wire n_0_VGA_blue_OBUF_inst_i_36;
  wire n_0_VGA_blue_OBUF_inst_i_37;
  wire n_0_VGA_blue_OBUF_inst_i_40;
  wire n_0_VGA_blue_OBUF_inst_i_41;
  wire n_0_VGA_blue_OBUF_inst_i_42;
  wire n_0_VGA_red_OBUF_inst_i_17;
  wire n_0_VGA_red_OBUF_inst_i_32;
  wire n_0_VGA_red_OBUF_inst_i_34;
  wire n_0_VGA_red_OBUF_inst_i_40;
  wire n_0_VGA_red_OBUF_inst_i_45;
  wire n_0_VGA_red_OBUF_inst_i_46;
  wire n_0_VGA_red_OBUF_inst_i_47;
  wire n_0_VGA_red_OBUF_inst_i_48;
  wire n_0_VGA_red_OBUF_inst_i_49;
  wire n_0_VGA_red_OBUF_inst_i_50;
  wire n_0_VGA_red_OBUF_inst_i_55;
  wire n_0_VGA_red_OBUF_inst_i_56;
  wire n_0_VGA_red_OBUF_inst_i_57;
  wire n_0_VGA_red_OBUF_inst_i_58;
  wire n_0_VGA_red_OBUF_inst_i_59;
  wire n_0_VGA_red_OBUF_inst_i_60;
  wire n_0_VGA_red_OBUF_inst_i_61;
  wire n_0_VGA_red_OBUF_inst_i_62;
  wire n_0_VGA_red_OBUF_inst_i_63;
  wire n_0_VGA_red_OBUF_inst_i_64;
  wire n_0_VGA_red_OBUF_inst_i_65;
  wire n_0_VGA_red_OBUF_inst_i_66;
  wire n_0_VGA_red_OBUF_inst_i_67;
  wire n_0_VGA_red_OBUF_inst_i_68;
  wire n_0_pad_center_bounce_i_11;
  wire n_0_pad_center_bounce_i_12;
  wire n_0_pad_center_bounce_i_13;
  wire n_0_pad_center_bounce_i_15;
  wire n_0_pad_center_bounce_i_16;
  wire n_0_pad_center_bounce_i_17;
  wire n_0_pad_center_bounce_i_29;
  wire n_0_pad_center_bounce_i_30;
  wire n_0_pad_center_bounce_i_31;
  wire n_0_pad_center_bounce_i_32;
  wire n_0_pad_center_bounce_i_33;
  wire n_0_pad_center_bounce_i_34;
  wire n_0_pad_center_bounce_i_35;
  wire n_0_pad_center_bounce_i_36;
  wire n_0_pad_center_bounce_i_6;
  wire n_0_pad_center_bounce_i_7;
  wire n_0_pad_center_bounce_reg_i_28;
  wire n_0_pad_center_bounce_reg_i_5;
  wire n_0_pad_far_left_bounce_i_11;
  wire n_0_pad_far_left_bounce_i_12;
  wire n_0_pad_far_left_bounce_i_21;
  wire n_0_pad_far_left_bounce_i_22;
  wire n_0_pad_far_left_bounce_i_23;
  wire n_0_pad_far_left_bounce_i_25;
  wire n_0_pad_far_left_bounce_i_26;
  wire n_0_pad_far_left_bounce_i_27;
  wire n_0_pad_far_left_bounce_i_32;
  wire n_0_pad_far_left_bounce_i_33;
  wire n_0_pad_far_left_bounce_i_34;
  wire n_0_pad_far_left_bounce_i_35;
  wire n_0_pad_far_left_bounce_i_36;
  wire n_0_pad_far_left_bounce_i_37;
  wire n_0_pad_far_left_bounce_i_38;
  wire n_0_pad_far_left_bounce_i_39;
  wire n_0_pad_far_left_bounce_i_40;
  wire n_0_pad_far_left_bounce_i_41;
  wire n_0_pad_far_left_bounce_reg_i_10;
  wire n_0_pad_far_left_bounce_reg_i_29;
  wire n_0_pad_far_left_bounce_reg_i_31;
  wire n_0_pad_left_bounce_i_10;
  wire n_0_pad_left_bounce_i_11;
  wire n_0_pad_left_bounce_i_20;
  wire n_0_pad_left_bounce_i_21;
  wire n_0_pad_left_bounce_i_22;
  wire n_0_pad_left_bounce_i_24;
  wire n_0_pad_left_bounce_i_25;
  wire n_0_pad_left_bounce_i_26;
  wire n_0_pad_left_bounce_i_31;
  wire n_0_pad_left_bounce_i_32;
  wire n_0_pad_left_bounce_i_33;
  wire n_0_pad_left_bounce_i_34;
  wire n_0_pad_left_bounce_i_35;
  wire n_0_pad_left_bounce_i_36;
  wire n_0_pad_left_bounce_i_37;
  wire n_0_pad_left_bounce_i_38;
  wire n_0_pad_left_bounce_i_39;
  wire n_0_pad_left_bounce_reg_i_28;
  wire n_0_pad_left_bounce_reg_i_30;
  wire n_0_pad_left_bounce_reg_i_9;
  wire n_0_pong_left_bounce_i_10;
  wire n_0_pong_left_bounce_i_20;
  wire n_0_pong_left_bounce_i_21;
  wire n_0_pong_left_bounce_i_22;
  wire n_0_pong_left_bounce_i_23;
  wire n_0_pong_left_bounce_i_24;
  wire n_0_pong_left_bounce_i_25;
  wire n_0_pong_left_bounce_i_28;
  wire n_0_pong_left_bounce_i_30;
  wire n_0_pong_left_bounce_i_31;
  wire n_0_pong_left_bounce_reg_i_9;
  wire \n_0_xpad[8]_i_2 ;
  wire \n_0_xpad[8]_i_3 ;
  wire \n_0_xpad[8]_i_4 ;
  wire \n_0_xpad[8]_i_5 ;
  wire \n_0_xpad[9]_i_10 ;
  wire \n_0_xpad[9]_i_11 ;
  wire \n_0_xpad[9]_i_12 ;
  wire \n_0_xpad[9]_i_13 ;
  wire \n_0_xpad[9]_i_14 ;
  wire \n_0_xpad[9]_i_15 ;
  wire \n_0_xpad[9]_i_4 ;
  wire \n_0_xpad[9]_i_5 ;
  wire \n_0_xpad[9]_i_9 ;
  wire \n_0_xpad_reg[8]_i_1 ;
  wire \n_0_ypong_left[8]_i_10 ;
  wire \n_0_ypong_left[8]_i_11 ;
  wire \n_0_ypong_left[8]_i_12 ;
  wire \n_0_ypong_left[8]_i_13 ;
  wire \n_0_ypong_left[8]_i_14 ;
  wire \n_0_ypong_left[8]_i_15 ;
  wire \n_0_ypong_left[8]_i_16 ;
  wire \n_0_ypong_left[8]_i_8 ;
  wire \n_0_ypong_left[8]_i_9 ;
  wire \n_0_ypong_left_reg[8]_i_7 ;
  wire \n_0_ypong_right[8]_i_10 ;
  wire \n_0_ypong_right[8]_i_11 ;
  wire \n_0_ypong_right[8]_i_12 ;
  wire \n_0_ypong_right[8]_i_13 ;
  wire \n_0_ypong_right[8]_i_14 ;
  wire \n_0_ypong_right[8]_i_15 ;
  wire \n_0_ypong_right[8]_i_7 ;
  wire \n_0_ypong_right[8]_i_8 ;
  wire \n_0_ypong_right[8]_i_9 ;
  wire n_1_VGA_blue_OBUF_inst_i_20;
  wire n_1_VGA_red_OBUF_inst_i_17;
  wire n_1_VGA_red_OBUF_inst_i_32;
  wire n_1_VGA_red_OBUF_inst_i_34;
  wire n_1_VGA_red_OBUF_inst_i_40;
  wire n_1_VGA_red_OBUF_inst_i_45;
  wire n_1_VGA_red_OBUF_inst_i_55;
  wire n_1_pad_center_bounce_reg_i_19;
  wire n_1_pad_center_bounce_reg_i_28;
  wire n_1_pad_center_bounce_reg_i_5;
  wire n_1_pad_far_left_bounce_reg_i_10;
  wire n_1_pad_far_left_bounce_reg_i_29;
  wire n_1_pad_far_left_bounce_reg_i_31;
  wire n_1_pad_left_bounce_reg_i_28;
  wire n_1_pad_left_bounce_reg_i_30;
  wire n_1_pad_left_bounce_reg_i_9;
  wire n_1_pong_left_bounce_reg_i_9;
  wire \n_1_xpad_reg[8]_i_1 ;
  wire \n_1_xpad_reg[9]_i_7 ;
  wire \n_1_ypong_left_reg[8]_i_7 ;
  wire \n_1_ypong_right_reg[8]_i_6 ;
  wire n_2_VGA_blue_OBUF_inst_i_20;
  wire n_2_VGA_red_OBUF_inst_i_17;
  wire n_2_VGA_red_OBUF_inst_i_32;
  wire n_2_VGA_red_OBUF_inst_i_34;
  wire n_2_VGA_red_OBUF_inst_i_40;
  wire n_2_VGA_red_OBUF_inst_i_45;
  wire n_2_VGA_red_OBUF_inst_i_55;
  wire n_2_VGA_red_OBUF_inst_i_9;
  wire n_2_pad_center_bounce_reg_i_19;
  wire n_2_pad_center_bounce_reg_i_28;
  wire n_2_pad_center_bounce_reg_i_5;
  wire n_2_pad_far_left_bounce_reg_i_10;
  wire n_2_pad_far_left_bounce_reg_i_29;
  wire n_2_pad_far_left_bounce_reg_i_31;
  wire n_2_pad_left_bounce_reg_i_28;
  wire n_2_pad_left_bounce_reg_i_30;
  wire n_2_pad_left_bounce_reg_i_9;
  wire n_2_pong_left_bounce_reg_i_9;
  wire \n_2_xpad_reg[8]_i_1 ;
  wire \n_2_xpad_reg[9]_i_7 ;
  wire \n_2_ypong_left_reg[8]_i_7 ;
  wire \n_2_ypong_right_reg[8]_i_6 ;
  wire n_3_VGA_blue_OBUF_inst_i_20;
  wire n_3_VGA_red_OBUF_inst_i_17;
  wire n_3_VGA_red_OBUF_inst_i_32;
  wire n_3_VGA_red_OBUF_inst_i_34;
  wire n_3_VGA_red_OBUF_inst_i_40;
  wire n_3_VGA_red_OBUF_inst_i_45;
  wire n_3_VGA_red_OBUF_inst_i_55;
  wire n_3_VGA_red_OBUF_inst_i_9;
  wire n_3_pad_center_bounce_reg_i_19;
  wire n_3_pad_center_bounce_reg_i_28;
  wire n_3_pad_center_bounce_reg_i_5;
  wire n_3_pad_far_left_bounce_reg_i_10;
  wire n_3_pad_far_left_bounce_reg_i_29;
  wire n_3_pad_far_left_bounce_reg_i_31;
  wire n_3_pad_left_bounce_reg_i_28;
  wire n_3_pad_left_bounce_reg_i_30;
  wire n_3_pad_left_bounce_reg_i_9;
  wire n_3_pong_left_bounce_reg_i_9;
  wire \n_3_xpad_reg[8]_i_1 ;
  wire \n_3_xpad_reg[9]_i_7 ;
  wire \n_3_ypong_left_reg[8]_i_7 ;
  wire \n_3_ypong_right_reg[8]_i_6 ;
  wire \n_4_xpad_reg[8]_i_1 ;
  wire \n_5_xpad_reg[8]_i_1 ;
  wire \n_6_xpad_reg[8]_i_1 ;
  wire \n_7_xpad_reg[8]_i_1 ;
  wire \n_7_xpad_reg[9]_i_2 ;
  wire [0:0]out;
  wire own_rot_left;
  wire p_15_in;
  wire [8:0]plusOp10;
  wire [7:0]plusOp12;
  wire [8:0]plusOp14;
  wire [8:0]plusOp16;
  wire [8:0]plusOp8;
  wire [8:2]ypong_left0_in;
  wire [8:2]ypong_right0_in;
  wire [3:0]NLW_VGA_blue_OBUF_inst_i_20_O_UNCONNECTED;
  wire [3:0]NLW_VGA_red_OBUF_inst_i_17_O_UNCONNECTED;
  wire [3:0]NLW_VGA_red_OBUF_inst_i_33_CO_UNCONNECTED;
  wire [3:1]NLW_VGA_red_OBUF_inst_i_33_O_UNCONNECTED;
  wire [3:0]NLW_VGA_red_OBUF_inst_i_34_O_UNCONNECTED;
  wire [3:0]NLW_VGA_red_OBUF_inst_i_39_CO_UNCONNECTED;
  wire [3:1]NLW_VGA_red_OBUF_inst_i_39_O_UNCONNECTED;
  wire [3:2]NLW_VGA_red_OBUF_inst_i_9_CO_UNCONNECTED;
  wire [3:0]NLW_VGA_red_OBUF_inst_i_9_O_UNCONNECTED;
  wire [3:3]NLW_pad_center_bounce_reg_i_19_CO_UNCONNECTED;
  wire [3:1]NLW_pad_center_bounce_reg_i_3_CO_UNCONNECTED;
  wire [3:0]NLW_pad_center_bounce_reg_i_3_O_UNCONNECTED;
  wire [3:0]NLW_pad_center_bounce_reg_i_5_O_UNCONNECTED;
  wire [3:0]NLW_pad_far_left_bounce_reg_i_10_O_UNCONNECTED;
  wire [3:0]NLW_pad_far_left_bounce_reg_i_30_CO_UNCONNECTED;
  wire [3:1]NLW_pad_far_left_bounce_reg_i_30_O_UNCONNECTED;
  wire [3:1]NLW_pad_far_left_bounce_reg_i_4_CO_UNCONNECTED;
  wire [3:0]NLW_pad_far_left_bounce_reg_i_4_O_UNCONNECTED;
  wire [3:0]NLW_pad_left_bounce_reg_i_29_CO_UNCONNECTED;
  wire [3:1]NLW_pad_left_bounce_reg_i_29_O_UNCONNECTED;
  wire [3:1]NLW_pad_left_bounce_reg_i_5_CO_UNCONNECTED;
  wire [3:0]NLW_pad_left_bounce_reg_i_5_O_UNCONNECTED;
  wire [3:0]NLW_pad_left_bounce_reg_i_9_O_UNCONNECTED;
  wire [3:1]NLW_pong_left_bounce_reg_i_5_CO_UNCONNECTED;
  wire [3:0]NLW_pong_left_bounce_reg_i_5_O_UNCONNECTED;
  wire [3:0]NLW_pong_left_bounce_reg_i_9_O_UNCONNECTED;
  wire [3:0]\NLW_xpad_reg[9]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_xpad_reg[9]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_xpad_reg[9]_i_7_O_UNCONNECTED ;
  wire [3:0]\NLW_ypong_left_reg[8]_i_7_O_UNCONNECTED ;
  wire [3:0]\NLW_ypong_right_reg[8]_i_6_O_UNCONNECTED ;

CARRY4 VGA_blue_OBUF_inst_i_20
       (.CI(1'b0),
        .CO({O5,n_1_VGA_blue_OBUF_inst_i_20,n_2_VGA_blue_OBUF_inst_i_20,n_3_VGA_blue_OBUF_inst_i_20}),
        .CYINIT(1'b1),
        .DI({n_0_VGA_blue_OBUF_inst_i_32,n_0_VGA_blue_OBUF_inst_i_33,I37,1'b0}),
        .O(NLW_VGA_blue_OBUF_inst_i_20_O_UNCONNECTED[3:0]),
        .S({n_0_VGA_blue_OBUF_inst_i_35,n_0_VGA_blue_OBUF_inst_i_36,n_0_VGA_blue_OBUF_inst_i_37,I38}));
LUT4 #(
    .INIT(16'h9009)) 
     VGA_blue_OBUF_inst_i_28
       (.I0(O8[5]),
        .I1(I47[5]),
        .I2(O8[4]),
        .I3(I47[4]),
        .O(O22[2]));
LUT4 #(
    .INIT(16'h9009)) 
     VGA_blue_OBUF_inst_i_29
       (.I0(O8[3]),
        .I1(I47[3]),
        .I2(O8[2]),
        .I3(I47[2]),
        .O(O22[1]));
LUT4 #(
    .INIT(16'h9009)) 
     VGA_blue_OBUF_inst_i_30
       (.I0(O8[1]),
        .I1(I47[1]),
        .I2(O8[0]),
        .I3(I47[0]),
        .O(O22[0]));
LUT6 #(
    .INIT(64'h044551101CC77551)) 
     VGA_blue_OBUF_inst_i_32
       (.I0(I47[5]),
        .I1(n_0_VGA_blue_OBUF_inst_i_40),
        .I2(O8[4]),
        .I3(S3_IBUF),
        .I4(O8[5]),
        .I5(I47[4]),
        .O(n_0_VGA_blue_OBUF_inst_i_32));
LUT6 #(
    .INIT(64'h4500FFDF00104530)) 
     VGA_blue_OBUF_inst_i_33
       (.I0(I47[2]),
        .I1(O8[1]),
        .I2(n_0_VGA_blue_OBUF_inst_i_41),
        .I3(O8[2]),
        .I4(I47[3]),
        .I5(O8[3]),
        .O(n_0_VGA_blue_OBUF_inst_i_33));
LUT6 #(
    .INIT(64'h0990600960090660)) 
     VGA_blue_OBUF_inst_i_35
       (.I0(O8[5]),
        .I1(I47[5]),
        .I2(O8[4]),
        .I3(S3_IBUF),
        .I4(n_0_VGA_blue_OBUF_inst_i_40),
        .I5(I47[4]),
        .O(n_0_VGA_blue_OBUF_inst_i_35));
LUT6 #(
    .INIT(64'h9090069009099009)) 
     VGA_blue_OBUF_inst_i_36
       (.I0(O8[3]),
        .I1(I47[3]),
        .I2(O8[2]),
        .I3(n_0_VGA_blue_OBUF_inst_i_41),
        .I4(O8[1]),
        .I5(I47[2]),
        .O(n_0_VGA_blue_OBUF_inst_i_36));
LUT5 #(
    .INIT(32'h60060960)) 
     VGA_blue_OBUF_inst_i_37
       (.I0(O8[1]),
        .I1(I47[1]),
        .I2(S3_IBUF),
        .I3(O8[0]),
        .I4(I47[0]),
        .O(n_0_VGA_blue_OBUF_inst_i_37));
LUT5 #(
    .INIT(32'h1711FFFF)) 
     VGA_blue_OBUF_inst_i_39
       (.I0(S3_IBUF),
        .I1(O8[4]),
        .I2(O8[3]),
        .I3(n_0_VGA_blue_OBUF_inst_i_42),
        .I4(O8[5]),
        .O(O46));
(* SOFT_HLUTNM = "soft_lutpair102" *) 
   LUT5 #(
    .INIT(32'h00001011)) 
     VGA_blue_OBUF_inst_i_40
       (.I0(O8[1]),
        .I1(O8[2]),
        .I2(S3_IBUF),
        .I3(O8[0]),
        .I4(O8[3]),
        .O(n_0_VGA_blue_OBUF_inst_i_40));
(* SOFT_HLUTNM = "soft_lutpair105" *) 
   LUT2 #(
    .INIT(4'hB)) 
     VGA_blue_OBUF_inst_i_41
       (.I0(S3_IBUF),
        .I1(O8[0]),
        .O(n_0_VGA_blue_OBUF_inst_i_41));
(* SOFT_HLUTNM = "soft_lutpair102" *) 
   LUT4 #(
    .INIT(16'h000D)) 
     VGA_blue_OBUF_inst_i_42
       (.I0(O8[0]),
        .I1(S3_IBUF),
        .I2(O8[2]),
        .I3(O8[1]),
        .O(n_0_VGA_blue_OBUF_inst_i_42));
CARRY4 VGA_red_OBUF_inst_i_17
       (.CI(n_0_VGA_red_OBUF_inst_i_34),
        .CO({n_0_VGA_red_OBUF_inst_i_17,n_1_VGA_red_OBUF_inst_i_17,n_2_VGA_red_OBUF_inst_i_17,n_3_VGA_red_OBUF_inst_i_17}),
        .CYINIT(1'b0),
        .DI(I48[7:4]),
        .O(NLW_VGA_red_OBUF_inst_i_17_O_UNCONNECTED[3:0]),
        .S(I65));
CARRY4 VGA_red_OBUF_inst_i_32
       (.CI(n_0_VGA_red_OBUF_inst_i_45),
        .CO({n_0_VGA_red_OBUF_inst_i_32,n_1_VGA_red_OBUF_inst_i_32,n_2_VGA_red_OBUF_inst_i_32,n_3_VGA_red_OBUF_inst_i_32}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Q[5:4]}),
        .O(plusOp14[7:4]),
        .S({n_0_VGA_red_OBUF_inst_i_46,n_0_VGA_red_OBUF_inst_i_47,n_0_VGA_red_OBUF_inst_i_48,n_0_VGA_red_OBUF_inst_i_49}));
CARRY4 VGA_red_OBUF_inst_i_33
       (.CI(n_0_VGA_red_OBUF_inst_i_32),
        .CO(NLW_VGA_red_OBUF_inst_i_33_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_VGA_red_OBUF_inst_i_33_O_UNCONNECTED[3:1],plusOp14[8]}),
        .S({1'b0,1'b0,1'b0,n_0_VGA_red_OBUF_inst_i_50}));
CARRY4 VGA_red_OBUF_inst_i_34
       (.CI(1'b0),
        .CO({n_0_VGA_red_OBUF_inst_i_34,n_1_VGA_red_OBUF_inst_i_34,n_2_VGA_red_OBUF_inst_i_34,n_3_VGA_red_OBUF_inst_i_34}),
        .CYINIT(1'b1),
        .DI(I48[3:0]),
        .O(NLW_VGA_red_OBUF_inst_i_34_O_UNCONNECTED[3:0]),
        .S(I64));
CARRY4 VGA_red_OBUF_inst_i_39
       (.CI(n_0_VGA_red_OBUF_inst_i_40),
        .CO(NLW_VGA_red_OBUF_inst_i_39_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_VGA_red_OBUF_inst_i_39_O_UNCONNECTED[3:1],plusOp16[8]}),
        .S({1'b0,1'b0,1'b0,n_0_VGA_red_OBUF_inst_i_56}));
CARRY4 VGA_red_OBUF_inst_i_40
       (.CI(n_0_VGA_red_OBUF_inst_i_55),
        .CO({n_0_VGA_red_OBUF_inst_i_40,n_1_VGA_red_OBUF_inst_i_40,n_2_VGA_red_OBUF_inst_i_40,n_3_VGA_red_OBUF_inst_i_40}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Q[5:4]}),
        .O(plusOp16[7:4]),
        .S({n_0_VGA_red_OBUF_inst_i_57,n_0_VGA_red_OBUF_inst_i_58,n_0_VGA_red_OBUF_inst_i_59,n_0_VGA_red_OBUF_inst_i_60}));
CARRY4 VGA_red_OBUF_inst_i_45
       (.CI(1'b0),
        .CO({n_0_VGA_red_OBUF_inst_i_45,n_1_VGA_red_OBUF_inst_i_45,n_2_VGA_red_OBUF_inst_i_45,n_3_VGA_red_OBUF_inst_i_45}),
        .CYINIT(n_0_pad_far_left_bounce_i_37),
        .DI(Q[3:0]),
        .O(plusOp14[3:0]),
        .S({n_0_VGA_red_OBUF_inst_i_61,n_0_VGA_red_OBUF_inst_i_62,n_0_VGA_red_OBUF_inst_i_63,n_0_VGA_red_OBUF_inst_i_64}));
LUT1 #(
    .INIT(2'h2)) 
     VGA_red_OBUF_inst_i_46
       (.I0(Q[7]),
        .O(n_0_VGA_red_OBUF_inst_i_46));
LUT1 #(
    .INIT(2'h2)) 
     VGA_red_OBUF_inst_i_47
       (.I0(Q[6]),
        .O(n_0_VGA_red_OBUF_inst_i_47));
LUT2 #(
    .INIT(4'h6)) 
     VGA_red_OBUF_inst_i_48
       (.I0(Q[5]),
        .I1(S3_IBUF),
        .O(n_0_VGA_red_OBUF_inst_i_48));
LUT1 #(
    .INIT(2'h1)) 
     VGA_red_OBUF_inst_i_49
       (.I0(Q[4]),
        .O(n_0_VGA_red_OBUF_inst_i_49));
LUT1 #(
    .INIT(2'h2)) 
     VGA_red_OBUF_inst_i_50
       (.I0(Q[8]),
        .O(n_0_VGA_red_OBUF_inst_i_50));
CARRY4 VGA_red_OBUF_inst_i_55
       (.CI(1'b0),
        .CO({n_0_VGA_red_OBUF_inst_i_55,n_1_VGA_red_OBUF_inst_i_55,n_2_VGA_red_OBUF_inst_i_55,n_3_VGA_red_OBUF_inst_i_55}),
        .CYINIT(1'b0),
        .DI({Q[3:1],1'b0}),
        .O(plusOp16[3:0]),
        .S({n_0_VGA_red_OBUF_inst_i_65,n_0_VGA_red_OBUF_inst_i_66,n_0_VGA_red_OBUF_inst_i_67,n_0_VGA_red_OBUF_inst_i_68}));
LUT1 #(
    .INIT(2'h2)) 
     VGA_red_OBUF_inst_i_56
       (.I0(Q[8]),
        .O(n_0_VGA_red_OBUF_inst_i_56));
LUT1 #(
    .INIT(2'h2)) 
     VGA_red_OBUF_inst_i_57
       (.I0(Q[7]),
        .O(n_0_VGA_red_OBUF_inst_i_57));
LUT1 #(
    .INIT(2'h2)) 
     VGA_red_OBUF_inst_i_58
       (.I0(Q[6]),
        .O(n_0_VGA_red_OBUF_inst_i_58));
LUT2 #(
    .INIT(4'h6)) 
     VGA_red_OBUF_inst_i_59
       (.I0(Q[5]),
        .I1(S3_IBUF),
        .O(n_0_VGA_red_OBUF_inst_i_59));
LUT1 #(
    .INIT(2'h1)) 
     VGA_red_OBUF_inst_i_60
       (.I0(Q[4]),
        .O(n_0_VGA_red_OBUF_inst_i_60));
LUT2 #(
    .INIT(4'h9)) 
     VGA_red_OBUF_inst_i_61
       (.I0(Q[3]),
        .I1(S3_IBUF),
        .O(n_0_VGA_red_OBUF_inst_i_61));
LUT2 #(
    .INIT(4'h6)) 
     VGA_red_OBUF_inst_i_62
       (.I0(Q[2]),
        .I1(S3_IBUF),
        .O(n_0_VGA_red_OBUF_inst_i_62));
LUT1 #(
    .INIT(2'h1)) 
     VGA_red_OBUF_inst_i_63
       (.I0(Q[1]),
        .O(n_0_VGA_red_OBUF_inst_i_63));
LUT1 #(
    .INIT(2'h1)) 
     VGA_red_OBUF_inst_i_64
       (.I0(Q[0]),
        .O(n_0_VGA_red_OBUF_inst_i_64));
LUT1 #(
    .INIT(2'h1)) 
     VGA_red_OBUF_inst_i_65
       (.I0(Q[3]),
        .O(n_0_VGA_red_OBUF_inst_i_65));
LUT1 #(
    .INIT(2'h1)) 
     VGA_red_OBUF_inst_i_66
       (.I0(Q[2]),
        .O(n_0_VGA_red_OBUF_inst_i_66));
LUT2 #(
    .INIT(4'h9)) 
     VGA_red_OBUF_inst_i_67
       (.I0(Q[1]),
        .I1(S3_IBUF),
        .O(n_0_VGA_red_OBUF_inst_i_67));
LUT1 #(
    .INIT(2'h2)) 
     VGA_red_OBUF_inst_i_68
       (.I0(Q[0]),
        .O(n_0_VGA_red_OBUF_inst_i_68));
CARRY4 VGA_red_OBUF_inst_i_9
       (.CI(n_0_VGA_red_OBUF_inst_i_17),
        .CO({NLW_VGA_red_OBUF_inst_i_9_CO_UNCONNECTED[3:2],n_2_VGA_red_OBUF_inst_i_9,n_3_VGA_red_OBUF_inst_i_9}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,I48[9:8]}),
        .O({NLW_VGA_red_OBUF_inst_i_9_O_UNCONNECTED[3],O51,NLW_VGA_red_OBUF_inst_i_9_O_UNCONNECTED[1:0]}),
        .S({1'b0,1'b1,I66}));
LUT4 #(
    .INIT(16'h9009)) 
     pad_center_bounce_i_10
       (.I0(plusOp10[7]),
        .I1(I48[8]),
        .I2(I48[9]),
        .I3(plusOp10[8]),
        .O(O41));
LUT4 #(
    .INIT(16'h2F02)) 
     pad_center_bounce_i_11
       (.I0(plusOp12[4]),
        .I1(I48[6]),
        .I2(I48[7]),
        .I3(plusOp12[5]),
        .O(n_0_pad_center_bounce_i_11));
LUT4 #(
    .INIT(16'h2F02)) 
     pad_center_bounce_i_12
       (.I0(plusOp12[2]),
        .I1(I48[4]),
        .I2(I48[5]),
        .I3(plusOp12[3]),
        .O(n_0_pad_center_bounce_i_12));
LUT4 #(
    .INIT(16'h2F02)) 
     pad_center_bounce_i_13
       (.I0(plusOp12[0]),
        .I1(I48[2]),
        .I2(I48[3]),
        .I3(plusOp12[1]),
        .O(n_0_pad_center_bounce_i_13));
LUT4 #(
    .INIT(16'h9009)) 
     pad_center_bounce_i_15
       (.I0(plusOp12[4]),
        .I1(I48[6]),
        .I2(I48[7]),
        .I3(plusOp12[5]),
        .O(n_0_pad_center_bounce_i_15));
LUT4 #(
    .INIT(16'h9009)) 
     pad_center_bounce_i_16
       (.I0(plusOp12[2]),
        .I1(I48[4]),
        .I2(I48[5]),
        .I3(plusOp12[3]),
        .O(n_0_pad_center_bounce_i_16));
LUT4 #(
    .INIT(16'h9009)) 
     pad_center_bounce_i_17
       (.I0(plusOp12[0]),
        .I1(I48[2]),
        .I2(I48[3]),
        .I3(plusOp12[1]),
        .O(n_0_pad_center_bounce_i_17));
LUT4 #(
    .INIT(16'h9009)) 
     pad_center_bounce_i_24
       (.I0(plusOp10[5]),
        .I1(I48[6]),
        .I2(I48[7]),
        .I3(plusOp10[6]),
        .O(O40[2]));
LUT4 #(
    .INIT(16'h9009)) 
     pad_center_bounce_i_25
       (.I0(plusOp10[3]),
        .I1(I48[4]),
        .I2(I48[5]),
        .I3(plusOp10[4]),
        .O(O40[1]));
LUT4 #(
    .INIT(16'h9009)) 
     pad_center_bounce_i_26
       (.I0(plusOp10[1]),
        .I1(I48[2]),
        .I2(I48[3]),
        .I3(plusOp10[2]),
        .O(O40[0]));
LUT1 #(
    .INIT(2'h2)) 
     pad_center_bounce_i_29
       (.I0(Q[8]),
        .O(n_0_pad_center_bounce_i_29));
LUT1 #(
    .INIT(2'h2)) 
     pad_center_bounce_i_30
       (.I0(Q[7]),
        .O(n_0_pad_center_bounce_i_30));
LUT1 #(
    .INIT(2'h2)) 
     pad_center_bounce_i_31
       (.I0(Q[6]),
        .O(n_0_pad_center_bounce_i_31));
LUT2 #(
    .INIT(4'h6)) 
     pad_center_bounce_i_32
       (.I0(Q[5]),
        .I1(S3_IBUF),
        .O(n_0_pad_center_bounce_i_32));
LUT2 #(
    .INIT(4'h9)) 
     pad_center_bounce_i_33
       (.I0(S3_IBUF),
        .I1(Q[4]),
        .O(n_0_pad_center_bounce_i_33));
LUT2 #(
    .INIT(4'h6)) 
     pad_center_bounce_i_34
       (.I0(Q[3]),
        .I1(S3_IBUF),
        .O(n_0_pad_center_bounce_i_34));
LUT2 #(
    .INIT(4'h9)) 
     pad_center_bounce_i_35
       (.I0(S3_IBUF),
        .I1(Q[2]),
        .O(n_0_pad_center_bounce_i_35));
LUT1 #(
    .INIT(2'h2)) 
     pad_center_bounce_i_36
       (.I0(Q[1]),
        .O(n_0_pad_center_bounce_i_36));
LUT4 #(
    .INIT(16'h2F02)) 
     pad_center_bounce_i_6
       (.I0(plusOp12[6]),
        .I1(I48[8]),
        .I2(I48[9]),
        .I3(plusOp12[7]),
        .O(n_0_pad_center_bounce_i_6));
LUT4 #(
    .INIT(16'h9009)) 
     pad_center_bounce_i_7
       (.I0(plusOp12[6]),
        .I1(I48[8]),
        .I2(I48[9]),
        .I3(plusOp12[7]),
        .O(n_0_pad_center_bounce_i_7));
CARRY4 pad_center_bounce_reg_i_19
       (.CI(n_0_pad_center_bounce_reg_i_28),
        .CO({NLW_pad_center_bounce_reg_i_19_CO_UNCONNECTED[3],n_1_pad_center_bounce_reg_i_19,n_2_pad_center_bounce_reg_i_19,n_3_pad_center_bounce_reg_i_19}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[5]}),
        .O(plusOp12[7:4]),
        .S({n_0_pad_center_bounce_i_29,n_0_pad_center_bounce_i_30,n_0_pad_center_bounce_i_31,n_0_pad_center_bounce_i_32}));
CARRY4 pad_center_bounce_reg_i_28
       (.CI(1'b0),
        .CO({n_0_pad_center_bounce_reg_i_28,n_1_pad_center_bounce_reg_i_28,n_2_pad_center_bounce_reg_i_28,n_3_pad_center_bounce_reg_i_28}),
        .CYINIT(1'b0),
        .DI({Q[4:2],1'b0}),
        .O(plusOp12[3:0]),
        .S({n_0_pad_center_bounce_i_33,n_0_pad_center_bounce_i_34,n_0_pad_center_bounce_i_35,n_0_pad_center_bounce_i_36}));
CARRY4 pad_center_bounce_reg_i_3
       (.CI(n_0_pad_center_bounce_reg_i_5),
        .CO({NLW_pad_center_bounce_reg_i_3_CO_UNCONNECTED[3:1],O2}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,n_0_pad_center_bounce_i_6}),
        .O(NLW_pad_center_bounce_reg_i_3_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,n_0_pad_center_bounce_i_7}));
CARRY4 pad_center_bounce_reg_i_5
       (.CI(1'b0),
        .CO({n_0_pad_center_bounce_reg_i_5,n_1_pad_center_bounce_reg_i_5,n_2_pad_center_bounce_reg_i_5,n_3_pad_center_bounce_reg_i_5}),
        .CYINIT(1'b1),
        .DI({n_0_pad_center_bounce_i_11,n_0_pad_center_bounce_i_12,n_0_pad_center_bounce_i_13,DI}),
        .O(NLW_pad_center_bounce_reg_i_5_O_UNCONNECTED[3:0]),
        .S({n_0_pad_center_bounce_i_15,n_0_pad_center_bounce_i_16,n_0_pad_center_bounce_i_17,I32}));
LUT4 #(
    .INIT(16'h2F02)) 
     pad_far_left_bounce_i_11
       (.I0(plusOp8[7]),
        .I1(I48[8]),
        .I2(I48[9]),
        .I3(plusOp8[8]),
        .O(n_0_pad_far_left_bounce_i_11));
LUT4 #(
    .INIT(16'h9009)) 
     pad_far_left_bounce_i_12
       (.I0(plusOp8[7]),
        .I1(I48[8]),
        .I2(I48[9]),
        .I3(plusOp8[8]),
        .O(n_0_pad_far_left_bounce_i_12));
LUT4 #(
    .INIT(16'h44D4)) 
     pad_far_left_bounce_i_14
       (.I0(Q[4]),
        .I1(I48[5]),
        .I2(I48[4]),
        .I3(Q[3]),
        .O(O20[1]));
LUT4 #(
    .INIT(16'h44D4)) 
     pad_far_left_bounce_i_15
       (.I0(Q[2]),
        .I1(I48[3]),
        .I2(I48[2]),
        .I3(Q[1]),
        .O(O20[0]));
LUT4 #(
    .INIT(16'h9009)) 
     pad_far_left_bounce_i_17
       (.I0(Q[6]),
        .I1(I48[7]),
        .I2(Q[5]),
        .I3(I48[6]),
        .O(O19));
LUT4 #(
    .INIT(16'h2F02)) 
     pad_far_left_bounce_i_21
       (.I0(plusOp8[5]),
        .I1(I48[6]),
        .I2(I48[7]),
        .I3(plusOp8[6]),
        .O(n_0_pad_far_left_bounce_i_21));
LUT4 #(
    .INIT(16'h2F02)) 
     pad_far_left_bounce_i_22
       (.I0(plusOp8[3]),
        .I1(I48[4]),
        .I2(I48[5]),
        .I3(plusOp8[4]),
        .O(n_0_pad_far_left_bounce_i_22));
LUT4 #(
    .INIT(16'h2F02)) 
     pad_far_left_bounce_i_23
       (.I0(plusOp8[1]),
        .I1(I48[2]),
        .I2(I48[3]),
        .I3(plusOp8[2]),
        .O(n_0_pad_far_left_bounce_i_23));
LUT4 #(
    .INIT(16'h9009)) 
     pad_far_left_bounce_i_25
       (.I0(plusOp8[5]),
        .I1(I48[6]),
        .I2(I48[7]),
        .I3(plusOp8[6]),
        .O(n_0_pad_far_left_bounce_i_25));
LUT4 #(
    .INIT(16'h9009)) 
     pad_far_left_bounce_i_26
       (.I0(plusOp8[3]),
        .I1(I48[4]),
        .I2(I48[5]),
        .I3(plusOp8[4]),
        .O(n_0_pad_far_left_bounce_i_26));
LUT4 #(
    .INIT(16'h9009)) 
     pad_far_left_bounce_i_27
       (.I0(plusOp8[1]),
        .I1(I48[2]),
        .I2(I48[3]),
        .I3(plusOp8[2]),
        .O(n_0_pad_far_left_bounce_i_27));
LUT1 #(
    .INIT(2'h2)) 
     pad_far_left_bounce_i_32
       (.I0(Q[7]),
        .O(n_0_pad_far_left_bounce_i_32));
LUT1 #(
    .INIT(2'h2)) 
     pad_far_left_bounce_i_33
       (.I0(Q[6]),
        .O(n_0_pad_far_left_bounce_i_33));
LUT1 #(
    .INIT(2'h2)) 
     pad_far_left_bounce_i_34
       (.I0(Q[5]),
        .O(n_0_pad_far_left_bounce_i_34));
LUT1 #(
    .INIT(2'h2)) 
     pad_far_left_bounce_i_35
       (.I0(Q[4]),
        .O(n_0_pad_far_left_bounce_i_35));
LUT1 #(
    .INIT(2'h2)) 
     pad_far_left_bounce_i_36
       (.I0(Q[8]),
        .O(n_0_pad_far_left_bounce_i_36));
LUT1 #(
    .INIT(2'h1)) 
     pad_far_left_bounce_i_37
       (.I0(S3_IBUF),
        .O(n_0_pad_far_left_bounce_i_37));
LUT1 #(
    .INIT(2'h2)) 
     pad_far_left_bounce_i_38
       (.I0(Q[3]),
        .O(n_0_pad_far_left_bounce_i_38));
LUT2 #(
    .INIT(4'h6)) 
     pad_far_left_bounce_i_39
       (.I0(Q[2]),
        .I1(S3_IBUF),
        .O(n_0_pad_far_left_bounce_i_39));
LUT2 #(
    .INIT(4'h9)) 
     pad_far_left_bounce_i_40
       (.I0(Q[1]),
        .I1(S3_IBUF),
        .O(n_0_pad_far_left_bounce_i_40));
LUT2 #(
    .INIT(4'h6)) 
     pad_far_left_bounce_i_41
       (.I0(Q[0]),
        .I1(S3_IBUF),
        .O(n_0_pad_far_left_bounce_i_41));
LUT4 #(
    .INIT(16'h44D4)) 
     pad_far_left_bounce_i_8
       (.I0(Q[8]),
        .I1(I48[9]),
        .I2(I48[8]),
        .I3(Q[7]),
        .O(O21));
CARRY4 pad_far_left_bounce_reg_i_10
       (.CI(1'b0),
        .CO({n_0_pad_far_left_bounce_reg_i_10,n_1_pad_far_left_bounce_reg_i_10,n_2_pad_far_left_bounce_reg_i_10,n_3_pad_far_left_bounce_reg_i_10}),
        .CYINIT(1'b1),
        .DI({n_0_pad_far_left_bounce_i_21,n_0_pad_far_left_bounce_i_22,n_0_pad_far_left_bounce_i_23,I35}),
        .O(NLW_pad_far_left_bounce_reg_i_10_O_UNCONNECTED[3:0]),
        .S({n_0_pad_far_left_bounce_i_25,n_0_pad_far_left_bounce_i_26,n_0_pad_far_left_bounce_i_27,I36}));
CARRY4 pad_far_left_bounce_reg_i_29
       (.CI(n_0_pad_far_left_bounce_reg_i_31),
        .CO({n_0_pad_far_left_bounce_reg_i_29,n_1_pad_far_left_bounce_reg_i_29,n_2_pad_far_left_bounce_reg_i_29,n_3_pad_far_left_bounce_reg_i_29}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp8[7:4]),
        .S({n_0_pad_far_left_bounce_i_32,n_0_pad_far_left_bounce_i_33,n_0_pad_far_left_bounce_i_34,n_0_pad_far_left_bounce_i_35}));
CARRY4 pad_far_left_bounce_reg_i_30
       (.CI(n_0_pad_far_left_bounce_reg_i_29),
        .CO(NLW_pad_far_left_bounce_reg_i_30_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_pad_far_left_bounce_reg_i_30_O_UNCONNECTED[3:1],plusOp8[8]}),
        .S({1'b0,1'b0,1'b0,n_0_pad_far_left_bounce_i_36}));
CARRY4 pad_far_left_bounce_reg_i_31
       (.CI(1'b0),
        .CO({n_0_pad_far_left_bounce_reg_i_31,n_1_pad_far_left_bounce_reg_i_31,n_2_pad_far_left_bounce_reg_i_31,n_3_pad_far_left_bounce_reg_i_31}),
        .CYINIT(n_0_pad_far_left_bounce_i_37),
        .DI({1'b0,Q[2:0]}),
        .O(plusOp8[3:0]),
        .S({n_0_pad_far_left_bounce_i_38,n_0_pad_far_left_bounce_i_39,n_0_pad_far_left_bounce_i_40,n_0_pad_far_left_bounce_i_41}));
CARRY4 pad_far_left_bounce_reg_i_4
       (.CI(n_0_pad_far_left_bounce_reg_i_10),
        .CO({NLW_pad_far_left_bounce_reg_i_4_CO_UNCONNECTED[3:1],O3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,n_0_pad_far_left_bounce_i_11}),
        .O(NLW_pad_far_left_bounce_reg_i_4_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,n_0_pad_far_left_bounce_i_12}));
LUT4 #(
    .INIT(16'h2F02)) 
     pad_left_bounce_i_10
       (.I0(plusOp10[7]),
        .I1(I48[8]),
        .I2(I48[9]),
        .I3(plusOp10[8]),
        .O(n_0_pad_left_bounce_i_10));
LUT4 #(
    .INIT(16'h9009)) 
     pad_left_bounce_i_11
       (.I0(plusOp10[7]),
        .I1(I48[8]),
        .I2(I48[9]),
        .I3(plusOp10[8]),
        .O(n_0_pad_left_bounce_i_11));
LUT4 #(
    .INIT(16'h9009)) 
     pad_left_bounce_i_16
       (.I0(plusOp8[5]),
        .I1(I48[6]),
        .I2(I48[7]),
        .I3(plusOp8[6]),
        .O(O42[2]));
LUT4 #(
    .INIT(16'h9009)) 
     pad_left_bounce_i_17
       (.I0(plusOp8[3]),
        .I1(I48[4]),
        .I2(I48[5]),
        .I3(plusOp8[4]),
        .O(O42[1]));
LUT4 #(
    .INIT(16'h9009)) 
     pad_left_bounce_i_18
       (.I0(plusOp8[1]),
        .I1(I48[2]),
        .I2(I48[3]),
        .I3(plusOp8[2]),
        .O(O42[0]));
LUT4 #(
    .INIT(16'h2F02)) 
     pad_left_bounce_i_20
       (.I0(plusOp10[5]),
        .I1(I48[6]),
        .I2(I48[7]),
        .I3(plusOp10[6]),
        .O(n_0_pad_left_bounce_i_20));
LUT4 #(
    .INIT(16'h2F02)) 
     pad_left_bounce_i_21
       (.I0(plusOp10[3]),
        .I1(I48[4]),
        .I2(I48[5]),
        .I3(plusOp10[4]),
        .O(n_0_pad_left_bounce_i_21));
LUT4 #(
    .INIT(16'h2F02)) 
     pad_left_bounce_i_22
       (.I0(plusOp10[1]),
        .I1(I48[2]),
        .I2(I48[3]),
        .I3(plusOp10[2]),
        .O(n_0_pad_left_bounce_i_22));
LUT4 #(
    .INIT(16'h9009)) 
     pad_left_bounce_i_24
       (.I0(plusOp10[5]),
        .I1(I48[6]),
        .I2(I48[7]),
        .I3(plusOp10[6]),
        .O(n_0_pad_left_bounce_i_24));
LUT4 #(
    .INIT(16'h9009)) 
     pad_left_bounce_i_25
       (.I0(plusOp10[3]),
        .I1(I48[4]),
        .I2(I48[5]),
        .I3(plusOp10[4]),
        .O(n_0_pad_left_bounce_i_25));
LUT4 #(
    .INIT(16'h9009)) 
     pad_left_bounce_i_26
       (.I0(plusOp10[1]),
        .I1(I48[2]),
        .I2(I48[3]),
        .I3(plusOp10[2]),
        .O(n_0_pad_left_bounce_i_26));
LUT1 #(
    .INIT(2'h2)) 
     pad_left_bounce_i_31
       (.I0(Q[7]),
        .O(n_0_pad_left_bounce_i_31));
LUT1 #(
    .INIT(2'h2)) 
     pad_left_bounce_i_32
       (.I0(Q[6]),
        .O(n_0_pad_left_bounce_i_32));
LUT1 #(
    .INIT(2'h2)) 
     pad_left_bounce_i_33
       (.I0(Q[5]),
        .O(n_0_pad_left_bounce_i_33));
LUT2 #(
    .INIT(4'h6)) 
     pad_left_bounce_i_34
       (.I0(Q[4]),
        .I1(S3_IBUF),
        .O(n_0_pad_left_bounce_i_34));
LUT1 #(
    .INIT(2'h2)) 
     pad_left_bounce_i_35
       (.I0(Q[8]),
        .O(n_0_pad_left_bounce_i_35));
LUT2 #(
    .INIT(4'h9)) 
     pad_left_bounce_i_36
       (.I0(Q[3]),
        .I1(S3_IBUF),
        .O(n_0_pad_left_bounce_i_36));
LUT2 #(
    .INIT(4'h6)) 
     pad_left_bounce_i_37
       (.I0(Q[2]),
        .I1(S3_IBUF),
        .O(n_0_pad_left_bounce_i_37));
LUT2 #(
    .INIT(4'h9)) 
     pad_left_bounce_i_38
       (.I0(Q[1]),
        .I1(S3_IBUF),
        .O(n_0_pad_left_bounce_i_38));
LUT1 #(
    .INIT(2'h2)) 
     pad_left_bounce_i_39
       (.I0(Q[0]),
        .O(n_0_pad_left_bounce_i_39));
LUT4 #(
    .INIT(16'h9009)) 
     pad_left_bounce_i_8
       (.I0(plusOp8[7]),
        .I1(I48[8]),
        .I2(I48[9]),
        .I3(plusOp8[8]),
        .O(O43));
CARRY4 pad_left_bounce_reg_i_28
       (.CI(n_0_pad_left_bounce_reg_i_30),
        .CO({n_0_pad_left_bounce_reg_i_28,n_1_pad_left_bounce_reg_i_28,n_2_pad_left_bounce_reg_i_28,n_3_pad_left_bounce_reg_i_28}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[4]}),
        .O(plusOp10[7:4]),
        .S({n_0_pad_left_bounce_i_31,n_0_pad_left_bounce_i_32,n_0_pad_left_bounce_i_33,n_0_pad_left_bounce_i_34}));
CARRY4 pad_left_bounce_reg_i_29
       (.CI(n_0_pad_left_bounce_reg_i_28),
        .CO(NLW_pad_left_bounce_reg_i_29_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_pad_left_bounce_reg_i_29_O_UNCONNECTED[3:1],plusOp10[8]}),
        .S({1'b0,1'b0,1'b0,n_0_pad_left_bounce_i_35}));
CARRY4 pad_left_bounce_reg_i_30
       (.CI(1'b0),
        .CO({n_0_pad_left_bounce_reg_i_30,n_1_pad_left_bounce_reg_i_30,n_2_pad_left_bounce_reg_i_30,n_3_pad_left_bounce_reg_i_30}),
        .CYINIT(1'b0),
        .DI({Q[3:1],1'b0}),
        .O(plusOp10[3:0]),
        .S({n_0_pad_left_bounce_i_36,n_0_pad_left_bounce_i_37,n_0_pad_left_bounce_i_38,n_0_pad_left_bounce_i_39}));
CARRY4 pad_left_bounce_reg_i_5
       (.CI(n_0_pad_left_bounce_reg_i_9),
        .CO({NLW_pad_left_bounce_reg_i_5_CO_UNCONNECTED[3:1],O1}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,n_0_pad_left_bounce_i_10}),
        .O(NLW_pad_left_bounce_reg_i_5_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,n_0_pad_left_bounce_i_11}));
CARRY4 pad_left_bounce_reg_i_9
       (.CI(1'b0),
        .CO({n_0_pad_left_bounce_reg_i_9,n_1_pad_left_bounce_reg_i_9,n_2_pad_left_bounce_reg_i_9,n_3_pad_left_bounce_reg_i_9}),
        .CYINIT(1'b1),
        .DI({n_0_pad_left_bounce_i_20,n_0_pad_left_bounce_i_21,n_0_pad_left_bounce_i_22,I33}),
        .O(NLW_pad_left_bounce_reg_i_9_O_UNCONNECTED[3:0]),
        .S({n_0_pad_left_bounce_i_24,n_0_pad_left_bounce_i_25,n_0_pad_left_bounce_i_26,I34}));
LUT4 #(
    .INIT(16'h9009)) 
     pad_right_bounce_i_12
       (.I0(plusOp12[6]),
        .I1(I48[8]),
        .I2(I48[9]),
        .I3(plusOp12[7]),
        .O(O50));
LUT4 #(
    .INIT(16'h2F02)) 
     pad_right_bounce_i_13
       (.I0(plusOp14[5]),
        .I1(I48[6]),
        .I2(I48[7]),
        .I3(plusOp14[6]),
        .O(O17[2]));
LUT4 #(
    .INIT(16'h2F02)) 
     pad_right_bounce_i_14
       (.I0(plusOp14[3]),
        .I1(I48[4]),
        .I2(I48[5]),
        .I3(plusOp14[4]),
        .O(O17[1]));
LUT4 #(
    .INIT(16'h2F02)) 
     pad_right_bounce_i_15
       (.I0(plusOp14[1]),
        .I1(I48[2]),
        .I2(I48[3]),
        .I3(plusOp14[2]),
        .O(O17[0]));
LUT4 #(
    .INIT(16'h9009)) 
     pad_right_bounce_i_25
       (.I0(plusOp12[4]),
        .I1(I48[6]),
        .I2(I48[7]),
        .I3(plusOp12[5]),
        .O(O49[2]));
LUT4 #(
    .INIT(16'h9009)) 
     pad_right_bounce_i_26
       (.I0(plusOp12[2]),
        .I1(I48[4]),
        .I2(I48[5]),
        .I3(plusOp12[3]),
        .O(O49[1]));
LUT4 #(
    .INIT(16'h9009)) 
     pad_right_bounce_i_27
       (.I0(plusOp12[0]),
        .I1(I48[2]),
        .I2(I48[3]),
        .I3(plusOp12[1]),
        .O(O49[0]));
LUT4 #(
    .INIT(16'h2F02)) 
     pad_right_bounce_i_8
       (.I0(plusOp14[7]),
        .I1(I48[8]),
        .I2(I48[9]),
        .I3(plusOp14[8]),
        .O(O18));
LUT6 #(
    .INIT(64'h1501555540540000)) 
     pong_left_bounce_i_10
       (.I0(I57),
        .I1(S3_IBUF),
        .I2(O6[4]),
        .I3(n_0_pong_left_bounce_i_28),
        .I4(O6[5]),
        .I5(O6[6]),
        .O(n_0_pong_left_bounce_i_10));
LUT4 #(
    .INIT(16'h44D4)) 
     pong_left_bounce_i_12
       (.I0(O6[5]),
        .I1(I47[5]),
        .I2(I47[4]),
        .I3(O6[4]),
        .O(O16[2]));
LUT4 #(
    .INIT(16'h44D4)) 
     pong_left_bounce_i_13
       (.I0(O6[3]),
        .I1(I47[3]),
        .I2(I47[2]),
        .I3(O6[2]),
        .O(O16[1]));
LUT4 #(
    .INIT(16'h44D4)) 
     pong_left_bounce_i_14
       (.I0(O6[1]),
        .I1(I47[1]),
        .I2(I47[0]),
        .I3(O6[0]),
        .O(O16[0]));
LUT6 #(
    .INIT(64'h044551101CC77551)) 
     pong_left_bounce_i_20
       (.I0(I47[5]),
        .I1(n_0_pong_left_bounce_i_28),
        .I2(O6[4]),
        .I3(S3_IBUF),
        .I4(O6[5]),
        .I5(I47[4]),
        .O(n_0_pong_left_bounce_i_20));
LUT6 #(
    .INIT(64'h4500FFDF00104530)) 
     pong_left_bounce_i_21
       (.I0(I47[2]),
        .I1(O6[1]),
        .I2(n_0_pong_left_bounce_i_30),
        .I3(O6[2]),
        .I4(I47[3]),
        .I5(O6[3]),
        .O(n_0_pong_left_bounce_i_21));
LUT5 #(
    .INIT(32'h040B0D9B)) 
     pong_left_bounce_i_22
       (.I0(S3_IBUF),
        .I1(O6[0]),
        .I2(I47[1]),
        .I3(O6[1]),
        .I4(I47[0]),
        .O(n_0_pong_left_bounce_i_22));
LUT6 #(
    .INIT(64'h0990600960090660)) 
     pong_left_bounce_i_23
       (.I0(O6[5]),
        .I1(I47[5]),
        .I2(O6[4]),
        .I3(S3_IBUF),
        .I4(I47[4]),
        .I5(n_0_pong_left_bounce_i_28),
        .O(n_0_pong_left_bounce_i_23));
LUT6 #(
    .INIT(64'h4444224211114414)) 
     pong_left_bounce_i_24
       (.I0(n_0_pong_left_bounce_i_31),
        .I1(O6[2]),
        .I2(O6[0]),
        .I3(S3_IBUF),
        .I4(O6[1]),
        .I5(I47[2]),
        .O(n_0_pong_left_bounce_i_24));
LUT5 #(
    .INIT(32'h60060960)) 
     pong_left_bounce_i_25
       (.I0(O6[1]),
        .I1(I47[1]),
        .I2(S3_IBUF),
        .I3(O6[0]),
        .I4(I47[0]),
        .O(n_0_pong_left_bounce_i_25));
(* SOFT_HLUTNM = "soft_lutpair104" *) 
   LUT5 #(
    .INIT(32'h00001011)) 
     pong_left_bounce_i_28
       (.I0(O6[1]),
        .I1(O6[2]),
        .I2(S3_IBUF),
        .I3(O6[0]),
        .I4(O6[3]),
        .O(n_0_pong_left_bounce_i_28));
(* SOFT_HLUTNM = "soft_lutpair105" *) 
   LUT4 #(
    .INIT(16'h71FF)) 
     pong_left_bounce_i_29
       (.I0(S3_IBUF),
        .I1(O6[4]),
        .I2(n_0_pong_left_bounce_i_28),
        .I3(O6[5]),
        .O(O45));
(* SOFT_HLUTNM = "soft_lutpair104" *) 
   LUT2 #(
    .INIT(4'hB)) 
     pong_left_bounce_i_30
       (.I0(S3_IBUF),
        .I1(O6[0]),
        .O(n_0_pong_left_bounce_i_30));
LUT2 #(
    .INIT(4'h6)) 
     pong_left_bounce_i_31
       (.I0(O6[3]),
        .I1(I47[3]),
        .O(n_0_pong_left_bounce_i_31));
CARRY4 pong_left_bounce_reg_i_5
       (.CI(n_0_pong_left_bounce_reg_i_9),
        .CO({NLW_pong_left_bounce_reg_i_5_CO_UNCONNECTED[3:1],CO}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,n_0_pong_left_bounce_i_10}),
        .O(NLW_pong_left_bounce_reg_i_5_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,I30}));
CARRY4 pong_left_bounce_reg_i_9
       (.CI(1'b0),
        .CO({n_0_pong_left_bounce_reg_i_9,n_1_pong_left_bounce_reg_i_9,n_2_pong_left_bounce_reg_i_9,n_3_pong_left_bounce_reg_i_9}),
        .CYINIT(1'b1),
        .DI({n_0_pong_left_bounce_i_20,n_0_pong_left_bounce_i_21,n_0_pong_left_bounce_i_22,1'b0}),
        .O(NLW_pong_left_bounce_reg_i_9_O_UNCONNECTED[3:0]),
        .S({n_0_pong_left_bounce_i_23,n_0_pong_left_bounce_i_24,n_0_pong_left_bounce_i_25,S}));
LUT1 #(
    .INIT(2'h1)) 
     \xpad[4]_i_6 
       (.I0(Q[1]),
        .O(O39[1]));
LUT1 #(
    .INIT(2'h2)) 
     \xpad[4]_i_7 
       (.I0(Q[0]),
        .O(O39[0]));
LUT2 #(
    .INIT(4'h9)) 
     \xpad[8]_i_2 
       (.I0(Q[6]),
        .I1(Q[7]),
        .O(\n_0_xpad[8]_i_2 ));
LUT2 #(
    .INIT(4'h9)) 
     \xpad[8]_i_3 
       (.I0(Q[5]),
        .I1(Q[6]),
        .O(\n_0_xpad[8]_i_3 ));
LUT2 #(
    .INIT(4'h9)) 
     \xpad[8]_i_4 
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(\n_0_xpad[8]_i_4 ));
LUT2 #(
    .INIT(4'h9)) 
     \xpad[8]_i_5 
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(\n_0_xpad[8]_i_5 ));
LUT3 #(
    .INIT(8'h15)) 
     \xpad[9]_i_10 
       (.I0(S3_IBUF),
        .I1(Q[4]),
        .I2(Q[3]),
        .O(\n_0_xpad[9]_i_10 ));
LUT3 #(
    .INIT(8'h15)) 
     \xpad[9]_i_11 
       (.I0(S3_IBUF),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(\n_0_xpad[9]_i_11 ));
LUT2 #(
    .INIT(4'h2)) 
     \xpad[9]_i_12 
       (.I0(Q[8]),
        .I1(Q[7]),
        .O(\n_0_xpad[9]_i_12 ));
LUT2 #(
    .INIT(4'h1)) 
     \xpad[9]_i_13 
       (.I0(Q[5]),
        .I1(Q[6]),
        .O(\n_0_xpad[9]_i_13 ));
LUT3 #(
    .INIT(8'h18)) 
     \xpad[9]_i_14 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(S3_IBUF),
        .O(\n_0_xpad[9]_i_14 ));
LUT3 #(
    .INIT(8'h18)) 
     \xpad[9]_i_15 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(S3_IBUF),
        .O(\n_0_xpad[9]_i_15 ));
LUT6 #(
    .INIT(64'hFEFFFE00FE00FE00)) 
     \xpad[9]_i_3 
       (.I0(\n_0_xpad[9]_i_5 ),
        .I1(Q[6]),
        .I2(Q[5]),
        .I3(own_rot_left),
        .I4(ltOp),
        .I5(I42),
        .O(O12));
LUT2 #(
    .INIT(4'h9)) 
     \xpad[9]_i_4 
       (.I0(Q[7]),
        .I1(Q[8]),
        .O(\n_0_xpad[9]_i_4 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \xpad[9]_i_5 
       (.I0(Q[4]),
        .I1(Q[8]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[7]),
        .I5(Q[3]),
        .O(\n_0_xpad[9]_i_5 ));
LUT1 #(
    .INIT(2'h1)) 
     \xpad[9]_i_9 
       (.I0(Q[8]),
        .O(\n_0_xpad[9]_i_9 ));
FDCE #(
    .INIT(1'b0)) 
     \xpad_reg[1] 
       (.C(clk25_BUFG),
        .CE(I62),
        .CLR(I1),
        .D(I63[0]),
        .Q(Q[0]));
FDCE #(
    .INIT(1'b0)) 
     \xpad_reg[2] 
       (.C(clk25_BUFG),
        .CE(I62),
        .CLR(I1),
        .D(I63[1]),
        .Q(Q[1]));
FDPE #(
    .INIT(1'b1)) 
     \xpad_reg[3] 
       (.C(clk25_BUFG),
        .CE(I62),
        .D(I63[2]),
        .PRE(I1),
        .Q(Q[2]));
FDCE #(
    .INIT(1'b0)) 
     \xpad_reg[4] 
       (.C(clk25_BUFG),
        .CE(I62),
        .CLR(I1),
        .D(I63[3]),
        .Q(Q[3]));
FDCE #(
    .INIT(1'b0)) 
     \xpad_reg[5] 
       (.C(clk25_BUFG),
        .CE(I62),
        .CLR(I1),
        .D(\n_7_xpad_reg[8]_i_1 ),
        .Q(Q[4]));
FDCE #(
    .INIT(1'b0)) 
     \xpad_reg[6] 
       (.C(clk25_BUFG),
        .CE(I62),
        .CLR(I1),
        .D(\n_6_xpad_reg[8]_i_1 ),
        .Q(Q[5]));
FDPE #(
    .INIT(1'b1)) 
     \xpad_reg[7] 
       (.C(clk25_BUFG),
        .CE(I62),
        .D(\n_5_xpad_reg[8]_i_1 ),
        .PRE(I1),
        .Q(Q[6]));
FDPE #(
    .INIT(1'b1)) 
     \xpad_reg[8] 
       (.C(clk25_BUFG),
        .CE(I62),
        .D(\n_4_xpad_reg[8]_i_1 ),
        .PRE(I1),
        .Q(Q[7]));
CARRY4 \xpad_reg[8]_i_1 
       (.CI(I31),
        .CO({\n_0_xpad_reg[8]_i_1 ,\n_1_xpad_reg[8]_i_1 ,\n_2_xpad_reg[8]_i_1 ,\n_3_xpad_reg[8]_i_1 }),
        .CYINIT(1'b0),
        .DI(Q[6:3]),
        .O({\n_4_xpad_reg[8]_i_1 ,\n_5_xpad_reg[8]_i_1 ,\n_6_xpad_reg[8]_i_1 ,\n_7_xpad_reg[8]_i_1 }),
        .S({\n_0_xpad[8]_i_2 ,\n_0_xpad[8]_i_3 ,\n_0_xpad[8]_i_4 ,\n_0_xpad[8]_i_5 }));
FDCE #(
    .INIT(1'b0)) 
     \xpad_reg[9] 
       (.C(clk25_BUFG),
        .CE(I62),
        .CLR(I1),
        .D(\n_7_xpad_reg[9]_i_2 ),
        .Q(Q[8]));
CARRY4 \xpad_reg[9]_i_2 
       (.CI(\n_0_xpad_reg[8]_i_1 ),
        .CO(\NLW_xpad_reg[9]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_xpad_reg[9]_i_2_O_UNCONNECTED [3:1],\n_7_xpad_reg[9]_i_2 }),
        .S({1'b0,1'b0,1'b0,\n_0_xpad[9]_i_4 }));
CARRY4 \xpad_reg[9]_i_7 
       (.CI(1'b0),
        .CO({ltOp,\n_1_xpad_reg[9]_i_7 ,\n_2_xpad_reg[9]_i_7 ,\n_3_xpad_reg[9]_i_7 }),
        .CYINIT(1'b0),
        .DI({\n_0_xpad[9]_i_9 ,1'b0,\n_0_xpad[9]_i_10 ,\n_0_xpad[9]_i_11 }),
        .O(\NLW_xpad_reg[9]_i_7_O_UNCONNECTED [3:0]),
        .S({\n_0_xpad[9]_i_12 ,\n_0_xpad[9]_i_13 ,\n_0_xpad[9]_i_14 ,\n_0_xpad[9]_i_15 }));
(* SOFT_HLUTNM = "soft_lutpair103" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \ypong_left[2]_i_1 
       (.I0(O6[0]),
        .O(ypong_left0_in[2]));
(* SOFT_HLUTNM = "soft_lutpair101" *) 
   LUT5 #(
    .INIT(32'hDF2020DF)) 
     \ypong_left[3]_i_1 
       (.I0(out),
        .I1(I1),
        .I2(\n_0_ypong_left_reg[8]_i_7 ),
        .I3(O6[0]),
        .I4(O6[1]),
        .O(ypong_left0_in[3]));
LUT6 #(
    .INIT(64'hA9A96AA9A9A9A9A9)) 
     \ypong_left[4]_i_1 
       (.I0(O6[2]),
        .I1(O6[0]),
        .I2(O6[1]),
        .I3(out),
        .I4(I1),
        .I5(\n_0_ypong_left_reg[8]_i_7 ),
        .O(ypong_left0_in[4]));
(* SOFT_HLUTNM = "soft_lutpair103" *) 
   LUT5 #(
    .INIT(32'h6AAAAAA9)) 
     \ypong_left[5]_i_1 
       (.I0(O6[3]),
        .I1(O6[1]),
        .I2(O6[2]),
        .I3(O6[0]),
        .I4(O7),
        .O(ypong_left0_in[5]));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAA9)) 
     \ypong_left[6]_i_1 
       (.I0(O6[4]),
        .I1(O6[3]),
        .I2(O7),
        .I3(O6[0]),
        .I4(O6[2]),
        .I5(O6[1]),
        .O(ypong_left0_in[6]));
LUT2 #(
    .INIT(4'h6)) 
     \ypong_left[7]_i_1 
       (.I0(O6[5]),
        .I1(\n_0_ypong_left[8]_i_8 ),
        .O(ypong_left0_in[7]));
LUT3 #(
    .INIT(8'h15)) 
     \ypong_left[8]_i_10 
       (.I0(O6[5]),
        .I1(O6[4]),
        .I2(S3_IBUF),
        .O(\n_0_ypong_left[8]_i_10 ));
LUT3 #(
    .INIT(8'h45)) 
     \ypong_left[8]_i_11 
       (.I0(O6[3]),
        .I1(S3_IBUF),
        .I2(O6[2]),
        .O(\n_0_ypong_left[8]_i_11 ));
LUT3 #(
    .INIT(8'h15)) 
     \ypong_left[8]_i_12 
       (.I0(S3_IBUF),
        .I1(O6[0]),
        .I2(O6[1]),
        .O(\n_0_ypong_left[8]_i_12 ));
LUT1 #(
    .INIT(2'h2)) 
     \ypong_left[8]_i_13 
       (.I0(O6[6]),
        .O(\n_0_ypong_left[8]_i_13 ));
LUT3 #(
    .INIT(8'h18)) 
     \ypong_left[8]_i_14 
       (.I0(S3_IBUF),
        .I1(O6[4]),
        .I2(O6[5]),
        .O(\n_0_ypong_left[8]_i_14 ));
LUT3 #(
    .INIT(8'h42)) 
     \ypong_left[8]_i_15 
       (.I0(O6[2]),
        .I1(O6[3]),
        .I2(S3_IBUF),
        .O(\n_0_ypong_left[8]_i_15 ));
LUT3 #(
    .INIT(8'h18)) 
     \ypong_left[8]_i_16 
       (.I0(O6[1]),
        .I1(O6[0]),
        .I2(S3_IBUF),
        .O(\n_0_ypong_left[8]_i_16 ));
LUT6 #(
    .INIT(64'h99699999AAAAAAAA)) 
     \ypong_left[8]_i_2 
       (.I0(O6[6]),
        .I1(O6[5]),
        .I2(out),
        .I3(I1),
        .I4(\n_0_ypong_left_reg[8]_i_7 ),
        .I5(\n_0_ypong_left[8]_i_8 ),
        .O(ypong_left0_in[8]));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \ypong_left[8]_i_5 
       (.I0(O6[4]),
        .I1(O6[3]),
        .I2(O6[1]),
        .I3(O6[2]),
        .I4(O6[5]),
        .I5(O6[6]),
        .O(O37));
(* SOFT_HLUTNM = "soft_lutpair101" *) 
   LUT3 #(
    .INIT(8'h20)) 
     \ypong_left[8]_i_6 
       (.I0(\n_0_ypong_left_reg[8]_i_7 ),
        .I1(I1),
        .I2(out),
        .O(O7));
LUT6 #(
    .INIT(64'h8000000000000001)) 
     \ypong_left[8]_i_8 
       (.I0(O7),
        .I1(O6[4]),
        .I2(O6[3]),
        .I3(O6[1]),
        .I4(O6[2]),
        .I5(O6[0]),
        .O(\n_0_ypong_left[8]_i_8 ));
LUT1 #(
    .INIT(2'h1)) 
     \ypong_left[8]_i_9 
       (.I0(O6[6]),
        .O(\n_0_ypong_left[8]_i_9 ));
FDCE #(
    .INIT(1'b0)) 
     \ypong_left_reg[2] 
       (.C(clk25_BUFG),
        .CE(E),
        .CLR(I1),
        .D(ypong_left0_in[2]),
        .Q(O6[0]));
FDPE #(
    .INIT(1'b1)) 
     \ypong_left_reg[3] 
       (.C(clk25_BUFG),
        .CE(E),
        .D(ypong_left0_in[3]),
        .PRE(I1),
        .Q(O6[1]));
FDCE #(
    .INIT(1'b0)) 
     \ypong_left_reg[4] 
       (.C(clk25_BUFG),
        .CE(E),
        .CLR(I1),
        .D(ypong_left0_in[4]),
        .Q(O6[2]));
FDCE #(
    .INIT(1'b0)) 
     \ypong_left_reg[5] 
       (.C(clk25_BUFG),
        .CE(E),
        .CLR(I1),
        .D(ypong_left0_in[5]),
        .Q(O6[3]));
FDPE #(
    .INIT(1'b1)) 
     \ypong_left_reg[6] 
       (.C(clk25_BUFG),
        .CE(E),
        .D(ypong_left0_in[6]),
        .PRE(I1),
        .Q(O6[4]));
FDPE #(
    .INIT(1'b1)) 
     \ypong_left_reg[7] 
       (.C(clk25_BUFG),
        .CE(E),
        .D(ypong_left0_in[7]),
        .PRE(I1),
        .Q(O6[5]));
FDCE #(
    .INIT(1'b0)) 
     \ypong_left_reg[8] 
       (.C(clk25_BUFG),
        .CE(E),
        .CLR(I1),
        .D(ypong_left0_in[8]),
        .Q(O6[6]));
CARRY4 \ypong_left_reg[8]_i_7 
       (.CI(1'b0),
        .CO({\n_0_ypong_left_reg[8]_i_7 ,\n_1_ypong_left_reg[8]_i_7 ,\n_2_ypong_left_reg[8]_i_7 ,\n_3_ypong_left_reg[8]_i_7 }),
        .CYINIT(1'b1),
        .DI({\n_0_ypong_left[8]_i_9 ,\n_0_ypong_left[8]_i_10 ,\n_0_ypong_left[8]_i_11 ,\n_0_ypong_left[8]_i_12 }),
        .O(\NLW_ypong_left_reg[8]_i_7_O_UNCONNECTED [3:0]),
        .S({\n_0_ypong_left[8]_i_13 ,\n_0_ypong_left[8]_i_14 ,\n_0_ypong_left[8]_i_15 ,\n_0_ypong_left[8]_i_16 }));
(* SOFT_HLUTNM = "soft_lutpair100" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \ypong_right[2]_i_1 
       (.I0(O8[0]),
        .O(ypong_right0_in[2]));
LUT6 #(
    .INIT(64'h6FFF900090006FFF)) 
     \ypong_right[3]_i_1 
       (.I0(I45[1]),
        .I1(I45[0]),
        .I2(RS232_right),
        .I3(O4),
        .I4(O8[0]),
        .I5(O8[1]),
        .O(ypong_right0_in[3]));
LUT6 #(
    .INIT(64'hA96AA9A9A9A9A9A9)) 
     \ypong_right[4]_i_1 
       (.I0(O8[2]),
        .I1(O8[0]),
        .I2(O8[1]),
        .I3(p_15_in),
        .I4(RS232_right),
        .I5(O4),
        .O(ypong_right0_in[4]));
(* SOFT_HLUTNM = "soft_lutpair100" *) 
   LUT5 #(
    .INIT(32'h6AAAAAA9)) 
     \ypong_right[5]_i_1 
       (.I0(O8[3]),
        .I1(O8[2]),
        .I2(I46),
        .I3(O8[1]),
        .I4(O8[0]),
        .O(ypong_right0_in[5]));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAA9)) 
     \ypong_right[6]_i_1 
       (.I0(O8[4]),
        .I1(O8[3]),
        .I2(I46),
        .I3(O8[0]),
        .I4(O8[1]),
        .I5(O8[2]),
        .O(ypong_right0_in[6]));
LUT2 #(
    .INIT(4'h6)) 
     \ypong_right[7]_i_1 
       (.I0(O8[5]),
        .I1(\n_0_ypong_right[8]_i_7 ),
        .O(ypong_right0_in[7]));
LUT3 #(
    .INIT(8'h45)) 
     \ypong_right[8]_i_10 
       (.I0(O8[3]),
        .I1(S3_IBUF),
        .I2(O8[2]),
        .O(\n_0_ypong_right[8]_i_10 ));
LUT3 #(
    .INIT(8'h15)) 
     \ypong_right[8]_i_11 
       (.I0(S3_IBUF),
        .I1(O8[0]),
        .I2(O8[1]),
        .O(\n_0_ypong_right[8]_i_11 ));
LUT1 #(
    .INIT(2'h2)) 
     \ypong_right[8]_i_12 
       (.I0(O8[6]),
        .O(\n_0_ypong_right[8]_i_12 ));
LUT3 #(
    .INIT(8'h18)) 
     \ypong_right[8]_i_13 
       (.I0(S3_IBUF),
        .I1(O8[4]),
        .I2(O8[5]),
        .O(\n_0_ypong_right[8]_i_13 ));
LUT3 #(
    .INIT(8'h42)) 
     \ypong_right[8]_i_14 
       (.I0(O8[2]),
        .I1(O8[3]),
        .I2(S3_IBUF),
        .O(\n_0_ypong_right[8]_i_14 ));
LUT3 #(
    .INIT(8'h18)) 
     \ypong_right[8]_i_15 
       (.I0(O8[1]),
        .I1(O8[0]),
        .I2(S3_IBUF),
        .O(\n_0_ypong_right[8]_i_15 ));
LUT6 #(
    .INIT(64'h96999999AAAAAAAA)) 
     \ypong_right[8]_i_2 
       (.I0(O8[6]),
        .I1(O8[5]),
        .I2(p_15_in),
        .I3(RS232_right),
        .I4(O4),
        .I5(\n_0_ypong_right[8]_i_7 ),
        .O(ypong_right0_in[8]));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \ypong_right[8]_i_5 
       (.I0(O8[5]),
        .I1(O8[2]),
        .I2(O8[1]),
        .I3(O8[4]),
        .I4(O8[3]),
        .I5(O8[6]),
        .O(O38));
LUT6 #(
    .INIT(64'h8000000000000001)) 
     \ypong_right[8]_i_7 
       (.I0(O8[3]),
        .I1(O8[0]),
        .I2(O8[1]),
        .I3(O8[2]),
        .I4(I46),
        .I5(O8[4]),
        .O(\n_0_ypong_right[8]_i_7 ));
LUT1 #(
    .INIT(2'h1)) 
     \ypong_right[8]_i_8 
       (.I0(O8[6]),
        .O(\n_0_ypong_right[8]_i_8 ));
LUT3 #(
    .INIT(8'h15)) 
     \ypong_right[8]_i_9 
       (.I0(O8[5]),
        .I1(O8[4]),
        .I2(S3_IBUF),
        .O(\n_0_ypong_right[8]_i_9 ));
FDCE #(
    .INIT(1'b0)) 
     \ypong_right_reg[2] 
       (.C(clk25_BUFG),
        .CE(I61),
        .CLR(I1),
        .D(ypong_right0_in[2]),
        .Q(O8[0]));
FDPE #(
    .INIT(1'b1)) 
     \ypong_right_reg[3] 
       (.C(clk25_BUFG),
        .CE(I61),
        .D(ypong_right0_in[3]),
        .PRE(I1),
        .Q(O8[1]));
FDCE #(
    .INIT(1'b0)) 
     \ypong_right_reg[4] 
       (.C(clk25_BUFG),
        .CE(I61),
        .CLR(I1),
        .D(ypong_right0_in[4]),
        .Q(O8[2]));
FDCE #(
    .INIT(1'b0)) 
     \ypong_right_reg[5] 
       (.C(clk25_BUFG),
        .CE(I61),
        .CLR(I1),
        .D(ypong_right0_in[5]),
        .Q(O8[3]));
FDPE #(
    .INIT(1'b1)) 
     \ypong_right_reg[6] 
       (.C(clk25_BUFG),
        .CE(I61),
        .D(ypong_right0_in[6]),
        .PRE(I1),
        .Q(O8[4]));
FDPE #(
    .INIT(1'b1)) 
     \ypong_right_reg[7] 
       (.C(clk25_BUFG),
        .CE(I61),
        .D(ypong_right0_in[7]),
        .PRE(I1),
        .Q(O8[5]));
FDCE #(
    .INIT(1'b0)) 
     \ypong_right_reg[8] 
       (.C(clk25_BUFG),
        .CE(I61),
        .CLR(I1),
        .D(ypong_right0_in[8]),
        .Q(O8[6]));
CARRY4 \ypong_right_reg[8]_i_6 
       (.CI(1'b0),
        .CO({O4,\n_1_ypong_right_reg[8]_i_6 ,\n_2_ypong_right_reg[8]_i_6 ,\n_3_ypong_right_reg[8]_i_6 }),
        .CYINIT(1'b1),
        .DI({\n_0_ypong_right[8]_i_8 ,\n_0_ypong_right[8]_i_9 ,\n_0_ypong_right[8]_i_10 ,\n_0_ypong_right[8]_i_11 }),
        .O(\NLW_ypong_right_reg[8]_i_6_O_UNCONNECTED [3:0]),
        .S({\n_0_ypong_right[8]_i_12 ,\n_0_ypong_right[8]_i_13 ,\n_0_ypong_right[8]_i_14 ,\n_0_ypong_right[8]_i_15 }));
endmodule

module rotary
   (own_press,
    qa,
    qb,
    O1,
    rot_button_IBUF,
    CLK,
    I1,
    rot_a_IBUF,
    rot_b_IBUF,
    I2,
    out);
  output own_press;
  output qa;
  output qb;
  output [1:0]O1;
  input rot_button_IBUF;
  input CLK;
  input I1;
  input rot_a_IBUF;
  input rot_b_IBUF;
  input I2;
  input [0:0]out;

  wire CLK;
  wire I1;
  wire I2;
  wire [1:0]O1;
  wire [1:0]ech;
  wire n_0_qa_i_1;
  wire n_0_qb_i_1;
  wire [0:0]out;
  wire own_press;
  wire qa;
  wire qb;
  wire rot_a_IBUF;
  wire rot_b_IBUF;
  wire rot_button_IBUF;

FDCE #(
    .INIT(1'b0)) 
     echa_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(I1),
        .D(rot_a_IBUF),
        .Q(ech[0]));
FDCE #(
    .INIT(1'b0)) 
     echb_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(I1),
        .D(rot_b_IBUF),
        .Q(ech[1]));
(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT4 #(
    .INIT(16'h0020)) 
     \message_TX[1]_i_1 
       (.I0(I2),
        .I1(own_press),
        .I2(out),
        .I3(I1),
        .O(O1[0]));
(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT4 #(
    .INIT(16'hAA8A)) 
     \message_TX[7]_i_2 
       (.I0(I2),
        .I1(own_press),
        .I2(out),
        .I3(I1),
        .O(O1[1]));
FDCE #(
    .INIT(1'b0)) 
     press_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(I1),
        .D(rot_button_IBUF),
        .Q(own_press));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT3 #(
    .INIT(8'hE8)) 
     qa_i_1
       (.I0(qa),
        .I1(ech[0]),
        .I2(ech[1]),
        .O(n_0_qa_i_1));
FDCE #(
    .INIT(1'b0)) 
     qa_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(I1),
        .D(n_0_qa_i_1),
        .Q(qa));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT3 #(
    .INIT(8'hD4)) 
     qb_i_1
       (.I0(ech[0]),
        .I1(ech[1]),
        .I2(qb),
        .O(n_0_qb_i_1));
FDCE #(
    .INIT(1'b0)) 
     qb_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(I1),
        .D(n_0_qb_i_1),
        .Q(qb));
endmodule

(* NotValidForBitStream *)
module top
   (clk100,
    ouest,
    nord,
    sud,
    est,
    led,
    S3,
    S2,
    S1,
    S0,
    rot_a,
    rot_b,
    rot_button,
    txd,
    rxd,
    hsync,
    vsync,
    VGA_red,
    VGA_green,
    VGA_blue);
  input clk100;
  input ouest;
  input nord;
  input sud;
  input est;
  output [7:0]led;
  input S3;
  input S2;
  input S1;
  input S0;
  input rot_a;
  input rot_b;
  input rot_button;
  output txd;
  input rxd;
  output hsync;
  output vsync;
  output VGA_red;
  output VGA_green;
  output VGA_blue;

  wire RX_CLK;
  wire RX_CLK_BUFG;
  wire S0;
  wire S0_IBUF;
  wire S1;
  wire S1_IBUF;
  wire S2;
  wire S2_IBUF;
  wire S3;
  wire S3_IBUF;
  wire VGA_blue;
  wire VGA_blue_OBUF;
  wire VGA_green;
  wire VGA_green_OBUF;
  wire VGA_red;
  wire VGA_red_OBUF;
  wire \ball_ctrl/geqOp ;
  wire \ball_ctrl/geqOp10_in ;
  wire \ball_ctrl/leqOp ;
  wire \ball_ctrl/leqOp9_in ;
  wire barrier_bounce;
  wire [8:0]\brick_bounce[0] ;
  wire [8:0]\brick_bounce[1] ;
  wire clk100;
  wire clk100_IBUF;
  wire clk100_IBUF_BUFG;
  wire clk25;
  wire clk25_BUFG;
  wire \direction/RS232_left ;
  wire \direction/RS232_right ;
  wire \direction/p_15_in ;
  wire \direction/rqt_TX17_out ;
  wire \direction/rqt_TX19_out ;
  wire est;
  wire est_IBUF;
  wire \fond_ecran/gtOp2_in ;
  wire \fond_ecran/ltOp3_in ;
  wire game_lost;
  wire [1:0]\game_manager/etat_present ;
  wire game_rqt;
  wire hsync;
  wire hsync_OBUF;
  wire [7:0]led;
  wire [0:0]led_OBUF;
  wire leftbounce;
  wire master_slave_rqt;
  wire [1:0]\master_slave_select/EP ;
  wire \mmode/MAETAT/precFrame ;
  wire \mmode/MAETAT/precFrame07_out ;
  wire n_0_VGA_green_OBUF_inst_i_38;
  wire n_0_VGA_red_OBUF_inst_i_6;
  wire n_0_codeur;
  wire n_100_vga_ctrl;
  wire n_101_vga_ctrl;
  wire n_102_obj_ctrl;
  wire n_102_vga_ctrl;
  wire n_103_obj_ctrl;
  wire n_104_obj_ctrl;
  wire n_10_codeur;
  wire n_10_vga_ctrl;
  wire n_114_obj_ctrl;
  wire n_11_codeur;
  wire n_11_game_ctrl;
  wire n_11_vga_ctrl;
  wire n_12_codeur;
  wire n_12_game_ctrl;
  wire n_12_vga_ctrl;
  wire n_133_obj_ctrl;
  wire n_134_obj_ctrl;
  wire n_135_obj_ctrl;
  wire n_136_obj_ctrl;
  wire n_137_obj_ctrl;
  wire n_138_obj_ctrl;
  wire n_139_obj_ctrl;
  wire n_13_codeur;
  wire n_13_game_ctrl;
  wire n_13_vga_ctrl;
  wire n_140_obj_ctrl;
  wire n_141_obj_ctrl;
  wire n_142_obj_ctrl;
  wire n_143_obj_ctrl;
  wire n_144_obj_ctrl;
  wire n_145_obj_ctrl;
  wire n_146_obj_ctrl;
  wire n_147_obj_ctrl;
  wire n_148_obj_ctrl;
  wire n_149_obj_ctrl;
  wire n_14_codeur;
  wire n_14_game_ctrl;
  wire n_14_vga_ctrl;
  wire n_150_obj_ctrl;
  wire n_151_obj_ctrl;
  wire n_152_obj_ctrl;
  wire n_153_obj_ctrl;
  wire n_154_obj_ctrl;
  wire n_155_obj_ctrl;
  wire n_156_obj_ctrl;
  wire n_157_obj_ctrl;
  wire n_158_obj_ctrl;
  wire n_159_obj_ctrl;
  wire n_15_game_ctrl;
  wire n_15_vga_ctrl;
  wire n_160_obj_ctrl;
  wire n_161_obj_ctrl;
  wire n_162_obj_ctrl;
  wire n_163_obj_ctrl;
  wire n_164_obj_ctrl;
  wire n_165_obj_ctrl;
  wire n_166_obj_ctrl;
  wire n_167_obj_ctrl;
  wire n_168_obj_ctrl;
  wire n_169_obj_ctrl;
  wire n_16_vga_ctrl;
  wire n_170_obj_ctrl;
  wire n_171_obj_ctrl;
  wire n_172_obj_ctrl;
  wire n_174_obj_ctrl;
  wire n_175_obj_ctrl;
  wire n_176_obj_ctrl;
  wire n_177_obj_ctrl;
  wire n_179_obj_ctrl;
  wire n_17_vga_ctrl;
  wire n_180_obj_ctrl;
  wire n_181_obj_ctrl;
  wire n_182_obj_ctrl;
  wire n_18_game_ctrl;
  wire n_192_obj_ctrl;
  wire n_1_codeur;
  wire n_20_game_ctrl;
  wire n_21_game_ctrl;
  wire n_22_game_ctrl;
  wire n_23_game_ctrl;
  wire n_27_vga_ctrl;
  wire n_2_RS232;
  wire n_2_codeur;
  wire n_2_game_ctrl;
  wire n_2_vga_ctrl;
  wire n_39_vga_ctrl;
  wire n_3_codeur;
  wire n_3_game_ctrl;
  wire n_3_vga_ctrl;
  wire n_40_vga_ctrl;
  wire n_41_vga_ctrl;
  wire n_42_obj_ctrl;
  wire n_43_obj_ctrl;
  wire n_44_obj_ctrl;
  wire n_45_obj_ctrl;
  wire n_46_obj_ctrl;
  wire n_47_obj_ctrl;
  wire n_48_obj_ctrl;
  wire n_49_obj_ctrl;
  wire n_4_RS232;
  wire n_4_codeur;
  wire n_4_game_ctrl;
  wire n_4_vga_ctrl;
  wire n_50_obj_ctrl;
  wire n_51_obj_ctrl;
  wire n_52_obj_ctrl;
  wire n_52_vga_ctrl;
  wire n_53_obj_ctrl;
  wire n_53_vga_ctrl;
  wire n_54_vga_ctrl;
  wire n_55_obj_ctrl;
  wire n_55_vga_ctrl;
  wire n_56_obj_ctrl;
  wire n_56_vga_ctrl;
  wire n_57_obj_ctrl;
  wire n_57_vga_ctrl;
  wire n_58_obj_ctrl;
  wire n_58_vga_ctrl;
  wire n_59_obj_ctrl;
  wire n_5_RS232;
  wire n_5_game_ctrl;
  wire n_5_vga_ctrl;
  wire n_60_obj_ctrl;
  wire n_60_vga_ctrl;
  wire n_61_obj_ctrl;
  wire n_61_vga_ctrl;
  wire n_62_obj_ctrl;
  wire n_62_vga_ctrl;
  wire n_63_obj_ctrl;
  wire n_63_vga_ctrl;
  wire n_64_obj_ctrl;
  wire n_64_vga_ctrl;
  wire n_65_vga_ctrl;
  wire n_66_obj_ctrl;
  wire n_66_vga_ctrl;
  wire n_67_obj_ctrl;
  wire n_67_vga_ctrl;
  wire n_68_obj_ctrl;
  wire n_68_vga_ctrl;
  wire n_69_obj_ctrl;
  wire n_69_vga_ctrl;
  wire n_6_RS232;
  wire n_6_codeur;
  wire n_6_vga_ctrl;
  wire n_70_obj_ctrl;
  wire n_70_vga_ctrl;
  wire n_71_obj_ctrl;
  wire n_71_vga_ctrl;
  wire n_72_obj_ctrl;
  wire n_72_vga_ctrl;
  wire n_73_obj_ctrl;
  wire n_73_vga_ctrl;
  wire n_74_obj_ctrl;
  wire n_74_vga_ctrl;
  wire n_75_obj_ctrl;
  wire n_75_vga_ctrl;
  wire n_76_vga_ctrl;
  wire n_77_vga_ctrl;
  wire n_78_vga_ctrl;
  wire n_79_vga_ctrl;
  wire n_7_VGA_green_OBUF_inst_i_21;
  wire n_7_codeur;
  wire n_7_vga_ctrl;
  wire n_81_vga_ctrl;
  wire n_82_vga_ctrl;
  wire n_83_obj_ctrl;
  wire n_83_vga_ctrl;
  wire n_84_vga_ctrl;
  wire n_85_vga_ctrl;
  wire n_86_vga_ctrl;
  wire n_87_vga_ctrl;
  wire n_88_vga_ctrl;
  wire n_89_vga_ctrl;
  wire n_8_game_ctrl;
  wire n_8_vga_ctrl;
  wire n_90_vga_ctrl;
  wire n_91_obj_ctrl;
  wire n_91_vga_ctrl;
  wire n_92_obj_ctrl;
  wire n_92_vga_ctrl;
  wire n_93_obj_ctrl;
  wire n_93_vga_ctrl;
  wire n_94_vga_ctrl;
  wire n_95_vga_ctrl;
  wire n_96_vga_ctrl;
  wire n_97_vga_ctrl;
  wire n_98_vga_ctrl;
  wire n_99_vga_ctrl;
  wire n_9_game_ctrl;
  wire n_9_obj_ctrl;
  wire n_9_vga_ctrl;
  wire no_brick;
  wire nord;
  wire nord_IBUF;
  wire ouest;
  wire ouest_IBUF;
  wire own_rot_left;
  wire pad_center_bounce;
  wire \pad_ctrl/gtOp20_in ;
  wire \pad_ctrl/gtOp22_in ;
  wire \pad_ctrl/gtOp25_in ;
  wire \pad_ctrl/gtOp28_in ;
  wire \pad_ctrl/leqOp ;
  wire \pad_ctrl/leqOp21_in ;
  wire \pad_ctrl/leqOp27_in ;
  wire \pad_ctrl/leqOp32_in ;
  wire [9:1]\pad_ctrl/plusOp10 ;
  wire [9:2]\pad_ctrl/plusOp12 ;
  wire [9:1]\pad_ctrl/plusOp14 ;
  wire [9:1]\pad_ctrl/plusOp16 ;
  wire [9:1]\pad_ctrl/plusOp8 ;
  wire [9:1]\pad_ctrl/xpad_reg ;
  wire [8:2]\pad_ctrl/ypong_left ;
  wire [8:2]\pad_ctrl/ypong_right ;
  wire pad_far_left_bounce;
  wire pad_far_right_bounce;
  wire pad_left_bounce;
  wire pad_right_bounce;
  wire pong_left_bounce;
  wire pong_right_bounce;
  wire rightbounce;
  wire rot_a;
  wire rot_a_IBUF;
  wire rot_b;
  wire rot_b_IBUF;
  wire rot_button;
  wire rot_button_IBUF;
  wire rxd;
  wire rxd_IBUF;
  wire sud;
  wire sud_IBUF;
  wire txd;
  wire txd_OBUF;
  wire vsync;
  wire vsync_OBUF;
  wire [9:0]xpos;
  wire ybounce;
  wire [9:0]ypos;
  wire [3:0]NLW_VGA_green_OBUF_inst_i_21_CO_UNCONNECTED;
  wire [3:1]NLW_VGA_green_OBUF_inst_i_21_O_UNCONNECTED;

ip_uart RS232
       (.CLK(clk25_BUFG),
        .D({n_10_codeur,n_11_codeur,n_12_codeur,n_13_codeur}),
        .E(\direction/rqt_TX19_out ),
        .I1(n_9_obj_ctrl),
        .I2(RX_CLK_BUFG),
        .I3(n_23_game_ctrl),
        .I4(n_15_game_ctrl),
        .I5(n_18_game_ctrl),
        .O1(n_2_RS232),
        .O2(n_4_RS232),
        .O3(n_5_RS232),
        .O4(n_6_RS232),
        .O5(txd_OBUF),
        .Q(\master_slave_select/EP ),
        .RS232_left(\direction/RS232_left ),
        .RS232_right(\direction/RS232_right ),
        .RX_CLK(RX_CLK),
        .p_15_in(\direction/p_15_in ),
        .rqt_TX17_out(\direction/rqt_TX17_out ),
        .rxd_IBUF(rxd_IBUF));
BUFG RX_CLK_BUFG_inst
       (.I(RX_CLK),
        .O(RX_CLK_BUFG));
IBUF S0_IBUF_inst
       (.I(S0),
        .O(S0_IBUF));
IBUF S1_IBUF_inst
       (.I(S1),
        .O(S1_IBUF));
IBUF S2_IBUF_inst
       (.I(S2),
        .O(S2_IBUF));
IBUF S3_IBUF_inst
       (.I(S3),
        .O(S3_IBUF));
OBUF VGA_blue_OBUF_inst
       (.I(VGA_blue_OBUF),
        .O(VGA_blue));
OBUF VGA_green_OBUF_inst
       (.I(VGA_green_OBUF),
        .O(VGA_green));
CARRY4 VGA_green_OBUF_inst_i_21
       (.CI(n_70_obj_ctrl),
        .CO(NLW_VGA_green_OBUF_inst_i_21_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_VGA_green_OBUF_inst_i_21_O_UNCONNECTED[3:1],n_7_VGA_green_OBUF_inst_i_21}),
        .S({1'b0,1'b0,1'b0,n_0_VGA_green_OBUF_inst_i_38}));
LUT2 #(
    .INIT(4'h9)) 
     VGA_green_OBUF_inst_i_38
       (.I0(n_71_obj_ctrl),
        .I1(n_7_VGA_green_OBUF_inst_i_21),
        .O(n_0_VGA_green_OBUF_inst_i_38));
OBUF VGA_red_OBUF_inst
       (.I(VGA_red_OBUF),
        .O(VGA_red));
LUT2 #(
    .INIT(4'h8)) 
     VGA_red_OBUF_inst_i_6
       (.I0(\pad_ctrl/gtOp20_in ),
        .I1(\pad_ctrl/leqOp ),
        .O(n_0_VGA_red_OBUF_inst_i_6));
button_mgr buttons
       (.CLK(clk25_BUFG),
        .D(master_slave_rqt),
        .I1(n_9_obj_ctrl),
        .est_IBUF(est_IBUF),
        .game_rqt(game_rqt),
        .nord_IBUF(nord_IBUF),
        .sud_IBUF(sud_IBUF));
BUFG clk100_IBUF_BUFG_inst
       (.I(clk100_IBUF),
        .O(clk100_IBUF_BUFG));
IBUF clk100_IBUF_inst
       (.I(clk100),
        .O(clk100_IBUF));
BUFG clk25_BUFG_inst
       (.I(clk25),
        .O(clk25_BUFG));
ClkDiv clkgen
       (.CLK(clk100_IBUF_BUFG),
        .I1(n_9_obj_ctrl),
        .clk25(clk25));
ip_rotary codeur
       (.CLK(clk25_BUFG),
        .CO(n_0_codeur),
        .D({n_1_codeur,n_2_codeur,n_3_codeur,n_4_codeur}),
        .E(\direction/rqt_TX19_out ),
        .I1(n_9_obj_ctrl),
        .I2(n_6_RS232),
        .O1({n_10_codeur,n_11_codeur,n_12_codeur,n_13_codeur}),
        .O2(n_14_codeur),
        .Q(\pad_ctrl/xpad_reg [4:2]),
        .S({n_162_obj_ctrl,n_163_obj_ctrl}),
        .out({n_6_codeur,n_7_codeur}),
        .own_rot_left(own_rot_left),
        .p_15_in(\direction/p_15_in ),
        .rot_a_IBUF(rot_a_IBUF),
        .rot_b_IBUF(rot_b_IBUF),
        .rot_button_IBUF(rot_button_IBUF),
        .rqt_TX17_out(\direction/rqt_TX17_out ));
IBUF est_IBUF_inst
       (.I(est),
        .O(est_IBUF));
game game_ctrl
       (.CO(n_42_obj_ctrl),
        .D(master_slave_rqt),
        .E(n_2_game_ctrl),
        .I1(n_9_obj_ctrl),
        .I10(n_27_vga_ctrl),
        .I11(n_2_RS232),
        .I12(n_40_vga_ctrl),
        .I13(n_39_vga_ctrl),
        .I2(n_160_obj_ctrl),
        .I3(n_83_obj_ctrl),
        .I4(n_75_obj_ctrl),
        .I5(n_161_obj_ctrl),
        .I6(n_41_vga_ctrl),
        .I7(n_4_RS232),
        .I8(n_6_RS232),
        .I9(n_5_RS232),
        .O1(n_4_game_ctrl),
        .O10(n_18_game_ctrl),
        .O11(n_20_game_ctrl),
        .O12(n_21_game_ctrl),
        .O13(n_22_game_ctrl),
        .O14(n_23_game_ctrl),
        .O2(n_5_game_ctrl),
        .O3(n_8_game_ctrl),
        .O4(n_9_game_ctrl),
        .O5(n_11_game_ctrl),
        .O6(n_12_game_ctrl),
        .O7(n_13_game_ctrl),
        .O8(n_15_game_ctrl),
        .O9(\master_slave_select/EP ),
        .Q(xpos[9:8]),
        .RS232_left(\direction/RS232_left ),
        .RS232_right(\direction/RS232_right ),
        .S0_IBUF(S0_IBUF),
        .clk25_BUFG(clk25_BUFG),
        .etat_present(\game_manager/etat_present ),
        .game_lost(game_lost),
        .game_rqt(game_rqt),
        .led_OBUF(led_OBUF),
        .no_brick(no_brick),
        .out(n_7_codeur),
        .out4(n_3_game_ctrl),
        .out5(n_14_game_ctrl),
        .p_15_in(\direction/p_15_in ),
        .precFrame(\mmode/MAETAT/precFrame ),
        .precFrame07_out(\mmode/MAETAT/precFrame07_out ),
        .rot_button_IBUF(rot_button_IBUF));
OBUF hsync_OBUF_inst
       (.I(hsync_OBUF),
        .O(hsync));
OBUF \led_OBUF[0]_inst 
       (.I(led_OBUF),
        .O(led[0]));
OBUF \led_OBUF[1]_inst 
       (.I(led_OBUF),
        .O(led[1]));
OBUF \led_OBUF[2]_inst 
       (.I(led_OBUF),
        .O(led[2]));
OBUF \led_OBUF[3]_inst 
       (.I(led_OBUF),
        .O(led[3]));
OBUF \led_OBUF[4]_inst 
       (.I(led_OBUF),
        .O(led[4]));
OBUF \led_OBUF[5]_inst 
       (.I(led_OBUF),
        .O(led[5]));
OBUF \led_OBUF[6]_inst 
       (.I(led_OBUF),
        .O(led[6]));
OBUF \led_OBUF[7]_inst 
       (.I(led_OBUF),
        .O(led[7]));
IBUF nord_IBUF_inst
       (.I(nord),
        .O(nord_IBUF));
objects obj_ctrl
       (.CO(\pad_ctrl/leqOp32_in ),
        .D(n_86_vga_ctrl),
        .DI(n_85_vga_ctrl),
        .E(n_2_game_ctrl),
        .I1(n_101_vga_ctrl),
        .I10(n_9_vga_ctrl),
        .I11(n_10_vga_ctrl),
        .I12(n_11_vga_ctrl),
        .I13(n_12_vga_ctrl),
        .I14(n_13_vga_ctrl),
        .I15(n_14_vga_ctrl),
        .I16(n_15_vga_ctrl),
        .I17(n_16_vga_ctrl),
        .I18(n_17_vga_ctrl),
        .I19(n_70_vga_ctrl),
        .I2(n_2_vga_ctrl),
        .I20(n_71_vga_ctrl),
        .I21(n_72_vga_ctrl),
        .I22(n_73_vga_ctrl),
        .I23(n_75_vga_ctrl),
        .I24(n_76_vga_ctrl),
        .I25(n_82_vga_ctrl),
        .I26(n_77_vga_ctrl),
        .I27(n_81_vga_ctrl),
        .I28(n_78_vga_ctrl),
        .I29(n_79_vga_ctrl),
        .I3(n_3_vga_ctrl),
        .I30(n_83_vga_ctrl),
        .I31(n_0_codeur),
        .I32(n_69_vga_ctrl),
        .I33(n_84_vga_ctrl),
        .I34(n_58_vga_ctrl),
        .I35(n_56_vga_ctrl),
        .I36(n_57_vga_ctrl),
        .I37(n_60_vga_ctrl),
        .I38(n_52_vga_ctrl),
        .I39({n_61_vga_ctrl,n_62_vga_ctrl}),
        .I4(n_4_vga_ctrl),
        .I40(n_64_vga_ctrl),
        .I41(n_63_vga_ctrl),
        .I42(n_14_codeur),
        .I43(n_39_vga_ctrl),
        .I44(n_3_game_ctrl),
        .I45(\master_slave_select/EP ),
        .I46(n_9_game_ctrl),
        .I47(ypos),
        .I48(xpos),
        .I49(n_87_vga_ctrl),
        .I5(n_5_vga_ctrl),
        .I50(\ball_ctrl/geqOp10_in ),
        .I51(\ball_ctrl/geqOp ),
        .I52(\pad_ctrl/gtOp28_in ),
        .I53(\pad_ctrl/gtOp25_in ),
        .I54(\pad_ctrl/gtOp22_in ),
        .I55(n_74_vga_ctrl),
        .I56(\fond_ecran/gtOp2_in ),
        .I57(n_55_vga_ctrl),
        .I58(\pad_ctrl/leqOp ),
        .I59(\pad_ctrl/gtOp20_in ),
        .I6(n_6_vga_ctrl),
        .I60(n_7_VGA_green_OBUF_inst_i_21),
        .I61(n_8_game_ctrl),
        .I62(n_5_game_ctrl),
        .I63({n_1_codeur,n_2_codeur,n_3_codeur,n_4_codeur}),
        .I64({n_97_vga_ctrl,n_98_vga_ctrl,n_99_vga_ctrl,n_100_vga_ctrl}),
        .I65({n_93_vga_ctrl,n_94_vga_ctrl,n_95_vga_ctrl,n_96_vga_ctrl}),
        .I66({n_91_vga_ctrl,n_92_vga_ctrl}),
        .I67({n_65_vga_ctrl,n_66_vga_ctrl,n_67_vga_ctrl}),
        .I68({n_88_vga_ctrl,n_89_vga_ctrl,n_90_vga_ctrl}),
        .I69({n_53_vga_ctrl,n_54_vga_ctrl}),
        .I7(n_7_vga_ctrl),
        .I8(n_8_vga_ctrl),
        .I9(n_102_vga_ctrl),
        .O({n_66_obj_ctrl,n_67_obj_ctrl,n_68_obj_ctrl,n_69_obj_ctrl}),
        .O1(n_9_obj_ctrl),
        .O10(n_70_obj_ctrl),
        .O11({n_71_obj_ctrl,n_72_obj_ctrl,n_73_obj_ctrl,n_74_obj_ctrl}),
        .O12(n_75_obj_ctrl),
        .O13(\pad_ctrl/ypong_left ),
        .O14(n_83_obj_ctrl),
        .O15(\pad_ctrl/ypong_right ),
        .O16({n_91_obj_ctrl,n_92_obj_ctrl,n_93_obj_ctrl}),
        .O17({n_102_obj_ctrl,n_103_obj_ctrl,n_104_obj_ctrl}),
        .O18(n_114_obj_ctrl),
        .O19(n_133_obj_ctrl),
        .O2(\pad_ctrl/leqOp21_in ),
        .O20({n_134_obj_ctrl,n_135_obj_ctrl}),
        .O21(n_136_obj_ctrl),
        .O22({n_137_obj_ctrl,n_138_obj_ctrl,n_139_obj_ctrl}),
        .O23(n_140_obj_ctrl),
        .O24(n_141_obj_ctrl),
        .O25(n_142_obj_ctrl),
        .O26(n_143_obj_ctrl),
        .O27(n_144_obj_ctrl),
        .O28(n_145_obj_ctrl),
        .O29(n_146_obj_ctrl),
        .O3(\pad_ctrl/leqOp27_in ),
        .O30({n_147_obj_ctrl,n_148_obj_ctrl,n_149_obj_ctrl,n_150_obj_ctrl}),
        .O31({n_151_obj_ctrl,n_152_obj_ctrl,n_153_obj_ctrl,n_154_obj_ctrl}),
        .O32(n_155_obj_ctrl),
        .O33(n_156_obj_ctrl),
        .O34(n_157_obj_ctrl),
        .O35(n_158_obj_ctrl),
        .O36(n_159_obj_ctrl),
        .O37(n_160_obj_ctrl),
        .O38(n_161_obj_ctrl),
        .O39({n_162_obj_ctrl,n_163_obj_ctrl}),
        .O4(n_42_obj_ctrl),
        .O40({n_164_obj_ctrl,n_165_obj_ctrl,n_166_obj_ctrl}),
        .O41(n_167_obj_ctrl),
        .O42({n_168_obj_ctrl,n_169_obj_ctrl,n_170_obj_ctrl}),
        .O43(n_171_obj_ctrl),
        .O44(n_172_obj_ctrl),
        .O45(n_174_obj_ctrl),
        .O46(n_175_obj_ctrl),
        .O47(n_176_obj_ctrl),
        .O48(n_177_obj_ctrl),
        .O49({n_179_obj_ctrl,n_180_obj_ctrl,n_181_obj_ctrl}),
        .O5(n_43_obj_ctrl),
        .O50(n_182_obj_ctrl),
        .O51(n_192_obj_ctrl),
        .O6({n_44_obj_ctrl,n_45_obj_ctrl,n_46_obj_ctrl,n_47_obj_ctrl,n_48_obj_ctrl,n_49_obj_ctrl,n_50_obj_ctrl,n_51_obj_ctrl,n_52_obj_ctrl,n_53_obj_ctrl}),
        .O7(\ball_ctrl/leqOp ),
        .O8({n_55_obj_ctrl,n_56_obj_ctrl,n_57_obj_ctrl,n_58_obj_ctrl,n_59_obj_ctrl,n_60_obj_ctrl,n_61_obj_ctrl,n_62_obj_ctrl,n_63_obj_ctrl,n_64_obj_ctrl}),
        .O9(\ball_ctrl/leqOp9_in ),
        .Q(\pad_ctrl/xpad_reg ),
        .RS232_right(\direction/RS232_right ),
        .S(n_68_vga_ctrl),
        .S0_IBUF(S0_IBUF),
        .S2_IBUF(S2_IBUF),
        .S3_IBUF(S3_IBUF),
        .barrier_bounce(barrier_bounce),
        .\brick_bounce[0] (\brick_bounce[0] ),
        .\brick_bounce[1] (\brick_bounce[1] ),
        .clk25_BUFG(clk25_BUFG),
        .game_lost(game_lost),
        .leftbounce(leftbounce),
        .no_brick(no_brick),
        .ouest_IBUF(ouest_IBUF),
        .out(n_6_codeur),
        .own_rot_left(own_rot_left),
        .p_15_in(\direction/p_15_in ),
        .p_1_out(\fond_ecran/ltOp3_in ),
        .pad_center_bounce(pad_center_bounce),
        .pad_far_left_bounce(pad_far_left_bounce),
        .pad_far_right_bounce(pad_far_right_bounce),
        .pad_left_bounce(pad_left_bounce),
        .pad_right_bounce(pad_right_bounce),
        .plusOp10(\pad_ctrl/plusOp10 ),
        .plusOp12(\pad_ctrl/plusOp12 ),
        .plusOp14(\pad_ctrl/plusOp14 ),
        .plusOp16(\pad_ctrl/plusOp16 ),
        .plusOp8(\pad_ctrl/plusOp8 ),
        .pong_left_bounce(pong_left_bounce),
        .pong_right_bounce(pong_right_bounce),
        .rightbounce(rightbounce),
        .ybounce(ybounce));
IBUF ouest_IBUF_inst
       (.I(ouest),
        .O(ouest_IBUF));
IBUF rot_a_IBUF_inst
       (.I(rot_a),
        .O(rot_a_IBUF));
IBUF rot_b_IBUF_inst
       (.I(rot_b),
        .O(rot_b_IBUF));
IBUF rot_button_IBUF_inst
       (.I(rot_button),
        .O(rot_button_IBUF));
IBUF rxd_IBUF_inst
       (.I(rxd),
        .O(rxd_IBUF));
IBUF sud_IBUF_inst
       (.I(sud),
        .O(sud_IBUF));
OBUF txd_OBUF_inst
       (.I(txd_OBUF),
        .O(txd));
VGA vga_ctrl
       (.CO(\pad_ctrl/leqOp32_in ),
        .D(n_86_vga_ctrl),
        .DI(n_85_vga_ctrl),
        .I1(n_9_obj_ctrl),
        .I10(n_20_game_ctrl),
        .I11(n_21_game_ctrl),
        .I12(n_12_game_ctrl),
        .I13(\pad_ctrl/ypong_left ),
        .I14(\pad_ctrl/xpad_reg ),
        .I15(\pad_ctrl/ypong_right ),
        .I16(n_146_obj_ctrl),
        .I17(n_145_obj_ctrl),
        .I18({n_44_obj_ctrl,n_45_obj_ctrl,n_46_obj_ctrl,n_47_obj_ctrl,n_48_obj_ctrl,n_49_obj_ctrl,n_50_obj_ctrl,n_51_obj_ctrl,n_52_obj_ctrl,n_53_obj_ctrl}),
        .I19({n_55_obj_ctrl,n_56_obj_ctrl,n_57_obj_ctrl,n_58_obj_ctrl,n_59_obj_ctrl,n_60_obj_ctrl,n_61_obj_ctrl,n_62_obj_ctrl,n_63_obj_ctrl,n_64_obj_ctrl}),
        .I2({n_91_obj_ctrl,n_92_obj_ctrl,n_93_obj_ctrl}),
        .I20(n_156_obj_ctrl),
        .I21(n_157_obj_ctrl),
        .I22({n_71_obj_ctrl,n_72_obj_ctrl,n_73_obj_ctrl,n_74_obj_ctrl}),
        .I23(n_140_obj_ctrl),
        .I24(n_141_obj_ctrl),
        .I25(n_142_obj_ctrl),
        .I26(n_177_obj_ctrl),
        .I27(n_176_obj_ctrl),
        .I28(n_14_game_ctrl),
        .I29(\pad_ctrl/leqOp27_in ),
        .I3(n_43_obj_ctrl),
        .I30(\pad_ctrl/leqOp21_in ),
        .I31(n_143_obj_ctrl),
        .I32(n_69_vga_ctrl),
        .I33(n_0_VGA_red_OBUF_inst_i_6),
        .I34(n_58_vga_ctrl),
        .I35(n_56_vga_ctrl),
        .I36(n_57_vga_ctrl),
        .I37(n_60_vga_ctrl),
        .I38(n_52_vga_ctrl),
        .I39({n_61_vga_ctrl,n_62_vga_ctrl}),
        .I4(n_13_game_ctrl),
        .I40(n_64_vga_ctrl),
        .I41(n_63_vga_ctrl),
        .I42(n_11_game_ctrl),
        .I43(n_174_obj_ctrl),
        .I44(n_175_obj_ctrl),
        .I45(n_144_obj_ctrl),
        .I46(n_159_obj_ctrl),
        .I5(n_172_obj_ctrl),
        .I50(\ball_ctrl/geqOp10_in ),
        .I51(\ball_ctrl/geqOp ),
        .I52(\pad_ctrl/gtOp28_in ),
        .I53(\pad_ctrl/gtOp25_in ),
        .I54(\pad_ctrl/gtOp22_in ),
        .I56(\fond_ecran/gtOp2_in ),
        .I58(\pad_ctrl/leqOp ),
        .I59(\pad_ctrl/gtOp20_in ),
        .I6(n_22_game_ctrl),
        .I60(n_7_VGA_green_OBUF_inst_i_21),
        .I64({n_97_vga_ctrl,n_98_vga_ctrl,n_99_vga_ctrl,n_100_vga_ctrl}),
        .I65({n_93_vga_ctrl,n_94_vga_ctrl,n_95_vga_ctrl,n_96_vga_ctrl}),
        .I66({n_91_vga_ctrl,n_92_vga_ctrl}),
        .I67({n_65_vga_ctrl,n_66_vga_ctrl,n_67_vga_ctrl}),
        .I68({n_88_vga_ctrl,n_89_vga_ctrl,n_90_vga_ctrl}),
        .I69({n_53_vga_ctrl,n_54_vga_ctrl}),
        .I7(n_4_game_ctrl),
        .I8(\ball_ctrl/leqOp9_in ),
        .I9(\ball_ctrl/leqOp ),
        .O({n_66_obj_ctrl,n_67_obj_ctrl,n_68_obj_ctrl,n_69_obj_ctrl}),
        .O1(n_2_vga_ctrl),
        .O10(n_11_vga_ctrl),
        .O11(n_12_vga_ctrl),
        .O12(n_13_vga_ctrl),
        .O13(n_14_vga_ctrl),
        .O14(n_15_vga_ctrl),
        .O15(n_16_vga_ctrl),
        .O16(n_17_vga_ctrl),
        .O17({n_102_obj_ctrl,n_103_obj_ctrl,n_104_obj_ctrl}),
        .O18(n_114_obj_ctrl),
        .O19(n_133_obj_ctrl),
        .O2(n_3_vga_ctrl),
        .O20({n_134_obj_ctrl,n_135_obj_ctrl}),
        .O21(n_136_obj_ctrl),
        .O22({n_137_obj_ctrl,n_138_obj_ctrl,n_139_obj_ctrl}),
        .O23(n_27_vga_ctrl),
        .O24(n_39_vga_ctrl),
        .O25(n_40_vga_ctrl),
        .O26(n_41_vga_ctrl),
        .O27(ypos),
        .O28(n_55_vga_ctrl),
        .O29(n_70_vga_ctrl),
        .O3(n_4_vga_ctrl),
        .O30({n_147_obj_ctrl,n_148_obj_ctrl,n_149_obj_ctrl,n_150_obj_ctrl}),
        .O31({n_151_obj_ctrl,n_152_obj_ctrl,n_153_obj_ctrl,n_154_obj_ctrl}),
        .O32(n_155_obj_ctrl),
        .O33(n_71_vga_ctrl),
        .O34(n_72_vga_ctrl),
        .O35(n_158_obj_ctrl),
        .O36(n_73_vga_ctrl),
        .O37(n_74_vga_ctrl),
        .O38(n_75_vga_ctrl),
        .O39(n_76_vga_ctrl),
        .O4(n_5_vga_ctrl),
        .O40({n_164_obj_ctrl,n_165_obj_ctrl,n_166_obj_ctrl}),
        .O41(n_167_obj_ctrl),
        .O42({n_168_obj_ctrl,n_169_obj_ctrl,n_170_obj_ctrl}),
        .O43(n_171_obj_ctrl),
        .O44(n_77_vga_ctrl),
        .O45(n_78_vga_ctrl),
        .O46(n_79_vga_ctrl),
        .O47(n_81_vga_ctrl),
        .O48(n_82_vga_ctrl),
        .O49({n_179_obj_ctrl,n_180_obj_ctrl,n_181_obj_ctrl}),
        .O5(n_6_vga_ctrl),
        .O50(n_182_obj_ctrl),
        .O51(n_192_obj_ctrl),
        .O52(n_83_vga_ctrl),
        .O53(n_84_vga_ctrl),
        .O54(n_87_vga_ctrl),
        .O55(n_101_vga_ctrl),
        .O56(n_102_vga_ctrl),
        .O6(n_7_vga_ctrl),
        .O7(n_8_vga_ctrl),
        .O8(n_9_vga_ctrl),
        .O9(n_10_vga_ctrl),
        .Q(xpos),
        .S(n_68_vga_ctrl),
        .S1_IBUF(S1_IBUF),
        .S3_IBUF(S3_IBUF),
        .VGA_blue_OBUF(VGA_blue_OBUF),
        .VGA_green_OBUF(VGA_green_OBUF),
        .VGA_red_OBUF(VGA_red_OBUF),
        .barrier_bounce(barrier_bounce),
        .\brick_bounce[0] (\brick_bounce[0] ),
        .\brick_bounce[1] (\brick_bounce[1] ),
        .clk25_BUFG(clk25_BUFG),
        .etat_present(\game_manager/etat_present ),
        .game_lost(game_lost),
        .hsync_OBUF(hsync_OBUF),
        .leftbounce(leftbounce),
        .no_brick(no_brick),
        .p_15_in(\direction/p_15_in ),
        .p_1_out(\fond_ecran/ltOp3_in ),
        .pad_center_bounce(pad_center_bounce),
        .pad_far_left_bounce(pad_far_left_bounce),
        .pad_far_right_bounce(pad_far_right_bounce),
        .pad_left_bounce(pad_left_bounce),
        .pad_right_bounce(pad_right_bounce),
        .plusOp10(\pad_ctrl/plusOp10 ),
        .plusOp12(\pad_ctrl/plusOp12 ),
        .plusOp14(\pad_ctrl/plusOp14 ),
        .plusOp16(\pad_ctrl/plusOp16 ),
        .plusOp8(\pad_ctrl/plusOp8 ),
        .pong_left_bounce(pong_left_bounce),
        .pong_right_bounce(pong_right_bounce),
        .precFrame(\mmode/MAETAT/precFrame ),
        .precFrame07_out(\mmode/MAETAT/precFrame07_out ),
        .rightbounce(rightbounce),
        .vsync_OBUF(vsync_OBUF),
        .ybounce(ybounce));
OBUF vsync_OBUF_inst
       (.I(vsync_OBUF),
        .O(vsync));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

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

endmodule
`endif
