mailbox mb = new();  // global declaration
class gen;
	int a = 10;
	task run();
		mb.put(a);
		$display("a = %0d",a);
	endtask
endclass

class bfm;
	int c;  // To store the value of mailbox. So that we can use that information inside bfm
	task run();
		mb.get(c);
		$display("c = %0d",c);
	endtask
endclass

module top;
	gen g;
	bfm b;
	initial begin
		g = new();
		b = new();
		g.run();
		b.run();
	end
endmodule