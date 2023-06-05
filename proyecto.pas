program Metro_Caracas;

var

begin

writeln('Bienvenido a la estación del metro de Caracas');
writeln('Desea comprar boletos? Si=S No=N');
readln(inicio);

if ((inicio <> 'S') and (inicio <> 'N')) then
	begin
		repeat
			writeln('Ingrese una opcion valida. Si=S No=N');
			readln(inicio);
		until ((inicio = 'S') or (inicio = 'N'));
	end;
	
case inicio of
	'N':begin
				writeln('Gracias por usar el sistema, presione enter para salir.');
				readln();
				exit;
			end;
	'S':begin
				writeln('Ingrese los siguientes datos:');
				writeln('Nombre: '); readln(nombre);
				writeln('Apellido: '); readln(apellido);
				writeln('Cedula: '); readln(cedula);
				writeln('Cantidad de Boletos: '); readln(nBoletos);
				
				for i=1 to m do
					begin
						writeln('Estos son los tipos de boletos que hay, elija los que desee.');
						writeln('');
						writeln('---------------------------------------------------------------------');
						writeln('|         BOLETOS          |  COLOR  |       COBERTURA       |PRECIO|');
						writeln('|--------------------------|---------|-----------------------|------|');
						writeln('|(a)Simple                 |Amarillo |1 viaje en metro       |  1   |');
						writeln('|--------------------------|---------|-----------------------|------|');
						writeln('|(b)Integrado              |Amarillo |1 viaje en metro       |  1   |');
						writeln('|                          |         |1 viaje en bus         | 0.5  |');
						writeln('|--------------------------|---------|-----------------------|------|');
						writeln('|(c)Ida y Vuelta           |Amarillo |2 viajes en metro      |  2   |');
						writeln('|--------------------------|---------|-----------------------|------|');
						writeln('|(d)Ida y Vuelta Integrado |Amarillo |2 viajes en metro      |  3   |');
						writeln('|                          |         |2 viajes en bus        |      |');
						writeln('|--------------------------|---------|-----------------------|------|');
						writeln('|(e)Multiabono             |Naranja  |10 viajes en metro     |  10  |');
						writeln('|--------------------------|---------|-----------------------|------|');
						writeln('|(f)Multiabono Integrado   |Naranja  |10 viajes en metro     |  15  |');
						writeln('|                          |         |10 viajes en bus       |      |');
						writeln('|--------------------------|---------|-----------------------|------|');
						writeln('|(g)Estudiantil            |Azul     |10 viajes en metro     | 7.5  |');
						writeln('|--------------------------|---------|-----------------------|------|');
						writeln('|(h)Estudiantil Integrado  |Azul     |10 viajes en metro     |  15  |');
						writeln('|                          |         |20 viajes en bus       |      |');
						writeln('|--------------------------|---------|-----------------------|------|');
						writeln('|(i)MetroTarjeta           |Rojo     |20 viajes              |  30  |');
						writeln('|                          |         |30 viajes              |      |');
						writeln('|                          |         |40 viajes              |      |');
						writeln('|--------------------------|---------|-----------------------|------|');
						writeln('|(j)MetroTarjeta Integrada |Rojo     |20 viajes(Metro y Bus) |  50  |');
						writeln('|                          |         |30 viajes(Metro y Bus) |      |');
						writeln('|                          |         |40 viajes(Metro y Bus) |      |');
						writeln('---------------------------------------------------------------------');
						
						writeln('Ingrese la letra identificadora del tipo de boleto que desea comprar => '); readln(tipo);
						
						if ((tipo <> 'a') and (tipo <> 'b') and (tipo <> 'c') and (tipo <> 'd') and (tipo <> 'e') 
						and (tipo <> 'f') and (tipo <> 'g') and (tipo <> 'h') and (tipo <> 'i') and (tipo <> 'j')) then
							begin
								repeat
									writeln('Ingrese una opcion de boleto valida (a-b-c-d-e-f-g-h-i-j).');
									readln(tipo);
								until ((tipo = 'a') or (tipo = 'b') or (tipo = 'c') or (tipo = 'd') or (tipo = 'e') 
								or (tipo = 'f') or (tipo = 'g') or (tipo = 'h') or (tipo = 'i') or (tipo = 'j'));
							end;
						
						if ((tipo = 'a') or (tipo = 'c') or (tipo = 'e') or (tipo = 'g')) then
							begin
								case tipo of
									'a':begin
												nA := nA + 1;
											end;
									'c':begin
												nC := nC + 1;
											end;
									'e':begin
												nE := nE + 1;
											end;
									'g':begin
												nG := nG + 1;
											end;
									end;
							end
						else if ((tipo = 'b') or (tipo = 'd') or (tipo = 'f') or (tipo = 'h') or (tipo = 'j')) then
							begin
								writeln('El viaje sera en metro o en bus? (Ingrese M o B)'); readln(transporte);
								if (transporte <> 'M') and (transporte <> 'B') then
									begin
										repeat
											writeln('Ingrese un metodo de transporte valido (Metro = M, Bus = B)');
											readln(transporte);
										until (transporte = 'M') or (transporte = 'B');
									end;
								case tipo of
									'b':begin
												case trasnporte of
													'M':begin
																nB1 := nB1 + 1;
															end;
													'B':begin
																nB2 := nB2 + 1;
															end;
													end;
											end;
									'd':begin
												case trasnporte of
													'M':begin
																nD1 := nD1 + 1;
															end;
													'B':begin
																nD2 := nD2 + 1;
															end;
													end;
											end;
									'f':begin
												case trasnporte of
													'M':begin
																nF1 := nF1 + 1;
															end;
													'B':begin
																nF2 := nF2 + 1;
															end;
													end;
											end;
									'h':begin
												case trasnporte of
													'M':begin
																nH1 := nH1 + 1;
															end;
													'B':begin
																nH2 := nH2 + 1;
															end;
													end;
											end;
									'j':begin
												case trasnporte of
													'M':begin
																nJ1 := nJ1 + 1;
															end;
													'B':begin
																nJ2 := nJ2 + 1;
															end;
													end;
											end;
									end;
							end;
						if ((tipo = 'i') or (tipo = 'j')) then
							begin
								writeln('El boleto sera de 20, 30 o 40 viajes? (Ingrese 20, 30 o 40)'); readln(nViajes);
								if ((nViajes <> 20) and (nViajes <> 30) and (nViajes <> 40)) then
									begin
										repeat
											writeln('Las opciones son 20, 30 y 40. Ingrese una de estas.');
											readln(nViajes);
										until ((nViajes = 20) or (nViajes = 30) or (nViajes = 40));
									end;
								
								case tipo of
									'i':begin
												case nViajes of
													20:begin
															nI20 := nI20 + 1;
														end;
													30:begin
															nI30 := nI30 + 1;															
														end;
													40:begin
															nI40 := nI40 + 1;
														end;
													end;
											end;
									'j':begin
												case nViajes of
													20:begin
															nJ20 := nJ20 + 1;
														end;
													30:begin
															nJ30 := nJ30 + 1;															
														end;
													40:begin
															nJ40 := nJ40 + 1;
														end;
													end;
											end;
									end;
							end;
						
					end;
			end;



end.
