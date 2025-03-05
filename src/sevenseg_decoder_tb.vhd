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
        assert wo_seg_n = "1000000" report "error on x0" severity failure;
        
        wi_Hex  <= x"8"; wait for 10 ns;
        assert wo_seg_n = "0000000" report "error on x8" severity failure;
        
        wi_Hex  <= x"F"; wait for 10 ns;
        assert wo_seg_n = "0001110" report "error on xF" severity failure;
        
        wait;
    end process;
end test_bench;
