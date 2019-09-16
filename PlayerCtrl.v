//
//
//
//

module PlayerCtrl (
	input clk,
	input reset,
	output reg [8:0] ibeat
);

always @(posedge clk, posedge reset) begin
	if (reset)
		ibeat <= 0;
	else if (ibeat < 259) 
		ibeat <= ibeat + 1;
	else 
		ibeat <= 0;
end

endmodule