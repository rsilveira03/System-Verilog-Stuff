module top;
	int a[*];  //Declaration of an associative array
	int index;
	initial begin
		a[10] = 50;
		a[7] = 15;
		a[3] = 83;
		a[100] = 47;
		a[26] = 7;
		$display("a = %p",a);
		$display("size = %0d",a.num());
		a.first(index);
		$display("first element is %0d",a[index]);
		a.next(index);
		$display("next element id %0d",a[index]);
		a.prev(index);
		$display("previous element is %0d",a[index]);
		a.last(index);
		$display("last element is %0d",a[index]);
		if(a.exists(100))
			$display("element exists");
		else
			$display("element not present");
	end
endmodule