
entity Questao3 is
port(a,b,c: IN BIT;s: OUT BIT);

end;

architecture comportamento of Questao3 is
begin 
 s<= (a and b) or (c xnor b);
 end;