program homework;

var a:array[1..100] of integer;
i,n,g:integer;
begin
  writeln('Кол-во чисел в массиве - ');
  read(n);
  //Ввод чисел в массивы
  writeln('Ввод чисел(через пробел)');
  for i:=1 to n do
    begin
    read(a[i]);
    end;  
  //Проверка массива до 0
  For i:=1 to n do
    begin
    if a[i] = 0 then
      //Перечисление до нуля
      begin
        for g:=1 to i do
          write(a[g],' ');
        break
      end;
    end;
end.
