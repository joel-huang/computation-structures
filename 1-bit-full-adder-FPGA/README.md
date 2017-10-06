* These files are based off the base project `io-shield`.
* The main files with modified or new content are `mojo_top.luc`, `stateCounter.luc`, `seven_seg.luc`, and `MHP constraints.ucf`.


The general strategy for this mini hardware project is the usage of a finite state machine `fsm` to toggle between test states, with each state being passed only when the required conditions are met. We're able to check all the outputs of the 1-bit full adder as inputs to the FPGA using this method. One interesting learning point was the usage of a d-flip flop `dff` as a counter module that ticks at a specified point in the 50MHz `clk` cycle, and by changing the number of bits in this `dff` we can effectively make the counter tick at a different rate.
