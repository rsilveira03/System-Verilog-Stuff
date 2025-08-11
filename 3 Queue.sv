module top;
	int q[$];
	initial begin
		q = {1,17,5,4,89,6,32};
		$display("size = %0d",q.size());
		q.push_back(100);  //adding element from back size
		q.push_front(300);
		$display("q = %p",q);
		q.pop_front();
		q.pop_back();   // taking element out from backside
		$display("q = %p",q);
		q.insert(3,200);
		$display("q = %p",p);
		q.delete();
		$display("size = %0d",q.size());
	end
endmodule