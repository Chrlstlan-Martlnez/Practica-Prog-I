program prueba;

var
	area, volumen, radio, altura: real;
const
	pi= 3.1416;
	
begin
	write('Ingrese el radio de su cilindro en cm =>');
	readln(radio);
	write('Ingrese la altura de su cilindro en cm =>');
	readln(altura);
	writeln('');
	
	area:= (2*(pi*(radio*radio))) + ((2*pi*radio)*altura);
	volumen:= (pi*(radio*radio))* altura;
	
	if (area < 0) or (volumen < 0) then
		writeln('Los valores deben ser positivos.')
	else
		writeln('Su cilindro tiene un area de ', area:0:2, ' cm cuadrados, y un volumen de ', volumen:0:2, ' cm cubicos.')	
end.
