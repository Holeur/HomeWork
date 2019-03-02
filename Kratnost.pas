program kratnost;
var a:array[1..100] of integer; k,i,q,d:integer;
begin
for i:= 1 to 100 do //Заполняем массив рандомными числами от 0 до 50 чтобы не париться с вводом
  a[i]:= random(50);
writeln('Массив - '); //Выводим его для проверки
for i:=1 to 100 do
  write(a[i],' ');
writeln('Введите число - ');
read(k);
for i:= 1 to 100 do
  begin
  q:= a[i] mod k;
  if q = 0 then
    begin
    write(a[i],' + '); //Для проверки написал
    d:= d + a[i];
    end;
  end;
writeln(' = ',d);
end.