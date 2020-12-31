// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "bitreverse.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic bitreverse::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic bitreverse::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<3> bitreverse::ap_ST_fsm_state1 = "1";
const sc_lv<3> bitreverse::ap_ST_fsm_pp0_stage0 = "10";
const sc_lv<3> bitreverse::ap_ST_fsm_state5 = "100";
const sc_lv<32> bitreverse::ap_const_lv32_0 = "00000000000000000000000000000000";
const bool bitreverse::ap_const_boolean_1 = true;
const sc_lv<32> bitreverse::ap_const_lv32_1 = "1";
const bool bitreverse::ap_const_boolean_0 = false;
const sc_lv<1> bitreverse::ap_const_lv1_0 = "0";
const sc_lv<1> bitreverse::ap_const_lv1_1 = "1";
const sc_lv<6> bitreverse::ap_const_lv6_0 = "000000";
const sc_lv<6> bitreverse::ap_const_lv6_20 = "100000";
const sc_lv<6> bitreverse::ap_const_lv6_1 = "1";
const sc_lv<32> bitreverse::ap_const_lv32_2 = "10";

bitreverse::bitreverse(sc_module_name name) : sc_module(name), mVcdFile(0) {
    rev_32_U = new bitreverse_rev_32("rev_32_U");
    rev_32_U->clk(ap_clk);
    rev_32_U->reset(ap_rst);
    rev_32_U->address0(rev_32_address0);
    rev_32_U->ce0(rev_32_ce0);
    rev_32_U->q0(rev_32_q0);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_pp0_stage0);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_pp0_stage0);

    SC_METHOD(thread_ap_block_pp0_stage0_11001);

    SC_METHOD(thread_ap_block_pp0_stage0_subdone);

    SC_METHOD(thread_ap_block_state1);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );

    SC_METHOD(thread_ap_block_state2_pp0_stage0_iter0);

    SC_METHOD(thread_ap_block_state3_pp0_stage0_iter1);

    SC_METHOD(thread_ap_block_state4_pp0_stage0_iter2);

    SC_METHOD(thread_ap_condition_pp0_exit_iter0_state2);
    sensitive << ( icmp_ln43_fu_118_p2 );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_ap_enable_pp0);
    sensitive << ( ap_idle_pp0 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_idle_pp0);
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_enable_reg_pp0_iter2 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_data_OUT0_M_imag_address0);
    sensitive << ( zext_ln45_reg_150_pp0_iter1_reg );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( ap_block_pp0_stage0 );

    SC_METHOD(thread_data_OUT0_M_imag_ce0);
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter2 );

    SC_METHOD(thread_data_OUT0_M_imag_d0);
    sensitive << ( xin_M_imag_q0 );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( ap_block_pp0_stage0 );

    SC_METHOD(thread_data_OUT0_M_imag_we0);
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( icmp_ln43_reg_141_pp0_iter1_reg );
    sensitive << ( ap_enable_reg_pp0_iter2 );

    SC_METHOD(thread_data_OUT0_M_real_address0);
    sensitive << ( zext_ln45_reg_150_pp0_iter1_reg );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( ap_block_pp0_stage0 );

    SC_METHOD(thread_data_OUT0_M_real_ce0);
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter2 );

    SC_METHOD(thread_data_OUT0_M_real_d0);
    sensitive << ( xin_M_real_q0 );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( ap_block_pp0_stage0 );

    SC_METHOD(thread_data_OUT0_M_real_we0);
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( icmp_ln43_reg_141_pp0_iter1_reg );
    sensitive << ( ap_enable_reg_pp0_iter2 );

    SC_METHOD(thread_i_fu_124_p2);
    sensitive << ( i_0_i_reg_107 );

    SC_METHOD(thread_icmp_ln43_fu_118_p2);
    sensitive << ( i_0_i_reg_107 );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_rev_32_address0);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( zext_ln45_fu_130_p1 );
    sensitive << ( ap_block_pp0_stage0 );

    SC_METHOD(thread_rev_32_ce0);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_xin_M_imag_address0);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( zext_ln46_fu_135_p1 );

    SC_METHOD(thread_xin_M_imag_ce0);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter1 );

    SC_METHOD(thread_xin_M_real_address0);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( zext_ln46_fu_135_p1 );

    SC_METHOD(thread_xin_M_real_ce0);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter1 );

    SC_METHOD(thread_zext_ln45_fu_130_p1);
    sensitive << ( i_0_i_reg_107 );

    SC_METHOD(thread_zext_ln46_fu_135_p1);
    sensitive << ( rev_32_q0 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( icmp_ln43_fu_118_p2 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_block_pp0_stage0_subdone );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_enable_reg_pp0_iter2 );

    ap_done_reg = SC_LOGIC_0;
    ap_CS_fsm = "001";
    ap_enable_reg_pp0_iter0 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter1 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter2 = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "bitreverse_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_continue, "(port)ap_continue");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, xin_M_real_address0, "(port)xin_M_real_address0");
    sc_trace(mVcdFile, xin_M_real_ce0, "(port)xin_M_real_ce0");
    sc_trace(mVcdFile, xin_M_real_q0, "(port)xin_M_real_q0");
    sc_trace(mVcdFile, data_OUT0_M_real_address0, "(port)data_OUT0_M_real_address0");
    sc_trace(mVcdFile, data_OUT0_M_real_ce0, "(port)data_OUT0_M_real_ce0");
    sc_trace(mVcdFile, data_OUT0_M_real_we0, "(port)data_OUT0_M_real_we0");
    sc_trace(mVcdFile, data_OUT0_M_real_d0, "(port)data_OUT0_M_real_d0");
    sc_trace(mVcdFile, xin_M_imag_address0, "(port)xin_M_imag_address0");
    sc_trace(mVcdFile, xin_M_imag_ce0, "(port)xin_M_imag_ce0");
    sc_trace(mVcdFile, xin_M_imag_q0, "(port)xin_M_imag_q0");
    sc_trace(mVcdFile, data_OUT0_M_imag_address0, "(port)data_OUT0_M_imag_address0");
    sc_trace(mVcdFile, data_OUT0_M_imag_ce0, "(port)data_OUT0_M_imag_ce0");
    sc_trace(mVcdFile, data_OUT0_M_imag_we0, "(port)data_OUT0_M_imag_we0");
    sc_trace(mVcdFile, data_OUT0_M_imag_d0, "(port)data_OUT0_M_imag_d0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_done_reg, "ap_done_reg");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, rev_32_address0, "rev_32_address0");
    sc_trace(mVcdFile, rev_32_ce0, "rev_32_ce0");
    sc_trace(mVcdFile, rev_32_q0, "rev_32_q0");
    sc_trace(mVcdFile, i_0_i_reg_107, "i_0_i_reg_107");
    sc_trace(mVcdFile, icmp_ln43_fu_118_p2, "icmp_ln43_fu_118_p2");
    sc_trace(mVcdFile, icmp_ln43_reg_141, "icmp_ln43_reg_141");
    sc_trace(mVcdFile, ap_CS_fsm_pp0_stage0, "ap_CS_fsm_pp0_stage0");
    sc_trace(mVcdFile, ap_block_state2_pp0_stage0_iter0, "ap_block_state2_pp0_stage0_iter0");
    sc_trace(mVcdFile, ap_block_state3_pp0_stage0_iter1, "ap_block_state3_pp0_stage0_iter1");
    sc_trace(mVcdFile, ap_block_state4_pp0_stage0_iter2, "ap_block_state4_pp0_stage0_iter2");
    sc_trace(mVcdFile, ap_block_pp0_stage0_11001, "ap_block_pp0_stage0_11001");
    sc_trace(mVcdFile, icmp_ln43_reg_141_pp0_iter1_reg, "icmp_ln43_reg_141_pp0_iter1_reg");
    sc_trace(mVcdFile, i_fu_124_p2, "i_fu_124_p2");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter0, "ap_enable_reg_pp0_iter0");
    sc_trace(mVcdFile, zext_ln45_fu_130_p1, "zext_ln45_fu_130_p1");
    sc_trace(mVcdFile, zext_ln45_reg_150, "zext_ln45_reg_150");
    sc_trace(mVcdFile, zext_ln45_reg_150_pp0_iter1_reg, "zext_ln45_reg_150_pp0_iter1_reg");
    sc_trace(mVcdFile, ap_block_state1, "ap_block_state1");
    sc_trace(mVcdFile, ap_block_pp0_stage0_subdone, "ap_block_pp0_stage0_subdone");
    sc_trace(mVcdFile, ap_condition_pp0_exit_iter0_state2, "ap_condition_pp0_exit_iter0_state2");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter1, "ap_enable_reg_pp0_iter1");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter2, "ap_enable_reg_pp0_iter2");
    sc_trace(mVcdFile, ap_block_pp0_stage0, "ap_block_pp0_stage0");
    sc_trace(mVcdFile, zext_ln46_fu_135_p1, "zext_ln46_fu_135_p1");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, ap_idle_pp0, "ap_idle_pp0");
    sc_trace(mVcdFile, ap_enable_pp0, "ap_enable_pp0");
#endif

    }
}

bitreverse::~bitreverse() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete rev_32_U;
}

void bitreverse::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_done_reg = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_continue.read())) {
            ap_done_reg = ap_const_logic_0;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
            ap_done_reg = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter0 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
             esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
             esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state2.read()))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                    !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter1 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0)) {
            if (esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state2.read())) {
                ap_enable_reg_pp0_iter1 = (ap_condition_pp0_exit_iter0_state2.read() ^ ap_const_logic_1);
            } else if (esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1)) {
                ap_enable_reg_pp0_iter1 = ap_enable_reg_pp0_iter0.read();
            }
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter2 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter2 = ap_enable_reg_pp0_iter1.read();
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                    !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
            ap_enable_reg_pp0_iter2 = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(icmp_ln43_fu_118_p2.read(), ap_const_lv1_0))) {
        i_0_i_reg_107 = i_fu_124_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        i_0_i_reg_107 = ap_const_lv6_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        icmp_ln43_reg_141 = icmp_ln43_fu_118_p2.read();
        icmp_ln43_reg_141_pp0_iter1_reg = icmp_ln43_reg_141.read();
        zext_ln45_reg_150_pp0_iter1_reg = zext_ln45_reg_150.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(icmp_ln43_fu_118_p2.read(), ap_const_lv1_0))) {
        zext_ln45_reg_150 = zext_ln45_fu_130_p1.read();
    }
}

void bitreverse::thread_ap_CS_fsm_pp0_stage0() {
    ap_CS_fsm_pp0_stage0 = ap_CS_fsm.read()[1];
}

void bitreverse::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void bitreverse::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[2];
}

void bitreverse::thread_ap_block_pp0_stage0() {
    ap_block_pp0_stage0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void bitreverse::thread_ap_block_pp0_stage0_11001() {
    ap_block_pp0_stage0_11001 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void bitreverse::thread_ap_block_pp0_stage0_subdone() {
    ap_block_pp0_stage0_subdone = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void bitreverse::thread_ap_block_state1() {
    ap_block_state1 = (esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1));
}

void bitreverse::thread_ap_block_state2_pp0_stage0_iter0() {
    ap_block_state2_pp0_stage0_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void bitreverse::thread_ap_block_state3_pp0_stage0_iter1() {
    ap_block_state3_pp0_stage0_iter1 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void bitreverse::thread_ap_block_state4_pp0_stage0_iter2() {
    ap_block_state4_pp0_stage0_iter2 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void bitreverse::thread_ap_condition_pp0_exit_iter0_state2() {
    if (esl_seteq<1,1,1>(icmp_ln43_fu_118_p2.read(), ap_const_lv1_1)) {
        ap_condition_pp0_exit_iter0_state2 = ap_const_logic_1;
    } else {
        ap_condition_pp0_exit_iter0_state2 = ap_const_logic_0;
    }
}

void bitreverse::thread_ap_done() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_done_reg.read();
    }
}

void bitreverse::thread_ap_enable_pp0() {
    ap_enable_pp0 = (ap_idle_pp0.read() ^ ap_const_logic_1);
}

void bitreverse::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void bitreverse::thread_ap_idle_pp0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter2.read()))) {
        ap_idle_pp0 = ap_const_logic_1;
    } else {
        ap_idle_pp0 = ap_const_logic_0;
    }
}

void bitreverse::thread_ap_ready() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void bitreverse::thread_data_OUT0_M_imag_address0() {
    data_OUT0_M_imag_address0 =  (sc_lv<5>) (zext_ln45_reg_150_pp0_iter1_reg.read());
}

void bitreverse::thread_data_OUT0_M_imag_ce0() {
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()))) {
        data_OUT0_M_imag_ce0 = ap_const_logic_1;
    } else {
        data_OUT0_M_imag_ce0 = ap_const_logic_0;
    }
}

void bitreverse::thread_data_OUT0_M_imag_d0() {
    data_OUT0_M_imag_d0 = xin_M_imag_q0.read();
}

void bitreverse::thread_data_OUT0_M_imag_we0() {
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
         esl_seteq<1,1,1>(icmp_ln43_reg_141_pp0_iter1_reg.read(), ap_const_lv1_0))) {
        data_OUT0_M_imag_we0 = ap_const_logic_1;
    } else {
        data_OUT0_M_imag_we0 = ap_const_logic_0;
    }
}

void bitreverse::thread_data_OUT0_M_real_address0() {
    data_OUT0_M_real_address0 =  (sc_lv<5>) (zext_ln45_reg_150_pp0_iter1_reg.read());
}

void bitreverse::thread_data_OUT0_M_real_ce0() {
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()))) {
        data_OUT0_M_real_ce0 = ap_const_logic_1;
    } else {
        data_OUT0_M_real_ce0 = ap_const_logic_0;
    }
}

void bitreverse::thread_data_OUT0_M_real_d0() {
    data_OUT0_M_real_d0 = xin_M_real_q0.read();
}

void bitreverse::thread_data_OUT0_M_real_we0() {
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
         esl_seteq<1,1,1>(icmp_ln43_reg_141_pp0_iter1_reg.read(), ap_const_lv1_0))) {
        data_OUT0_M_real_we0 = ap_const_logic_1;
    } else {
        data_OUT0_M_real_we0 = ap_const_logic_0;
    }
}

void bitreverse::thread_i_fu_124_p2() {
    i_fu_124_p2 = (!i_0_i_reg_107.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_biguint<6>(i_0_i_reg_107.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void bitreverse::thread_icmp_ln43_fu_118_p2() {
    icmp_ln43_fu_118_p2 = (!i_0_i_reg_107.read().is_01() || !ap_const_lv6_20.is_01())? sc_lv<1>(): sc_lv<1>(i_0_i_reg_107.read() == ap_const_lv6_20);
}

void bitreverse::thread_rev_32_address0() {
    rev_32_address0 =  (sc_lv<5>) (zext_ln45_fu_130_p1.read());
}

void bitreverse::thread_rev_32_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        rev_32_ce0 = ap_const_logic_1;
    } else {
        rev_32_ce0 = ap_const_logic_0;
    }
}

void bitreverse::thread_xin_M_imag_address0() {
    xin_M_imag_address0 =  (sc_lv<5>) (zext_ln46_fu_135_p1.read());
}

void bitreverse::thread_xin_M_imag_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()))) {
        xin_M_imag_ce0 = ap_const_logic_1;
    } else {
        xin_M_imag_ce0 = ap_const_logic_0;
    }
}

void bitreverse::thread_xin_M_real_address0() {
    xin_M_real_address0 =  (sc_lv<5>) (zext_ln46_fu_135_p1.read());
}

void bitreverse::thread_xin_M_real_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()))) {
        xin_M_real_ce0 = ap_const_logic_1;
    } else {
        xin_M_real_ce0 = ap_const_logic_0;
    }
}

void bitreverse::thread_zext_ln45_fu_130_p1() {
    zext_ln45_fu_130_p1 = esl_zext<64,6>(i_0_i_reg_107.read());
}

void bitreverse::thread_zext_ln46_fu_135_p1() {
    zext_ln46_fu_135_p1 = esl_zext<64,5>(rev_32_q0.read());
}

void bitreverse::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((!(esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0)) && !(esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(icmp_ln43_fu_118_p2.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0)))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else if (((esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
  esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0)) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
  esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
  esl_seteq<1,1,1>(icmp_ln43_fu_118_p2.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0)))) {
                ap_NS_fsm = ap_ST_fsm_state5;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state1;
            break;
        default : 
            ap_NS_fsm = "XXX";
            break;
    }
}

}
