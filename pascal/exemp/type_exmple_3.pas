program Exemple3;
type
    from1to10 = 1..10;
    arrayInteger = array [from1to10] of integer;
    arrayInteger2 = array [from1to10] of integer;
    arrayChar = array [char] of integer;
var
    arr, arr1: arrayInteger;
    i: integer;
    arr2: arrayInteger2;
    arr3: arrayChar;
begin
    for i := 1 to 10 do begin
        arr[i] := i * 2;
        write(arr[i], ' ')
    end;
    writeln;
    arr1 := arr;
    arr2 := arr;
    for i := 1 to 10 do begin
        arr2[i] := i * 3;
        write(arr2[i], ' ')
    end;
    writeln;
    for i := 0 to 255 do begin
        arr3[chr(i)] := 0;
        writeln(i, ': ',arr3[chr(i)], ' символ ', chr(i), ' ...')
    end
end.
