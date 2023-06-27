/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : L-2016.03-SP2
// Date      : Sat May 13 13:11:08 2023
/////////////////////////////////////////////////////////////


module tb_count (  );

  tri   [7:0] a_in;
  tri   [1:0] sel;
  tri   clk;
  tri   start;
  tri   rst;
  tri   done;
  tri   [7:0] cntout;

  count count_instance ( .a_in(a_in), .sel(sel), .clk(clk), .start(start), 
        .rst(rst), .done(done), .cntout(cntout) );
  GTECH_NOT I_0 ( .A(clk), .Z(clk) );
endmodule

