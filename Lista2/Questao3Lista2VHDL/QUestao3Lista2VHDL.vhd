library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity QUestao3Lista2VHDL is
    Port ( gray : in  STD_LOGIC_VECTOR (3 downto 0);  -- Entrada Gray
           johnson : out STD_LOGIC_VECTOR (3 downto 0)  -- Saída Johnson
         );
end QUestao3Lista2VHDL;

architecture Behavioral of QUestao3Lista2VHDL is
begin
    process(gray)
    begin
        case gray is
            when "0000" => johnson <= "0000";  -- Gray 0000 -> Johnson 0000
            when "0001" => johnson <= "0001";  -- Gray 0001 -> Johnson 0001
            when "0011" => johnson <= "0011";  -- Gray 0011 -> Johnson 0011
            when "0010" => johnson <= "0111";  -- Gray 0010 -> Johnson 0111
            when "0110" => johnson <= "1111";  -- Gray 0110 -> Johnson 1111
            when "0111" => johnson <= "1110";  -- Gray 0111 -> Johnson 1110
            when "0101" => johnson <= "1100";  -- Gray 0101 -> Johnson 1100
            when "0100" => johnson <= "1000";  -- Gray 0100 -> Johnson 1000
            when others => johnson <= "0000";  -- Tratamento para entradas inválidas
        end case;
    end process;
end Behavioral;
