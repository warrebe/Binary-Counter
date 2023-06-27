module count#(parameter W)(
	input [W-1:0] 		  a_in,		// binary number for which we want to count the number of ones or zeros
	input [1:0]   		  sel,		// 2 bit wide select signal
	input 		  		  clk,		// clock input
	input 		  		  start,	// active high start
	input 		  		  rst,		// asynchronous active high rst
	output logic  		  done,		// done counting signal
	output logic  [W-1:0] cntout	// count output (sel=1->count 0s, sel=2->count 1s)
);

integer			i;
reg		[W-1:0] counter;
reg		[W-1:0] in_a;

// Moore machine state encoding
enum reg [3:0]{
	IDLE		= 0,
	CALC		= 1,
	DONE		= 2,
  	CALC2		= 3
} count_ps, count_ns;

// State storage for flip-flops
always_ff @(posedge clk, posedge rst)	begin				// ff -> state storage (D-latch)
	if (rst) begin
		count_ps 		<= 	IDLE;
		count_ps[IDLE] 	<= 	1'b1;
	end else		count_ps <= count_ns;
  	
end
  
always @(done) cntout = counter;

always_comb begin
  	done = 0;
	count_ns = IDLE; 							// default for ns
	case (1'b1)
		count_ps[IDLE] : begin
			if (sel == 2'b01) in_a = ~a_in;	
			else in_a = a_in;
          	i = 0;
			counter = 0;
          	if (start) 	count_ns[CALC] = 1'b1;
          	else 		count_ns[IDLE] = 1'b1;
		end
      count_ps[DONE] : begin
        	counter += in_a[i];
          	done = 1'b1;
        	count_ns[IDLE] = 1'b1;
      end
		count_ps[CALC] : begin
          	counter += in_a[i];
          	i += 1;
          	if (i == W-1)	count_ns[DONE] = 1'b1;
          	else			count_ns[CALC2] = 1'b1;
        end
      count_ps[CALC2] : begin
        	counter += in_a[i];
          	i += 1;
        	if (i == W-1)	count_ns[DONE] = 1'b1;
            else			count_ns[CALC] = 1'b1;
          end
	endcase
end
endmodule