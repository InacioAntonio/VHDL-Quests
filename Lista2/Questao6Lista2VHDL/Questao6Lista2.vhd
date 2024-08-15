library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Questao6Lista2 is
    Port ( A : in  STD_LOGIC_VECTOR (2 downto 0);  -- Operando A (3 bits)
           B : in  STD_LOGIC_VECTOR (2 downto 0);  -- Operando B (3 bits)
           OpCode : in  STD_LOGIC_VECTOR (2 downto 0);  -- Código de operação (3 bits)
           S : out STD_LOGIC_VECTOR (2 downto 0)  -- Resultado (3 bits)
         );
end Questao6Lista2;

architecture Behavioral of Questao6Lista2 is
begin
    process(A, B, OpCode)
    begin
        case OpCode is
            when "000" =>  -- Operação de soma
                S <= A + B;
            when "001" =>  -- Operação de subtração
                S <= A - B;
            when "010" =>  -- Operação de OR lógico
                S <= A or B;
            when "011" =>  -- Operação de AND lógico
                S <= A and B;
            when "100" =>  -- Operação de XOR lógico
                S <= A xor B;
            when "101" =>  -- Operação Clear (Zera o resultado)
                S <= "000";
            when others =>  -- Valor padrão (não utilizado)
                S <= "000";
        end case;
    end process;
end Behavioral;
