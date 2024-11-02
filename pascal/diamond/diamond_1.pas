program diamond;

var
    n, k, h: integer;

procedure PrintSpace(counter: integer);
var
    i: integer;
begin
    for i := 1 to counter do 
        write(' ')
end;

procedure PrintLineOfDiamond(n, k: integer);
begin
    PrintSpace(n + 1 - k);
    write('*');
    if k > 1 then
    begin
        PrintSpace(2 * k - 3);
        write('*')
    end;
    writeln;
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
        PrintLineOfDiamond(n, k);
    { печать нижней части }
    for k := n downto 1 do
        PrintLineOfDiamond(n, k)
end.

