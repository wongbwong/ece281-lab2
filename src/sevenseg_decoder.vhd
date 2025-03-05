----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/21/2025 01:18:19 PM
-- Design Name: 
-- Module Name: sevenseg_decoder - Behavioral
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
--asda--
entity sevenseg_decoder is
    Port ( 
    i_Hex : in std_logic_vector (3 downto 0);
    o_seg_n : out std_logic_vector (6 downto 0));
end sevenseg_decoder;

architecture Behavioral of sevenseg_decoder is

    signal w_seg : std_logic_vector (6 downto 0);

begin
    with i_Hex select
        w_seg <= "0111111" when "0000",
                   "0000110" when "0001",
                   "1011011" when "0010",
                   "1001111" when "0011",
                   "1100110" when "0100",
                   "1101101" when "0101",
                   "1111101" when "0110",
                   "0000111" when "0111",  
                   "1111111" when "1000",
                   "1101111" when "1001",
                   "1110111" when "1010",
                   "1111100" when "1011",
                   "0111001" when "1100",
                   "1011110" when "1101",
                   "1111001" when "1110",
                   "1110001" when "1111",
                   "0000000" when others; 
                   
    o_seg_n <= not w_seg;

end Behavioral;
