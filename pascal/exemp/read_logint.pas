program readLogint;
procedure ReadLogint(var success: boolean; var result: longint);
var
    c: char;
    res: longint;
    pos: integer;
begin
    res := 0;
    pos := 0;
    repeat
        read(c);
        pos := pos + 1
    until (c <> ' ') and (c <> #10);
    while (c <> ' ') and (c <> #10) do 
    begin
        writeln('второй цикл');
        writeln('символ ', c, ' позиция ', pos, ' результат ', res);
        if (c < '0') or (c > '9') then 
        begin
            writeln('Ошибка ввода символа ', c, ' позиция символа в строке ', pos);
            readln;
            success := false;
            exit
        end;
        res := res * 10 + ord(c) - ord('0');
        read(c);
        pos := pos + 1
    end;
    result := res;
    success := true
end;

var
    x: longint;
    ok: boolean;
begin
    repeat
        write('Введите число: ');
        ReadLogint(ok, x)
    until ok;
    writeln('вы введли число ', x)
end.
