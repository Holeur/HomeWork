program swap;
var a:array[1..10] of integer; i,b,max,min,maxi,mini:integer;
begin
writeln('Размер массива - ');
read(b);
for i:=1 to b do
  begin
  read(a[i]);
  end;
min:= a[1];
mini:= 1;
for i:=1 to b do
  if a[i] > max then
    begin
    max:= a[i];
    maxi:= i;
    end
  else
    if a[i] < min then
      begin
      min:= a[i];
      mini:= i;
      end;
a[maxi]:= min;
a[mini]:= max;
for i:=1 to b do
  write(a[i],' ');
end.