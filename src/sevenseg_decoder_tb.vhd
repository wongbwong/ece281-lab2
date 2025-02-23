----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/21/2025 02:09:46 PM
-- Design Name: 
-- Module Name: sevenseg_decoder_tb - sevenseg_decoder
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sevenseg_decoder_tb is
end sevenseg_decoder_tb;

architecture test_bench of sevenseg_decoder_tb is

    component sevenseg_decoder is
        port( 
        i_Hex : in std_logic_vector (3 downto 0);
        o_seg_n : out std_logic_vector (6 downto 0)
        );
    end component;
           
    signal wi_Hex   : std_logic_vector(3 downto  0);
    signal wo_seg_n : std_logic_vector(6 downto  0);    
          
begin

sevenseg_decoder_inst : sevenseg_decoder port map (
    i_Hex(3) => wi_Hex(3),
    i_Hex(2) => wi_Hex(2),
    i_Hex(1) => wi_Hex(1),
    i_Hex(0) => wi_Hex(0),
    o_seg_n(6) => wo_seg_n(6),
    o_seg_n(5) => wo_seg_n(5),
    o_seg_n(4) => wo_seg_n(4),
    o_seg_n(3) => wo_seg_n(3),
    o_seg_n(2) => wo_seg_n(2),
    o_seg_n(1) => wo_seg_n(1),
    o_seg_n(0) => wo_seg_n(0)
    
    );


    test_process : process
    begin
    
        wi_Hex  <= x"0"; wait for 10 ns;
        assert wo_seg_n = "0000001" report "error on x0" severity failure;
        
        wi_Hex  <= x"1"; wait for 10 ns;
        assert wo_seg_n = "1001111" report "error on x1" severity failure;
        
        wi_Hex  <= x"2"; wait for 10 ns;
        assert wo_seg_n = "0010010" report "error on x2" severity failure;
        
        wi_Hex  <= x"3"; wait for 10 ns;
        assert wo_seg_n = "0000110" report "error on x3" severity failure;
        
        wi_Hex  <= x"4"; wait for 10 ns;
        assert wo_seg_n = "1001100" report "error on x4" severity failure;
        
        wi_Hex  <= x"5"; wait for 10 ns;
        assert wo_seg_n = "0100100" report "error on x5" severity failure;
        
        wi_Hex  <= x"6"; wait for 10 ns;
        assert wo_seg_n = "0100000" report "error on x6" severity failure;
        
        wi_Hex  <= x"7"; wait for 10 ns;
        assert wo_seg_n = "0001111" report "error on x7" severity failure;
        
        wi_Hex  <= x"8"; wait for 10 ns;
        assert wo_seg_n = "1111111" report "error on x8" severity failure;
        
        wi_Hex  <= x"9"; wait for 10 ns;
        assert wo_seg_n = "0000100" report "error on x9" severity failure;
        
        wi_Hex  <= x"A"; wait for 10 ns;
        assert wo_seg_n = "0001000" report "error on xA" severity failure;
        
        wi_Hex  <= x"B"; wait for 10 ns;
        assert wo_seg_n = "1100000" report "error on xB" severity failure;
        
        wi_Hex  <= x"C"; wait for 10 ns;
        assert wo_seg_n = "0110001" report "error on xC" severity failure;
        
        wi_Hex  <= x"D"; wait for 10 ns;
        assert wo_seg_n = "1000010" report "error on xD" severity failure;
        
        wi_Hex  <= x"E"; wait for 10 ns;
        assert wo_seg_n = "0110000" report "error on xE" severity failure;
        
        wi_Hex  <= x"F"; wait for 10 ns;
        assert wo_seg_n = "0111000" report "error on xF" severity failure;
        
        wait;
    end process;
end test_bench;
