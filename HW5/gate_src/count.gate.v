/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : L-2016.03-SP2
// Date      : Sat May 13 13:38:37 2023
/////////////////////////////////////////////////////////////


module count ( a_in, sel, clk, start, rst, done, cntout );
  input [7:0] a_in;
  input [1:0] sel;
  output [7:0] cntout;
  input clk, start, rst;
  output done;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43,
         N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57,
         N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N70, N71,
         N72, N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, N83, N84, N85,
         N86, N87, N88, N89, N90, N91, N92, N93, N94, N95, N96, N97, N98, N99,
         N100, N101, N102, N103, N104, N105, N106, N107, N108, N109, N110,
         N111, N112, N113, N114, N115, N116, N117, N118, N119, N120, N121,
         N122, N123, N124, N125, N126, N127, N128, N129, N130, N131, N132,
         N133, N134, N135, N136, N137, N138, N139, N140, N141, N142, N143,
         N144, N145, N146, N147, N148, N149, N150, N151, N152, N153, N154,
         N155, N156, N157, N158, N159, N160, N161, N162, N163, N164, N165,
         N166, N167, N168, N169, N170, N171, N172, N173, N174, N175, N176,
         N177, N178, N179, N180, net34, net35, net36;
  wire   [3:0] count_ps;
  wire   [3:0] count_ns;
  wire   [31:0] i;
  wire   [7:0] in_a;

  \**SEQGEN**  \count_ps_reg[3]  ( .clear(rst), .preset(1'b0), .next_state(
        count_ns[3]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        count_ps[3]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \count_ps_reg[2]  ( .clear(rst), .preset(1'b0), .next_state(
        count_ns[2]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        count_ps[2]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \count_ps_reg[1]  ( .clear(rst), .preset(1'b0), .next_state(
        count_ns[1]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        count_ps[1]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \count_ps_reg[0]  ( .clear(1'b0), .preset(rst), .next_state(
        count_ns[0]), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        count_ps[0]), .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(
        1'b0), .synch_enable(1'b1) );
  EQ_TC_OP eq_54 ( .A({1'b0, 1'b1, 1'b1, 1'b1}), .B({N74, N73, N72, N71, N70, 
        N69, N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, 
        N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43}), .Z(
        N75) );
  EQ_TC_OP eq_60 ( .A({1'b0, 1'b1, 1'b1, 1'b1}), .B({N117, N116, N115, N114, 
        N113, N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, 
        N101, N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, 
        N87, N86}), .Z(N118) );
  \**SEQGEN**  \i_reg[31]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N157), .enable(N125), .Q(i[31]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \i_reg[30]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N156), .enable(N125), .Q(i[30]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \i_reg[29]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N155), .enable(N125), .Q(i[29]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \i_reg[28]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N154), .enable(N125), .Q(i[28]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \i_reg[27]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N153), .enable(N125), .Q(i[27]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \i_reg[26]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N152), .enable(N125), .Q(i[26]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \i_reg[25]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N151), .enable(N125), .Q(i[25]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \i_reg[24]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N150), .enable(N125), .Q(i[24]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \i_reg[23]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N149), .enable(N125), .Q(i[23]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \i_reg[22]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N148), .enable(N125), .Q(i[22]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \i_reg[21]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N147), .enable(N125), .Q(i[21]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \i_reg[20]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N146), .enable(N125), .Q(i[20]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \i_reg[19]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N145), .enable(N125), .Q(i[19]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \i_reg[18]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N144), .enable(N125), .Q(i[18]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \i_reg[17]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N143), .enable(N125), .Q(i[17]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \i_reg[16]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N142), .enable(N125), .Q(i[16]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \i_reg[15]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N141), .enable(N125), .Q(i[15]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \i_reg[14]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N140), .enable(N125), .Q(i[14]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \i_reg[13]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N139), .enable(N125), .Q(i[13]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \i_reg[12]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N138), .enable(N125), .Q(i[12]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \i_reg[11]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N137), .enable(N125), .Q(i[11]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \i_reg[10]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N136), .enable(N125), .Q(i[10]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \i_reg[9]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N135), .enable(N125), .Q(i[9]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \i_reg[8]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N134), .enable(N125), .Q(i[8]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \i_reg[7]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N133), .enable(N125), .Q(i[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \i_reg[6]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N132), .enable(N125), .Q(i[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \i_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N131), .enable(N125), .Q(i[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \i_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N130), .enable(N125), .Q(i[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \i_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N129), .enable(N125), .Q(i[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \i_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N128), .enable(N125), .Q(i[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \i_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N127), .enable(N125), .Q(i[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \i_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N126), .enable(N125), .Q(i[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \in_a_reg[7]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N23), .enable(N124), .Q(in_a[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \in_a_reg[6]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N22), .enable(N124), .Q(in_a[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \in_a_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N21), .enable(N124), .Q(in_a[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \in_a_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N20), .enable(N124), .Q(in_a[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \in_a_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N19), .enable(N124), .Q(in_a[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \in_a_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N18), .enable(N124), .Q(in_a[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \in_a_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N17), .enable(N124), .Q(in_a[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \in_a_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), 
        .clocked_on(1'b0), .data_in(N16), .enable(N124), .Q(in_a[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \counter_reg[7]  ( .clear(1'b0), .preset(1'b0), .next_state(
        1'b0), .clocked_on(1'b0), .data_in(N166), .enable(N158), .Q(cntout[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \counter_reg[6]  ( .clear(1'b0), .preset(1'b0), .next_state(
        1'b0), .clocked_on(1'b0), .data_in(N165), .enable(N158), .Q(cntout[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \counter_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(
        1'b0), .clocked_on(1'b0), .data_in(N164), .enable(N158), .Q(cntout[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \counter_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(
        1'b0), .clocked_on(1'b0), .data_in(N163), .enable(N158), .Q(cntout[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \counter_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(
        1'b0), .clocked_on(1'b0), .data_in(N162), .enable(N158), .Q(cntout[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \counter_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(
        1'b0), .clocked_on(1'b0), .data_in(N161), .enable(N158), .Q(cntout[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \counter_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(
        1'b0), .clocked_on(1'b0), .data_in(N160), .enable(N158), .Q(cntout[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  \**SEQGEN**  \counter_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(
        1'b0), .clocked_on(1'b0), .data_in(N159), .enable(N158), .Q(cntout[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b0) );
  GTECH_NOT I_0 ( .A(sel[0]), .Z(N178) );
  GTECH_OR2 C189 ( .A(N178), .B(sel[1]), .Z(N179) );
  GTECH_NOT I_1 ( .A(N179), .Z(N180) );
  ADD_UNS_OP add_47 ( .A(cntout), .B(N7), .Z({N33, N32, N31, N30, N29, N28, 
        N27, N26}) );
  ADD_UNS_OP add_52 ( .A(cntout), .B(N7), .Z({N42, N41, N40, N39, N38, N37, 
        N36, N35}) );
  ADD_TC_OP add_53 ( .A(i), .B({1'b0, 1'b1}), .Z({N74, N73, N72, N71, N70, N69, 
        N68, N67, N66, N65, N64, N63, N62, N61, N60, N59, N58, N57, N56, N55, 
        N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43}) );
  ADD_UNS_OP add_58 ( .A(cntout), .B(N7), .Z({N85, N84, N83, N82, N81, N80, 
        N79, N78}) );
  ADD_TC_OP add_59 ( .A(i), .B({1'b0, 1'b1}), .Z({N117, N116, N115, N114, N113, 
        N112, N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, 
        N100, N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, 
        N86}) );
  SELECT_OP C191 ( .DATA1({N8, N9, N10, N11, N12, N13, N14, N15}), .DATA2(a_in), .CONTROL1(N0), .CONTROL2(N1), .Z({N23, N22, N21, N20, N19, N18, N17, N16})
         );
  GTECH_BUF B_0 ( .A(N180), .Z(N0) );
  GTECH_BUF B_1 ( .A(N179), .Z(N1) );
  GTECH_NOT I_2 ( .A(N75), .Z(N76) );
  GTECH_NOT I_3 ( .A(N118), .Z(N119) );
  SELECT_OP C194 ( .DATA1(1'b1), .DATA2(1'b0), .DATA3(1'b0), .DATA4(1'b0), 
        .DATA5(1'b0), .CONTROL1(N2), .CONTROL2(N171), .CONTROL3(N174), 
        .CONTROL4(N177), .CONTROL5(N123), .Z(N124) );
  GTECH_BUF B_2 ( .A(count_ps[0]), .Z(N2) );
  SELECT_OP C195 ( .DATA1(1'b1), .DATA2(1'b0), .DATA3(1'b1), .DATA4(1'b1), 
        .DATA5(1'b0), .CONTROL1(N2), .CONTROL2(N171), .CONTROL3(N174), 
        .CONTROL4(N177), .CONTROL5(N123), .Z(N125) );
  SELECT_OP C196 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .DATA2({N74, N73, N72, N71, N70, N69, N68, N67, N66, N65, N64, N63, N62, 
        N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, 
        N47, N46, N45, N44, N43}), .DATA3({N117, N116, N115, N114, N113, N112, 
        N111, N110, N109, N108, N107, N106, N105, N104, N103, N102, N101, N100, 
        N99, N98, N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86}), 
        .CONTROL1(N2), .CONTROL2(N174), .CONTROL3(N177), .Z({N157, N156, N155, 
        N154, N153, N152, N151, N150, N149, N148, N147, N146, N145, N144, N143, 
        N142, N141, N140, N139, N138, N137, N136, N135, N134, N133, N132, N131, 
        N130, N129, N128, N127, N126}) );
  SELECT_OP C197 ( .DATA1(1'b1), .DATA2(1'b1), .DATA3(1'b1), .DATA4(1'b1), 
        .DATA5(1'b0), .CONTROL1(N2), .CONTROL2(N171), .CONTROL3(N174), 
        .CONTROL4(N177), .CONTROL5(N123), .Z(N158) );
  SELECT_OP C198 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .DATA2({N33, N32, N31, N30, N29, N28, N27, N26}), .DATA3({N42, N41, 
        N40, N39, N38, N37, N36, N35}), .DATA4({N85, N84, N83, N82, N81, N80, 
        N79, N78}), .CONTROL1(N2), .CONTROL2(N171), .CONTROL3(N174), 
        .CONTROL4(N177), .Z({N166, N165, N164, N163, N162, N161, N160, N159})
         );
  SELECT_OP C199 ( .DATA1(N24), .DATA2(1'b1), .DATA3(1'b0), .DATA4(1'b0), 
        .DATA5(1'b0), .CONTROL1(N2), .CONTROL2(N171), .CONTROL3(N167), 
        .CONTROL4(N3), .CONTROL5(N3), .Z(count_ns[0]) );
  GTECH_BUF B_3 ( .A(1'b0), .Z(N3) );
  SELECT_OP C200 ( .DATA1({1'b0, start}), .DATA2({1'b0, 1'b0}), .DATA3({N75, 
        1'b0}), .DATA4({N118, N119}), .DATA5({1'b0, 1'b0}), .CONTROL1(N2), 
        .CONTROL2(N171), .CONTROL3(N174), .CONTROL4(N177), .CONTROL5(N123), 
        .Z(count_ns[2:1]) );
  SELECT_OP C201 ( .DATA1(N76), .DATA2(1'b0), .CONTROL1(N174), .CONTROL2(N169), 
        .Z(count_ns[3]) );
  SELECT_OP C202 ( .DATA1(1'b0), .DATA2(1'b1), .DATA3(1'b0), .DATA4(1'b0), 
        .DATA5(1'b0), .CONTROL1(N2), .CONTROL2(N171), .CONTROL3(N167), 
        .CONTROL4(N3), .CONTROL5(N3), .Z(done) );
  MUX_OP C203 ( .D0(in_a[0]), .D1(in_a[1]), .D2(in_a[2]), .D3(in_a[3]), .D4(
        in_a[4]), .D5(in_a[5]), .D6(in_a[6]), .D7(in_a[7]), .S0(N4), .S1(N5), 
        .S2(N6), .Z(N7) );
  GTECH_BUF B_4 ( .A(i[0]), .Z(N4) );
  GTECH_BUF B_5 ( .A(i[1]), .Z(N5) );
  GTECH_BUF B_6 ( .A(i[2]), .Z(N6) );
  GTECH_NOT I_4 ( .A(a_in[7]), .Z(N8) );
  GTECH_NOT I_5 ( .A(a_in[6]), .Z(N9) );
  GTECH_NOT I_6 ( .A(a_in[5]), .Z(N10) );
  GTECH_NOT I_7 ( .A(a_in[4]), .Z(N11) );
  GTECH_NOT I_8 ( .A(a_in[3]), .Z(N12) );
  GTECH_NOT I_9 ( .A(a_in[2]), .Z(N13) );
  GTECH_NOT I_10 ( .A(a_in[1]), .Z(N14) );
  GTECH_NOT I_11 ( .A(a_in[0]), .Z(N15) );
  GTECH_NOT I_12 ( .A(start), .Z(N24) );
  GTECH_BUF B_7 ( .A(N171), .Z(N25) );
  GTECH_BUF B_8 ( .A(N174), .Z(N34) );
  GTECH_BUF B_9 ( .A(N177), .Z(N77) );
  GTECH_OR2 C228 ( .A(N171), .B(count_ps[0]), .Z(N120) );
  GTECH_OR2 C229 ( .A(N174), .B(N120), .Z(N121) );
  GTECH_OR2 C230 ( .A(N177), .B(N121), .Z(N122) );
  GTECH_NOT I_13 ( .A(N122), .Z(N123) );
  GTECH_NOT I_14 ( .A(N120), .Z(N167) );
  GTECH_NOT I_15 ( .A(N174), .Z(N168) );
  GTECH_BUF B_10 ( .A(N168), .Z(N169) );
  GTECH_NOT I_16 ( .A(count_ps[0]), .Z(N170) );
  GTECH_AND2 C236 ( .A(count_ps[2]), .B(N170), .Z(N171) );
  GTECH_AND2 C237 ( .A(N25), .B(N170), .Z(net34) );
  GTECH_NOT I_17 ( .A(count_ps[2]), .Z(N172) );
  GTECH_AND2 C239 ( .A(N170), .B(N172), .Z(N173) );
  GTECH_AND2 C240 ( .A(count_ps[1]), .B(N173), .Z(N174) );
  GTECH_AND2 C241 ( .A(N34), .B(N173), .Z(net35) );
  GTECH_NOT I_18 ( .A(count_ps[1]), .Z(N175) );
  GTECH_AND2 C243 ( .A(N173), .B(N175), .Z(N176) );
  GTECH_AND2 C244 ( .A(count_ps[3]), .B(N176), .Z(N177) );
  GTECH_AND2 C245 ( .A(N77), .B(N176), .Z(net36) );
endmodule

