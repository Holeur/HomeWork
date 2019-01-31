program geometry;

var
  x, y: real;
  z: boolean;

begin
  read(x, y);
  z := (x <= 6) and (x >= 2) and (y >= 2) and (x <= 6);
  write(z);
end.