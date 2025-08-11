class sample;
	rand int a;
	constraint c1{a inside {[10:50]};}
	constraint c2{a != 25;}
endclass


module top;
	sample s;
	initial begin
		s = new();
		repeat(25) begin
			s.randomize();
			$display("a = %0d",s.a);
		end
	end
endmodule