program math;

var
  x, y, z: real;

begin
  Read(x, y);
  z := (3 + Exp(y - 1)) / (1 + x * x * Abs(y - sin(x) / cos(x)));
  writeln(z:1:2);
  
  Read(x, y);
  z := (1 + sin(sqrt(x + 1))) / (cos(12 * y - 4));
  writeln(z:1:2);
end.
