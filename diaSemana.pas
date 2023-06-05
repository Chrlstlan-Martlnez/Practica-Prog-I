program prueba1;

uses crt;

var
	num1: integer;
	
begin
	writeln('Ingrese el numero del dia de la semana que desea conocer.');
	write('El dia numero => ');
	num1 := ord(readkey) - 48;
	write(num1);
	write(' de la semana ');

	
	case num1 of
		1: begin
			write('es el Lunes.');
		end;
		2: begin
			write('es el Martes.');
		end;
		3: begin
			write('es el Miercoles.');
		end;
		4: begin
			write('es el Jueves.');
		end;
		5: begin
			write('es el Viernes.');
		end;
		6: begin
			write('es el Sabado.');
		end;
		7: begin
			write('es el Domingo.');
		end
		else
			write('no existe.');
	end;
	
end.
