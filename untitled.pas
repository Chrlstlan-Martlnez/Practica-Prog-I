program prueba;

var
	cedula, contr, oper: integer;
	
begin
	writeln('Ingrese la cedula');
	readln(cedula);
	writeln('Ingrese la contrasena');
	readln(contr);
	
	if contr = 0826 then
		begin
			writeln('Que operacion desea realizar?');
			writeln('01 Consultar saldo');
			writeln('02 Retirar dinero');
			writeln('03 Salir del sistema');
			readln(oper);
			
			case oper of
			1:
			2:
			3:
			end;
		end
	else
		begin
			writeln('La clave es incorrecta');
		end;
end.
