program diamond;
var
    half_height, line: integer;

procedure DialogUser(var h: integer);
var
    height: integer;
    phrase: string = 'введите высоту алмаза, обязательно нечетное число';

function HalfHeight(a: integer): integer;
begin
    HalfHeight:= a div 2
end;

begin
    repeat
        writeln(phrase);
        readln(height)
    until (height > 0) and (height mod 2 = 1);
    h := HalfHeight(height)
end;


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
    DialogUser(half_height);
    { печать верхней фигуры }
    for line := 1 to half_height + 1 - line do 
        PrintLineOfDiamond(half_height, line);
    { печать нижней части }
    for line := half_height downto 1 do
        PrintLineOfDiamond(half_height, line)
end.

