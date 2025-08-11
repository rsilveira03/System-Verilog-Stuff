class sample;
	int a;
	int b;
	function void display();
		$display("inside the class");
	endfunction
endclass

class child extends sample;
endclass


module top;
	sample s;
	child c;
	initial begin
		c.a = 25;
		c.b = 50;
		c.display();
		$display("a = %0d",c.a);
		$display("b = %0d",c.b);
	end
endmodule