 module tb_serial_adder;
 logic start,clk,resetn,reset,load,enable;
 logic [7:0] A,B;
 logic [8:0]sum;
 
 
 always   #5 clk=~clk;
 
 serial_adder #(8) U7(.start(start),.clk(clk),.resetn(resetn),.A(A),.B(B),.sum(sum));

initial begin
	clk=0;
        @(negedge clk)
         start=0;
   	 resetn=0;
   	 @(negedge clk) start=1;resetn=1;
	 A=8'hff;
   	 B=8'hA1;
   	 @(negedge clk) start=0;
         repeat(10)@(negedge clk);
@(negedge clk) start=1;resetn=1;
	 A=8'hAf;
   	 B=8'h71;
   	 @(negedge clk) start=0;
repeat(10)@(negedge clk);
@(negedge clk) start=1;resetn=1;
	 A=8'hfe;
   	 B=8'h91;
   	 @(negedge clk) start=0;
         repeat(10)@(negedge clk);
	 #400 $finish();
end  
endmodule
