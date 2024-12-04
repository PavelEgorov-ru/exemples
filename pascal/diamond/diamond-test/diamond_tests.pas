program diamond_tests;
uses utils;

var
    value: integer;
    phrase: string = 'test test';
begin
    DialogNum(phrase, value);
    writeln(value)
end.
