program guf; 

var
  a, b, c, mx, mn, sum: Integer;


begin
  Read(a, b, c);
  if (a > b) and (b > c) then
    begin
      mx := a;
      mn := c;
    end 
  else 
    begin
      if (c > a) and (a > b) then
        begin
          mx := c;
          mn := b;
        end ;
      if (b > c) and (c > a) then
        begin
          mx := b;
          mn := a;
        end ;
    end;
  if (c > b) and (b > a) then
    begin
      mx := c;
      mn := a;
    end 
  else 
    begin
      if (c < a) and (a < b) then
        begin
          mx := b;
          mn := c;
        end ;
      if (b < c) and (c < a) then
        begin
          mx := a;
          mn := b;
        end ;
    end;
  sum := mx + mn;
  writeln('Max - ', mx);
  writeln('Min - ', mn);
  writeln('Сумма - ', sum);
end.
