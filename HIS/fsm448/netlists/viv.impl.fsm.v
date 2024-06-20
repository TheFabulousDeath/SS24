// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Thu Jun 20 14:56:56 2024
// Host        : o9020-hfd running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force netlists/viv.impl.fsm.v
// Design      : studentenleben
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "56751707" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module studentenleben
   (clk,
    rst,
    start_exam,
    exam_passed,
    \output );
  input clk;
  input rst;
  input start_exam;
  input exam_passed;
  output [1:0]\output ;

  wire \<const0> ;
  wire \<const1> ;
  wire \FSM_sequential_r[state][0]_i_1_n_0 ;
  wire \FSM_sequential_r[state][1]_i_1_n_0 ;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire exam_passed;
  wire exam_passed_IBUF;
  wire [1:0]\output ;
  wire [1:0]output_OBUF;
  wire \r[output][1]_i_1_n_0 ;
  wire \r[output][1]_i_2_n_0 ;
  wire [1:0]\r_reg[state] ;
  wire rst;
  wire rst_IBUF;
  wire start_exam;
  wire start_exam_IBUF;
  wire [0:0]\v[output] ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h9800)) 
    \FSM_sequential_r[state][0]_i_1 
       (.I0(\r_reg[state] [0]),
        .I1(\r_reg[state] [1]),
        .I2(start_exam_IBUF),
        .I3(rst_IBUF),
        .O(\FSM_sequential_r[state][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hA800)) 
    \FSM_sequential_r[state][1]_i_1 
       (.I0(\r_reg[state] [0]),
        .I1(\r_reg[state] [1]),
        .I2(exam_passed_IBUF),
        .I3(rst_IBUF),
        .O(\FSM_sequential_r[state][1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "exam:01,study:00,drink_beer:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_r_reg[state][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\FSM_sequential_r[state][0]_i_1_n_0 ),
        .Q(\r_reg[state] [0]),
        .R(\<const0> ));
  (* FSM_ENCODED_STATES = "exam:01,study:00,drink_beer:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_r_reg[state][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\FSM_sequential_r[state][1]_i_1_n_0 ),
        .Q(\r_reg[state] [1]),
        .R(\<const0> ));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF exam_passed_IBUF_inst
       (.I(exam_passed),
        .O(exam_passed_IBUF));
  OBUF \output[0]_INST_0 
       (.I(output_OBUF[0]),
        .O(\output [0]));
  OBUF \output[1]_INST_0 
       (.I(output_OBUF[1]),
        .O(\output [1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r[output][0]_i_1 
       (.I0(\r_reg[state] [0]),
        .I1(\r_reg[state] [1]),
        .O(\v[output] ));
  LUT1 #(
    .INIT(2'h1)) 
    \r[output][1]_i_1 
       (.I0(rst_IBUF),
        .O(\r[output][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r[output][1]_i_2 
       (.I0(\r_reg[state] [1]),
        .I1(\r_reg[state] [0]),
        .O(\r[output][1]_i_2_n_0 ));
  FDRE \r_reg[output][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\v[output] ),
        .Q(output_OBUF[0]),
        .R(\r[output][1]_i_1_n_0 ));
  FDRE \r_reg[output][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\r[output][1]_i_2_n_0 ),
        .Q(output_OBUF[1]),
        .R(\r[output][1]_i_1_n_0 ));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  IBUF start_exam_IBUF_inst
       (.I(start_exam),
        .O(start_exam_IBUF));
endmodule
