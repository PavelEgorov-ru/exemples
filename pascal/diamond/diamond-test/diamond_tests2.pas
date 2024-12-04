program diamond_tests2;
uses utils;

procedure Test();
var
    value: char;
    phrase: string = 'test test';
begin
    DialogStr(phrase, value);
    writeln(value)
end;

begin
    Test
end.
