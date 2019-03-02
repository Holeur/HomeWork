program sumnaddiag;
var a:array[1..10] of array [1..10] of integer; i,u,b,s,h:integer;
begin
write('Размер матрицы - ');
read(b);
for i:=1 to b do
 for u:=1 to b do
  read(a[i,u]);
writeln(a[1,1],' ',a[1,2],' ',a[1,3],' ',a[1,4]);
writeln(a[2,1],' ',a[2,2],' ',a[2,3],' ',a[2,4]);
writeln(a[3,1],' ',a[3,2],' ',a[3,3],' ',a[3,4]);
writeln(a[4,1],' ',a[4,2],' ',a[4,3],' ',a[4,4]);
for i:=1 to b do
 for u:=1 to b do
  if u>i then
    begin
    s:= s + a[i,u];
    h:= h + 1;
    end;
writeln('-------');
writeln(s,' ',h);//s - сумма чисел, h - количество чисел
end.