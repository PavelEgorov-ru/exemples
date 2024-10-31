program square;
var
    x: integer;
begin
    writeln('введите число, которое нужно возвести в квадрат');
    readln(x);
    x := x * x;
    writeln('квадрат = ', x)
end.
