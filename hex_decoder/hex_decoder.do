vlib work
vlog -timescale 1ns/1ns hex_decoder.v
vsim hex_decoder
log {/*}
add wave {/*}

# B: 1011
force {SW[3]} 1
force {SW[2]} 0
force {SW[1]} 1
force {SW[0]} 1
run 10ns

# A: 1010
force {SW[3]} 1
force {SW[2]} 0
force {SW[1]} 1
force {SW[0]} 0
run 10ns

# 3: 0011
force {SW[3]} 0
force {SW[2]} 0
force {SW[1]} 1
force {SW[0]} 1
run 10ns

# 1: 0001
force {SW[3]} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 1
run 10ns

# 5: 0101
force {SW[3]} 0
force {SW[2]} 1
force {SW[1]} 0
force {SW[0]} 1
run 10ns

# 5: 0101
force {SW[3]} 0
force {SW[2]} 1
force {SW[1]} 0
force {SW[0]} 1
run 10ns

