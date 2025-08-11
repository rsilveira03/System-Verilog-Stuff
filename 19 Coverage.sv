class cov;
	rand bit [1:0]a;
	rand bit [1:0]b;
endclass

module top;
	cov c = new();
	covergroup cg;
		c1: coverpoint c.a {bins b1 = {0,1,2,3};}
		c2: coverpoint c.b {bins b2 = {0,1,2,3};}
	endgroup

	initial begin
		cg cg_inst = new();
		repeat (10) begin
			c.randomize();
			cg_inst.sample();
		end
	end

	initial begin
		$fsdbDumpfile("cov.fsdb");
		$fsdbDumpvars(0,top);
	end
endmodule