// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

`define TV_OUT_mag_OUT_TDATA "../tv/rtldatafile/rtl.FFT.autotvout_mag_OUT.dat"

`define AUTOTB_TRANSACTION_NUM 2

module AESL_axi_s_mag_OUT (
    input clk,
    input reset,
    input [32 - 1:0] TRAN_mag_OUT_TDATA,
    input TRAN_mag_OUT_TVALID,
    output TRAN_mag_OUT_TREADY,
    input ready,
    input done,
    output [31:0] transaction);

    wire TRAN_mag_OUT_TVALID_temp;
    wire mag_OUT_TDATA_full;
    wire mag_OUT_TDATA_empty;
    reg mag_OUT_TDATA_write_en;
    reg [32 - 1:0] mag_OUT_TDATA_write_data;
    reg mag_OUT_TDATA_read_en;
    wire [32 - 1:0] mag_OUT_TDATA_read_data;
    
    fifo #(32, 32) fifo_mag_OUT_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(mag_OUT_TDATA_write_en),
        .write_data(mag_OUT_TDATA_write_data),
        .read_clock(clk),
        .read_en(mag_OUT_TDATA_read_en),
        .read_data(mag_OUT_TDATA_read_data),
        .full(mag_OUT_TDATA_full),
        .empty(mag_OUT_TDATA_empty));
    
    always @ (*) begin
        mag_OUT_TDATA_write_en <= TRAN_mag_OUT_TVALID;
        mag_OUT_TDATA_write_data <= TRAN_mag_OUT_TDATA;
        mag_OUT_TDATA_read_en <= 0;
    end
    assign TRAN_mag_OUT_TVALID = TRAN_mag_OUT_TVALID_temp;

    
    assign TRAN_mag_OUT_TREADY = ~(mag_OUT_TDATA_full);
    
    function is_blank_char(input [7:0] in_char);
        if (in_char == " " || in_char == "\011" || in_char == "\012" || in_char == "\015") begin
            is_blank_char = 1;
        end else begin
            is_blank_char = 0;
        end
    endfunction
    
    function [199:0] read_token(input integer fp);
        integer ret;
        begin
            read_token = "";
                    ret = 0;
                    ret = $fscanf(fp,"%s",read_token);
        end
    endfunction
    
    function [199:0] rm_0x(input [199:0] token);
        reg [199:0] token_tmp;
        integer i;
        begin
            token_tmp = "";
            for (i = 0; token[15:0] != "0x"; token = token >> 8) begin
                token_tmp = (token[7:0] << (8 * i)) | token_tmp;
                i = i + 1;
            end
            rm_0x = token_tmp;
        end
    endfunction
    
    reg done_1;
    
    always @ (posedge clk or reset) begin
        if (~reset) begin
            done_1 <= 0;
        end else begin
            done_1 <= done;
        end
    end
    
    reg [31:0] transaction_save_mag_OUT_TDATA;
    
    assign transaction = transaction_save_mag_OUT_TDATA;
    
    initial begin : AXI_stream_receiver_mag_OUT_TDATA
        integer fp;
        reg [32 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_mag_OUT_TDATA = 0;
        fifo_mag_OUT_TDATA.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_mag_OUT_TDATA, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_mag_OUT_TDATA);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_mag_OUT_TDATA);
                while (~fifo_mag_OUT_TDATA.empty) begin
                    fifo_mag_OUT_TDATA.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_mag_OUT_TDATA = transaction_save_mag_OUT_TDATA + 1;
                fifo_mag_OUT_TDATA.clear();
                $fclose(fp);
            end
        end
    end

endmodule
