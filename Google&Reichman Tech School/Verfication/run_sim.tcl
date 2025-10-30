# ==========================================================
# Script to run Through Model Sim Gui
# ==========================================================
echo "INFO: Starting simulation..."

# Compile design and testbench # The 'vlog' command compiles Verilog and SystemVerilog.
# We add '-sv' to enable SystemVerilog features.
vlog lab1_parity_checker.sv lab1_parity_checker_tb.sv

# Load testbench
#The '-voptargs=+acc' flag is ESSENTIAL to see signals in the wave.
vsim -voptargs=+acc work.lab1_parity_checker_tb

# Add all signals to waveform viewer
add wave -r sim:/lab1_parity_checker_tb/*

# Run simulation until finish
run -all

echo "INFO: Simulation done."
