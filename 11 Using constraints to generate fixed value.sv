class sample;
	rand int a;
	rand int b;
	constraint c1{a == 5;}
	constraint c2{b == 10;}
endclass

module top;
	sample s;
	initial begin
		s = new();
		repeat(10) begin
			s.randomize();
			$display("a = %0d, b = %0d",s.a,s.b);
		end
	end
endmodule