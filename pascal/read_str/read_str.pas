program read_str;

const
    MaxChars = 52;

type
    CheckCharsArray = array [1..MaxChars] of word;
    PrintCharsArray = array [1..255] of word;

var
    i: integer;
    {symbol: char;}
    check_array: CheckCharsArray;
    print_array: PrintCharsArray;


procedure PrintPrintArr (var arr: PrintCharsArray; max_index: word);
var
    i: integer;
begin
    for i := 1 to max_index do
        write(arr[1], ' ');
    writeln
end;

procedure PrintCheckArr (var arr: CheckCharsArray; max_index: word);
var
    i: integer;
begin
    for i := 1 to max_index do
        write(arr[1], ' ');
    writeln
end;

begin
    for i := 1 to MaxChars do
        check_array[i] := 0;
    for i := 1 to 255 do
        print_array[i] := 0;
    PrintCheckArr(check_array, MaxChars);
    writeln;
    PrintPrintArr(print_array, 255)
end.
