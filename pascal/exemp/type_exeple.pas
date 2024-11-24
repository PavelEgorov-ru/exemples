program Exemple;
type
    MyReal = real;
    MyInteger = integer;
var
    r1: real;
    r2: MyReal;
    i1: integer;
    i2: MyInteger;

begin
    r1:= 53.3;
    r2:= r1;
    r1:= 0.0;
    i1:= 3;
    i2:= i1;
    i1:= 0;
    writeln(r1, ' ', r2, ' ', i1, ' ', i2)
end.
