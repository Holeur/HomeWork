program kratniev2;
var a:array[1..100] of array[1..100] of integer; i,u,max,n,k,t,s:integer;
begin
writeln('Размер матрицы и кратное число');
read(n,k);
for i:=1 to n do
  for u:=1 to n do
    a[i,u]:=random(1000);
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
max:=a[1,1];
writeln('');
writeln('-----------------------------------------');
for i:=1 to n do
  for u:=1 to n do
    begin
    t:= a[i,u] mod k;
    if t = 0 then
      begin
      s:= s + 1;
      if a[i,u] > max then
        max:= a[i,u];
      end;
    end;
writeln('Сумма чисел - ',s);
writeln('Максимальное из них - ',max);
end.