module sv;
//	int a[10];  // Representation of static array
	int a[];    // Representation of dynamic array
	initial begin
		a = new[5];  // We are allocating the size of the array as 5
		$display("size = %0d",a.size());
		a = {1,2,3,4,5};
		a = new[10](a);  // Incase you want to retain the old values
		$display("size = %0d",a.size());
		$display("a = %p",a);
		a = new[10];  // If you don't want to retain the old values
		$display("a = %p",a);
		a.delete();   // Delete an array
		#display("size = %0d",a.size());
	end
endmodule
