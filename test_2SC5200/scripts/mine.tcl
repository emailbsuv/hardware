package require http
package require json
package require base64

source jtag_comm.tcl

# Configuration
# -------------
# Additional DEBUG output getwork and current nonce ...
# Delay between getwork requests (in seconds) ...
set ask_rate 1
set freq1old 1
set freq2old 1			

proc say_line {msg} {
	set t [clock format [clock seconds] -format "%D %T"]
	puts "\[$t\] $msg"
}

proc say_error {msg} {
	set t [clock format [clock seconds] -format "%D %T"]
	puts stderr "\[$t\] $msg"
}

proc say_status {freq1 freq2} {
	say_line [format " \[ freq1 / freq2: %i / %i \]" $freq1 $freq2]
}

# Loop until a new share is found, or timeout seconds have passed.
# Prints status updates every second.
proc wait_for_golden_ticket {timeout} {
	global freq1old
	global freq2old
	set begin_time [clock clicks -milliseconds]
	while {$timeout > 0} {
				
		set now [clock clicks -milliseconds]
		if { [expr {$now - $begin_time}] >= 1000 } {
			incr timeout -1
			set begin_time $now
		}
	}

		set freq1_hex [read_instance QONE]
		# Convert from Hex to integer
		set freq1 [expr 0x$freq1_hex]

		set freq2_hex [read_instance QTWO]
		# Convert from Hex to integer
		set freq2 [expr 0x$freq2_hex]		
		
		if { ($freq1old != $freq1) && ($freq2old != $freq2) } {
		say_status $freq1 $freq2 
		#[expr $freq2 - $freq2old]
		set freq1old $freq1 
		set freq2old $freq2
		}
	
	return -1
}

puts " --- FPGA Mining Tcl Script --- \n\n"
puts "Looking for and preparing FPGAs...\n"
if {[fpga_init] == -1} {
	puts stderr "No mining FPGAs found."
	puts "\n\n --- Shutting Down --- \n\n"
	exit
}

set fpga_name [get_fpga_name]
puts "Mining FPGA Found: $fpga_name\n\n"

while {1} {

#	set golden_nonce [get_result_from_fpga]
#	push_work_to_fpga $newwork
	set golden_nonce [wait_for_golden_ticket $ask_rate]

}


puts "\n\n --- Shutting Down --- \n\n"



