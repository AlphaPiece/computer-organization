vlib work
vlog -timescale 1ns/1ns ripple_carry_adder.v
vsim ripple_carry_adder
log {/*}
add wave {/*}

# A = 0, B = 0, carry = 1
# Test if carry-in works
# Expected result: LEDR[4:0] = 00001
force {SW[8]} 1
force {SW[7]} 0
force {SW[6]} 0
force {SW[5]} 0
force {SW[4]} 0
force {SW[3]} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
run 10ns

# A = 15, B = 1, carry = 0
# Test if carry-out works
# Expected result: LEDR[4:0] = 10000
force {SW[8]} 0
force {SW[7]} 1
force {SW[6]} 1
force {SW[5]} 1
force {SW[4]} 1
force {SW[3]} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 1
run 10ns

# A = 15, B = 15, carry = 1
# Test if every fuller adder in ripple carry adder works fine
# Expected result: LEDR[4:0] = 11111
force {SW[8]} 1
force {SW[7]} 1
force {SW[6]} 1
force {SW[5]} 1
force {SW[4]} 1
force {SW[3]} 1
force {SW[2]} 1
force {SW[1]} 1
force {SW[0]} 1
run 10ns

# Some random tests

# A = 3, B = 7, carry = 1
# Expected result: LEDR[4:0] = 01011
force {SW[8]} 1
force {SW[7]} 0
force {SW[6]} 0
force {SW[5]} 1
force {SW[4]} 1
force {SW[3]} 0
force {SW[2]} 1
force {SW[1]} 1
force {SW[0]} 1
run 10ns

# A = 4, B = 4, carry = 0
# Expected result: LEDR[4:0] = 01000
force {SW[8]} 0
force {SW[7]} 0
force {SW[6]} 1
force {SW[5]} 0
force {SW[4]} 0
force {SW[3]} 0
force {SW[2]} 1
force {SW[1]} 0
force {SW[0]} 0
run 10ns

# A = 11, B = 12, carry = 1
# Expected result: LEDR[4:0] = 11000
force {SW[8]} 1
force {SW[7]} 1
force {SW[6]} 0
force {SW[5]} 1
force {SW[4]} 1
force {SW[3]} 1
force {SW[2]} 1
force {SW[1]} 0
force {SW[0]} 0
run 10ns

