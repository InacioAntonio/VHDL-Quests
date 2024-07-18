entity Questao5 is
port(a,b,c : IN BIT; s : OUT BIT);

end;

architecture comportamento of Questao5 is
begin
s <= (not a and b and not c) or (not a and b and c) or (a and not b and c) or (a and b and c);

end;