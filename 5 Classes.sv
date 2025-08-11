class sample;    // sample - name of the class
	int a;    // properties
	int b;
	function void display();  //method
		$display("inside the class");
	endfunction
endclass

module sv;
	sample s1,s2,s3;   //declaration of instances
	initial begin
		s1 = new();
		s2 = new();
		s3 = new();
		s1.a = 10;
		s2.b = 20;
		s3.display()
		$display("a = %0d",s.a);
		$display("b = %0d".s.b);
	end
endmodule