program upper;
var a:array[1..10] of integer; i,b,c,d:integer;
begin
d:=0; 
write('Размер массива - ');
read(b);
for i:=1 to b do
  read(a[i]);
for i:=1 to b do
  if a[i] > c then
    c:= a[i]
  else
    begin
    writeln('Массив не возрастающий');
    d:= 1; //Поднимаем флаг чтобы вторая фраза не появилась в результате
    break
    end;
if d = 0 then
  writeln('Массив возрастающий');
end.

