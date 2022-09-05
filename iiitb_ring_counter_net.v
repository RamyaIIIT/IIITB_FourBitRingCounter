/* Generated by Yosys 0.20+22 (git sha1 c26b2bf54, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module ring_counter(Clock, Reset, Count_out);
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
  input Clock;
  wire Clock;
  output [3:0] Count_out;
  wire [3:0] Count_out;
  wire [3:0] Count_temp;
  input Reset;
  wire Reset;
  sky130_fd_sc_hd__nor2b_1 _13_ (
    .A(_04_),
    .B_N(_00_),
    .Y(_06_)
  );
  sky130_fd_sc_hd__nor2b_1 _14_ (
    .A(_04_),
    .B_N(_01_),
    .Y(_07_)
  );
  sky130_fd_sc_hd__nor2b_1 _15_ (
    .A(_04_),
    .B_N(_02_),
    .Y(_08_)
  );
  sky130_fd_sc_hd__or2_0 _16_ (
    .A(_03_),
    .B(_04_),
    .X(_05_)
  );
  sky130_fd_sc_hd__dfxtp_1 _17_ (
    .CLK(Clock),
    .D(_09_),
    .Q(Count_temp[0])
  );
  sky130_fd_sc_hd__dfxtp_1 _18_ (
    .CLK(Clock),
    .D(_10_),
    .Q(Count_temp[1])
  );
  sky130_fd_sc_hd__dfxtp_1 _19_ (
    .CLK(Clock),
    .D(_11_),
    .Q(Count_temp[2])
  );
  sky130_fd_sc_hd__dfxtp_1 _20_ (
    .CLK(Clock),
    .D(_12_),
    .Q(Count_temp[3])
  );
  assign Count_out = Count_temp;
  assign _03_ = Count_temp[3];
  assign _04_ = Reset;
  assign _09_ = _05_;
  assign _00_ = Count_temp[0];
  assign _10_ = _06_;
  assign _01_ = Count_temp[1];
  assign _11_ = _07_;
  assign _02_ = Count_temp[2];
  assign _12_ = _08_;
endmodule