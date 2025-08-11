class sample;
	rand int a;
	int b;
endclass

module top;
	sample s;
	initial begin
		s = new();
		s.randomize();
		$display("a = %0d, b = %0d",s.a,s.b); // a will be random but b will be 0 since we did not declare rand int b
	end
endmodule