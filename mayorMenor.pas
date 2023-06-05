program prueba1;

uses 
	sysutils;

var
	num1, num2 : real;
	
begin
	write('Ingrese un numero real => ');
	readln(num1);
	
	write('Ingrese otro numero real => ');
	readln(num2);
	
	writeln('');
	
	
	if num1 = num2 then
		begin
			writeln('Los numeros son iguales!')
		end
		
	else
		begin
			if num1 > num2 then
				writeln(TrimRight(FloatToStr(num1)), ' es mayor que ', TrimRight(FloatToStr(num2)))
			
			else
				writeln(TrimRight(FloatToStr(num1)), ' es menor que ', TrimRight(FloatToStr(num2)));
		end;
	
end.
