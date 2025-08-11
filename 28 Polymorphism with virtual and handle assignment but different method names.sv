class parent;
	int a = 10;
	virtual function void print1();
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
		p = c;
		p.print1();  // inside base class
		c.print();  // inside child class
	end
endmodule