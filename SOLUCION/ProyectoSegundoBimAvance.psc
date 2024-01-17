Algoritmo ProyectoSegundoBim
	Definir seleccion, seleccion2, seleccion3, x, contraseña, i Como Entero;
	i = 1;
	x = 12345;
	Definir pasar Como Logico;
	Escribir "Selecciona lo que quieres hacer:";
	Escribir "[1] -> Informacion local";
	Escribir "[2] -> Listado PPL";
	Escribir "[3] -> Estadisticas";
	Escribir "[4] -> Administracion interna (SOLO PERSONAL AUTORIZADO)";
	Leer seleccion;
	Segun seleccion Hacer
		1:
			//INFORMACION LOCAL
			//Caracteristicas de la carcel y su informacion general
		2:
			//LISTADO PPL 
			//Listado de presos en sus pabellones
			Escribir "Escoge el pabellon que deseas visitar";
			Escribir "[1] -> PABELLON 1 (delitos menores)";
			Escribir "[2] -> PABELLON 2 (delitos regulares)";
			Escribir "[3] -> PABELLON 3 (delitos regulares)";
			Escribir "[4] -> PABELLON 4 (delitos graves)";
			Leer seleccion2;
			Segun seleccion2 Hacer
				1:
					//delitos menores
				2:
					//delitos regulares
				3:
					//delitos regulares
				4:
					//delitos graves
				De Otro Modo:
					Escribir "Pabellon no existente";
			Fin Segun
		3:
			//ESTADISTICAS
			//Estadisticas de la carcel
		4:
			//ADMINISTRACION INTERNA
			//Opcion para editar data
			Escribir "INGRESA LA CONTRASEÑA";
			Escribir "Tienes: 5 intentos"
			Mientras (i <= 5) & (pasar == Falso) Hacer
				Leer contraseña;
				Si (x == contraseña) Entonces
					pasar = Verdadero;
				SiNo
					Escribir "Contraseña incorrecta";
					Si (i <= 4) Entonces
						Escribir "Tienes: ", (5-i), " intentos"
						Escribir "INGRESA LA CONTRASEÑA"
					Fin Si
					pasar = falso;
				Fin Si
				i = i + 1;
			Fin Mientras
			Si (pasar = Verdadero) Entonces
				Escribir "Que deseas hacer?"
				Escribir "[1] -> agregar PPL";
				Escribir "[2] -> Editar datos PPL";
				Escribir "[3] -> Sancionar pena";
				Leer seleccion3
				Segun seleccion3 Hacer
					1:
						//Agregar PPL
					2:
						//Editar datos PPL
					3:
						//Sancionar pena
					De Otro Modo:
						Escribir "Opcion inexistente";
				Fin Segun
			SiNo
				Escribir "USTED ES UN LADRON HP";
			Fin Si
		De Otro Modo:
			Escribir "Opcion incorrecta";
	Fin Segun
FinAlgoritmo