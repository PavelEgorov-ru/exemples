program diamond_test3;
uses utils;

var
    value_1: integer;
    value_2: char;
    phrase: string = 'test test';
begin
    case LowerCase(ParamStr(1)) of
        'one': DialogNum(phrase, value_1);
        {'two': DialogStr(phrase, value_2);}
        else writeln('Неверные параметры вызова теста')
    end
end.
