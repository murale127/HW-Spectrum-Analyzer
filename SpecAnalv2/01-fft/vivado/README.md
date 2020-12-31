# Files for Vivado implementation

Implementing the FFT module on hardware requires some additional supporting files that are provided here.  Note that these are just one way of implementing on hardware - in particular, the `datasrc` module is *not* a standard fixture, and usually other methods would be used for supplying inputs and testing outputs.  However, this module provides a simple and convenient interface for testing AXI stream modules, and is provided here as an example.

## Target board

The board being targeted for the current example is the [Basys 3](https://www.xilinx.com/products/boards-and-kits/1-54wqge.html) board from Digilent.  This is also recommended by Xilinx as an entry level board, and is compatible with Xilinx Webpack edition software.  

Useful information on the board as well as the steps required to get the board recognized by Vivado are available on the [Digilent Reference Site](https://reference.digilentinc.com/reference/programmable-logic/basys-3/start?redirect=1).

## Files

The following files are used in the design:

* [`datasrc.v`](./datasrc.v): This is a module that reads in a set of data from a file (in hex format, as generated by the [data_gen_fft.py](../scripts/data_gen_fft.py) script), and outputs it in an AXI stream compatible format.  That is, it accepts a `TREADY` input from the next module, and gives out `TDATA` and `TVALID` at appropriate times to complete the handshaking.
* [`datasrc_tb.v`](./datasrc_tb.v): A simple test bench to check the functionality of the `datasrc` module.
* [`pincon.xdc`](./pincon.xdc): The pin location constraints for the *clock* and *reset* signals used for the board level testing.
* [`fft32_tb.v`](./fft32_tb.v): A trivial test bench for the FFT design - it assumes that the data sources have already been included inside the block level design, so the only input required is clock and reset.  Due to this simple design, the block level design can also be implemented directly on hardware and the same results can be observed.
