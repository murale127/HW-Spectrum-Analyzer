// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Block_codeRepl124_pr_HH_
#define _Block_codeRepl124_pr_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct Block_codeRepl124_pr : public sc_module {
    // Port declarations 24
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<64> > data_IN_TDATA;
    sc_in< sc_logic > data_IN_TVALID;
    sc_out< sc_logic > data_IN_TREADY;
    sc_out< sc_lv<5> > xin_M_imag_address0;
    sc_out< sc_logic > xin_M_imag_ce0;
    sc_out< sc_logic > xin_M_imag_we0;
    sc_out< sc_lv<32> > xin_M_imag_d0;
    sc_out< sc_lv<5> > xin_M_real_address0;
    sc_out< sc_logic > xin_M_real_ce0;
    sc_out< sc_logic > xin_M_real_we0;
    sc_out< sc_lv<32> > xin_M_real_d0;
    sc_in< sc_lv<8> > win_mode_dout;
    sc_in< sc_logic > win_mode_empty_n;
    sc_out< sc_logic > win_mode_read;
    sc_out< sc_lv<8> > win_mode_out_din;
    sc_in< sc_logic > win_mode_out_full_n;
    sc_out< sc_logic > win_mode_out_write;


    // Module declarations
    Block_codeRepl124_pr(sc_module_name name);
    SC_HAS_PROCESS(Block_codeRepl124_pr);

    ~Block_codeRepl124_pr();

    sc_trace_file* mVcdFile;

    regslice_both<64>* regslice_both_data_IN_U;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<32> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > data_IN_TDATA_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_logic > ap_CS_fsm_state18;
    sc_signal< sc_logic > ap_CS_fsm_state19;
    sc_signal< sc_logic > ap_CS_fsm_state20;
    sc_signal< sc_logic > ap_CS_fsm_state21;
    sc_signal< sc_logic > ap_CS_fsm_state22;
    sc_signal< sc_logic > ap_CS_fsm_state23;
    sc_signal< sc_logic > ap_CS_fsm_state24;
    sc_signal< sc_logic > ap_CS_fsm_state25;
    sc_signal< sc_logic > ap_CS_fsm_state26;
    sc_signal< sc_logic > ap_CS_fsm_state27;
    sc_signal< sc_logic > ap_CS_fsm_state28;
    sc_signal< sc_logic > ap_CS_fsm_state29;
    sc_signal< sc_logic > ap_CS_fsm_state30;
    sc_signal< sc_logic > ap_CS_fsm_state31;
    sc_signal< sc_logic > ap_CS_fsm_state32;
    sc_signal< sc_logic > win_mode_blk_n;
    sc_signal< sc_logic > win_mode_out_blk_n;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<32> > bitcast_ln147_fu_746_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_2_fu_760_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_4_fu_774_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_6_fu_788_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_8_fu_802_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_10_fu_816_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_12_fu_830_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_14_fu_844_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_16_fu_858_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_18_fu_872_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_20_fu_886_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_22_fu_900_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_24_fu_914_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_26_fu_928_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_28_fu_942_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_30_fu_956_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_32_fu_970_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_34_fu_984_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_36_fu_998_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_38_fu_1012_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_40_fu_1026_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_42_fu_1040_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_44_fu_1054_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_46_fu_1068_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_48_fu_1082_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_50_fu_1096_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_52_fu_1110_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_54_fu_1124_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_56_fu_1138_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_58_fu_1152_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_60_fu_1166_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_62_fu_1180_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_1_fu_751_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_3_fu_765_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_5_fu_779_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_7_fu_793_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_9_fu_807_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_11_fu_821_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_13_fu_835_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_15_fu_849_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_17_fu_863_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_19_fu_877_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_21_fu_891_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_23_fu_905_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_25_fu_919_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_27_fu_933_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_29_fu_947_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_31_fu_961_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_33_fu_975_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_35_fu_989_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_37_fu_1003_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_39_fu_1017_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_41_fu_1031_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_43_fu_1045_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_45_fu_1059_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_47_fu_1073_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_49_fu_1087_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_51_fu_1101_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_53_fu_1115_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_55_fu_1129_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_57_fu_1143_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_59_fu_1157_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_61_fu_1171_p1;
    sc_signal< sc_lv<32> > bitcast_ln147_63_fu_1185_p1;
    sc_signal< sc_lv<32> > trunc_ln147_fu_742_p1;
    sc_signal< sc_lv<32> > grp_fu_732_p4;
    sc_signal< sc_lv<32> > trunc_ln147_1_fu_756_p1;
    sc_signal< sc_lv<32> > trunc_ln147_2_fu_770_p1;
    sc_signal< sc_lv<32> > trunc_ln147_3_fu_784_p1;
    sc_signal< sc_lv<32> > trunc_ln147_4_fu_798_p1;
    sc_signal< sc_lv<32> > trunc_ln147_5_fu_812_p1;
    sc_signal< sc_lv<32> > trunc_ln147_6_fu_826_p1;
    sc_signal< sc_lv<32> > trunc_ln147_7_fu_840_p1;
    sc_signal< sc_lv<32> > trunc_ln147_8_fu_854_p1;
    sc_signal< sc_lv<32> > trunc_ln147_9_fu_868_p1;
    sc_signal< sc_lv<32> > trunc_ln147_10_fu_882_p1;
    sc_signal< sc_lv<32> > trunc_ln147_11_fu_896_p1;
    sc_signal< sc_lv<32> > trunc_ln147_12_fu_910_p1;
    sc_signal< sc_lv<32> > trunc_ln147_13_fu_924_p1;
    sc_signal< sc_lv<32> > trunc_ln147_14_fu_938_p1;
    sc_signal< sc_lv<32> > trunc_ln147_15_fu_952_p1;
    sc_signal< sc_lv<32> > trunc_ln147_16_fu_966_p1;
    sc_signal< sc_lv<32> > trunc_ln147_17_fu_980_p1;
    sc_signal< sc_lv<32> > trunc_ln147_18_fu_994_p1;
    sc_signal< sc_lv<32> > trunc_ln147_19_fu_1008_p1;
    sc_signal< sc_lv<32> > trunc_ln147_20_fu_1022_p1;
    sc_signal< sc_lv<32> > trunc_ln147_21_fu_1036_p1;
    sc_signal< sc_lv<32> > trunc_ln147_22_fu_1050_p1;
    sc_signal< sc_lv<32> > trunc_ln147_23_fu_1064_p1;
    sc_signal< sc_lv<32> > trunc_ln147_24_fu_1078_p1;
    sc_signal< sc_lv<32> > trunc_ln147_25_fu_1092_p1;
    sc_signal< sc_lv<32> > trunc_ln147_26_fu_1106_p1;
    sc_signal< sc_lv<32> > trunc_ln147_27_fu_1120_p1;
    sc_signal< sc_lv<32> > trunc_ln147_28_fu_1134_p1;
    sc_signal< sc_lv<32> > trunc_ln147_29_fu_1148_p1;
    sc_signal< sc_lv<32> > trunc_ln147_30_fu_1162_p1;
    sc_signal< sc_lv<32> > trunc_ln147_31_fu_1176_p1;
    sc_signal< sc_lv<32> > ap_NS_fsm;
    sc_signal< sc_logic > regslice_both_data_IN_U_apdone_blk;
    sc_signal< sc_lv<64> > data_IN_TDATA_int;
    sc_signal< sc_logic > data_IN_TVALID_int;
    sc_signal< sc_logic > data_IN_TREADY_int;
    sc_signal< sc_logic > regslice_both_data_IN_U_ack_in;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<32> ap_ST_fsm_state1;
    static const sc_lv<32> ap_ST_fsm_state2;
    static const sc_lv<32> ap_ST_fsm_state3;
    static const sc_lv<32> ap_ST_fsm_state4;
    static const sc_lv<32> ap_ST_fsm_state5;
    static const sc_lv<32> ap_ST_fsm_state6;
    static const sc_lv<32> ap_ST_fsm_state7;
    static const sc_lv<32> ap_ST_fsm_state8;
    static const sc_lv<32> ap_ST_fsm_state9;
    static const sc_lv<32> ap_ST_fsm_state10;
    static const sc_lv<32> ap_ST_fsm_state11;
    static const sc_lv<32> ap_ST_fsm_state12;
    static const sc_lv<32> ap_ST_fsm_state13;
    static const sc_lv<32> ap_ST_fsm_state14;
    static const sc_lv<32> ap_ST_fsm_state15;
    static const sc_lv<32> ap_ST_fsm_state16;
    static const sc_lv<32> ap_ST_fsm_state17;
    static const sc_lv<32> ap_ST_fsm_state18;
    static const sc_lv<32> ap_ST_fsm_state19;
    static const sc_lv<32> ap_ST_fsm_state20;
    static const sc_lv<32> ap_ST_fsm_state21;
    static const sc_lv<32> ap_ST_fsm_state22;
    static const sc_lv<32> ap_ST_fsm_state23;
    static const sc_lv<32> ap_ST_fsm_state24;
    static const sc_lv<32> ap_ST_fsm_state25;
    static const sc_lv<32> ap_ST_fsm_state26;
    static const sc_lv<32> ap_ST_fsm_state27;
    static const sc_lv<32> ap_ST_fsm_state28;
    static const sc_lv<32> ap_ST_fsm_state29;
    static const sc_lv<32> ap_ST_fsm_state30;
    static const sc_lv<32> ap_ST_fsm_state31;
    static const sc_lv<32> ap_ST_fsm_state32;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_19;
    static const sc_lv<32> ap_const_lv32_1A;
    static const sc_lv<32> ap_const_lv32_1B;
    static const sc_lv<32> ap_const_lv32_1C;
    static const sc_lv<32> ap_const_lv32_1D;
    static const sc_lv<32> ap_const_lv32_1E;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<64> ap_const_lv64_1;
    static const sc_lv<64> ap_const_lv64_2;
    static const sc_lv<64> ap_const_lv64_3;
    static const sc_lv<64> ap_const_lv64_4;
    static const sc_lv<64> ap_const_lv64_5;
    static const sc_lv<64> ap_const_lv64_6;
    static const sc_lv<64> ap_const_lv64_7;
    static const sc_lv<64> ap_const_lv64_8;
    static const sc_lv<64> ap_const_lv64_9;
    static const sc_lv<64> ap_const_lv64_A;
    static const sc_lv<64> ap_const_lv64_B;
    static const sc_lv<64> ap_const_lv64_C;
    static const sc_lv<64> ap_const_lv64_D;
    static const sc_lv<64> ap_const_lv64_E;
    static const sc_lv<64> ap_const_lv64_F;
    static const sc_lv<64> ap_const_lv64_10;
    static const sc_lv<64> ap_const_lv64_11;
    static const sc_lv<64> ap_const_lv64_12;
    static const sc_lv<64> ap_const_lv64_13;
    static const sc_lv<64> ap_const_lv64_14;
    static const sc_lv<64> ap_const_lv64_15;
    static const sc_lv<64> ap_const_lv64_16;
    static const sc_lv<64> ap_const_lv64_17;
    static const sc_lv<64> ap_const_lv64_18;
    static const sc_lv<64> ap_const_lv64_19;
    static const sc_lv<64> ap_const_lv64_1A;
    static const sc_lv<64> ap_const_lv64_1B;
    static const sc_lv<64> ap_const_lv64_1C;
    static const sc_lv<64> ap_const_lv64_1D;
    static const sc_lv<64> ap_const_lv64_1E;
    static const sc_lv<64> ap_const_lv64_1F;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<32> ap_const_lv32_3F;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state17();
    void thread_ap_CS_fsm_state18();
    void thread_ap_CS_fsm_state19();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state20();
    void thread_ap_CS_fsm_state21();
    void thread_ap_CS_fsm_state22();
    void thread_ap_CS_fsm_state23();
    void thread_ap_CS_fsm_state24();
    void thread_ap_CS_fsm_state25();
    void thread_ap_CS_fsm_state26();
    void thread_ap_CS_fsm_state27();
    void thread_ap_CS_fsm_state28();
    void thread_ap_CS_fsm_state29();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state30();
    void thread_ap_CS_fsm_state31();
    void thread_ap_CS_fsm_state32();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_block_state1();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_bitcast_ln147_10_fu_816_p1();
    void thread_bitcast_ln147_11_fu_821_p1();
    void thread_bitcast_ln147_12_fu_830_p1();
    void thread_bitcast_ln147_13_fu_835_p1();
    void thread_bitcast_ln147_14_fu_844_p1();
    void thread_bitcast_ln147_15_fu_849_p1();
    void thread_bitcast_ln147_16_fu_858_p1();
    void thread_bitcast_ln147_17_fu_863_p1();
    void thread_bitcast_ln147_18_fu_872_p1();
    void thread_bitcast_ln147_19_fu_877_p1();
    void thread_bitcast_ln147_1_fu_751_p1();
    void thread_bitcast_ln147_20_fu_886_p1();
    void thread_bitcast_ln147_21_fu_891_p1();
    void thread_bitcast_ln147_22_fu_900_p1();
    void thread_bitcast_ln147_23_fu_905_p1();
    void thread_bitcast_ln147_24_fu_914_p1();
    void thread_bitcast_ln147_25_fu_919_p1();
    void thread_bitcast_ln147_26_fu_928_p1();
    void thread_bitcast_ln147_27_fu_933_p1();
    void thread_bitcast_ln147_28_fu_942_p1();
    void thread_bitcast_ln147_29_fu_947_p1();
    void thread_bitcast_ln147_2_fu_760_p1();
    void thread_bitcast_ln147_30_fu_956_p1();
    void thread_bitcast_ln147_31_fu_961_p1();
    void thread_bitcast_ln147_32_fu_970_p1();
    void thread_bitcast_ln147_33_fu_975_p1();
    void thread_bitcast_ln147_34_fu_984_p1();
    void thread_bitcast_ln147_35_fu_989_p1();
    void thread_bitcast_ln147_36_fu_998_p1();
    void thread_bitcast_ln147_37_fu_1003_p1();
    void thread_bitcast_ln147_38_fu_1012_p1();
    void thread_bitcast_ln147_39_fu_1017_p1();
    void thread_bitcast_ln147_3_fu_765_p1();
    void thread_bitcast_ln147_40_fu_1026_p1();
    void thread_bitcast_ln147_41_fu_1031_p1();
    void thread_bitcast_ln147_42_fu_1040_p1();
    void thread_bitcast_ln147_43_fu_1045_p1();
    void thread_bitcast_ln147_44_fu_1054_p1();
    void thread_bitcast_ln147_45_fu_1059_p1();
    void thread_bitcast_ln147_46_fu_1068_p1();
    void thread_bitcast_ln147_47_fu_1073_p1();
    void thread_bitcast_ln147_48_fu_1082_p1();
    void thread_bitcast_ln147_49_fu_1087_p1();
    void thread_bitcast_ln147_4_fu_774_p1();
    void thread_bitcast_ln147_50_fu_1096_p1();
    void thread_bitcast_ln147_51_fu_1101_p1();
    void thread_bitcast_ln147_52_fu_1110_p1();
    void thread_bitcast_ln147_53_fu_1115_p1();
    void thread_bitcast_ln147_54_fu_1124_p1();
    void thread_bitcast_ln147_55_fu_1129_p1();
    void thread_bitcast_ln147_56_fu_1138_p1();
    void thread_bitcast_ln147_57_fu_1143_p1();
    void thread_bitcast_ln147_58_fu_1152_p1();
    void thread_bitcast_ln147_59_fu_1157_p1();
    void thread_bitcast_ln147_5_fu_779_p1();
    void thread_bitcast_ln147_60_fu_1166_p1();
    void thread_bitcast_ln147_61_fu_1171_p1();
    void thread_bitcast_ln147_62_fu_1180_p1();
    void thread_bitcast_ln147_63_fu_1185_p1();
    void thread_bitcast_ln147_6_fu_788_p1();
    void thread_bitcast_ln147_7_fu_793_p1();
    void thread_bitcast_ln147_8_fu_802_p1();
    void thread_bitcast_ln147_9_fu_807_p1();
    void thread_bitcast_ln147_fu_746_p1();
    void thread_data_IN_TDATA_blk_n();
    void thread_data_IN_TREADY();
    void thread_data_IN_TREADY_int();
    void thread_grp_fu_732_p4();
    void thread_trunc_ln147_10_fu_882_p1();
    void thread_trunc_ln147_11_fu_896_p1();
    void thread_trunc_ln147_12_fu_910_p1();
    void thread_trunc_ln147_13_fu_924_p1();
    void thread_trunc_ln147_14_fu_938_p1();
    void thread_trunc_ln147_15_fu_952_p1();
    void thread_trunc_ln147_16_fu_966_p1();
    void thread_trunc_ln147_17_fu_980_p1();
    void thread_trunc_ln147_18_fu_994_p1();
    void thread_trunc_ln147_19_fu_1008_p1();
    void thread_trunc_ln147_1_fu_756_p1();
    void thread_trunc_ln147_20_fu_1022_p1();
    void thread_trunc_ln147_21_fu_1036_p1();
    void thread_trunc_ln147_22_fu_1050_p1();
    void thread_trunc_ln147_23_fu_1064_p1();
    void thread_trunc_ln147_24_fu_1078_p1();
    void thread_trunc_ln147_25_fu_1092_p1();
    void thread_trunc_ln147_26_fu_1106_p1();
    void thread_trunc_ln147_27_fu_1120_p1();
    void thread_trunc_ln147_28_fu_1134_p1();
    void thread_trunc_ln147_29_fu_1148_p1();
    void thread_trunc_ln147_2_fu_770_p1();
    void thread_trunc_ln147_30_fu_1162_p1();
    void thread_trunc_ln147_31_fu_1176_p1();
    void thread_trunc_ln147_3_fu_784_p1();
    void thread_trunc_ln147_4_fu_798_p1();
    void thread_trunc_ln147_5_fu_812_p1();
    void thread_trunc_ln147_6_fu_826_p1();
    void thread_trunc_ln147_7_fu_840_p1();
    void thread_trunc_ln147_8_fu_854_p1();
    void thread_trunc_ln147_9_fu_868_p1();
    void thread_trunc_ln147_fu_742_p1();
    void thread_win_mode_blk_n();
    void thread_win_mode_out_blk_n();
    void thread_win_mode_out_din();
    void thread_win_mode_out_write();
    void thread_win_mode_read();
    void thread_xin_M_imag_address0();
    void thread_xin_M_imag_ce0();
    void thread_xin_M_imag_d0();
    void thread_xin_M_imag_we0();
    void thread_xin_M_real_address0();
    void thread_xin_M_real_ce0();
    void thread_xin_M_real_d0();
    void thread_xin_M_real_we0();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
