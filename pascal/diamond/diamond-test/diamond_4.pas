program diamond;
uses utils;

const
    phrase = 'введите высоту алмаза, обязательно нечетное число';
    phrase_2 = 'введите символ, которым заполнится алмаз';
    phrase_3 = 'введите символ, которым заполнится пустое пространство вокруг алмаза';
    phrase_4 = 'введите количество алмазов от 1 до 4';

var
    half_height, line: integer;
    ch_diamond, ch_space: char;
    count_diamond: integer;
    top: boolean = true;

procedure DialogUser(var h, c: integer; var c_diamond, c_space: char);
var
    height: integer;

begin
    repeat
        DialogNum(phrase, height);
    until (height > 0) and (height mod 2 = 1);
    h := HalfHeight(height);
    DialogStr(phrase_2, c_diamond);

    {$IFDEF DEBUG}
    writeln('DEBUG: ','symbol_diamond: ', symbol_diamond );
    writeln('DEBUG: ', 'h: ', h);
    {$ENDIF}

    DialogStr(phrase_3, c_space);
    repeat
        DialogNum(phrase_4, c);
    until (c > 0) and (c < 5);
end;


procedure PrintSpace(counter: integer; c: char);
var
    i: integer;
begin
    for i := 1 to counter do 
        write(c)
end;

procedure PrintLineOfDiamond(n, k, c: integer; c_diamond, c_space: char; t: boolean);
var
    z: integer;
begin
    if t and (k = 1) then begin
        for z := 1 to c do begin
            PrintSpace(n + 3 - k, c_space);
            write(c_space);
            PrintSpace(n + 3 - k, c_space)
        end;
        writeln()
    end;
    for z := 1 to c do begin
        PrintSpace(n + 3 - k, c_space);
        write(c_diamond);

        if k > 1 then begin
            PrintSpace(2 * k - 3, c_diamond);
            write(c_diamond)
        end;
        PrintSpace(n + 3 - k, c_space)
    end;
    writeln();
    if not t and (k = 1) then begin
        for z := 1 to c do begin
            PrintSpace(n + 3 - k, c_space);
            write(c_space);
            PrintSpace(n + 3 - k, c_space)
        end;
        writeln()
    end
end;

begin
    { ввод числа, пока пользователь не введет его как надо }
    DialogUser(half_height, count_diamond, ch_diamond, ch_space);
    { печать верхней фигуры }
    for line := 1 to half_height + 1 - line do 
        PrintLineOfDiamond(half_height, line, count_diamond, ch_diamond, ch_space, top);
    { печать нижней части, последняя строка печатет неправильно, тк обратный цикл здесь}
    top := false;
    for line := half_height downto 1 do
        PrintLineOfDiamond(half_height, line, count_diamond, ch_diamond, ch_space, top)
end.

