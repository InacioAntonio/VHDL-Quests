
entity Questao2 is
port(a,b,c: IN BIT; s: OUT BIT);
end;

architecture comportamento of Questao2 is
begin
 s <=(not a and not b and c) or (not a and b and c) or(a and not b and not c);
 
end;