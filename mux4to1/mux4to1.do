vlib work
vlog -timescale 1ns/1ns mux4to1.v
vsim mux4to1
log {/*}
add wave {/*}

# SW[0] u
# SW[1] v
# SW[2] w
# SW[3] x
# SW[8] s_0
# SW[9] s_1
# LEDR[0] m

# Test1: s_0=0, s_1=0, u=1
force {SW[0]} 1
force {SW[1]} 0
force {SW[2]} 0
force {SW[3]} 0
force {SW[8]} 0
force {SW[9]} 0
run 10ns

# Test2: s_0=1, s_1=0, v=1
force {SW[0]} 0
force {SW[1]} 1
force {SW[2]} 0
force {SW[3]} 0
force {SW[8]} 1
force {SW[9]} 0
run 10ns

# Test3: s_0=1, s_1=0, v=0
force {SW[0]} 0
force {SW[1]} 0
force {SW[2]} 0
force {SW[3]} 0
force {SW[8]} 1
force {SW[9]} 0
run 10ns

# Test4: s_1=0, s_1=1, w=1
force {SW[0]} 0
force {SW[1]} 0
force {SW[2]} 1
force {SW[3]} 0
force {SW[8]} 0
force {SW[9]} 1
run 10ns

# Test5: s_0=1, s_1=1, u=1
force {SW[0]} 0
force {SW[1]} 0
force {SW[2]} 0
force {SW[3]} 1
force {SW[8]} 1
force {SW[9]} 1
run 10ns

