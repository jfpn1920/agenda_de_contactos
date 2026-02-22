agenda = {}
def agregar_contacto():
    nombre = input("ingrese el nombre del contacto: ").strip().title()    
    if nombre in agenda:
        print("el contacto ya existe.")
    else:
        telefono = input("ingrese el numero telefonico: ").strip()
        agenda[nombre] = telefono
        print("contacto agregado correctamente.")
def buscar_contacto():
    nombre = input("ingrese el nombre a buscar: ").strip().title()
    if nombre in agenda:
        print(f"telefono de {nombre}: {agenda[nombre]}")
    else:
        print("contacto no encontrado.")
def mostrar_contactos():
    if not agenda:
        print("la agenda esta vacia.")
    else:
        print("\nlista de contactos:")
        for nombre, telefono in agenda.items():
            print(f"- {nombre}: {telefono}")
def eliminar_contacto():
    nombre = input("ingrese el nombre del contacto a eliminar: ").strip().title()
    if nombre in agenda:
        del agenda[nombre]
        print("contacto eliminado correctamente.")
    else:
        print("el contacto no existe.")
def mostrar_menu():
    print("\n agenda de contactatos ")
    print("1. agregar contacto")
    print("2. buscar contacto")
    print("3. mostrar todos los contactos")
    print("4. eliminar contacto")
    print("5. salir")
while True:
    mostrar_menu()
    opcion = input("seleccione una opcion: ")
    if opcion == "1":
        agregar_contacto()
    elif opcion == "2":
        buscar_contacto()
    elif opcion == "3":
        mostrar_contactos()
    elif opcion == "4":
        eliminar_contacto()
    elif opcion == "5":
        print("saliendo del programa...")
        break
    else:
        print("opción invalida, intente nuevamente.")