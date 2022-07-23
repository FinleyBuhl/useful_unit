unit useful_unit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type
  StrArr = array of string;
  IntArr = array of NativeInt;
  FloatArr = array of Real;
  BoolArr = array of boolean;
  CharArr = array of char;


function StrSplit(s: string; c: char): StrArr;

function RemItem(arr: StrArr; i: NativeUInt): StrArr; //not tested
function RemItem(arr: IntArr; i: NativeUInt): IntArr;
function RemItem(arr: FloatArr; i: NativeUInt): FloatArr;
function RemItem(arr: BoolArr; i: NativeUInt): BoolArr;
function RemItem(arr: CharArr; i: NativeUInt): CharArr;

function RemVal(arr: StrArr; val: string): StrArr;
function RemVal(arr: IntArr; val: NativeInt): IntArr;
function RemVal(arr: FloatArr; val: real): FloatArr;
function RemVal(arr: BoolArr; val: boolean): BoolArr;
function RemVal(arr: CharArr; val: char): CharArr;

implementation

{$R *.lfm}

function StrSplit(s: string; c: char): StrArr;
var
  i, i2: uint64;
label
  jmp;
begin
  result:= [''];
  for i:= low(s) to high(s) do
    if not (s[i] = c) then
      result[high(result)] += s[i]
    else
      setlength(result, length(result) + 1);
  for i:= low(result) to high(result) do
  begin
    if high(result) < i then
      goto jmp;
    if result[i] = '' then
    begin
      for i2:= i to high(result) - 1 do
        result[i2]:= result[i2 + 1];
      setlength(result, high(result));
    end;
  end;
  jmp:
end;

function RemItem(arr: StrArr; i: NativeUInt): StrArr;
var
  i2: NativeUInt;
begin
  for i2:= i to high(arr) - 1 do
    arr[i2]:= arr[i2 + 1];
  setlength(arr, high(arr));
  result:= arr;
end;

function RemItem(arr: IntArr; i: NativeUInt): IntArr;
var
  i2: NativeUInt;
begin
  for i2:= i to high(arr) - 1 do
    arr[i2]:= arr[i2 + 1];
  setlength(arr, high(arr));
  result:= arr;
end;

function RemItem(arr: FloatArr; i: NativeUInt): FloatArr;
var
  i2: NativeUInt;
begin
  for i2:= i to high(arr) - 1 do
    arr[i2]:= arr[i2 + 1];
  setlength(arr, high(arr));
  result:= arr;
end;

function RemItem(arr: BoolArr; i: NativeUInt): BoolArr;

var
  i2: NativeUInt;
begin
  for i2:= i to high(arr) - 1 do
    arr[i2]:= arr[i2 + 1];
  setlength(arr, high(arr));
  result:= arr;
end;

function RemItem(arr: CharArr; i: NativeUInt): CharArr;
var
  i2: NativeUInt;
begin
  for i2:= i to high(arr) - 1 do
    arr[i2]:= arr[i2 + 1];
  setlength(arr, high(arr));
  result:= arr;
end;

function RemVal(arr: StrArr; val: string): StrArr;
var
  i, i2: NativeUInt;
label
  jmp;
begin
  for i:= low(arr) to high(arr) do
  begin
    if high(arr) < i then
      goto jmp;
    if arr[i] = val then
    begin
      for i2:= i to high(arr) - 1 do
        arr[i2]:= arr[i2 + 1];
      setlength(arr, high(arr));
    end;
  end;
  jmp:
  result:= arr;
end;

function RemVal(arr: IntArr; val: NativeInt): IntArr;
var
  i, i2: NativeUInt;
label
  jmp;
begin
  for i:= low(arr) to high(arr) do
  begin
    if high(arr) < i then
      goto jmp;
    if arr[i] = val then
    begin
      for i2:= i to high(arr) - 1 do
        arr[i2]:= arr[i2 + 1];
      setlength(arr, high(arr));
    end;
  end;
  jmp:
  result:= arr;
end;

function RemVal(arr: FloatArr; val: real): FloatArr;
var
  i, i2: NativeUInt;
label
  jmp;
begin
  for i:= low(arr) to high(arr) do
  begin
    if high(arr) < i then
      goto jmp;
    if arr[i] = val then
    begin
      for i2:= i to high(arr) - 1 do
        arr[i2]:= arr[i2 + 1];
      setlength(arr, high(arr));
    end;
  end;
  jmp:
  result:= arr;
end;

function RemVal(arr: BoolArr; val: boolean): BoolArr;
var
  i, i2: NativeUInt;
label
  jmp;
begin
  for i:= low(arr) to high(arr) do
  begin
    if high(arr) < i then
      goto jmp;
    if arr[i] = val then
    begin
      for i2:= i to high(arr) - 1 do
        arr[i2]:= arr[i2 + 1];
      setlength(arr, high(arr));
    end;
  end;
  jmp:
  result:= arr;
end;

function RemVal(arr: CharArr; val: char): CharArr;
var
  i, i2: NativeUInt;
label
  jmp;
begin
  for i:= low(arr) to high(arr) do
  begin
    if high(arr) < i then
      goto jmp;
    if arr[i] = val then
    begin
      for i2:= i to high(arr) - 1 do
        arr[i2]:= arr[i2 + 1];
      setlength(arr, high(arr));
    end;
  end;
  jmp:
  result:= arr;
end;

end.

