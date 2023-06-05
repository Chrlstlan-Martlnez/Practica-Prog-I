program prueba1;
uses 
	crt;
var
	num1, num2 : integer;
	
begin
	write('Numero 1 => ');
	num1 := ord(readkey) - 48;
	writeln(num1);
	
	write('Numero 2 => ');
	num2 := ord(readkey) - 48;
	writeln(num2);
	
	writeln('');

	if num1 > num2 then
		begin
			writeln('Numero mayor => ', num1);
			writeln('Numero menor => ', num2);
		end
		
	else if num1 < num2 then 
		begin
			writeln('Numero mayor => ', num2);
			writeln('Numero menor => ', num1);
		end
		
	else
		write('Los numeros son iguales.');
		
end.
