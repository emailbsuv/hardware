`timescale 1 ps / 1 ps

module main_pll # (parameter SPEED_MHZ = 25) (inclk0, c0);

	input	  inclk0;
	output	  c0;

	wire [4:0] sub_wire0;
	wire [0:0] sub_wire4 = 1'h0;
	wire [0:0] sub_wire1 = sub_wire0[0:0];
	wire  c0 = sub_wire1;
	wire  sub_wire2 = inclk0;
	wire [1:0] sub_wire3 = {sub_wire4, sub_wire2};

	altpll	altpll_component (
				.inclk (sub_wire3),
				.clk (sub_wire0),
				.activeclock (),
				.areset (1'b0),
				.clkbad (),
				.clkena ({6{1'b1}}),
				.clkloss (),
				.clkswitch (1'b0),
				.configupdate (1'b0),
				.enable0 (),
				.enable1 (),
				.extclk (),
				.extclkena ({4{1'b1}}),
				.fbin (1'b1),
				.fbmimicbidir (),
				.fbout (),
				// synopsys translate_off
				.fref (),
				.icdrclk (),
				// synopsys translate_on
				.locked (),
				.pfdena (1'b1),
				.phasecounterselect ({4{1'b1}}),
				.phasedone (),
				.phasestep (1'b1),
				.phaseupdown (1'b1),
				.pllena (1'b1),
				.scanaclr (1'b0),
				.scanclk (1'b0),
				.scanclkena (1'b1),
				.scandata (1'b0),
				.scandataout (),
				.scandone (),
				.scanread (1'b0),
				.scanwrite (1'b0),
				.sclkout0 (),
				.sclkout1 (),
				.vcooverrange (),
				.vcounderrange ());
	defparam
	altpll_component.bandwidth_type = "AUTO",
	altpll_component.clk0_divide_by = 2, //1
	altpll_component.clk0_duty_cycle = 50,//50
	altpll_component.clk0_multiply_by = 1,//6
	altpll_component.clk0_phase_shift = "0",
	altpll_component.compensate_clock = "CLK0",
	altpll_component.inclk0_input_frequency = 20000,//5000
	altpll_component.intended_device_family = "Cyclone IV E",
	altpll_component.lpm_type = "altpll",
	altpll_component.operation_mode = "NORMAL",
	altpll_component.pll_type = "AUTO",
	altpll_component.port_areset = "PORT_USED",
	altpll_component.port_configupdate = "PORT_USED",
	altpll_component.port_inclk0 = "PORT_USED",
	altpll_component.port_scanclk = "PORT_USED",
	altpll_component.port_scanclkena = "PORT_USED",
	altpll_component.port_scandata = "PORT_USED",
	altpll_component.port_scandone = "PORT_USED",
	altpll_component.port_clk0 = "PORT_USED",
	altpll_component.self_reset_on_loss_lock = "OFF",
	altpll_component.vco_frequency_control = "MANUAL_PHASE",
	altpll_component.vco_phase_shift_step = 100,
	altpll_component.width_clock = 5,
	altpll_component.width_phasecounterselect = 3;


endmodule

