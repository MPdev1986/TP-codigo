Algoritmo Trabajo_Grupo_6
	cont <- 0
	cont2 <- 0
	cont3 <- 0
	cont4 <- 0
	cont5 <- 0
	cont6 <- 0
	cont7 <- 0
	cont8 <- 0
	cont9 <- 0
	cont10 <- 0
	cont11 <- 0
	cont12 <- 0
	acum <- 0
	acum2 <- 0
	acum3 <- 0
	acum4 <- 0
	flag <- 0
	diamax <- 0
	diamax2 <- 0
	opmax <- 0
	opmax2 <- 0
	totmax <- 0
	totmax2 <- 0
	Para i<-1 Hasta 7 Hacer
		Escribir 'Operador: -martin  -camilo  -matias'
		Leer operador
		stock1 <- 100
		stock2 <- 100
		stock3 <- 100
		stock4 <- 100
		// El stock inicia en 100 cuando el "for" inicia otro dia
		Repetir
			Escribir 'destino: -eeuu  -europa  -centroamerica  -nacional'
			Leer destino
			Segun destino  Hacer
				'eeuu':
					Escribir 'Cantidad de pasajes:'
					Leer cant
					// Da error hasta que se ingrese 4 boletos o menos 
					Mientras cant>4 Hacer
						Escribir 'Error: cantidad maxima por persona es 4 pasajes'
						Leer cant
					FinMientras
					precio1 <- 18000*cant
					Si stock1<cant Entonces
						Escribir 'Boletos agotados'
					SiNo
						stock1 <- stock1-cant
						Si stock1<=20 Entonces
							Escribir 'quedan: ',stock1,' boletos'
						FinSi
						Escribir 'Asiento:    1: Primera clase   2: economico'
						Leer clase
						Si clase='1' Entonces
							precio1 <- precio1*1.20
							cont9 <- cont9+cant
						FinSi
						Escribir 'Metodo de pago: 1-Efectivo 2-Tarjeta de credito'
						Leer pago
						Si pago='1' Entonces
							precio1 <- (precio1-(precio1*0.10))
						SiNo
							precio1 <- precio1*1.15
							cont5 <- cont5+1
						FinSi
						acum <- acum+precio1
						cont <- cont+cant
					FinSi
				'europa':
					Escribir 'Cantidad de pasajes:'
					Leer cant
					Mientras cant>4 Hacer
						Escribir 'Error: cantidad maxima por persona es 4 pasajes'
						Leer cant
					FinMientras
					precio2 <- 16000*cant
					Si stock2<cant Entonces
						Escribir 'Boletos agotados'
					SiNo
						stock2 <- stock2-cant
						Si stock2<=20 Entonces
							Escribir 'quedan: ',stock2,' boletos'
						FinSi
						Escribir 'Asiento:   1: Primera clase  2: economico'
						Leer clase
						Si clase='1' Entonces
							precio2 <- precio2*1.20
							cont10 <- cont10+cant
						FinSi
						Escribir 'Metodo de pago: 1-Efectivo 2-Tarjeta de credito'
						Leer pago
						Si pago='1' Entonces
							precio2 <- (precio2-(precio2*0.10))
						SiNo
							precio2 <- precio2*1.15
							cont6 <- cont6+1
						FinSi
						acum2 <- acum2+precio2
						cont2 <- cont2+cant
					FinSi
				'centroamerica':
					Escribir 'Cantidad de pasajes:'
					Leer cant
					Mientras cant>4 Hacer
						Escribir 'Error: cantidad maxima por persona es 4 pasajes'
						Leer cant
					FinMientras
					precio3 <- 12000*cant
					Si stock3<cant Entonces
						Escribir 'Boletos agotados'
					SiNo
						stock3 <- stock3-cant
						Si stock3<=20 Entonces
							Escribir 'quedan: ',stock3,' boletos'
						FinSi
						Escribir 'Asiento:  1: Primera clase  2: economico'
						Leer clase
						Si clase='1' Entonces
							precio3 <- precio3*1.20
							cont11 <- cont11+cant
						FinSi
						Escribir 'Metodo de pago: 1-Efectivo 2-Tarjeta de credito'
						Leer pago
						Si pago='1' Entonces
							precio3 <- (precio3-(precio3*0.10))
						SiNo
							precio3 <- precio3*1.15
							cont7 <- cont7+1
						FinSi
						acum3 <- acum3+precio3
						cont3 <- cont3+cant
					FinSi
				'nacional':
					Escribir 'Cantidad de pasajes:'
					Leer cant
					Mientras cant>4 Hacer
						Escribir 'Error: cantidad maxima por persona es 4 pasajes'
						Leer cant
					FinMientras
					precio4 <- 7000*cant
					Si stock4<cant Entonces
						Escribir 'Boletos agotados'
					SiNo
						stock4 <- stock4-cant
						Si stock4<=20 Entonces
							Escribir 'quedan: ',stock4,' boletos'
						FinSi
						Escribir 'Asiento:  1: Primera clase  2: economico'
						Leer clase
						Si clase='1' Entonces
							precio4 <- precio4*1.20
							cont12 <- cont12+cant
						FinSi
						Escribir 'Metodo de pago: 1-Efectivo 2-Tarjeta de credito'
						Leer pago
						Si pago='1' Entonces
							precio4 <- (precio4-(precio4*0.10))
						SiNo
							precio4 <- precio4*1.15
							cont8 <- cont8+1
						FinSi
						acum4 <- acum4+precio4
						cont4 <- cont4+cant
					FinSi
			FinSegun
			Escribir 'desea finalizar el dia: si o no'
			Leer final
		Hasta Que final='si'
		// Compara que dia se vendio mas y que operador fue
		Escribir '--------------------------------'
		Escribir 'Operador:',operador
		Escribir '                           '
		tot1 <- cont+cont2+cont3+cont4
		Escribir 'en el dia ',i,' se vendió: ',tot1,' pasajes'
		Escribir '----------------------------------------'
		// los contadores se reinician cuando cambia de dia
		Si flag=0 Entonces
			diamax <- i
			opmax <- operador
			flag <- 1
			totmax <- tot1
		SiNo
			Si tot1>totmax Entonces
				diamax <- i
				opmax <- operador
				totmax <- tot1
			SiNo
				Si tot1=totmax Entonces
					diamax2 <- i
					opmax2 <- operador
					totmax2 <- tot1
				FinSi
			FinSi
		FinSi
		cont <- 0
		cont2 <- 0
		cont3 <- 0
		cont4 <- 0
		// Finaliza el dia
	FinPara
	Si totmax=totmax2 Entonces
		Escribir 'Operadores con mas ventas: ',opmax,' y ',opmax2
		Escribir 'en los dias',diamax,' y ',diamax2,' se vendieron mas boletos'
	SiNo
		Escribir 'operador con mas ventas: ',opmax
		Escribir 'en el dia: ',diamax,' se vendio mas boletos'
	FinSi
	tot2 <- acum+acum2+acum3+acum4
	tot3 <- cont9+cont10+cont11+cont12
	tot4 <- cont5+cont6+cont7+cont8
	Escribir 'Destino EEUU: $',acum,' Recaudado.   Destino Europa: $',acum2,' Recaudado.  Destino Centroamerica: $',acum3,' Recaudado.  Destino Nacional: $',acum4,' Recaudado'
	Escribir '------------------------------------------------------------------------'
	Escribir tot4,' pasajeros pagaron con tarjeta de credito'
	Escribir '-----------------------------------------------------------'
	Escribir 'Viajes en 1º clase semanalmente: ',tot3,' pasajeros'
FinAlgoritmo

