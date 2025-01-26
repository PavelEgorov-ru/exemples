program Exemple4;

type
    digit10 = 0..9;
    latins = 'a'..'z';
var
    digit: digit10;
    int: integer;
    long: longint;
    charLatin: latins;
    ch: char;
begin
    {error runtime start}
    int := 11;
    digit := int;
    writeln(digit);

    ch := 'Z';
    charLatin := ch;
    writeln(charLatin);
    {error runtime end}

    {error compiler}
    long := 11.2;
    digit := long;
    writeln(digit)
    {error compiler end}

end.
