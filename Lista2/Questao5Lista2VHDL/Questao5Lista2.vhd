library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Questao5Lista2 is
    Port ( A : in  STD_LOGIC_VECTOR (1 downto 0);  -- Entrada A1A0
           B : in  STD_LOGIC_VECTOR (1 downto 0);  -- Entrada B1B0
           S : out STD_LOGIC_VECTOR (2 downto 0)   -- Saída S2S1S0 (S2: carry-out)
         );
end Questao5Lista2;

architecture Behavioral of Questao5Lista2 is
begin
    process(A, B)
    begin
        S <= ('0' & A) + B; -- Concatena '0' para considerar o carry e realiza a soma
    end process;
end Behavioral;
