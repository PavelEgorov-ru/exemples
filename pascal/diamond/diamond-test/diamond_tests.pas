program diamond_tests;
uses utils;

var
    test_passed: boolean;
    test_count: integer;
    failed_count: integer;

procedure TestDialogNum(var passed: boolean; var count, failed: integer);
var 
    value, expected_value: integer;
    phrase: string = 'test text';

begin
    value := 5;
    expected_value := 5;
    DialogNum(phrase, value)
end;

begin
    TestDialogNum(test_passed, test_count, failed_count)
end.
