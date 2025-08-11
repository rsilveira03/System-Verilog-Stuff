class parent;
	rand bit [3:0]sel;
	rand bit [3:0]enable;
endclass

module top;
	parent p = new();
	covergroup apb;
		c1: coverpoint p.sel: {bins b1 = {2,4,5,1};}
		c2: coverpoint p.enable: {bins b2 = {1,3,2,7};}
	endgroup
	
	initial begin
		apb a = new();
		repeat(20) begin
			p.randomize();
			a.sample();
		end
	end

	initial begin
		$fsdbDumpfile("cov.fsdb");
		$fsdbDumpvars(0,top);
	end
endmodule