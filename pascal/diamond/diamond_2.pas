program diamond;
var
    half_height, line: integer;
    ch_diamond: char;
    ch_space: char = ' ';


procedure DialogUser(var h: integer; var c: char);
var
    height: integer;
    symbol: char;
    phrase: string = 'введите высоту алмаза, обязательно нечетное число';
    phrase_2: string = 'введите символ, которым заполнится алмаз';

function HalfHeight(a: integer): integer;
begin
    HalfHeight:= a div 2
end;

begin
    repeat
        writeln(phrase);
        readln(height)
    until (height > 0) and (height mod 2 = 1);
    h := HalfHeight(height);
    writeln(phrase_2);
    readln(symbol);
    c := symbol
end;


procedure PrintSpace(counter: integer; c: char);
var
    i: integer;
begin
    for i := 1 to counter do 
        write(c)
end;

procedure PrintLineOfDiamond(n, k: integer; c: char);
begin
    PrintSpace(n + 1 - k, ch_space);
    write(c);
    if k > 1 then
    begin
        PrintSpace(2 * k - 3, ch_diamond);
        write(c)
    end;
    writeln;
end;

begin
    { ввод числа, пока пользователь не введет его как надо }
    DialogUser(half_height, ch_diamond);
    { печать верхней фигуры }
    for line := 1 to half_height + 1 - line do 
        PrintLineOfDiamond(half_height, line, ch_diamond);
    { печать нижней части }
    for line := half_height downto 1 do
        PrintLineOfDiamond(half_height, line, ch_diamond)
end.

