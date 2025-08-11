class sample;
	static int a;  //Static
endclass

module sv;
	sample s1,s2,s3;
	initial begin
		s1 = new();
		s2 = new();
		s3 = new();
		s1.a = 10;
		s2.a = 54;
		s3.a = 78;
		$display("s1.a = %0d",s1.a);  // 78
		$display("s2.a = %0d",s2.a);  // 78
		$display("s3.a = %0d",s3.a);  // 78
	end
endmodule