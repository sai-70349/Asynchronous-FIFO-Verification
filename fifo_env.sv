class fifo_env;

	wr_agent w_a;
	rd_agent r_a;
	fifo_sbd sbd;

	task run();
		w_a = new();
		r_a = new();
		sbd = new();
		fork
			w_a.run();
			r_a.run();
			sbd.wr_run();
			sbd.rd_run();
		join
	endtask

endclass
