program errors;
var
    i: integer;
begin
    {$I-}
    repeat
        writeln('Введите число');
        read(i)
    until IOResult = 0;
    writeln(i)
end.
