//Generate pattern 0 1 0 1 0 1 0 1
class sample;
	rand int a[8];
	constraint c1{foreach(a[i])
			if(i % 2 == 0)
			a[i] == 0;
			else
			a[i] == 1;}
endclass

module top;
	sample s;
	initial begin
		s = new();
		s.randomize();
		$display("a = %p",s.a);
	end
endmodule