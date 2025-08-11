class parent;
	rand int a;
	constraint c1{soft a > 10;}
endclass

module top;
	parent p;
	initial begin
		p = new();
		p.randomize() with {a<10;}; 
		$display("a = %0d",p.a); // a will be less than 10 since c1 is declared as soft. If Soft is not declared then it will result in an error due to the conflict. If there is no conflict then both constraints will be applied even though soft is used
	end
endmodule