program aiirandom;
var a:array[1..10000] of integer; i:integer; b:array[1..1000] of integer;
begin
for i:=1 to 1000 do
  a[i]:= random(1000);
for i:=1 to 1000 do
  begin
  write(a[i],'/',i,' ');
  b[i]:= i;
  end;
writeln('');
writeln('----------------------------------------------------------------------------------------------------------------------------');
for i:=1 to 1000 do
  if a[i] >= i then
    write(a[i],'/',b[i],' ');
end.