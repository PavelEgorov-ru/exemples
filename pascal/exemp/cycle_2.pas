program cycle_2;
var
    sum: integer = 0; 
    x: integer;
begin
    repeat
        writeln('Введите число');
        readln(x);
        sum := sum + x
    until sum > 1000;
    writeln('сумма ', sum)
end.
