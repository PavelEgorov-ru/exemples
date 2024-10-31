program if_else_2;
var
    negative: boolean;
    a, b, c: integer;
begin
    writeln('введите первое число');
    read(a);
    writeln('введите второе число');
    read(b);
    negative:= a > b;
    if negative then begin
        c:= a;
        a:= b;
        b:= c;
        writeln('первое число больше второго, теперь оно ', a);
    end
end.
