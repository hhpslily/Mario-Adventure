module top(
   input clk,
   input rst,
   input [15:0]SW,
   inout wire PS2_DATA,
   inout wire PS2_CLK,
   output [3:0] vgaRed,
   output [3:0] vgaGreen,
   output [3:0] vgaBlue,
   output hsync,
   output vsync,
   output wire [6:0] display,
   output wire [3:0] digit,
   output [2:0]LED,
   output pmod_1,
   output pmod_2,
   output pmod_4
    );
    wire clk_25MHz;
	wire clk_22;
	wire clk_19;
    wire valid;
	wire die;
    wire [9:0] h_cnt; //640
    wire [9:0] v_cnt;  //480
	wire [9:0] x;
	wire [11:0] point;
	reg [2:0] state;
	wire [16:0] pixel_addr;
	wire [11:0] pixel;
	wire [11:0] data;
	wire nsw0;
	not n(nsw0,SW[0]);
	parameter state_RESET = 3'b000;
	parameter state_GAME  = 3'b001;
	parameter state_OVER  = 3'b010;
	parameter state_PAUSE = 3'b011;
	always @(*)begin
		if(SW[0] == 1'b0) 
			state <= state_RESET;
		else if(die==1)
			state <= state_OVER;
		else begin
			if(SW[1] == 1'b0 && SW[2]== 1'b0) 
				state <= state_GAME;
			else if(SW[2] == 1'b1)
			    state <= state_PAUSE;
			else begin
				state <= state_OVER;
			end
		end
	end
	wire p1,p2,p4;
	wire pp1,pp2,pp4;
	reg pmod_1;
	reg pmod_2;
	reg pmod_4;
	always @(SW[0])begin
		case(SW[0])
			1'b0:begin
				pmod_1=pp1;
				pmod_2=pp2;
				pmod_4=pp4;
			end
			1'b1:begin
				pmod_1=p1;
				pmod_2=p2;
				pmod_4=p4;
			end
			default:begin
				pmod_1=pp1;
				pmod_2=pp2;
				pmod_4=pp4;
			end
		endcase
	end
	music_TOP music(
	.clk(clk),
	.reset(nsw0),
	.pmod_1(p1),
	.pmod_2(p2),
	.pmod_4(p4)
	);
	music_start_TOP music_start(
	.clk(clk),
	.reset(SW[0]),
	.pmod_1(pp1),
	.pmod_2(pp2),
	.pmod_4(pp4)
	);
	clock_divisor clk_wiz_0_inst(
      .clk(clk),
      .clk1(clk_25MHz),
      .clk19(clk_19),
      .clk22(clk_22)
    );
    mem_addr_gen mem_addr_gen_inst(
        .clk(clk_22),
        .rst(rst),
        .h_cnt(h_cnt),
        .v_cnt(v_cnt),
        .pixel_addr(pixel_addr)
        );
        
      blk_mem_gen_0 blk_mem_gen_0_inst(
            .clka(clk_25MHz),
            .wea(0),
            .addra(pixel_addr),
            .dina(data[11:0]),
            .douta(pixel)
          ); 
          
	pixel_gen pixel_gen_inst(
		.clk(clk_19),
        .rst(nsw0),
		.h_cnt(h_cnt),
		.v_cnt(v_cnt),
		.x(x),
		.state(state),
		.valid(valid),
		.vgaRed(vgaRed),
		.vgaGreen(vgaGreen),
		.vgaBlue(vgaBlue),
		.point(point),
		.LED(LED),
		.die(die),
		.pixel(pixel)
    );
	SampleDisplay sampledisplay_inst(
		.display(display),
		.digit(digit),
		.PS2_DATA(PS2_DATA),
		.PS2_CLK(PS2_CLK),
		.rst(nsw0),
		.clk(clk),
		.x(x),
		.point(point),
		.state(state)
	);
    vga_controller   vga_inst(
        .pclk(clk_25MHz),
        .reset(rst),
        .hsync(hsync),
        .vsync(vsync),
        .valid(valid),
        .h_cnt(h_cnt),
        .v_cnt(v_cnt)
    );
      
endmodule
