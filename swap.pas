program swap;
var a:array[1..10] of integer; i,b,max,min,maxi,mini:integer;
begin
writeln('Размер массива - ');
read(b);
for i:=1 to b do
  read(a[i]);
for i:=1 to b do
  begin
  if a[i] > max then
    begin
    max:= a[i];
    maxi:= i;
    end;
  if a[i] < min then
    begin
    min:= a[i];
    mini:=i;
    end;
  end;
a[maxi]:= min;
a[mini]:= min;
for i:=1 to b do
  write(a[i],' ');
end.