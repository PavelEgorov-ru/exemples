program cycle;
var 
    year: integer;
    positive: boolean;

begin
    writeln('Введите свой год рождения');
    readln(year);
    positive := (year < 1900) or (year > 2020);
    while positive do
    begin
        writeln(year, ' не может быть готом рождения');
        writeln('Введите свой год рождения');
        readln(year);
        positive := (year < 1900) or (year > 2020)
    end;
    writeln('Спасибо !')
end.
