program diamond;
var
    half_height, line: integer;
    ch_diamond, ch_space: char;


procedure DialogUser(var h: integer; var c_diamond, c_space: char);
var
    height: integer;
    symbol_diamond, symbol_space: char;
    phrase: string = 'введите высоту алмаза, обязательно нечетное число';
    phrase_2: string = 'введите символ, которым заполнится алмаз';
    phrase_3: string = 'введите символ, которым заполнится пустое пространство вокруг алмаза';

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
    readln(symbol_diamond);
    c_diamond := symbol_diamond;
    writeln(phrase_3);
    readln(symbol_space);
    c_space := symbol_space
end;


procedure PrintSpace(counter: integer; c: char);
var
    i: integer;
begin
    for i := 1 to counter do 
        write(c)
end;

procedure PrintLineOfDiamond(n, k: integer; c_diamond, c_space: char);
var
    the_end: integer;
begin
    the_end := n + 1 - k;
    if k = 1 then begin
        PrintSpace(n + 3 - k, '9');
        write(c_space);
        PrintSpace(n + 3 - k, '9');
        writeln()
    end;


    PrintSpace(n + 3 - k, c_space);
    write(c_diamond);

    if k > 1 then begin
        PrintSpace(2 * k - 3, c_diamond);
        write(c_diamond)
    end;
    PrintSpace(n + 3 - k, c_space);
    writeln()

    {if k = the_end then begin
        PrintSpace(n + 3 - k, c_space);
        write(c_space);
        PrintSpace(n + 3 - k, c_space);
        writeln();
    end;}

end;

begin
    { ввод числа, пока пользователь не введет его как надо }
    DialogUser(half_height, ch_diamond, ch_space);
    { печать верхней фигуры }
    for line := 1 to half_height + 1 - line do 
        PrintLineOfDiamond(half_height, line, ch_diamond, ch_space);
    { печать нижней части, последняя строка печатет неправильно, тк обратный цикл здесь}
    for line := half_height downto 1 do
        PrintLineOfDiamond(half_height, line, ch_diamond, ch_space)
end.

