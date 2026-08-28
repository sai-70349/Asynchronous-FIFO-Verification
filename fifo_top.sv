module tb;

	reg wr_clk,rd_clk,res;

	fifo_intrf pif(wr_clk,rd_clk,res);


	aync_fifo dut (.wr_clk(pif.wr_clk),
				   .rd_clk(pif.rd_clk),
				   .res(pif.res),
				   .wr_en(pif.wr_en),
				   .rd_en(pif.rd_en),
				   .wdata(pif.wdata),
				   .rdata(pif.rdata),
				   .full(pif.full),
				   .empty(pif.empty),
				   .overflow(pif.overflow),
				   .underflow(pif.underflow));

	fifo_env env;
	
	always #5 wr_clk = ~wr_clk;
	always #7 rd_clk = ~rd_clk;

	initial begin
		
		wr_clk = 0;
		rd_clk = 0;
		res    = 1;
		repeat(2) @(posedge wr_clk);
		res = 0;
		
		assert($value$plusargs("test_name=%0s",fifo_common::test_name));
		assert($value$plusargs("N=%0d",fifo_common::N));
		env = new();
		env.run();
	end

	initial begin
		#4500;
		if(fifo_common::matchings !=0 && fifo_common::mismatchings == 0)begin
			$display("****************** TEST PASSED *********************");
			$display("matchings =%0d,mismatchings=%0d",fifo_common::matchings,fifo_common::mismatchings);
		end
		else begin
			$display("****************** TEST FAILED *********************");
			$display("matchings =%0d,mismatchings=%0d",fifo_common::matchings,fifo_common::mismatchings);
		end
		$finish;
	end

endmodule
