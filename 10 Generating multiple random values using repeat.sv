class sample;
	rand int a;
	rand int b;
	constraint c1{a inside {[10:50]};}
	constraint c2{a>10;a<50;}
endclass

module top;
	sample s;
	initial begin
		s = new();
		repeat(5) begin
			s.randomize();
			$display("a = %0d, b = %0d",s.a,s.b);
		end
	end
endmodule