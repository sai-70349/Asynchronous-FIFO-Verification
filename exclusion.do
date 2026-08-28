coverage exclude -src fifo_sbd.sv -code s -line 24
coverage exclude -src fifo_sbd.sv -code b -line 20 -item 1 -allfalse
coverage exclude -src fifo_sbd.sv -code b -line 11 24
coverage exclude -src fifo_sbd.sv -code c -line 11-20 23
coverage exclude -src fifo_top.sv -code c
coverage exclude -src rd_gen.sv -code s
coverage exclude -src wr_gen.sv -code s
coverage exclude -scope /tb -togglenode res
coverage exclude -scope /tb/pif -togglenode overflow res underflow
coverage exclude -scope /tb/dut -togglenode {i[0]} {i[1]} {i[2]} {i[3]} {i[4]} {i[5]} {i[6]} {i[7]} {i[8]} {i[9]}
coverage exclude -scope /tb/dut -togglenode {i[10]} {i[11]} {i[12]} {i[13]} {i[14]} {i[15]} {i[16]} {i[17]} {i[18]} {i[19]}
coverage exclude -scope /tb/dut -togglenode {i[20]} {i[21]} {i[22]} {i[23]} {i[24]} {i[25]} {i[26]} {i[27]} {i[28]} {i[29]}
coverage exclude -scope /tb/dut -togglenode {i[30]} {i[31]} overflow underflow
coverage exclude -code a -du work.list_svh_unit -src wr_gen.sv -line 35
coverage exclude -code a -du work.list_svh_unit -src rd_gen.sv -line 34
