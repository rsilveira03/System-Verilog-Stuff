class sample;
	rand int a;
endclass

module top;
	sample s;
	initial begin
		s = new();
		s.randomize() with {a == 10;};
		$display("a = %0d",s.a);
	end
endmodule