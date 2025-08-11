class parent;
	int a = 10;
	function void print();
		$display("inside base class");
	endfunction
endclass

class child extends parent;
	function void print();
		$display("inside child class");
	endfunction
endclass

module top;
	parent p;
	child c;
	initial begin
		p = new();
		c = new();
		p.print();  // inside base class
		c.print();  // inside child class
	end
endmodule