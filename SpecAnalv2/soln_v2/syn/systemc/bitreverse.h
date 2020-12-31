// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _bitreverse_HH_
#define _bitreverse_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "bitreverse_rev_32.h"

namespace ap_rtl {

struct bitreverse : public sc_module {
    // Port declarations 21
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<5> > xin_M_real_address0;
    sc_out< sc_logic > xin_M_real_ce0;
    sc_in< sc_lv<32> > xin_M_real_q0;
    sc_out< sc_lv<5> > data_OUT0_M_real_address0;
    sc_out< sc_logic > data_OUT0_M_real_ce0;
    sc_out< sc_logic > data_OUT0_M_real_we0;
    sc_out< sc_lv<32> > data_OUT0_M_real_d0;
    sc_out< sc_lv<5> > xin_M_imag_address0;
    sc_out< sc_logic > xin_M_imag_ce0;
    sc_in< sc_lv<32> > xin_M_imag_q0;
    sc_out< sc_lv<5> > data_OUT0_M_imag_address0;
    sc_out< sc_logic > data_OUT0_M_imag_ce0;
    sc_out< sc_logic > data_OUT0_M_imag_we0;
    sc_out< sc_lv<32> > data_OUT0_M_imag_d0;


    // Module declarations
    bitreverse(sc_module_name name);
    SC_HAS_PROCESS(bitreverse);

    ~bitreverse();

    sc_trace_file* mVcdFile;

    bitreverse_rev_32* rev_32_U;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<5> > rev_32_address0;
    sc_signal< sc_logic > rev_32_ce0;
    sc_signal< sc_lv<5> > rev_32_q0;
    sc_signal< sc_lv<6> > i_0_i_reg_107;
    sc_signal< sc_lv<1> > icmp_ln43_fu_118_p2;
    sc_signal< sc_lv<1> > icmp_ln43_reg_141;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter2;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > icmp_ln43_reg_141_pp0_iter1_reg;
    sc_signal< sc_lv<6> > i_fu_124_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<64> > zext_ln45_fu_130_p1;
    sc_signal< sc_lv<64> > zext_ln45_reg_150;
    sc_signal< sc_lv<64> > zext_ln45_reg_150_pp0_iter1_reg;
    sc_signal< bool > ap_block_state1;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<64> > zext_ln46_fu_135_p1;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_pp0_stage0;
    static const sc_lv<3> ap_ST_fsm_state5;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<6> ap_const_lv6_20;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<32> ap_const_lv32_2;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state5();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_block_state4_pp0_stage0_iter2();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_ready();
    void thread_data_OUT0_M_imag_address0();
    void thread_data_OUT0_M_imag_ce0();
    void thread_data_OUT0_M_imag_d0();
    void thread_data_OUT0_M_imag_we0();
    void thread_data_OUT0_M_real_address0();
    void thread_data_OUT0_M_real_ce0();
    void thread_data_OUT0_M_real_d0();
    void thread_data_OUT0_M_real_we0();
    void thread_i_fu_124_p2();
    void thread_icmp_ln43_fu_118_p2();
    void thread_rev_32_address0();
    void thread_rev_32_ce0();
    void thread_xin_M_imag_address0();
    void thread_xin_M_imag_ce0();
    void thread_xin_M_real_address0();
    void thread_xin_M_real_ce0();
    void thread_zext_ln45_fu_130_p1();
    void thread_zext_ln46_fu_135_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif