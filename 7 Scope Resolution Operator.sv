class sample;
	static int a = 10;
	static function void print();
		$display("Inside sample class");
	endfunction
endclass

module top;
	initial begin
		$display("a = %0d",sample::a);
		sample::print();
	end
endmodule