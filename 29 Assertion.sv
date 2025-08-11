// 'gnt' should be high after the assertion of 'req' in the next clock cycle

module top;
	bit req, gnt, clk;
	clk = 1'b0;
	always #1 clk = ~clk;

	property p1;
		@(posedge clk)
			req |-> ##1 clk;  // or req |=> gnt;
	endproperty

	HANDSHAKE: assert(p1);

	initial begin
		req = 0;
		gnt = 0;
		#2;
		req = 1;
		#1;
		gnt = 1;
		#3;
		req = 0;
		gnt = 0;
		#5;
		req = 1;
		gnt = 1;
		#4;
		req = 1;
		#1;
		gnt = 1;
		#30;
		$finish;
	end

	initial begin
		$fsdbDumpfile("assert1.fsdb");
		$fsdbDumpvars(0,top);
		$fsdbDumpSVA();  // for assertions
	end
endmodule