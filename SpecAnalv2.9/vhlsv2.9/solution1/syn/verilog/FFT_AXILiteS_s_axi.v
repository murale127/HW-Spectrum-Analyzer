// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1ns/1ps
module FFT_AXILiteS_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 10,
    C_S_AXI_DATA_WIDTH = 32
)(
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    output wire                          interrupt,
    output wire                          ap_start,
    input  wire                          ap_done,
    input  wire                          ap_ready,
    input  wire                          ap_idle,
    input  wire [4:0]                    data_IN_M_real_address0,
    input  wire                          data_IN_M_real_ce0,
    output wire [31:0]                   data_IN_M_real_q0,
    input  wire [4:0]                    data_IN_M_imag_address0,
    input  wire                          data_IN_M_imag_ce0,
    output wire [31:0]                   data_IN_M_imag_q0,
    output wire [7:0]                    win_mode,
    input  wire [4:0]                    data_OUT_M_real_address0,
    input  wire                          data_OUT_M_real_ce0,
    input  wire                          data_OUT_M_real_we0,
    input  wire [31:0]                   data_OUT_M_real_d0,
    input  wire [4:0]                    data_OUT_M_imag_address0,
    input  wire                          data_OUT_M_imag_ce0,
    input  wire                          data_OUT_M_imag_we0,
    input  wire [31:0]                   data_OUT_M_imag_d0,
    input  wire [4:0]                    mag_OUT_address0,
    input  wire                          mag_OUT_ce0,
    input  wire                          mag_OUT_we0,
    input  wire [31:0]                   mag_OUT_d0
);
//------------------------Address Info-------------------
// 0x000 : Control signals
//         bit 0  - ap_start (Read/Write/COH)
//         bit 1  - ap_done (Read/COR)
//         bit 2  - ap_idle (Read)
//         bit 3  - ap_ready (Read)
//         bit 7  - auto_restart (Read/Write)
//         others - reserved
// 0x004 : Global Interrupt Enable Register
//         bit 0  - Global Interrupt Enable (Read/Write)
//         others - reserved
// 0x008 : IP Interrupt Enable Register (Read/Write)
//         bit 0  - Channel 0 (ap_done)
//         bit 1  - Channel 1 (ap_ready)
//         others - reserved
// 0x00c : IP Interrupt Status Register (Read/TOW)
//         bit 0  - Channel 0 (ap_done)
//         bit 1  - Channel 1 (ap_ready)
//         others - reserved
// 0x180 : Data signal of win_mode
//         bit 7~0 - win_mode[7:0] (Read/Write)
//         others  - reserved
// 0x184 : reserved
// 0x080 ~
// 0x0ff : Memory 'data_IN_M_real' (32 * 32b)
//         Word n : bit [31:0] - data_IN_M_real[n]
// 0x100 ~
// 0x17f : Memory 'data_IN_M_imag' (32 * 32b)
//         Word n : bit [31:0] - data_IN_M_imag[n]
// 0x200 ~
// 0x27f : Memory 'data_OUT_M_real' (32 * 32b)
//         Word n : bit [31:0] - data_OUT_M_real[n]
// 0x280 ~
// 0x2ff : Memory 'data_OUT_M_imag' (32 * 32b)
//         Word n : bit [31:0] - data_OUT_M_imag[n]
// 0x300 ~
// 0x37f : Memory 'mag_OUT' (32 * 32b)
//         Word n : bit [31:0] - mag_OUT[n]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_AP_CTRL              = 10'h000,
    ADDR_GIE                  = 10'h004,
    ADDR_IER                  = 10'h008,
    ADDR_ISR                  = 10'h00c,
    ADDR_WIN_MODE_DATA_0      = 10'h180,
    ADDR_WIN_MODE_CTRL        = 10'h184,
    ADDR_DATA_IN_M_REAL_BASE  = 10'h080,
    ADDR_DATA_IN_M_REAL_HIGH  = 10'h0ff,
    ADDR_DATA_IN_M_IMAG_BASE  = 10'h100,
    ADDR_DATA_IN_M_IMAG_HIGH  = 10'h17f,
    ADDR_DATA_OUT_M_REAL_BASE = 10'h200,
    ADDR_DATA_OUT_M_REAL_HIGH = 10'h27f,
    ADDR_DATA_OUT_M_IMAG_BASE = 10'h280,
    ADDR_DATA_OUT_M_IMAG_HIGH = 10'h2ff,
    ADDR_MAG_OUT_BASE         = 10'h300,
    ADDR_MAG_OUT_HIGH         = 10'h37f,
    WRIDLE                    = 2'd0,
    WRDATA                    = 2'd1,
    WRRESP                    = 2'd2,
    WRRESET                   = 2'd3,
    RDIDLE                    = 2'd0,
    RDDATA                    = 2'd1,
    RDRESET                   = 2'd2,
    ADDR_BITS         = 10;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [31:0]                   wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [31:0]                   rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg                           int_ap_idle;
    reg                           int_ap_ready;
    reg                           int_ap_done = 1'b0;
    reg                           int_ap_start = 1'b0;
    reg                           int_auto_restart = 1'b0;
    reg                           int_gie = 1'b0;
    reg  [1:0]                    int_ier = 2'b0;
    reg  [1:0]                    int_isr = 2'b0;
    reg  [7:0]                    int_win_mode = 'b0;
    // memory signals
    wire [4:0]                    int_data_IN_M_real_address0;
    wire                          int_data_IN_M_real_ce0;
    wire                          int_data_IN_M_real_we0;
    wire [3:0]                    int_data_IN_M_real_be0;
    wire [31:0]                   int_data_IN_M_real_d0;
    wire [31:0]                   int_data_IN_M_real_q0;
    wire [4:0]                    int_data_IN_M_real_address1;
    wire                          int_data_IN_M_real_ce1;
    wire                          int_data_IN_M_real_we1;
    wire [3:0]                    int_data_IN_M_real_be1;
    wire [31:0]                   int_data_IN_M_real_d1;
    wire [31:0]                   int_data_IN_M_real_q1;
    reg                           int_data_IN_M_real_read;
    reg                           int_data_IN_M_real_write;
    wire [4:0]                    int_data_IN_M_imag_address0;
    wire                          int_data_IN_M_imag_ce0;
    wire                          int_data_IN_M_imag_we0;
    wire [3:0]                    int_data_IN_M_imag_be0;
    wire [31:0]                   int_data_IN_M_imag_d0;
    wire [31:0]                   int_data_IN_M_imag_q0;
    wire [4:0]                    int_data_IN_M_imag_address1;
    wire                          int_data_IN_M_imag_ce1;
    wire                          int_data_IN_M_imag_we1;
    wire [3:0]                    int_data_IN_M_imag_be1;
    wire [31:0]                   int_data_IN_M_imag_d1;
    wire [31:0]                   int_data_IN_M_imag_q1;
    reg                           int_data_IN_M_imag_read;
    reg                           int_data_IN_M_imag_write;
    wire [4:0]                    int_data_OUT_M_real_address0;
    wire                          int_data_OUT_M_real_ce0;
    wire                          int_data_OUT_M_real_we0;
    wire [3:0]                    int_data_OUT_M_real_be0;
    wire [31:0]                   int_data_OUT_M_real_d0;
    wire [31:0]                   int_data_OUT_M_real_q0;
    wire [4:0]                    int_data_OUT_M_real_address1;
    wire                          int_data_OUT_M_real_ce1;
    wire                          int_data_OUT_M_real_we1;
    wire [3:0]                    int_data_OUT_M_real_be1;
    wire [31:0]                   int_data_OUT_M_real_d1;
    wire [31:0]                   int_data_OUT_M_real_q1;
    reg                           int_data_OUT_M_real_read;
    reg                           int_data_OUT_M_real_write;
    wire [4:0]                    int_data_OUT_M_imag_address0;
    wire                          int_data_OUT_M_imag_ce0;
    wire                          int_data_OUT_M_imag_we0;
    wire [3:0]                    int_data_OUT_M_imag_be0;
    wire [31:0]                   int_data_OUT_M_imag_d0;
    wire [31:0]                   int_data_OUT_M_imag_q0;
    wire [4:0]                    int_data_OUT_M_imag_address1;
    wire                          int_data_OUT_M_imag_ce1;
    wire                          int_data_OUT_M_imag_we1;
    wire [3:0]                    int_data_OUT_M_imag_be1;
    wire [31:0]                   int_data_OUT_M_imag_d1;
    wire [31:0]                   int_data_OUT_M_imag_q1;
    reg                           int_data_OUT_M_imag_read;
    reg                           int_data_OUT_M_imag_write;
    wire [4:0]                    int_mag_OUT_address0;
    wire                          int_mag_OUT_ce0;
    wire                          int_mag_OUT_we0;
    wire [3:0]                    int_mag_OUT_be0;
    wire [31:0]                   int_mag_OUT_d0;
    wire [31:0]                   int_mag_OUT_q0;
    wire [4:0]                    int_mag_OUT_address1;
    wire                          int_mag_OUT_ce1;
    wire                          int_mag_OUT_we1;
    wire [3:0]                    int_mag_OUT_be1;
    wire [31:0]                   int_mag_OUT_d1;
    wire [31:0]                   int_mag_OUT_q1;
    reg                           int_mag_OUT_read;
    reg                           int_mag_OUT_write;

//------------------------Instantiation------------------
// int_data_IN_M_real
FFT_AXILiteS_s_axi_ram #(
    .BYTES    ( 4 ),
    .DEPTH    ( 32 )
) int_data_IN_M_real (
    .clk0     ( ACLK ),
    .address0 ( int_data_IN_M_real_address0 ),
    .ce0      ( int_data_IN_M_real_ce0 ),
    .we0      ( int_data_IN_M_real_we0 ),
    .be0      ( int_data_IN_M_real_be0 ),
    .d0       ( int_data_IN_M_real_d0 ),
    .q0       ( int_data_IN_M_real_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_data_IN_M_real_address1 ),
    .ce1      ( int_data_IN_M_real_ce1 ),
    .we1      ( int_data_IN_M_real_we1 ),
    .be1      ( int_data_IN_M_real_be1 ),
    .d1       ( int_data_IN_M_real_d1 ),
    .q1       ( int_data_IN_M_real_q1 )
);
// int_data_IN_M_imag
FFT_AXILiteS_s_axi_ram #(
    .BYTES    ( 4 ),
    .DEPTH    ( 32 )
) int_data_IN_M_imag (
    .clk0     ( ACLK ),
    .address0 ( int_data_IN_M_imag_address0 ),
    .ce0      ( int_data_IN_M_imag_ce0 ),
    .we0      ( int_data_IN_M_imag_we0 ),
    .be0      ( int_data_IN_M_imag_be0 ),
    .d0       ( int_data_IN_M_imag_d0 ),
    .q0       ( int_data_IN_M_imag_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_data_IN_M_imag_address1 ),
    .ce1      ( int_data_IN_M_imag_ce1 ),
    .we1      ( int_data_IN_M_imag_we1 ),
    .be1      ( int_data_IN_M_imag_be1 ),
    .d1       ( int_data_IN_M_imag_d1 ),
    .q1       ( int_data_IN_M_imag_q1 )
);
// int_data_OUT_M_real
FFT_AXILiteS_s_axi_ram #(
    .BYTES    ( 4 ),
    .DEPTH    ( 32 )
) int_data_OUT_M_real (
    .clk0     ( ACLK ),
    .address0 ( int_data_OUT_M_real_address0 ),
    .ce0      ( int_data_OUT_M_real_ce0 ),
    .we0      ( int_data_OUT_M_real_we0 ),
    .be0      ( int_data_OUT_M_real_be0 ),
    .d0       ( int_data_OUT_M_real_d0 ),
    .q0       ( int_data_OUT_M_real_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_data_OUT_M_real_address1 ),
    .ce1      ( int_data_OUT_M_real_ce1 ),
    .we1      ( int_data_OUT_M_real_we1 ),
    .be1      ( int_data_OUT_M_real_be1 ),
    .d1       ( int_data_OUT_M_real_d1 ),
    .q1       ( int_data_OUT_M_real_q1 )
);
// int_data_OUT_M_imag
FFT_AXILiteS_s_axi_ram #(
    .BYTES    ( 4 ),
    .DEPTH    ( 32 )
) int_data_OUT_M_imag (
    .clk0     ( ACLK ),
    .address0 ( int_data_OUT_M_imag_address0 ),
    .ce0      ( int_data_OUT_M_imag_ce0 ),
    .we0      ( int_data_OUT_M_imag_we0 ),
    .be0      ( int_data_OUT_M_imag_be0 ),
    .d0       ( int_data_OUT_M_imag_d0 ),
    .q0       ( int_data_OUT_M_imag_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_data_OUT_M_imag_address1 ),
    .ce1      ( int_data_OUT_M_imag_ce1 ),
    .we1      ( int_data_OUT_M_imag_we1 ),
    .be1      ( int_data_OUT_M_imag_be1 ),
    .d1       ( int_data_OUT_M_imag_d1 ),
    .q1       ( int_data_OUT_M_imag_q1 )
);
// int_mag_OUT
FFT_AXILiteS_s_axi_ram #(
    .BYTES    ( 4 ),
    .DEPTH    ( 32 )
) int_mag_OUT (
    .clk0     ( ACLK ),
    .address0 ( int_mag_OUT_address0 ),
    .ce0      ( int_mag_OUT_ce0 ),
    .we0      ( int_mag_OUT_we0 ),
    .be0      ( int_mag_OUT_be0 ),
    .d0       ( int_mag_OUT_d0 ),
    .q0       ( int_mag_OUT_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_mag_OUT_address1 ),
    .ce1      ( int_mag_OUT_ce1 ),
    .we1      ( int_mag_OUT_we1 ),
    .be1      ( int_mag_OUT_be1 ),
    .d1       ( int_mag_OUT_d1 ),
    .q1       ( int_mag_OUT_q1 )
);

//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= AWADDR[ADDR_BITS-1:0];
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA) & !int_data_IN_M_real_read & !int_data_IN_M_imag_read & !int_data_OUT_M_real_read & !int_data_OUT_M_imag_read & !int_mag_OUT_read;
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 1'b0;
            case (raddr)
                ADDR_AP_CTRL: begin
                    rdata[0] <= int_ap_start;
                    rdata[1] <= int_ap_done;
                    rdata[2] <= int_ap_idle;
                    rdata[3] <= int_ap_ready;
                    rdata[7] <= int_auto_restart;
                end
                ADDR_GIE: begin
                    rdata <= int_gie;
                end
                ADDR_IER: begin
                    rdata <= int_ier;
                end
                ADDR_ISR: begin
                    rdata <= int_isr;
                end
                ADDR_WIN_MODE_DATA_0: begin
                    rdata <= int_win_mode[7:0];
                end
            endcase
        end
        else if (int_data_IN_M_real_read) begin
            rdata <= int_data_IN_M_real_q1;
        end
        else if (int_data_IN_M_imag_read) begin
            rdata <= int_data_IN_M_imag_q1;
        end
        else if (int_data_OUT_M_real_read) begin
            rdata <= int_data_OUT_M_real_q1;
        end
        else if (int_data_OUT_M_imag_read) begin
            rdata <= int_data_OUT_M_imag_q1;
        end
        else if (int_mag_OUT_read) begin
            rdata <= int_mag_OUT_q1;
        end
    end
end


//------------------------Register logic-----------------
assign interrupt = int_gie & (|int_isr);
assign ap_start  = int_ap_start;
assign win_mode  = int_win_mode;
// int_ap_start
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_start <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[0])
            int_ap_start <= 1'b1;
        else if (ap_ready)
            int_ap_start <= int_auto_restart; // clear on handshake/auto restart
    end
end

// int_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_done <= 1'b0;
    else if (ACLK_EN) begin
        if (ap_done)
            int_ap_done <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_ap_done <= 1'b0; // clear on read
    end
end

// int_ap_idle
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_idle <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_idle <= ap_idle;
    end
end

// int_ap_ready
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_ready <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_ready <= ap_ready;
    end
end

// int_auto_restart
always @(posedge ACLK) begin
    if (ARESET)
        int_auto_restart <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0])
            int_auto_restart <=  WDATA[7];
    end
end

// int_gie
always @(posedge ACLK) begin
    if (ARESET)
        int_gie <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GIE && WSTRB[0])
            int_gie <= WDATA[0];
    end
end

// int_ier
always @(posedge ACLK) begin
    if (ARESET)
        int_ier <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IER && WSTRB[0])
            int_ier <= WDATA[1:0];
    end
end

// int_isr[0]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[0] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[0] & ap_done)
            int_isr[0] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[0] <= int_isr[0] ^ WDATA[0]; // toggle on write
    end
end

// int_isr[1]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[1] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[1] & ap_ready)
            int_isr[1] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[1] <= int_isr[1] ^ WDATA[1]; // toggle on write
    end
end

// int_win_mode[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_win_mode[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WIN_MODE_DATA_0)
            int_win_mode[7:0] <= (WDATA[31:0] & wmask) | (int_win_mode[7:0] & ~wmask);
    end
end


//------------------------Memory logic-------------------
// data_IN_M_real
assign int_data_IN_M_real_address0  = data_IN_M_real_address0;
assign int_data_IN_M_real_ce0       = data_IN_M_real_ce0;
assign int_data_IN_M_real_we0       = 1'b0;
assign int_data_IN_M_real_be0       = 1'b0;
assign int_data_IN_M_real_d0        = 1'b0;
assign data_IN_M_real_q0            = int_data_IN_M_real_q0;
assign int_data_IN_M_real_address1  = ar_hs? raddr[6:2] : waddr[6:2];
assign int_data_IN_M_real_ce1       = ar_hs | (int_data_IN_M_real_write & WVALID);
assign int_data_IN_M_real_we1       = int_data_IN_M_real_write & WVALID;
assign int_data_IN_M_real_be1       = WSTRB;
assign int_data_IN_M_real_d1        = WDATA;
// data_IN_M_imag
assign int_data_IN_M_imag_address0  = data_IN_M_imag_address0;
assign int_data_IN_M_imag_ce0       = data_IN_M_imag_ce0;
assign int_data_IN_M_imag_we0       = 1'b0;
assign int_data_IN_M_imag_be0       = 1'b0;
assign int_data_IN_M_imag_d0        = 1'b0;
assign data_IN_M_imag_q0            = int_data_IN_M_imag_q0;
assign int_data_IN_M_imag_address1  = ar_hs? raddr[6:2] : waddr[6:2];
assign int_data_IN_M_imag_ce1       = ar_hs | (int_data_IN_M_imag_write & WVALID);
assign int_data_IN_M_imag_we1       = int_data_IN_M_imag_write & WVALID;
assign int_data_IN_M_imag_be1       = WSTRB;
assign int_data_IN_M_imag_d1        = WDATA;
// data_OUT_M_real
assign int_data_OUT_M_real_address0 = data_OUT_M_real_address0;
assign int_data_OUT_M_real_ce0      = data_OUT_M_real_ce0;
assign int_data_OUT_M_real_we0      = data_OUT_M_real_we0;
assign int_data_OUT_M_real_be0      = {4{data_OUT_M_real_we0}};
assign int_data_OUT_M_real_d0       = data_OUT_M_real_d0;
assign int_data_OUT_M_real_address1 = ar_hs? raddr[6:2] : waddr[6:2];
assign int_data_OUT_M_real_ce1      = ar_hs | (int_data_OUT_M_real_write & WVALID);
assign int_data_OUT_M_real_we1      = int_data_OUT_M_real_write & WVALID;
assign int_data_OUT_M_real_be1      = WSTRB;
assign int_data_OUT_M_real_d1       = WDATA;
// data_OUT_M_imag
assign int_data_OUT_M_imag_address0 = data_OUT_M_imag_address0;
assign int_data_OUT_M_imag_ce0      = data_OUT_M_imag_ce0;
assign int_data_OUT_M_imag_we0      = data_OUT_M_imag_we0;
assign int_data_OUT_M_imag_be0      = {4{data_OUT_M_imag_we0}};
assign int_data_OUT_M_imag_d0       = data_OUT_M_imag_d0;
assign int_data_OUT_M_imag_address1 = ar_hs? raddr[6:2] : waddr[6:2];
assign int_data_OUT_M_imag_ce1      = ar_hs | (int_data_OUT_M_imag_write & WVALID);
assign int_data_OUT_M_imag_we1      = int_data_OUT_M_imag_write & WVALID;
assign int_data_OUT_M_imag_be1      = WSTRB;
assign int_data_OUT_M_imag_d1       = WDATA;
// mag_OUT
assign int_mag_OUT_address0         = mag_OUT_address0;
assign int_mag_OUT_ce0              = mag_OUT_ce0;
assign int_mag_OUT_we0              = mag_OUT_we0;
assign int_mag_OUT_be0              = {4{mag_OUT_we0}};
assign int_mag_OUT_d0               = mag_OUT_d0;
assign int_mag_OUT_address1         = ar_hs? raddr[6:2] : waddr[6:2];
assign int_mag_OUT_ce1              = ar_hs | (int_mag_OUT_write & WVALID);
assign int_mag_OUT_we1              = int_mag_OUT_write & WVALID;
assign int_mag_OUT_be1              = WSTRB;
assign int_mag_OUT_d1               = WDATA;
// int_data_IN_M_real_read
always @(posedge ACLK) begin
    if (ARESET)
        int_data_IN_M_real_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_DATA_IN_M_REAL_BASE && raddr <= ADDR_DATA_IN_M_REAL_HIGH)
            int_data_IN_M_real_read <= 1'b1;
        else
            int_data_IN_M_real_read <= 1'b0;
    end
end

// int_data_IN_M_real_write
always @(posedge ACLK) begin
    if (ARESET)
        int_data_IN_M_real_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_DATA_IN_M_REAL_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_DATA_IN_M_REAL_HIGH)
            int_data_IN_M_real_write <= 1'b1;
        else if (WVALID)
            int_data_IN_M_real_write <= 1'b0;
    end
end

// int_data_IN_M_imag_read
always @(posedge ACLK) begin
    if (ARESET)
        int_data_IN_M_imag_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_DATA_IN_M_IMAG_BASE && raddr <= ADDR_DATA_IN_M_IMAG_HIGH)
            int_data_IN_M_imag_read <= 1'b1;
        else
            int_data_IN_M_imag_read <= 1'b0;
    end
end

// int_data_IN_M_imag_write
always @(posedge ACLK) begin
    if (ARESET)
        int_data_IN_M_imag_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_DATA_IN_M_IMAG_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_DATA_IN_M_IMAG_HIGH)
            int_data_IN_M_imag_write <= 1'b1;
        else if (WVALID)
            int_data_IN_M_imag_write <= 1'b0;
    end
end

// int_data_OUT_M_real_read
always @(posedge ACLK) begin
    if (ARESET)
        int_data_OUT_M_real_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_DATA_OUT_M_REAL_BASE && raddr <= ADDR_DATA_OUT_M_REAL_HIGH)
            int_data_OUT_M_real_read <= 1'b1;
        else
            int_data_OUT_M_real_read <= 1'b0;
    end
end

// int_data_OUT_M_real_write
always @(posedge ACLK) begin
    if (ARESET)
        int_data_OUT_M_real_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_DATA_OUT_M_REAL_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_DATA_OUT_M_REAL_HIGH)
            int_data_OUT_M_real_write <= 1'b1;
        else if (WVALID)
            int_data_OUT_M_real_write <= 1'b0;
    end
end

// int_data_OUT_M_imag_read
always @(posedge ACLK) begin
    if (ARESET)
        int_data_OUT_M_imag_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_DATA_OUT_M_IMAG_BASE && raddr <= ADDR_DATA_OUT_M_IMAG_HIGH)
            int_data_OUT_M_imag_read <= 1'b1;
        else
            int_data_OUT_M_imag_read <= 1'b0;
    end
end

// int_data_OUT_M_imag_write
always @(posedge ACLK) begin
    if (ARESET)
        int_data_OUT_M_imag_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_DATA_OUT_M_IMAG_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_DATA_OUT_M_IMAG_HIGH)
            int_data_OUT_M_imag_write <= 1'b1;
        else if (WVALID)
            int_data_OUT_M_imag_write <= 1'b0;
    end
end

// int_mag_OUT_read
always @(posedge ACLK) begin
    if (ARESET)
        int_mag_OUT_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_MAG_OUT_BASE && raddr <= ADDR_MAG_OUT_HIGH)
            int_mag_OUT_read <= 1'b1;
        else
            int_mag_OUT_read <= 1'b0;
    end
end

// int_mag_OUT_write
always @(posedge ACLK) begin
    if (ARESET)
        int_mag_OUT_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_MAG_OUT_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_MAG_OUT_HIGH)
            int_mag_OUT_write <= 1'b1;
        else if (WVALID)
            int_mag_OUT_write <= 1'b0;
    end
end


endmodule


`timescale 1ns/1ps

module FFT_AXILiteS_s_axi_ram
#(parameter
    BYTES  = 4,
    DEPTH  = 256,
    AWIDTH = log2(DEPTH)
) (
    input  wire               clk0,
    input  wire [AWIDTH-1:0]  address0,
    input  wire               ce0,
    input  wire               we0,
    input  wire [BYTES-1:0]   be0,
    input  wire [BYTES*8-1:0] d0,
    output reg  [BYTES*8-1:0] q0,
    input  wire               clk1,
    input  wire [AWIDTH-1:0]  address1,
    input  wire               ce1,
    input  wire               we1,
    input  wire [BYTES-1:0]   be1,
    input  wire [BYTES*8-1:0] d1,
    output reg  [BYTES*8-1:0] q1
);
//------------------------Local signal-------------------
reg  [BYTES*8-1:0] mem[0:DEPTH-1];
//------------------------Task and function--------------
function integer log2;
    input integer x;
    integer n, m;
begin
    n = 1;
    m = 2;
    while (m < x) begin
        n = n + 1;
        m = m * 2;
    end
    log2 = n;
end
endfunction
//------------------------Body---------------------------
// read port 0
always @(posedge clk0) begin
    if (ce0) q0 <= mem[address0];
end

// read port 1
always @(posedge clk1) begin
    if (ce1) q1 <= mem[address1];
end

genvar i;
generate
    for (i = 0; i < BYTES; i = i + 1) begin : gen_write
        // write port 0
        always @(posedge clk0) begin
            if (ce0 & we0 & be0[i]) begin
                mem[address0][8*i+7:8*i] <= d0[8*i+7:8*i];
            end
        end
        // write port 1
        always @(posedge clk1) begin
            if (ce1 & we1 & be1[i]) begin
                mem[address1][8*i+7:8*i] <= d1[8*i+7:8*i];
            end
        end
    end
endgenerate

endmodule

