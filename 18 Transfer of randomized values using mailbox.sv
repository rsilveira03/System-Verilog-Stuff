mailbox mb = new();
class gen;
	rand int a;
	constraint c1 {a inside {[10:20]};}
	task run();
		mb.put(a);
		$display("a = %0d",a);
	endtask
endclass

class bfm;
	int d;
	task run();
		mb.get(d);
		$display("d = %0d",d);
	endtask
endclass


module top;
	gen g;
	bfm b;
	initial begin
		g = new();
		b = new();
		g.randomize();
		g.run();
		b.run();
	end
endmodule