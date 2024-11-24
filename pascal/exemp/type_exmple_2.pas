program Exemple2;
type
    colors = (red, blue, orange, green, indigo, violet);

var
    c: colors;
begin
    c:= pred(blue);
    writeln(c);
    c:= succ(c);
    writeln(c);
    writeln(ord(c));
    writeln(ord(red));
    writeln(red <> violet);
end.
