// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="traffic_decoder,hls_ip_2019_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu19eg-ffvc1760-2-i,HLS_INPUT_CLOCK=4.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=1.399000,HLS_SYN_LAT=0,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=519,HLS_SYN_LUT=1232,HLSERSION=2019_1}" *)

module traffic_decoder (
        ap_clk,
        ap_rst,
        raw_packet_tdata,
        raw_packet_tvalid,
        raw_packet_tready,
        decoded_packet_tdata,
        decoded_packet_tkeep,
        decoded_packet_tlast,
        decoded_packet_tvalid,
        decoded_packet_tready
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input  [511:0] raw_packet_tdata;
input  [0:0] raw_packet_tvalid;
output  [0:0] raw_packet_tready;
output  [511:0] decoded_packet_tdata;
output  [63:0] decoded_packet_tkeep;
output  [0:0] decoded_packet_tlast;
output  [0:0] decoded_packet_tvalid;
input  [0:0] decoded_packet_tready;

reg   [511:0] meta;
reg   [5:0] meta_count;
wire   [511:0] r_1_fu_890_p3;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] ret_fu_872_p2;
wire   [5:0] add_ln700_fu_904_p2;
wire   [6:0] p_Result_2_fu_267_p4;
wire   [1:0] tmp_2_fu_471_p4;
wire   [2:0] tmp_3_fu_577_p4;
wire   [3:0] tmp_4_fu_635_p4;
wire   [4:0] tmp_5_fu_669_p4;
wire   [5:0] tmp_6_fu_691_p4;
wire   [0:0] icmp_ln17_fu_707_p2;
wire   [0:0] icmp_ln895_61_fu_701_p2;
wire   [0:0] icmp_ln895_60_fu_685_p2;
wire   [0:0] icmp_ln895_59_fu_679_p2;
wire   [0:0] icmp_ln895_58_fu_663_p2;
wire   [0:0] icmp_ln895_57_fu_657_p2;
wire   [0:0] icmp_ln895_56_fu_651_p2;
wire   [0:0] icmp_ln895_55_fu_645_p2;
wire   [0:0] icmp_ln895_54_fu_629_p2;
wire   [0:0] icmp_ln895_53_fu_623_p2;
wire   [0:0] icmp_ln895_52_fu_617_p2;
wire   [0:0] icmp_ln895_51_fu_611_p2;
wire   [0:0] icmp_ln895_50_fu_605_p2;
wire   [0:0] icmp_ln895_49_fu_599_p2;
wire   [0:0] icmp_ln895_48_fu_593_p2;
wire   [0:0] icmp_ln895_47_fu_587_p2;
wire   [0:0] icmp_ln895_46_fu_571_p2;
wire   [0:0] icmp_ln895_45_fu_565_p2;
wire   [0:0] icmp_ln895_44_fu_559_p2;
wire   [0:0] icmp_ln895_43_fu_553_p2;
wire   [0:0] icmp_ln895_42_fu_547_p2;
wire   [0:0] icmp_ln895_41_fu_541_p2;
wire   [0:0] icmp_ln895_40_fu_535_p2;
wire   [0:0] icmp_ln895_39_fu_529_p2;
wire   [0:0] icmp_ln895_38_fu_523_p2;
wire   [0:0] icmp_ln895_37_fu_517_p2;
wire   [0:0] icmp_ln895_36_fu_511_p2;
wire   [0:0] icmp_ln895_35_fu_505_p2;
wire   [0:0] icmp_ln895_34_fu_499_p2;
wire   [0:0] icmp_ln895_33_fu_493_p2;
wire   [0:0] icmp_ln895_32_fu_487_p2;
wire   [0:0] icmp_ln895_31_fu_481_p2;
wire   [0:0] icmp_ln895_30_fu_465_p2;
wire   [0:0] icmp_ln895_29_fu_459_p2;
wire   [0:0] icmp_ln895_28_fu_453_p2;
wire   [0:0] icmp_ln895_27_fu_447_p2;
wire   [0:0] icmp_ln895_26_fu_441_p2;
wire   [0:0] icmp_ln895_25_fu_435_p2;
wire   [0:0] icmp_ln895_24_fu_429_p2;
wire   [0:0] icmp_ln895_23_fu_423_p2;
wire   [0:0] icmp_ln895_22_fu_417_p2;
wire   [0:0] icmp_ln895_21_fu_411_p2;
wire   [0:0] icmp_ln895_20_fu_405_p2;
wire   [0:0] icmp_ln895_19_fu_399_p2;
wire   [0:0] icmp_ln895_18_fu_393_p2;
wire   [0:0] icmp_ln895_17_fu_387_p2;
wire   [0:0] icmp_ln895_16_fu_381_p2;
wire   [0:0] icmp_ln895_15_fu_375_p2;
wire   [0:0] icmp_ln895_14_fu_369_p2;
wire   [0:0] icmp_ln895_13_fu_363_p2;
wire   [0:0] icmp_ln895_12_fu_357_p2;
wire   [0:0] icmp_ln895_11_fu_351_p2;
wire   [0:0] icmp_ln895_10_fu_345_p2;
wire   [0:0] icmp_ln895_9_fu_339_p2;
wire   [0:0] icmp_ln895_8_fu_333_p2;
wire   [0:0] icmp_ln895_7_fu_327_p2;
wire   [0:0] icmp_ln895_6_fu_321_p2;
wire   [0:0] icmp_ln895_5_fu_315_p2;
wire   [0:0] icmp_ln895_4_fu_309_p2;
wire   [0:0] icmp_ln895_3_fu_303_p2;
wire   [0:0] icmp_ln895_2_fu_297_p2;
wire   [0:0] icmp_ln895_1_fu_291_p2;
wire   [0:0] icmp_ln895_fu_285_p2;
wire   [0:0] tmp_1_fu_277_p3;
wire   [0:0] icmp_ln883_fu_859_p2;
wire   [0:0] icmp_ln879_fu_878_p2;
wire   [511:0] r_fu_884_p2;
reg   [0:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 meta = 512'd0;
#0 meta_count = 6'd0;
#0 ap_CS_fsm = 1'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        meta <= 512'd0;
    end else begin
        if (((ret_fu_872_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
            meta <= r_1_fu_890_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        meta_count <= 6'd0;
    end else begin
        if (((ret_fu_872_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
            meta_count <= add_ln700_fu_904_p2;
        end
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln700_fu_904_p2 = (6'd1 + meta_count);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign decoded_packet_tdata = raw_packet_tdata;

assign decoded_packet_tkeep = {{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{icmp_ln17_fu_707_p2}, {icmp_ln895_61_fu_701_p2}}, {icmp_ln895_60_fu_685_p2}}, {icmp_ln895_59_fu_679_p2}}, {icmp_ln895_58_fu_663_p2}}, {icmp_ln895_57_fu_657_p2}}, {icmp_ln895_56_fu_651_p2}}, {icmp_ln895_55_fu_645_p2}}, {icmp_ln895_54_fu_629_p2}}, {icmp_ln895_53_fu_623_p2}}, {icmp_ln895_52_fu_617_p2}}, {icmp_ln895_51_fu_611_p2}}, {icmp_ln895_50_fu_605_p2}}, {icmp_ln895_49_fu_599_p2}}, {icmp_ln895_48_fu_593_p2}}, {icmp_ln895_47_fu_587_p2}}, {icmp_ln895_46_fu_571_p2}}, {icmp_ln895_45_fu_565_p2}}, {icmp_ln895_44_fu_559_p2}}, {icmp_ln895_43_fu_553_p2}}, {icmp_ln895_42_fu_547_p2}}, {icmp_ln895_41_fu_541_p2}}, {icmp_ln895_40_fu_535_p2}}, {icmp_ln895_39_fu_529_p2}}, {icmp_ln895_38_fu_523_p2}}, {icmp_ln895_37_fu_517_p2}}, {icmp_ln895_36_fu_511_p2}}, {icmp_ln895_35_fu_505_p2}}, {icmp_ln895_34_fu_499_p2}}, {icmp_ln895_33_fu_493_p2}}, {icmp_ln895_32_fu_487_p2}}, {icmp_ln895_31_fu_481_p2}}, {icmp_ln895_30_fu_465_p2}}, {icmp_ln895_29_fu_459_p2}}, {icmp_ln895_28_fu_453_p2}}, {icmp_ln895_27_fu_447_p2}}, {icmp_ln895_26_fu_441_p2}}, {icmp_ln895_25_fu_435_p2}}, {icmp_ln895_24_fu_429_p2}}, {icmp_ln895_23_fu_423_p2}}, {icmp_ln895_22_fu_417_p2}}, {icmp_ln895_21_fu_411_p2}}, {icmp_ln895_20_fu_405_p2}}, {icmp_ln895_19_fu_399_p2}}, {icmp_ln895_18_fu_393_p2}}, {icmp_ln895_17_fu_387_p2}}, {icmp_ln895_16_fu_381_p2}}, {icmp_ln895_15_fu_375_p2}}, {icmp_ln895_14_fu_369_p2}}, {icmp_ln895_13_fu_363_p2}}, {icmp_ln895_12_fu_357_p2}}, {icmp_ln895_11_fu_351_p2}}, {icmp_ln895_10_fu_345_p2}}, {icmp_ln895_9_fu_339_p2}}, {icmp_ln895_8_fu_333_p2}}, {icmp_ln895_7_fu_327_p2}}, {icmp_ln895_6_fu_321_p2}}, {icmp_ln895_5_fu_315_p2}}, {icmp_ln895_4_fu_309_p2}}, {icmp_ln895_3_fu_303_p2}}, {icmp_ln895_2_fu_297_p2}}, {icmp_ln895_1_fu_291_p2}}, {icmp_ln895_fu_285_p2}}, {tmp_1_fu_277_p3}};

assign decoded_packet_tlast = meta[32'd504];

assign decoded_packet_tvalid = (raw_packet_tvalid & icmp_ln883_fu_859_p2);

assign icmp_ln17_fu_707_p2 = ((p_Result_2_fu_267_p4 != 7'd0) ? 1'b1 : 1'b0);

assign icmp_ln879_fu_878_p2 = ((meta_count == 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln883_fu_859_p2 = ((meta_count != 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln895_10_fu_345_p2 = ((p_Result_2_fu_267_p4 > 7'd52) ? 1'b1 : 1'b0);

assign icmp_ln895_11_fu_351_p2 = ((p_Result_2_fu_267_p4 > 7'd51) ? 1'b1 : 1'b0);

assign icmp_ln895_12_fu_357_p2 = ((p_Result_2_fu_267_p4 > 7'd50) ? 1'b1 : 1'b0);

assign icmp_ln895_13_fu_363_p2 = ((p_Result_2_fu_267_p4 > 7'd49) ? 1'b1 : 1'b0);

assign icmp_ln895_14_fu_369_p2 = ((p_Result_2_fu_267_p4 > 7'd48) ? 1'b1 : 1'b0);

assign icmp_ln895_15_fu_375_p2 = ((p_Result_2_fu_267_p4 > 7'd47) ? 1'b1 : 1'b0);

assign icmp_ln895_16_fu_381_p2 = ((p_Result_2_fu_267_p4 > 7'd46) ? 1'b1 : 1'b0);

assign icmp_ln895_17_fu_387_p2 = ((p_Result_2_fu_267_p4 > 7'd45) ? 1'b1 : 1'b0);

assign icmp_ln895_18_fu_393_p2 = ((p_Result_2_fu_267_p4 > 7'd44) ? 1'b1 : 1'b0);

assign icmp_ln895_19_fu_399_p2 = ((p_Result_2_fu_267_p4 > 7'd43) ? 1'b1 : 1'b0);

assign icmp_ln895_1_fu_291_p2 = ((p_Result_2_fu_267_p4 > 7'd61) ? 1'b1 : 1'b0);

assign icmp_ln895_20_fu_405_p2 = ((p_Result_2_fu_267_p4 > 7'd42) ? 1'b1 : 1'b0);

assign icmp_ln895_21_fu_411_p2 = ((p_Result_2_fu_267_p4 > 7'd41) ? 1'b1 : 1'b0);

assign icmp_ln895_22_fu_417_p2 = ((p_Result_2_fu_267_p4 > 7'd40) ? 1'b1 : 1'b0);

assign icmp_ln895_23_fu_423_p2 = ((p_Result_2_fu_267_p4 > 7'd39) ? 1'b1 : 1'b0);

assign icmp_ln895_24_fu_429_p2 = ((p_Result_2_fu_267_p4 > 7'd38) ? 1'b1 : 1'b0);

assign icmp_ln895_25_fu_435_p2 = ((p_Result_2_fu_267_p4 > 7'd37) ? 1'b1 : 1'b0);

assign icmp_ln895_26_fu_441_p2 = ((p_Result_2_fu_267_p4 > 7'd36) ? 1'b1 : 1'b0);

assign icmp_ln895_27_fu_447_p2 = ((p_Result_2_fu_267_p4 > 7'd35) ? 1'b1 : 1'b0);

assign icmp_ln895_28_fu_453_p2 = ((p_Result_2_fu_267_p4 > 7'd34) ? 1'b1 : 1'b0);

assign icmp_ln895_29_fu_459_p2 = ((p_Result_2_fu_267_p4 > 7'd33) ? 1'b1 : 1'b0);

assign icmp_ln895_2_fu_297_p2 = ((p_Result_2_fu_267_p4 > 7'd60) ? 1'b1 : 1'b0);

assign icmp_ln895_30_fu_465_p2 = ((p_Result_2_fu_267_p4 > 7'd32) ? 1'b1 : 1'b0);

assign icmp_ln895_31_fu_481_p2 = ((tmp_2_fu_471_p4 != 2'd0) ? 1'b1 : 1'b0);

assign icmp_ln895_32_fu_487_p2 = ((p_Result_2_fu_267_p4 > 7'd30) ? 1'b1 : 1'b0);

assign icmp_ln895_33_fu_493_p2 = ((p_Result_2_fu_267_p4 > 7'd29) ? 1'b1 : 1'b0);

assign icmp_ln895_34_fu_499_p2 = ((p_Result_2_fu_267_p4 > 7'd28) ? 1'b1 : 1'b0);

assign icmp_ln895_35_fu_505_p2 = ((p_Result_2_fu_267_p4 > 7'd27) ? 1'b1 : 1'b0);

assign icmp_ln895_36_fu_511_p2 = ((p_Result_2_fu_267_p4 > 7'd26) ? 1'b1 : 1'b0);

assign icmp_ln895_37_fu_517_p2 = ((p_Result_2_fu_267_p4 > 7'd25) ? 1'b1 : 1'b0);

assign icmp_ln895_38_fu_523_p2 = ((p_Result_2_fu_267_p4 > 7'd24) ? 1'b1 : 1'b0);

assign icmp_ln895_39_fu_529_p2 = ((p_Result_2_fu_267_p4 > 7'd23) ? 1'b1 : 1'b0);

assign icmp_ln895_3_fu_303_p2 = ((p_Result_2_fu_267_p4 > 7'd59) ? 1'b1 : 1'b0);

assign icmp_ln895_40_fu_535_p2 = ((p_Result_2_fu_267_p4 > 7'd22) ? 1'b1 : 1'b0);

assign icmp_ln895_41_fu_541_p2 = ((p_Result_2_fu_267_p4 > 7'd21) ? 1'b1 : 1'b0);

assign icmp_ln895_42_fu_547_p2 = ((p_Result_2_fu_267_p4 > 7'd20) ? 1'b1 : 1'b0);

assign icmp_ln895_43_fu_553_p2 = ((p_Result_2_fu_267_p4 > 7'd19) ? 1'b1 : 1'b0);

assign icmp_ln895_44_fu_559_p2 = ((p_Result_2_fu_267_p4 > 7'd18) ? 1'b1 : 1'b0);

assign icmp_ln895_45_fu_565_p2 = ((p_Result_2_fu_267_p4 > 7'd17) ? 1'b1 : 1'b0);

assign icmp_ln895_46_fu_571_p2 = ((p_Result_2_fu_267_p4 > 7'd16) ? 1'b1 : 1'b0);

assign icmp_ln895_47_fu_587_p2 = ((tmp_3_fu_577_p4 != 3'd0) ? 1'b1 : 1'b0);

assign icmp_ln895_48_fu_593_p2 = ((p_Result_2_fu_267_p4 > 7'd14) ? 1'b1 : 1'b0);

assign icmp_ln895_49_fu_599_p2 = ((p_Result_2_fu_267_p4 > 7'd13) ? 1'b1 : 1'b0);

assign icmp_ln895_4_fu_309_p2 = ((p_Result_2_fu_267_p4 > 7'd58) ? 1'b1 : 1'b0);

assign icmp_ln895_50_fu_605_p2 = ((p_Result_2_fu_267_p4 > 7'd12) ? 1'b1 : 1'b0);

assign icmp_ln895_51_fu_611_p2 = ((p_Result_2_fu_267_p4 > 7'd11) ? 1'b1 : 1'b0);

assign icmp_ln895_52_fu_617_p2 = ((p_Result_2_fu_267_p4 > 7'd10) ? 1'b1 : 1'b0);

assign icmp_ln895_53_fu_623_p2 = ((p_Result_2_fu_267_p4 > 7'd9) ? 1'b1 : 1'b0);

assign icmp_ln895_54_fu_629_p2 = ((p_Result_2_fu_267_p4 > 7'd8) ? 1'b1 : 1'b0);

assign icmp_ln895_55_fu_645_p2 = ((tmp_4_fu_635_p4 != 4'd0) ? 1'b1 : 1'b0);

assign icmp_ln895_56_fu_651_p2 = ((p_Result_2_fu_267_p4 > 7'd6) ? 1'b1 : 1'b0);

assign icmp_ln895_57_fu_657_p2 = ((p_Result_2_fu_267_p4 > 7'd5) ? 1'b1 : 1'b0);

assign icmp_ln895_58_fu_663_p2 = ((p_Result_2_fu_267_p4 > 7'd4) ? 1'b1 : 1'b0);

assign icmp_ln895_59_fu_679_p2 = ((tmp_5_fu_669_p4 != 5'd0) ? 1'b1 : 1'b0);

assign icmp_ln895_5_fu_315_p2 = ((p_Result_2_fu_267_p4 > 7'd57) ? 1'b1 : 1'b0);

assign icmp_ln895_60_fu_685_p2 = ((p_Result_2_fu_267_p4 > 7'd2) ? 1'b1 : 1'b0);

assign icmp_ln895_61_fu_701_p2 = ((tmp_6_fu_691_p4 != 6'd0) ? 1'b1 : 1'b0);

assign icmp_ln895_6_fu_321_p2 = ((p_Result_2_fu_267_p4 > 7'd56) ? 1'b1 : 1'b0);

assign icmp_ln895_7_fu_327_p2 = ((p_Result_2_fu_267_p4 > 7'd55) ? 1'b1 : 1'b0);

assign icmp_ln895_8_fu_333_p2 = ((p_Result_2_fu_267_p4 > 7'd54) ? 1'b1 : 1'b0);

assign icmp_ln895_9_fu_339_p2 = ((p_Result_2_fu_267_p4 > 7'd53) ? 1'b1 : 1'b0);

assign icmp_ln895_fu_285_p2 = ((p_Result_2_fu_267_p4 > 7'd62) ? 1'b1 : 1'b0);

assign p_Result_2_fu_267_p4 = {{meta[511:505]}};

assign r_1_fu_890_p3 = ((icmp_ln879_fu_878_p2[0:0] === 1'b1) ? raw_packet_tdata : r_fu_884_p2);

assign r_fu_884_p2 = meta << 512'd8;

assign raw_packet_tready = decoded_packet_tready;

assign ret_fu_872_p2 = (raw_packet_tvalid & decoded_packet_tready);

assign tmp_1_fu_277_p3 = meta[32'd511];

assign tmp_2_fu_471_p4 = {{meta[511:510]}};

assign tmp_3_fu_577_p4 = {{meta[511:509]}};

assign tmp_4_fu_635_p4 = {{meta[511:508]}};

assign tmp_5_fu_669_p4 = {{meta[511:507]}};

assign tmp_6_fu_691_p4 = {{meta[511:506]}};

endmodule //traffic_decoder