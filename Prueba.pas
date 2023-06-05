{1. Crea un programa que genere un número aleatorio y pida al usuario que adivine
ese número. Determine si el número ingresado por el usuario es mayor o menor
que el número generado, y muestra un mensaje adecuado en cada caso.

program numAle;

var
  numero, intento: integer;

begin
	randomize;
  numero := random(20);
  
  write('Intente adivinar un numero entre el 1 y el 20 => '); readln(intento);

  while intento <> numero do 
		begin
			while (intento < 1) or (intento > 20) do
				begin
					write('El numero no se encuentra en el rango, aqui tiene otro intento => '); readln(intento);
				end;
			if intento < numero then
				writeln('Su numero es menor al que se busca.')
			else
				writeln('Su numero es mayor al que se busca.');
			
			write('Aqui tiene otro intento => '); readln(intento);
		end;
		
	writeln('Felicidades, el numero es ', numero);
end.
}




{2. Crea un programa que permita jugar al clásico juego de piedra, papel o tijera
contra la computadora. Determine quién ganó cada ronda y mostrar un mensaje
adecuado.

program ppt;

var
	eleccionJug, eleccionPC, victorias, empates, derrotas: integer;
	jugadaJug, jugadaPC: string;
	
begin
	victorias := 0;
	empates := 0;
	derrotas := 0;
	while 0 = 0 do
		begin
			randomize;
			eleccionPC := random(3);
			case eleccionPC of
				0: jugadaPC := 'Piedra';
				1: jugadaPC := ' Papel';
				2: jugadaPC := 'Tijera';
				end;
			
			repeat 
				writeln('');
				write('Para iniciar el juego elija una jugada (Piedra = 0, Papel = 1, Tijera = 2, Salir = 5) => '); readln(eleccionJug);
			until (eleccionJug = 0) or (eleccionJug = 1) or (eleccionJug = 2) or (eleccionJug = 5);
			
			case eleccionJug of
				0: jugadaJug := 'Piedra';
				1: jugadaJug := 'Papel ';
				2: jugadaJug := 'Tijera';
				5: Exit;
				end;
			
			if ((eleccionPC - 1) = eleccionJug) or ((eleccionPC + 2) = eleccionJug) then
				begin
					derrotas := derrotas + 1;
					writeln('----------------------');
					writeln('| Jugador ----   PC  |');
					writeln('|--------------------|');
					writeln('| ', jugadaJug, ' ---- ',jugadaPC,' |');
					writeln('|--------------------|');
					writeln('|--- Has  Perdido ---|');
					writeln('|--------------------|');
					writeln('|--- Victorias: ', victorias, ' ---|');
					writeln('|--- Empates: ', empates, '   ---|');
					writeln('|--- Derrotas: ', derrotas, '  ---|');
					writeln('----------------------');
				end
			else if ((eleccionJug - 1) = eleccionPC) or ((eleccionJug + 2) = eleccionPC) then
				begin
					victorias := victorias + 1;
					writeln('----------------------');
					writeln('| Jugador ----   PC  |');
					writeln('|--------------------|');
					writeln('| ', jugadaJug, ' ---- ',jugadaPC,' |');
					writeln('|--------------------|');
					writeln('|--- Has   Ganado ---|');
					writeln('|--------------------|');
					writeln('|--- Victorias: ', victorias, ' ---|');
					writeln('|--- Empates: ', empates, '   ---|');
					writeln('|--- Derrotas: ', derrotas, '  ---|');
					writeln('----------------------');
				end
			else
				begin
					empates := empates + 1;
					writeln('----------------------');
					writeln('| Jugador ----   PC  |');
					writeln('|--------------------|');
					writeln('| ', jugadaJug, ' ---- ',jugadaPC,' |');
					writeln('|--------------------|');
					writeln('|--- Han Empatado ---|');
					writeln('|--------------------|');
					writeln('|--- Victorias: ', victorias, ' ---|');
					writeln('|--- Empates: ', empates, '   ---|');
					writeln('|--- Derrotas: ', derrotas, '  ---|');
					writeln('----------------------');
				end;
		end;
end.
}

{3. Crea un programa que pida al usuario una contraseña y verifique si cumple con
ciertos requisitos, como tener al menos 8 caracteres, incluir al menos una letra y
un número, etc. Verifique cada requisito y mostrar un mensaje adecuado en caso
de que la contraseña no sea válida.

program contrasena;

var
	contra : string;
	i, asciiChar, nums, letras : integer;

begin
	write('Cree una nueva contrasena, debe tener al menos 8 caracteres, una letra y un numero => '); readln(contra);
	
	repeat
		nums := 0;
		letras := 0;
		
		while length(contra) < 8 do
			begin
				write('La contrasena debe tener al menos 8 caracteres => '); readln(contra);
			end;
			
		for i := 1 to length(contra) do
			begin
				asciiChar := ord(contra[i]);
				if (asciiChar >= 48) and (asciiChar <= 57) then
					nums := nums + 1
				else if ((asciiChar >= 65) and (asciiChar <= 90)) or ((asciiChar >= 97) and (asciiChar <= 122)) then
					letras := letras + 1;
			end;
			
		if nums < 1 then
			begin
				write('La contrasena debe tener al menos un numero. Ingrese una nueva => '); readln(contra);
			end
		else if letras < 1 then
			begin
				write('La contrasena debe tener al menos una letra. Ingrese una nueva => '); readln(contra);
			end;
	
	until (length(contra) >= 8) and (nums > 0) and (letras > 0);
	writeln('');
	writeln('Su contrasena es ', contra);
end.
}

{4. Imprimir los primeros n números de la serie de Fibonacci.

program fibonacci;

var
	n, x, y, i : longint;

begin
	while 0 = 0 do
		begin
			write('Ingrese el enesimo numero de la secuencia fibonacci que desea conocer (Debe ser un numero natural), o ingrese 0 para salir => '); readln(n);
			writeln('');
			
			if n = 0 then
				exit;
			
			while (n < 1) and (n <> 0) do
				begin
					write('El numero debe ser igual o mayor a 1 => '); readln(n);
					writeln('');
				end;
			
			if n = 1 then
				begin
					writeln('El numero ', n, ' de la secuencia fibonacci es 0.');
					writeln('');
				end
				
			else if n > 1 then
				begin
					i := 0;
					x := 0;
					y := 1;
					for i := 2 to n do
						begin
							writeln(x);
							writeln(y);
							x := x + y;
							y := x - y;
						end;
					writeln('El numero ', n, ' de la secuencia fibonacci es ', x);
					writeln('');
				end;
		end;
end.
}

{5. Crea un programa en Pascal que permita calcular la factorial de un numero N.

program factorial;

var
	n, i, fact : longint;
	
begin
	while 0 = 0 do
		begin
			fact := 1;
			i := 1;
			write('Ingrese el enesimo numero al que desea calcular su factorial (Debe ser un numero natural), o ingrese 0 para salir => '); readln(n);
			writeln('');
			
			if n = 0 then
				exit;
			
			while (n < 1) and (n <> 0) do
				begin
					write('El numero debe ser igual o mayor a 1 => '); readln(n);
					writeln('');
				end;
			
			for i := 1 to n do
				begin
					fact := fact * i;
				end;
			
			writeln(n, ' factorial es ', fact);
			writeln('');
		end;
end.
}

{6. Simular el lanzamiento de una moneda n veces y determinar la cantidad de caras
y sellos obtenidos

program moneda;

var
	i, n, valMoneda, caras, sellos : integer;

begin
	while 0 = 0 do
		begin
			caras := 0;
			sellos := 0;
			i := 1;
		
			write('Ingrese la cantidad de veces que desea lanzar una moneda al aire, o presione 0 para salir => '); readln(n);
			
			if n = 0 then
				exit;
				
			for i := 1 to n do
				begin
					valMoneda := random(2);
					
					if valMoneda = 0 then
						begin
							writeln('Cara');
							caras := caras + 1;
						end
					else if valMoneda = 1 then
						begin
							writeln('Sello');
							sellos := sellos + 1;
						end;
				end;
			
			writeln('');
			writeln('Total de caras: ', caras);
			writeln('Total de sellos: ', sellos);
			writeln('');

		end;
end.
}

{7. Resolver el juego del adivina el número en el que el programa genera un número
aleatorio entre 1 y 100 y el usuario debe adivinarlo en un máximo de 10 intentos.

program numAle2;

var
  numero, intento, intentRest, cantIntent : integer;

begin
	randomize;
  numero := random(101);
  intentRest := 10;
  cantIntent := 0;
  
  write('Intente adivinar un numero entre el 1 y el 100, tienes ', intentRest, ' intentos => '); readln(intento);
	intentRest := intentRest - 1;
	cantIntent := cantIntent + 1;
	writeln(intentRest);

  while (intento <> numero) and (intentRest > 0) do 
		begin
			while ((intento < 1) or (intento > 100)) and (intentRest > 0) do
				begin
					write('El numero no se encuentra en el rango, te quedan ', intentRest, ' intentos => '); readln(intento);
					intentRest := intentRest - 1;
					cantIntent := cantIntent + 1;
					writeln(intentRest);
				end;
				
			if (intento < numero) and (intentRest > 0) then
				writeln('Su numero es menor al que se busca.')
			else if (intento > numero) and (intentRest > 0) then
				writeln('Su numero es mayor al que se busca.');
			
			if intentRest > 0 then
				begin
					write('Te quedan ', intentRest, ' intentos => '); readln(intento);
					intentRest := intentRest - 1;
					cantIntent := cantIntent + 1;
				end
			else
			 writeln('Te quedaste sin intentos, el numero era ', numero, '.');
		
		end;
		
	if intento = numero then		
		writeln('Felicidades, el numero es ', numero, '. Lo adivinaste en ', cantIntent, ' intentos.');
end.
}

{8. Desarrolle un programa en Pascal que le permita al usuario ingresar un número
decirle los cinco números que se encuentran antes y después si en estos existen
pares e impares, así como la suma de los pares e impares.}


