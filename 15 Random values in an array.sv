sample class;
	rand int a[10];  // Static array which is capable of storing 10 values
	constraint c1{foreach(a[i]) a[i] > 5; a[i] < 50;} // randomizing those 10 values
endclass

module top;
	sample s;
	initial begin
		s = new();
		s.randomize();
		$display("a = %p",s.a);
	end
endmodule