class wr_cov;

	wr_tx tx;

	covergroup wr_cg;
		WR_EN:coverpoint tx.wr_en{
			bins WRITES = {1'b1};
		}
	endgroup

	function new();
		wr_cg = new();
	endfunction

	task run();
		forever begin 
			fifo_common::wr_mon2cov.get(tx);
			wr_cg.sample();
			tx.print("wr_cov");
		end
	endtask

endclass
