# GCD-ASIC
Greatest common denominator algorithm in hardware (FSM)

Designed to run on the MAX10 DE-10, product code 10M50DAF484C7G, should be portable with pin reassignments given adequate LE allocation.

Built with love in Quartus.

Read the full readme (readme.pdf) to see screengrabs and testbenches.

I implemented the datapath with structural vhdl as shown. Files used here are included in
the repo and an exhaustive list is as follows: cmp, genmux, regis, subtr along with
the decoder7seg that is called from the top_level.
I designed a controller that instantiates this original datapath architecture and
implements a finite state machine as follows.
Note: Some warnings (‘X’ in an arithmetic operand) show up in the console, but these are
only from before a “go” is sent and inputs are given by the testbench.
I added an additional minimized architecture to the datapath file
(fsm_d2) and changed the controller to instantiate this architecture of the
datapath instead.
I wrote a top_level file and assigned the pins by import to avoid retyping the
7Seg LED pins from other projects on this board.
-- I/O Explanation (assumes the switches are on side of the
-- board that is closest to you)
-- switch(9) is the leftmost switch
-- button(1) is the top button
-- led5 is the leftmost 7-segment LED
-- ledx_dp is the decimal point on the 7-segment LED for LED x
-- Note: this code will cause a harmless synthesis warning because not all
-- the buttons are used and because some output pins are always '0' or '1'
Some temporary signals were used to concatenate into the portmap.
Other testbenches I wrote are included in the full report as well for unit testing/debugging
