library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Questao4ListaVhdl is
    Port ( A : in  STD_LOGIC;  -- Bit de entrada A
           B : in  STD_LOGIC;  -- Bit de entrada B
           C : in  STD_LOGIC;  -- Bit de entrada C
           parity : out STD_LOGIC  -- Bit de paridade de saída
         );
end Questao4ListaVhdl;

architecture Behavioral of Questao4ListaVhdl is
begin
    process(A, B, C)
    begin
        -- A paridade par é o XOR de todos os bits de entrada
        parity <= A xor B xor C;
    end process;
end Behavioral;
