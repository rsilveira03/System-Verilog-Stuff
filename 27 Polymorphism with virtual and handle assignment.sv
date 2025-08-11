class parent;
	int a = 10;
	virtual function void print();
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
		p.print();  // inside child class
		c.print();  // inside child class
	end
endmodule

//conditions to achieve this polymorphism
// parent class method and child class method should have same name
// p = c;
// parent class method should be declared as virtual