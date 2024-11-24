program Exemple;
type
    MyReal = real;
    MyInteger = integer;
    digit20 = 0..20;
    latinsCaps = 'A'..'Z';
var
    r1: real;
    r2: MyReal;
    i1: integer;
    i2: MyInteger;
    d1: digit20;
    l1: latinsCaps;
begin
    r1:= 53.3;
    r2:= r1;
    r1:= 0.0;
    i1:= 3;
    i2:= i1;
    i1:= 0;
    writeln(r1, ' ', r2, ' ', i1, ' ', i2);
    d1:= 20;
    writeln(d1);
    l1:= 'G';
    writeln(l1)
end.
