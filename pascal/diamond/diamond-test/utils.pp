unit utils;

interface
function HalfHeight(a: integer): integer;
procedure DialogNum(phrase: string; var value: integer);
procedure DialogStr(phrase: string; var value: char);

implementation
function HalfHeight(a: integer): integer;
begin
    HalfHeight:= a div 2
end;

procedure DialogNum(phrase: string; var value: integer);
var
    count: integer;
begin
    writeln(phrase);
    readln(count);
    value := count
end;

procedure DialogStr(phrase: string; var value: char);
var
    str: char;
begin
    writeln(phrase);
    readln(str);
    value := str
end;

end.
