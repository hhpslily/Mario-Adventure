module SevenSegment(
	output reg [6:0] display,
	output reg [3:0] digit,
	input wire rst,
	input wire clk,
    input wire [11:0] point
    );
    
    reg [15:0] clk_divider;
    reg [3:0] display_num;
    
    always @ (posedge clk, posedge rst) begin
    	if (rst) begin
    		clk_divider <= 15'b0;
    	end else begin
    		clk_divider <= clk_divider + 15'b1;
    	end
    end
    
    always @ (*) begin
    	if (rst) begin
    		display_num <= 4'b0000;
    		digit <= 4'b1111;
    	end else begin
    		case (clk_divider[15:14])
    			2'b00 : begin
                        display_num<=point%10;
    					digit <= 4'b1110;
    				end
    			2'b01 : begin
                        display_num<=(point%100)/10;
						digit <= 4'b1101;
					end
    			2'b10 : begin
                        display_num<=(point%1000)/100;
						digit <= 4'b1011;
					end
    			2'b11 : begin
                        display_num<=point/1000;                        
						digit <= 4'b0111;
					end
    			default : begin
                        display_num<=4'b0000;
						digit <= 4'b1110;
					end				
    		endcase
    	end
    end
    
    always @ (*) begin
    	case (display_num)
    		0 : display = 7'b1000000;	//0000
			1 : display = 7'b1111001;   //0001                                                
			2 : display = 7'b0100100;   //0010                                                
			3 : display = 7'b0110000;   //0011                                             
			4 : display = 7'b0011001;   //0100                                               
			5 : display = 7'b0010010;   //0101                                               
			6 : display = 7'b0000010;   //0110
			7 : display = 7'b1111000;   //0111
			8 : display = 7'b0000000;   //1000
			9 : display = 7'b0010000;	//1001
			10: display = 7'b0111111;   //-
			11: display = 7'b1111111;   //space
			default : display = 7'b1111111;
    	endcase
    end
    
endmodule
