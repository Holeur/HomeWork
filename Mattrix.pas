program mattrix;
type mas = array[1..4] of integer;
var a:array[1..4] of mas; n,i,i2,max,maxn,w:integer; q:char;
begin
//Вводим размер матрицы
writeln('Размер матрицы:');
read(n);
//Вводим каждый элемент матрицы
writeln('Ввод чисел(все числа через пробел, либо число - enter - число - enter)');
for i:=1 to n do
  begin
  for i2:=1 to n do
    begin
    read(a[i,i2]);
    end;
  end;
//Выводим получившуюся матрицу, сорь что так примитивненько, но работает ведь
writeln('--------');
writeln(a[1,1],' ',a[1,2],' ',a[1,3],' ',a[1,4]);
writeln(a[2,1],' ',a[2,2],' ',a[2,3],' ',a[2,4]);
writeln(a[3,1],' ',a[3,2],' ',a[3,3],' ',a[3,4]);
writeln(a[4,1],' ',a[4,2],' ',a[4,3],' ',a[4,4]);
for i:=1 to n do
  begin
  for i2:=1 to n do
    begin
    max:=a[i,1];
    maxn:=1;
    //Ищем max число в строке и его индекс
    if a[i,i2] > max then
      begin
      max:=a[i,i2];
      maxn:= i2;
      end;
    end;
    //Сначало ставим на место старого числа число из диагонали, а потом уже ставим на место числа из диагонали макс число
    a[i,maxn]:= a[i,i];
    a[i,i]:= max;
  end;
  
//Выводим результат
writeln('--------');
writeln(a[1,1],' ',a[1,2],' ',a[1,3],' ',a[1,4]);
writeln(a[2,1],' ',a[2,2],' ',a[2,3],' ',a[2,4]);
writeln(a[3,1],' ',a[3,2],' ',a[3,3],' ',a[3,4]);
writeln(a[4,1],' ',a[4,2],' ',a[4,3],' ',a[4,4]);
end.
