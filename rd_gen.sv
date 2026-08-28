class rd_gen;

	rd_tx tx;

	task run();
		case(fifo_common::test_name)

			"FULL":begin
			end

			"EMPTY":begin
				wait(fifo_common::wr_gencount == fifo_common::wr_bfmcount);
				reads(`FIFO_SIZE);
			end

			"OVERFLOW":begin
			end

			"UNDERFLOW":begin
				wait(fifo_common::wr_gencount == fifo_common::wr_bfmcount);
				reads(`FIFO_SIZE+5);
			end

			"CONCURRENT":begin
				reads(fifo_common::N);
			end

		endcase
	endtask

	task reads(input int N);
		repeat(N) begin
			tx = new();
			assert(tx.randomize());
			fifo_common::rd_gen2bfm.put(tx);
			tx.print("rd_gen");
		end
	endtask

endclass
