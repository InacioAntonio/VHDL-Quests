
entity Questao01 is
port(a,b: IN BIT; s: OUT BIT);

end Questao01;

architecture comportamento of Questao01 is
begin
	s <= a xor b;
end comportamento;