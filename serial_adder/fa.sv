module fa(
      	input ain=0,bin=0,cin=0,
      	output S_out,c_out);
assign {c_out,S_out}=ain+bin+cin;
endmodule
