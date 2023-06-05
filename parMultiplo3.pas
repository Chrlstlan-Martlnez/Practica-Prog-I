program prueba1;
var
	num1: integer;
begin
	write('Ingrese un numero entero => ');
	readln(num1);
	
	writeln('');
	
	begin
		if (num1 mod 2) = 0 then
			write('Su numero es par ')
		else
			write('Su numero no es par ')
	end;
	
	begin
		if (num1 mod 3) = 0 then
			write('y si es multiplo de 3.')
		else
			write('y no es multiplo de 3');
	end;
	
end.
