`timescale 1 ps / 1 ps

module blinker (clk, BTN_freq_DOWN, BTN_freq_UP, LED_led, LED_Tesla, LED_PP1, LED_PP2);

input clk;
input BTN_freq_DOWN;
input BTN_freq_UP;
output wire LED_led;
output wire LED_Tesla;
output wire LED_PP1;
output wire LED_PP2;

reg [7:0] counter_Tesla;
reg [7:0] counter_Tesla_peaks = 8'd5;
reg [25:0] freq = 26'd25000000;
reg [21:0] freq1 = 22'd1934144;//4194303;
reg [15:0] freq2 = 16'd15110;//32767;
reg [25:0] counter_PP;
reg [31:0] btn_wait;//25
reg Tesla;
reg PP1;
reg PP2;
reg LED_ledr;

wire [31:0]wFREQ1;
wire [31:0]wFREQ2; 


	wire hash_clk;
		main_pll #(.SPEED_MHZ(50)) pll_blk (clk, hash_clk);

initial begin
counter_Tesla <= 8'b0;
counter_PP <= 26'b0;
Tesla <= 1'b0;
LED_ledr <= 1'b0;
PP1 <= 1'b0;
PP2 <= 1'b0;
btn_wait <= 32'd0;//26
end


always @ (posedge hash_clk) 
begin
counter_PP = counter_PP + 1'b1;
btn_wait <= btn_wait + 1'b1;


//if (btn_wait == 32'd100000000)
//begin
//	LED_ledr <= !LED_ledr;
//	btn_wait <= 32'd0;
//
//end


if(btn_wait == freq)
begin
   if(BTN_freq_DOWN == 0)
	begin
		LED_ledr <= !LED_ledr;

    	freq2 = freq2 - 10'd511;
		freq1 = freq2 * 8'd128;
		if(freq2 > 32767)
		begin
			freq1 = 22'd1024000;
			freq2 = 16'd8000;
		end		
	end
   if(BTN_freq_UP == 0)
	begin
	LED_ledr <= !LED_ledr;
		freq2 = freq2 + 10'd511;
		freq1 = freq2 * 8'd128;
		if(freq2 < 8000)
		begin
			freq1 = 22'd1934144;
			freq2 = 16'd15110;
		end		
	end
	btn_wait <= 32'd0;
end

if (counter_PP < ((freq/(freq2*2 + (freq2 /25))) ))
begin
	PP1 = 1'b1;
	PP2 = 1'b0;
	if (counter_PP >= ((freq/(freq2*2 + (freq2 /25)))- ((freq/(freq1*2))*counter_Tesla_peaks*2) ) )
	begin
		counter_Tesla = counter_Tesla + 8'd1;
		if (counter_Tesla > (freq/(freq1*2)))
		begin
		Tesla = !Tesla;
		counter_Tesla = 8'b0;
		end
	end
	else
	begin
		Tesla = 1'b0;
	end
end
else
if (counter_PP < (freq/(freq2*2)) )
begin
	PP1 = 1'b0;
	PP2 = 1'b0;
	Tesla = 1'b0;
	counter_Tesla = 8'b0;
end
else
if (counter_PP < (freq/((freq2 )+(freq2 /95))) )
begin
	PP1 = 1'b0;
	PP2 = 1'b1;
	Tesla = 1'b0;
	counter_Tesla = 8'b0;
end
else
if (counter_PP < (freq/(freq2)) )
begin
	PP1 = 1'b0;
	PP2 = 1'b0;
	Tesla = 1'b0;
	counter_Tesla = 8'b0;
end
else
begin
	counter_PP = 26'b0;
	PP1 = 1'b0;
	PP2 = 1'b0;
	Tesla = 1'b0;
	counter_Tesla = 8'b0;
end


end


assign wFREQ1[21:0] = freq1[21:0];
//assign wFREQ2 = btn_wait;
assign wFREQ2[15:0] = freq2[15:0];


//// Virtual Wire Output
	
virtual_wire # (.PROBE_WIDTH(32), .WIDTH(0), .INSTANCE_ID("QONE")) golden_nonce_vw_blk (.probe(wFREQ1), .source());
virtual_wire # (.PROBE_WIDTH(32), .WIDTH(0), .INSTANCE_ID("QTWO")) nonce_vw_blk (.probe(wFREQ2), .source());
 

assign LED_Tesla = Tesla;
assign LED_PP1 = PP1;
assign LED_PP2 = PP2;
//assign BTN_plus = 1'b1;
assign LED_led = LED_ledr;

endmodule