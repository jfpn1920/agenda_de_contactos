Algoritmo agenda_de_contactos
    Definir opcion, i, j Como Entero
    Definir totalContactos Como Entero
    Definir nombreBuscar Como Cadena
    Definir encontrado Como Logico
    Dimension nombres[20]
    Dimension telefonos[20]
    Dimension correos[20]
    totalContactos <- 0
	//----------------------------------------//
	//--|menu_principal_agenda_de_contactos|--//
	//----------------------------------------//
    Repetir
        Escribir "menu principal agenda de contactos"
        Escribir "1) agregar contacto"
        Escribir "2) editar contacto"
        Escribir "3) eliminar contacto"
        Escribir "4) buscar contacto"
        Escribir "5) listar contactos"
        Escribir "6) ver informacion completa"
        Escribir "7) salir"
        Escribir ""
        Escribir "seleccione una opción:"
        Leer opcion
        Segun opcion Hacer
			//----------------------//
			//--|agregar_contacto|--//
			//----------------------//
            1:
                Si totalContactos < 20 Entonces
                    totalContactos <- totalContactos + 1
                    Escribir "agregar el contacto"
                    Escribir "nombre:"
                    Leer nombres[totalContactos]
                    Escribir "telefono:"
                    Leer telefonos[totalContactos]
                    Escribir "correo:"
                    Leer correos[totalContactos]
                    Escribir "contacto agregado correctamente."
                SiNo
                    Escribir "la agenda esta llena."
                    Escribir "no es posible agregar mas contactos."					
                FinSi
			//---------------------//
			//--|editar_contacto|--//
			//---------------------//
            2:
                Si totalContactos = 0 Entonces
                    Escribir "no hay contactos registrados."
                SiNo
                    Escribir "editar contacto"
                    Para i <- 1 Hasta totalContactos Hacer
                        Escribir i, ". ", nombres[i], " | ", telefonos[i], " | ", correos[i]
                    FinPara
                    Escribir ""
                    Escribir "seleccione el numero del contacto:"
                    Leer i
                    Si i >= 1 Y i <= totalContactos Entonces
                        Escribir "informacion actual"
                        Escribir "nombre: ", nombres[i]
                        Escribir "telefono: ", telefonos[i]
                        Escribir "correo: ", correos[i]
                        Escribir "nuevo nombre:"
                        Leer nombres[i]
                        Escribir "nuevo telefono:"
                        Leer telefonos[i]
                        Escribir "nuevo correo:"
                        Leer correos[i]
                        Escribir "contacto editado correctamente."
                    SiNo
                        Escribir "el contacto seleccionado no existe."
                    FinSi
                FinSi
			//-----------------------//
			//--|eliminar_contacto|--//
			//-----------------------//
            3:
                Si totalContactos = 0 Entonces
                    Escribir "no hay contactos registrados."
                SiNo
                    Escribir "eliminar el contacto"
                    Para i <- 1 Hasta totalContactos Hacer
                        Escribir i, ". ", nombres[i], " | ", telefonos[i], " | ", correos[i]
                    FinPara
                    Escribir "seleccione el numero del contacto:"
                    Leer i
                    Si i >= 1 Y i <= totalContactos Entonces
                        Escribir "contacto seleccionado"
                        Escribir "nombre: ", nombres[i]
                        Escribir "telefono: ", telefonos[i]
                        Escribir "correo: ", correos[i]
                        Escribir "eliminando contacto..."
                        Para j <- i Hasta totalContactos - 1 Hacer
                            nombres[j] <- nombres[j + 1]
                            telefonos[j] <- telefonos[j + 1]
                            correos[j] <- correos[j + 1]
                        FinPara
                        nombres[totalContactos] <- ""
                        telefonos[totalContactos] <- ""
                        correos[totalContactos] <- ""
                        totalContactos <- totalContactos - 1
                        Escribir "contacto eliminado correctamente."
                    SiNo
                        Escribir "el contacto seleccionado no existe."
                    FinSi					
                FinSi
			//---------------------//
			//--|buscar_contacto|--//
			//---------------------//
            4:
                Si totalContactos = 0 Entonces
                    Escribir "no hay contactos registrados."
                SiNo
                    encontrado <- Falso
                    Escribir "buscar el contacto"
                    Escribir "ingrese el nombre del contacto:"
                    Leer nombreBuscar
                    Para i <- 1 Hasta totalContactos Hacer
                        Si nombres[i] = nombreBuscar Entonces
                            encontrado <- Verdadero
                            Escribir "contacto encontrado"
                            Escribir "nombre: ", nombres[i]
                            Escribir "telefono: ", telefonos[i]
                            Escribir "correo: ", correos[i]
                        FinSi
                    FinPara
                    Si encontrado = Falso Entonces
                        Escribir "no se encontro ningun contacto con ese nombre."
                    FinSi
                FinSi
			//----------------------//
			//--|listar_contactos|--//
			//----------------------//
            5:
                Si totalContactos = 0 Entonces
                    Escribir "no hay contactos registrados."
                SiNo
                    Escribir "lista de contactos"
                    Para i <- 1 Hasta totalContactos Hacer
                        Escribir "contacto #", i
                        Escribir "nombre: ", nombres[i]
                        Escribir "telefono: ", telefonos[i]
                        Escribir "correo: ", correos[i]
                    FinPara
                    Escribir "total de contactos: ", totalContactos
                FinSi
			//------------------------------//
			//--|ver_informacion_completa|--//
			//------------------------------//
            6:
                Si totalContactos = 0 Entonces
                    Escribir "no hay contactos registrados."
                SiNo
                    Escribir "informacion del contacto"
                    Para i <- 1 Hasta totalContactos Hacer
                        Escribir i, ". ", nombres[i]
                    FinPara
                    Escribir "seleccione el numero del contacto:"
                    Leer i
                    Si i >= 1 Y i <= totalContactos Entonces
                        Escribir "datos del contacto"
                        Escribir "nombre: ", nombres[i]
                        Escribir "telefono: ", telefonos[i]
                        Escribir "correo: ", correos[i]
                    SiNo
                        Escribir "el contacto seleccionado no existe."
                    FinSi
                FinSi
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//
            7:
                Escribir "hasta pronto."
            De Otro Modo:
                Escribir "opcion invalida."
        FinSegun
        Escribir "presione enter para continuar..."
        Esperar Tecla
        Limpiar Pantalla
    Hasta Que opcion = 0
FinAlgoritmo