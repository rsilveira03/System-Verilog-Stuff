class sample;
	rand int a;
	rand int b;
	constraint c1{a inside {[10:50]};}  // both 10 and 50 has probability to get generated
	constraint c2{b >10;b<50;}  // 10 and 50 will be excluded
endclass


module top;
	sample s;
	initial begin
		s = new();
		s.randomize();
		$display("a = %0d, b = %0d",s.a,s.b);
	end
endmodule