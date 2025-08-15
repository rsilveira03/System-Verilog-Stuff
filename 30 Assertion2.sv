//Once signal 'a' becomes high, after 2 clock cycles 'b' should become high

module top;
	bit a,b,clk;
	
	clk = 1'b0;
	always #1 clk = ~clk;
	
	property p;
		@(posedge clk)
			a |-> ##2 b;
	endproperty

	PASS: assert property(p);

	initial begin
		a = 0;
		b = 0;
		#1;
		a = 1;
		b = 1;
		#2;
		a = 0;
		b = 0;
		#1;
		a = 1;
		#2;
		b = 1;
		#1;
		a = 0;
		b = 0;
		#2;
		a = 1;
		#2;
		b = 1;
		#30;
		$finish;
	end

	initial begin
		$fsdbDumpfile("assert2.fsdb");
		$fsdbDumpvars(0,top);
		$fsdbDumpSVA();
	end
endmodule