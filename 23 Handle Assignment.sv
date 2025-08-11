class sample;
	int a;
endclass

module sv;
	sample s1,s2,s3;
	initial begin
		s1 = new();
		s2 = new();
		s3 = new();
		s1.a = 45;
		s2 = s1;  //Handle Assignemnt
		$display ("s2.a = %0d",s2.a);  //45
		$display("s1.a = %0d",s1.a);  //45
		$display("s3.a = %0d",s3.a); //0
	end
endmodule