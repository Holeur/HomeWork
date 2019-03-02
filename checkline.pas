program checkline;
var a:array[1..10] of array [1..10] of integer; i,u,k,n:integer;
begin
Writeln('Размер матрицы и номер строки сверху');
read(n,k);
for i:=1 to n do
  for u:=1 to n do
    a[i,u]:= random(1000);
for i:=1 to n do //Весь этот фор рисует матрицу, много, зато красиво
  begin
  writeln('');
  for u:=1 to n do
    begin
    if a[i,u] > 99 then
      write(a[i,u],' ')
    else
      if (a[i,u] > 9) and (a[i,u] < 100) then
        write(a[i,u],'  ')
      else
        write(a[i,u],'   ');
    end;
  end;
writeln(' ');
writeln('--------------------------');
for i:=1 to n do
  if i = k then
    for u:=1 to n do
      if u = k then
        write('\\\',a[i,u],'\\\ ')
      else
        write(a[i,u],' ');
end.