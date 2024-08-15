library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Questao2Lista2 is
    Port ( bcd : in  STD_LOGIC_VECTOR (3 downto 0);  -- Entrada BCD
           code_2of5 : out STD_LOGIC_VECTOR (4 downto 0)  -- Saída 2-of-5
         );
end Questao2Lista2;

architecture Behavioral of Questao2Lista2 is
begin
    process(bcd)
    begin
        case bcd is
            when "0000" => code_2of5 <= "00011";  -- 0
            when "0001" => code_2of5 <= "00101";  -- 1
            when "0010" => code_2of5 <= "00110";  -- 2
            when "0011" => code_2of5 <= "01001";  -- 3
            when "0100" => code_2of5 <= "01010";  -- 4
            when "0101" => code_2of5 <= "01100";  -- 5
            when "0110" => code_2of5 <= "10001";  -- 6
            when "0111" => code_2of5 <= "10010";  -- 7
            when "1000" => code_2of5 <= "10100";  -- 8
            when "1001" => code_2of5 <= "11000";  -- 9
            when others => code_2of5 <= "00000";  -- Invalid input
        end case;
    end process;
end Behavioral;
