program par_impar;
uses crt;
var num1, num2 : integer;
begin
        writeln('ingrese el primer numero');
        readln(num1);
        if num1=0 then
        begin
                writeln('El numero no es par e impar');
        end
        else if num1 mod 2 = 0 then
        begin
                writeln('El numero es par')
        end
        else
        begin
                writeln('El numero es impar')
        end;
end.
