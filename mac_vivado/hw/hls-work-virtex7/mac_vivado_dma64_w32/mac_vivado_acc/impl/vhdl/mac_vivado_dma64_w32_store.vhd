-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mac_vivado_dma64_w32_store is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    p_outbuff_0_V_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    p_outbuff_0_V_ce0 : OUT STD_LOGIC;
    p_outbuff_0_V_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_outbuff_1_V_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    p_outbuff_1_V_ce0 : OUT STD_LOGIC;
    p_outbuff_1_V_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    out_word_V_din : OUT STD_LOGIC_VECTOR (63 downto 0);
    out_word_V_full_n : IN STD_LOGIC;
    out_word_V_write : OUT STD_LOGIC;
    mac_n_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    mac_n_empty_n : IN STD_LOGIC;
    mac_n_read : OUT STD_LOGIC;
    mac_vec_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    mac_vec_empty_n : IN STD_LOGIC;
    mac_vec_read : OUT STD_LOGIC;
    mac_len_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    mac_len_empty_n : IN STD_LOGIC;
    mac_len_read : OUT STD_LOGIC;
    store_ctrl : OUT STD_LOGIC_VECTOR (95 downto 0);
    store_ctrl_ap_vld : OUT STD_LOGIC;
    store_ctrl_ap_ack : IN STD_LOGIC;
    chunk_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    chunk_empty_n : IN STD_LOGIC;
    chunk_read : OUT STD_LOGIC );
end;


architecture behav of mac_vivado_dma64_w32_store is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (5 downto 0) := "000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (5 downto 0) := "001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (5 downto 0) := "010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv31_0 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000000000";
    constant ap_const_lv32_FFFFFFFF : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111111111111111111";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv31_1 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000000001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal out_word_V_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal mac_n_blk_n : STD_LOGIC;
    signal mac_vec_blk_n : STD_LOGIC;
    signal mac_len_blk_n : STD_LOGIC;
    signal store_ctrl_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal chunk_blk_n : STD_LOGIC;
    signal mac_n_read_reg_253 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal mac_vec_read_reg_258 : STD_LOGIC_VECTOR (31 downto 0);
    signal chunk_read_reg_263 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln45_fu_135_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln45_reg_268 : STD_LOGIC_VECTOR (31 downto 0);
    signal store_offset_fu_175_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal store_offset_reg_273 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal mul_ln47_fu_180_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln47_reg_278 : STD_LOGIC_VECTOR (31 downto 0);
    signal dma_length_reg_283 : STD_LOGIC_VECTOR (30 downto 0);
    signal i_fu_232_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal i_reg_297 : STD_LOGIC_VECTOR (30 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal regslice_forward_store_ctrl_U_apdone_blk : STD_LOGIC;
    signal icmp_ln56_fu_227_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_0_i_i_reg_124 : STD_LOGIC_VECTOR (30 downto 0);
    signal zext_ln180_fu_238_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal mul_ln45_fu_135_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal mul_ln45_fu_135_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln44_fu_141_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal or_ln44_fu_146_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln45_fu_158_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal or_ln45_fu_163_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln45_1_fu_169_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal length_fu_152_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal index_fu_195_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal dma_index_fu_202_p4 : STD_LOGIC_VECTOR (30 downto 0);
    signal dma_length_1_fu_199_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal dma_index_1_fu_212_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (5 downto 0);
    signal store_ctrl_int : STD_LOGIC_VECTOR (95 downto 0);
    signal store_ctrl_ap_vld_int : STD_LOGIC;
    signal store_ctrl_ap_ack_int : STD_LOGIC;
    signal regslice_forward_store_ctrl_U_vld_out : STD_LOGIC;

    component regslice_forward IS
    generic (
        DataWidth : INTEGER );
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        data_in : IN STD_LOGIC_VECTOR (DataWidth-1 downto 0);
        vld_in : IN STD_LOGIC;
        ack_in : OUT STD_LOGIC;
        data_out : OUT STD_LOGIC_VECTOR (DataWidth-1 downto 0);
        vld_out : OUT STD_LOGIC;
        ack_out : IN STD_LOGIC;
        apdone_blk : OUT STD_LOGIC );
    end component;



begin
    regslice_forward_store_ctrl_U : component regslice_forward
    generic map (
        DataWidth => 96)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => store_ctrl_int,
        vld_in => store_ctrl_ap_vld_int,
        ack_in => store_ctrl_ap_ack_int,
        data_out => store_ctrl,
        vld_out => regslice_forward_store_ctrl_U_vld_out,
        ack_out => store_ctrl_ap_ack,
        apdone_blk => regslice_forward_store_ctrl_U_apdone_blk);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state5) and (icmp_ln56_fu_227_p2 = ap_const_lv1_1) and (regslice_forward_store_ctrl_U_apdone_blk = ap_const_logic_0))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    i_0_i_i_reg_124_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((out_word_V_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
                i_0_i_i_reg_124 <= i_reg_297;
            elsif (((store_ctrl_ap_ack_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                i_0_i_i_reg_124 <= ap_const_lv31_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((chunk_empty_n = ap_const_logic_0) or (mac_len_empty_n = ap_const_logic_0) or (mac_vec_empty_n = ap_const_logic_0) or (mac_n_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                chunk_read_reg_263 <= chunk_dout;
                mac_n_read_reg_253 <= mac_n_dout;
                mac_vec_read_reg_258 <= mac_vec_dout;
                mul_ln45_reg_268 <= mul_ln45_fu_135_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                dma_length_reg_283 <= length_fu_152_p2(31 downto 1);
                    mul_ln47_reg_278(31 downto 1) <= mul_ln47_fu_180_p2(31 downto 1);
                    store_offset_reg_273(31 downto 1) <= store_offset_fu_175_p2(31 downto 1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state5) and (regslice_forward_store_ctrl_U_apdone_blk = ap_const_logic_0))) then
                i_reg_297 <= i_fu_232_p2;
            end if;
        end if;
    end process;
    store_offset_reg_273(0) <= '0';
    mul_ln47_reg_278(0) <= '0';

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, out_word_V_full_n, mac_n_empty_n, mac_vec_empty_n, mac_len_empty_n, chunk_empty_n, ap_CS_fsm_state6, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_CS_fsm_state5, regslice_forward_store_ctrl_U_apdone_blk, icmp_ln56_fu_227_p2, store_ctrl_ap_ack_int)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((chunk_empty_n = ap_const_logic_0) or (mac_len_empty_n = ap_const_logic_0) or (mac_vec_empty_n = ap_const_logic_0) or (mac_n_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                if (((store_ctrl_ap_ack_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state4 => 
                if (((store_ctrl_ap_ack_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state5 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state5) and (icmp_ln56_fu_227_p2 = ap_const_lv1_1) and (regslice_forward_store_ctrl_U_apdone_blk = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state5) and (icmp_ln56_fu_227_p2 = ap_const_lv1_0) and (regslice_forward_store_ctrl_U_apdone_blk = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state6 => 
                if (((out_word_V_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXX";
        end case;
    end process;
    add_ln44_fu_141_p2 <= std_logic_vector(signed(mac_vec_read_reg_258) + signed(ap_const_lv32_FFFFFFFF));
    add_ln45_1_fu_169_p2 <= std_logic_vector(unsigned(or_ln45_fu_163_p2) + unsigned(ap_const_lv32_1));
    add_ln45_fu_158_p2 <= std_logic_vector(unsigned(mul_ln45_reg_268) + unsigned(ap_const_lv32_FFFFFFFF));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);

    ap_block_state1_assign_proc : process(ap_start, ap_done_reg, mac_n_empty_n, mac_vec_empty_n, mac_len_empty_n, chunk_empty_n)
    begin
                ap_block_state1 <= ((chunk_empty_n = ap_const_logic_0) or (mac_len_empty_n = ap_const_logic_0) or (mac_vec_empty_n = ap_const_logic_0) or (mac_n_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state5, regslice_forward_store_ctrl_U_apdone_blk, icmp_ln56_fu_227_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) and (icmp_ln56_fu_227_p2 = ap_const_lv1_1) and (regslice_forward_store_ctrl_U_apdone_blk = ap_const_logic_0))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state5, regslice_forward_store_ctrl_U_apdone_blk, icmp_ln56_fu_227_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) and (icmp_ln56_fu_227_p2 = ap_const_lv1_1) and (regslice_forward_store_ctrl_U_apdone_blk = ap_const_logic_0))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    chunk_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, chunk_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            chunk_blk_n <= chunk_empty_n;
        else 
            chunk_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    chunk_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, mac_n_empty_n, mac_vec_empty_n, mac_len_empty_n, chunk_empty_n)
    begin
        if ((not(((chunk_empty_n = ap_const_logic_0) or (mac_len_empty_n = ap_const_logic_0) or (mac_vec_empty_n = ap_const_logic_0) or (mac_n_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            chunk_read <= ap_const_logic_1;
        else 
            chunk_read <= ap_const_logic_0;
        end if; 
    end process;

    dma_index_1_fu_212_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(dma_index_fu_202_p4),32));
    dma_index_fu_202_p4 <= index_fu_195_p2(31 downto 1);
    dma_length_1_fu_199_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(dma_length_reg_283),32));
    i_fu_232_p2 <= std_logic_vector(unsigned(i_0_i_i_reg_124) + unsigned(ap_const_lv31_1));
    icmp_ln56_fu_227_p2 <= "1" when (i_0_i_i_reg_124 = dma_length_reg_283) else "0";
    index_fu_195_p2 <= std_logic_vector(unsigned(mul_ln47_reg_278) + unsigned(store_offset_reg_273));
    length_fu_152_p2 <= std_logic_vector(unsigned(or_ln44_fu_146_p2) + unsigned(ap_const_lv32_1));

    mac_len_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, mac_len_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            mac_len_blk_n <= mac_len_empty_n;
        else 
            mac_len_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    mac_len_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, mac_n_empty_n, mac_vec_empty_n, mac_len_empty_n, chunk_empty_n)
    begin
        if ((not(((chunk_empty_n = ap_const_logic_0) or (mac_len_empty_n = ap_const_logic_0) or (mac_vec_empty_n = ap_const_logic_0) or (mac_n_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            mac_len_read <= ap_const_logic_1;
        else 
            mac_len_read <= ap_const_logic_0;
        end if; 
    end process;


    mac_n_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, mac_n_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            mac_n_blk_n <= mac_n_empty_n;
        else 
            mac_n_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    mac_n_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, mac_n_empty_n, mac_vec_empty_n, mac_len_empty_n, chunk_empty_n)
    begin
        if ((not(((chunk_empty_n = ap_const_logic_0) or (mac_len_empty_n = ap_const_logic_0) or (mac_vec_empty_n = ap_const_logic_0) or (mac_n_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            mac_n_read <= ap_const_logic_1;
        else 
            mac_n_read <= ap_const_logic_0;
        end if; 
    end process;


    mac_vec_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, mac_vec_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            mac_vec_blk_n <= mac_vec_empty_n;
        else 
            mac_vec_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    mac_vec_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, mac_n_empty_n, mac_vec_empty_n, mac_len_empty_n, chunk_empty_n)
    begin
        if ((not(((chunk_empty_n = ap_const_logic_0) or (mac_len_empty_n = ap_const_logic_0) or (mac_vec_empty_n = ap_const_logic_0) or (mac_n_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            mac_vec_read <= ap_const_logic_1;
        else 
            mac_vec_read <= ap_const_logic_0;
        end if; 
    end process;

    mul_ln45_fu_135_p0 <= mac_vec_dout;
    mul_ln45_fu_135_p1 <= mac_len_dout;
    mul_ln45_fu_135_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(mul_ln45_fu_135_p0) * signed(mul_ln45_fu_135_p1))), 32));
    mul_ln47_fu_180_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(chunk_read_reg_263) * signed(length_fu_152_p2))), 32));
    or_ln44_fu_146_p2 <= (ap_const_lv32_1 or add_ln44_fu_141_p2);
    or_ln45_fu_163_p2 <= (ap_const_lv32_1 or add_ln45_fu_158_p2);

    out_word_V_blk_n_assign_proc : process(out_word_V_full_n, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            out_word_V_blk_n <= out_word_V_full_n;
        else 
            out_word_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    out_word_V_din <= (p_outbuff_1_V_q0 & p_outbuff_0_V_q0);

    out_word_V_write_assign_proc : process(out_word_V_full_n, ap_CS_fsm_state6)
    begin
        if (((out_word_V_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            out_word_V_write <= ap_const_logic_1;
        else 
            out_word_V_write <= ap_const_logic_0;
        end if; 
    end process;

    p_outbuff_0_V_address0 <= zext_ln180_fu_238_p1(6 - 1 downto 0);

    p_outbuff_0_V_ce0_assign_proc : process(ap_CS_fsm_state5, regslice_forward_store_ctrl_U_apdone_blk)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) and (regslice_forward_store_ctrl_U_apdone_blk = ap_const_logic_0))) then 
            p_outbuff_0_V_ce0 <= ap_const_logic_1;
        else 
            p_outbuff_0_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    p_outbuff_1_V_address0 <= zext_ln180_fu_238_p1(6 - 1 downto 0);

    p_outbuff_1_V_ce0_assign_proc : process(ap_CS_fsm_state5, regslice_forward_store_ctrl_U_apdone_blk)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state5) and (regslice_forward_store_ctrl_U_apdone_blk = ap_const_logic_0))) then 
            p_outbuff_1_V_ce0 <= ap_const_logic_1;
        else 
            p_outbuff_1_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    store_ctrl_ap_vld <= regslice_forward_store_ctrl_U_vld_out;

    store_ctrl_ap_vld_int_assign_proc : process(ap_CS_fsm_state3, store_ctrl_ap_ack_int)
    begin
        if (((store_ctrl_ap_ack_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            store_ctrl_ap_vld_int <= ap_const_logic_1;
        else 
            store_ctrl_ap_vld_int <= ap_const_logic_0;
        end if; 
    end process;


    store_ctrl_blk_n_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state4, store_ctrl_ap_ack_int)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            store_ctrl_blk_n <= store_ctrl_ap_ack_int;
        else 
            store_ctrl_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    store_ctrl_int <= ((ap_const_lv32_2 & dma_length_1_fu_199_p1) & dma_index_1_fu_212_p1);
    store_offset_fu_175_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(mac_n_read_reg_253) * signed(add_ln45_1_fu_169_p2))), 32));
    zext_ln180_fu_238_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_0_i_i_reg_124),64));
end behav;
