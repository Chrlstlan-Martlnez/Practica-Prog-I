program prueba1;

var
	inicio: char;
	
begin
	readln(inicio);

if (inicio <> 'S' and <> 'N') then
	begin
		repeat
			writeln('Ingrese una opcion valida. Si=S No=N');
			readln(inicio);
		until ((inicio = 'S') or (inicio = 'N'));
	end;
end.
