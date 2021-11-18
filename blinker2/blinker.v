module blinker (clk, BTN_plus, BTN_freq_UP, BTN_freq_DOWN, LED_Tesla, LED_PP1, LED_PP2);

input clk;
output BTN_plus;
input BTN_freq_UP;
input BTN_freq_DOWN;
output LED_Tesla;
output LED_PP1;
output LED_PP2;

reg [7:0] counter_Tesla;
reg [7:0] counter_Tesla_peaks = 8'd5;
reg [25:0] freq = 26'd25000000;
reg [21:0] freq1 = 22'd1934144;//4194303;
reg [15:0] freq2 = 16'd15110;//32767;
reg [25:0] counter_PP;
reg [25:0] btn_wait;
reg Tesla;
reg PP1;
reg PP2;

initial begin
//BTN_plus <= 1'b1;
counter_Tesla <= 8'b0;
counter_PP <= 26'b0;
Tesla <= 1'b0;
PP1 <= 1'b0;
PP2 <= 1'b0;
btn_wait <= 26'd0;
end

always @ (posedge clk) 
begin
counter_PP <= counter_PP + 1'b1;
btn_wait <= btn_wait + 1'b1;
if(btn_wait == freq)
begin

	btn_wait <= 26'd0;
end

if (counter_PP < (freq/(freq2 /4)) )
begin
	PP1 <= 1'b1;
	PP2 <= 1'b0;
	if (counter_PP > ((freq/(freq2 /4))-(freq/(freq2 /4)- (freq/freq1)*counter_Tesla_peaks*2 )) )
	begin
		counter_Tesla <= counter_Tesla + 8'd1;
		if (counter_Tesla > (freq/freq1))
		begin
		Tesla <= !Tesla;
		counter_Tesla <= 8'b0;
		end
	end
	else
	begin
		Tesla <= 1'b0;
	end
end
else
if (counter_PP < (freq/(freq2 /2)) )
begin
	PP1 <= 1'b0;
	PP2 <= 1'b0;
	Tesla <= 1'b0;
end
else
if (counter_PP < (freq/((freq2 /2)+(freq2 /4))) )
begin
	PP1 <= 1'b0;
	PP2 <= 1'b1;
	Tesla <= 1'b0;
end
else
if (counter_PP < (freq/freq2) )
begin
	PP1 <= 1'b0;
	PP2 <= 1'b0;
	Tesla <= 1'b0;
end
else
begin
	counter_PP <= 26'b0;
end


end

assign LED_Tesla = Tesla;
assign LED_PP1 = PP1;
assign LED_PP2 = PP2;

endmodule