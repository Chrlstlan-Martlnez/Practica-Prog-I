program prueba1;

var
	num1, num2 : integer;
	resultado : real;
	
begin
	write('Ingrese un numero entero como dividendo => ');
	readln(num1);
	
	write('Ingrese un numero entero como divisor => ');
	readln(num2);
	
	writeln('');
	
	
	if num2 = 0 then
		begin
			writeln(num1, '/', num2, ' no se puede dividir.')
		end
		
	else
		begin
			resultado := num1/num2;
			
			if frac(resultado) = 0 then
				writeln(num1, '/', num2, ' = ', resultado:0:0)
			
			else
				writeln(num1, '/', num2, ' = ', resultado:0:2);
		end;
	
end.
