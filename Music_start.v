`define NM1 32'd523 //C_freq
`define NM2 32'd587 //D_freq
`define NM3 32'd659 //E_freq
`define NM4 32'd740 //F_freq
`define NM5 32'd784 //G_freq
`define NM6 32'd880 //A_freq
`define NM7 32'd988 //B_freq

`define NM0 32'd20000 //slience (over freq.)

module Music_start (
	input [8:0] ibeatNum,	
	output reg [31:0] tone
);

always @(*) begin
	case (ibeatNum)	
		9'd0 : tone = `NM5;	// 1/4 beat
		9'd1 : tone = `NM5;
		9'd2 : tone = `NM5;
		9'd3 : tone = `NM5;
		9'd4 : tone = `NM5;	
		9'd5 : tone = `NM0;
		9'd6 : tone = `NM5;
		9'd7 : tone = `NM5;
		9'd8 : tone = `NM5;	
		9'd9 : tone = `NM5;
		9'd10 : tone = `NM5;
		9'd11 : tone = `NM0;
		9'd12 : tone = `NM4;	
		9'd13 : tone = `NM4;
		9'd14 : tone = `NM4;
		9'd15 : tone = `NM4;
		
		9'd16 : tone = `NM2;
		9'd17 : tone = `NM2;
		9'd18 : tone = `NM2;
		9'd19 : tone = `NM2;
		9'd20 : tone = `NM2;
		9'd21 : tone = `NM2;
		9'd22 : tone = `NM2;
		9'd23 : tone = `NM2;
		9'd24 : tone = `NM2;
		9'd25 : tone = `NM2;
		9'd26 : tone = `NM2;
		9'd27 : tone = `NM2;
		9'd28 : tone = `NM7 >> 1;
		9'd29 : tone = `NM7 >> 1;
		9'd30 : tone = `NM2;
		9'd31 : tone = `NM2;
		
		9'd32 : tone = `NM5;
		9'd33 : tone = `NM5;
		9'd34 : tone = `NM5;
		9'd35 : tone = `NM5;
		9'd36 : tone = `NM5;
		9'd37 : tone = `NM0;
		9'd38 : tone = `NM5;
		9'd39 : tone = `NM5;
		9'd40 : tone = `NM5;
		9'd41 : tone = `NM5;
		9'd42 : tone = `NM5;
		9'd43 : tone = `NM0;
		9'd44 : tone = `NM6;
		9'd45 : tone = `NM6;
		9'd46 : tone = `NM6;
		9'd47 : tone = `NM6;
		
		9'd48 : tone = `NM2;
		9'd49 : tone = `NM2;
		9'd50 : tone = `NM2;
		9'd51 : tone = `NM2;
		9'd52 : tone = `NM2;
		9'd53 : tone = `NM2;
		9'd54 : tone = `NM2;
		9'd55 : tone = `NM2;
		9'd56 : tone = `NM2;
		9'd57 : tone = `NM2;
		9'd58 : tone = `NM2;
		9'd59 : tone = `NM2;
		9'd60 : tone = `NM2;
		9'd61 : tone = `NM2;
		9'd62 : tone = `NM2;
		9'd63 : tone = `NM0;
		
		9'd64 : tone = `NM5;
		9'd65 : tone = `NM5;
		9'd66 : tone = `NM5;
		9'd67 : tone = `NM5;
		9'd68 : tone = `NM5;
		9'd69 : tone = `NM0;
		9'd70 : tone = `NM5;
		9'd71 : tone = `NM5;
		9'd72 : tone = `NM5;
		9'd73 : tone = `NM5;
		9'd74 : tone = `NM5;
		9'd75 : tone = `NM0;
		9'd76 : tone = `NM4;
		9'd77 : tone = `NM4;
		9'd78 : tone = `NM4;
		9'd79 : tone = `NM4;
		
		9'd80 : tone = `NM2;
		9'd81 : tone = `NM2;
		9'd82 : tone = `NM2;
		9'd83 : tone = `NM2;
		9'd84 : tone = `NM2;
		9'd85 : tone = `NM2;
		9'd86 : tone = `NM2;
		9'd87 : tone = `NM2;
		9'd88 : tone = `NM2;
		9'd89 : tone = `NM2;
		9'd90 : tone = `NM5>>1;
		9'd91 : tone = `NM5>>1;
		9'd92 : tone = `NM7>>1;
		9'd93 : tone = `NM7>>1;
		9'd94 : tone = `NM2;
		9'd95 : tone = `NM2;
		
		9'd96 : tone = `NM1;
		9'd97 : tone = `NM1;
		9'd98 : tone = `NM1;
		9'd99 : tone = `NM1;
		9'd100 : tone = `NM1;
		9'd101 : tone = `NM0;
		9'd102 : tone = `NM3;
		9'd103 : tone = `NM3;
		9'd104 : tone = `NM3;
		9'd105 : tone = `NM3;
		9'd106 : tone = `NM3;
		9'd107 : tone = `NM0;
		9'd108 : tone = `NM7;
		9'd109 : tone = `NM7;
		9'd110 : tone = `NM7;
		9'd111 : tone = `NM7;
		
		9'd112 : tone = `NM6;
		9'd113 : tone = `NM6;
		9'd114 : tone = `NM6;
		9'd115 : tone = `NM6;
		9'd116 : tone = `NM6;
		9'd117 : tone = `NM6;
		9'd118 : tone = `NM6;
		9'd119 : tone = `NM6;
		9'd120 : tone = `NM6;
		9'd121 : tone = `NM6;
		9'd122 : tone = `NM6;
		9'd123 : tone = `NM6;
		9'd124 : tone = `NM6;
		9'd125 : tone = `NM6;
		9'd126 : tone = `NM6;
		9'd127 : tone = `NM6;
		
		9'd128 : tone = `NM5;	
		9'd129 : tone = `NM5;
		9'd130 : tone = `NM5;
		9'd131 : tone = `NM5;
		9'd132 : tone = `NM5;	
		9'd133 : tone = `NM0;
		9'd134 : tone = `NM5;
		9'd135 : tone = `NM5;
		9'd136 : tone = `NM5;
		9'd137 : tone = `NM5;
		9'd138 : tone = `NM5;
		9'd139 : tone = `NM0;
		9'd140 : tone = `NM4;
		9'd141 : tone = `NM4;
		9'd142 : tone = `NM4;
		9'd143 : tone = `NM4;
		
		9'd144 : tone = `NM2;
		9'd145 : tone = `NM2;
		9'd146 : tone = `NM2;
		9'd147 : tone = `NM2;
		9'd148 : tone = `NM2<<1;
		9'd149 : tone = `NM2<<1;
		9'd150 : tone = `NM2<<1;
		9'd151 : tone = `NM2<<1;
		9'd152 : tone = `NM2<<2;
		9'd153 : tone = `NM2<<2;
		9'd154 : tone = `NM2<<2;
		9'd155 : tone = `NM2<<2;
		9'd156 : tone = `NM2<<1;
		9'd157 : tone = `NM2<<1;
		9'd158 : tone = `NM2<<1;
		9'd159 : tone = `NM2<<1;
		
		9'd160 : tone = `NM5;
		9'd161 : tone = `NM5;
		9'd162 : tone = `NM5;
		9'd163 : tone = `NM5;
		9'd164 : tone = `NM5;
		9'd165 : tone = `NM0;
		9'd166 : tone = `NM5;
		9'd167 : tone = `NM5;
		9'd168 : tone = `NM5;
		9'd169 : tone = `NM5;
		9'd170 : tone = `NM5;
		9'd171 : tone = `NM0;
		9'd172 : tone = `NM4;
		9'd173 : tone = `NM4;
		9'd174 : tone = `NM4;
		9'd175 : tone = `NM4;
		
		9'd176 : tone = `NM2<<1;
		9'd177 : tone = `NM2<<1;
		9'd178 : tone = `NM1<<1;
		9'd179 : tone = `NM1<<1;
		9'd180 : tone = `NM7;
		9'd181 : tone = `NM7;
		9'd182 : tone = `NM6;
		9'd183 : tone = `NM6;
		9'd184 : tone = `NM5;
		9'd185 : tone = `NM5;
		9'd186 : tone = `NM4;
		9'd187 : tone = `NM4;
		9'd188 : tone = `NM3;
		9'd189 : tone = `NM3;
		9'd190 : tone = `NM2;
		9'd191 : tone = `NM2;
		
		9'd192 : tone = `NM5;
		9'd193 : tone = `NM5;
		9'd194 : tone = `NM5;
		9'd195 : tone = `NM5;
		9'd196 : tone = `NM5;
		9'd197 : tone = `NM0;
		9'd198 : tone = `NM5;
		9'd199 : tone = `NM5;
		9'd200 : tone = `NM5;
		9'd201 : tone = `NM5;
		9'd202 : tone = `NM5;
		9'd203 : tone = `NM0;
		9'd204 : tone = `NM4;
		9'd205 : tone = `NM4;
		9'd206 : tone = `NM5;
		9'd207 : tone = `NM5;
		
		9'd208 : tone = `NM2;
		9'd209 : tone = `NM2;
		9'd210 : tone = `NM5;
		9'd211 : tone = `NM5;
		9'd212 : tone = `NM5;
		9'd213 : tone = `NM5;
		9'd214 : tone = `NM0;
		9'd215 : tone = `NM5;
		9'd216 : tone = `NM5;
		9'd217 : tone = `NM5;
		9'd218 : tone = `NM5;
		9'd219 : tone = `NM0;
		9'd220 : tone = `NM4;
		9'd221 : tone = `NM4;
		9'd222 : tone = `NM5;
		9'd223 : tone = `NM5;
		
		9'd224 : tone = `NM1<<1;
		9'd225 : tone = `NM1<<1;
		9'd226 : tone = `NM1<<1;
		9'd227 : tone = `NM1<<1;
		9'd228 : tone = `NM1<<1;
		9'd229 : tone = `NM1<<1;
		9'd230 : tone = `NM3;
		9'd231 : tone = `NM3;
		9'd232 : tone = `NM4;
		9'd233 : tone = `NM4;
		9'd234 : tone = `NM4;
		9'd235 : tone = `NM4;
		9'd236 : tone = `NM4;
		9'd237 : tone = `NM4;
		9'd238 : tone = `NM5;
		9'd239 : tone = `NM5;
		
		9'd240 : tone = `NM6;
		9'd241 : tone = `NM6;
		9'd242 : tone = `NM6;
		9'd243 : tone = `NM6;
		9'd244 : tone = `NM6;
		9'd245 : tone = `NM6;
		9'd246 : tone = `NM6;
		9'd247 : tone = `NM6;
		9'd248 : tone = `NM6;
		9'd249 : tone = `NM6;
		9'd250 : tone = `NM6;
		9'd251 : tone = `NM6;
		9'd252 : tone = `NM6;
		9'd253 : tone = `NM6;
		9'd254 : tone = `NM6;
		9'd255 : tone = `NM6;
		
		default : tone = `NM0;
	endcase
end

endmodule