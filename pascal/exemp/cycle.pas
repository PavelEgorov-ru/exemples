program cycle;
var 
    year: integer;

begin
    writeln('Введите свой год рождения');
    readln(year);
    while (year < 1900) or (year > 2020) do
    begin
        writeln(year, ' не может быть готом рождения');
        writeln('Введите свой год рождения');
        readln(year)
    end;
    writeln('Спасибо !')
end.
