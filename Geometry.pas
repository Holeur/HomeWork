program geometry;

var
  x, y: real;
  z: boolean;

begin
  read(x, y);
  z := (x - 2 >= y - 4) and (4 - x >= y - 6) and (2 - x <= y - 4) and (x - 4 <= y - 2);
  write(z);
end.
