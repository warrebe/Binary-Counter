module tb_count();

    // Inputs
  logic [7:0] a_in;
  logic [1:0] sel;
    logic clk;
    logic start;
    logic rst;

    // Outputs
    logic done;
  logic [7:0] cntout;

    // Instantiate the Unit Under Test (UUT)
  count #(.W(8)) count_instance (
    .a_in(a_in),
		.sel(sel),
		.clk(clk),
		.start(start),
		.rst(rst),
		.done(done),
		.cntout(cntout)
	);

    initial begin
      $monitor("a_in : %0b, sel = %0h, cntout = %0d", a_in, sel, cntout);
		clk = 1;
        // Initialize inputs
        rst = 1'b1;
      	#10 rst = 1'b0;

        // Wait for reset to complete
        // Test counting of zeros
        a_in = 8'b10110011;
        sel = 2'b01;
        start = 1'b1;
        #10 start = 1'b0;
        #80
      if (cntout !== 8'b00000011) $error("Test failed: expected cntout = 4'b0011 but got %0h", cntout);

        // Test counting of ones
        sel = 2'b10;
        start = 1'b1;
        #10 start = 1'b0;
        #80;
      if (cntout !== 8'b00000101) $error("Test failed: expected cntout = 4'b0101 but got %0h", cntout);

        // Test with different input value
        a_in = 8'b11001100;
        sel = 2'b01;
        start = 1'b1;
        #10 start = 1'b0;
        #80;
      if (cntout !== 4'b0100) $error("Test failed: expected cntout = 4'b0100 but got %0h", cntout);

        // Test with different select value and extra start
        sel = 2'b10;
        start = 1'b1;
        #10 start = 1'b0;
        #80
      if (cntout !== 4'b0100) $error("Test failed: expected cntout = 4'b0100 but got %0h", cntout);

       // Test done signal
		a_in = 8'b10110011;
		sel = 2'b01;
		start = 1'b1;
		#10 start = 1'b0;
		#80;
		if (!done) $error("Test failed: done signal not set after counting is complete");

		// Test counting 0s
		a_in = 8'b11001010;
		sel = 2'b01;
		start = 1'b1;
		#10 start = 1'b0;
		#80;
      if (cntout !== 4'b0100) $error("Test failed: incorrect number of 0s counted");

		// Test counting 1s
		a_in = 8'b00101100;
		sel = 2'b10;
		start = 1'b1;
		#10 start = 1'b0;
		#80;
      if (cntout !== 4'b0011) $error("Test failed: incorrect number of 1s counted");

		// Test counting with a_in containing 'z'
		a_in = 8'b101z01z1;
		sel = 2'b01;
		start = 1'b1;
		#10 start = 1'b0;
		#80;
      if (cntout !== 4'b0010) $error("Test failed: 'z' bits counted towards number of 0s got count = %0h", cntout);
		/*
		// Test different width
        // Test counting of zeros
        a_in = 16'b0000000010110011;
        sel = 2'b01;
        start = 1'b1;
        #10 start = 1'b0;
        #160
      if (cntout !== 8'b00001011) $error("Test failed: expected cntout = 4'b0011 but got %0h", cntout);

        // Test counting of ones
        sel = 2'b10;
        start = 1'b1;
        #10 start = 1'b0;
        #160;
      if (cntout !== 8'b00000101) $error("Test failed: expected cntout = 4'b0101 but got %0h", cntout);
*/
        # 20 $dumpflush;
        $stop;
    end

initial begin
	$dumpfile("test.vcd");
  	$dumpvars(1, tb_count);
end
  
always
	#5 clk = ~clk;

endmodule
