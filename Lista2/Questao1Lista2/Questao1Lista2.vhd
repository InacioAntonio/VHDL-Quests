library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Questao1Lista2 is
    Port ( btn1 : in  STD_LOGIC; -- Botão para Máquina 1
           btn2 : in  STD_LOGIC; -- Botão para Máquina 2
           btn3 : in  STD_LOGIC; -- Botão para Máquina 3
           btn4 : in  STD_LOGIC; -- Botão para Máquina 4
           maq1 : out STD_LOGIC; -- Saída para Máquina 1
           maq2 : out STD_LOGIC; -- Saída para Máquina 2
           maq3 : out STD_LOGIC; -- Saída para Máquina 3
           maq4 : out STD_LOGIC  -- Saída para Máquina 4
          );
end Questao1Lista2;

architecture Behavioral of Questao1Lista2 is
begin
    process(btn1, btn2, btn3, btn4)
    begin
        -- Desligar todas as máquinas inicialmente
        maq1 <= '0';
        maq2 <= '0';
        maq3 <= '0';
        maq4 <= '0';

        -- Verificar a prioridade e o número de máquinas ligadas
        if btn1 = '1' then
            maq1 <= '1';
            if btn2 = '1' then
                maq2 <= '1';
            elsif btn3 = '1' then
                maq3 <= '1';
            elsif btn4 = '1' then
                maq4 <= '1';
            end if;
        elsif btn2 = '1' then
            maq2 <= '1';
            if btn3 = '1' then
                maq3 <= '1';
            elsif btn4 = '1' then
                maq4 <= '1';
            end if;
        elsif btn3 = '1' then
            maq3 <= '1';
            if btn4 = '1' then
                maq4 <= '1';
            end if;
        elsif btn4 = '1' then
            maq4 <= '1';
        end if;
    end process;
end Behavioral;
