program diamond;

var
    n, k, h, i: integer;

procedure PrintSpace(half_height, num_line: integer);
var
    i: integer;
begin
    for i := 1 to half_height + 1 - num_line do 
        write(' ')
end;


begin
    { ввод числа, пока пользователь не введет его как надо }
    repeat
        writeln('введите высоту алмаза, обязательно нечетное число');
        readln(h)
    until (h > 0) and (h mod 2 = 1);
    n := h div 2;
    { печать верхней фигуры }
    for k := 1 to n + 1 - k do 
    begin
        PrintSpace(n, k);
        write('*');
        if k > 1 then
        begin
            for i := 1 to 2*k - 3 do 
                write(' ');
            write('*')
        end;
        writeln;
    end;
    { печать нижней части }
    for k := n downto 1 do
    begin
        PrintSpace(n, k);
        write('*');
        if k > 1 then
        begin
            for i := 1 to 2*k - 3 do 
                write(' ');
            write('*')
        end;
        writeln
    end
end.

