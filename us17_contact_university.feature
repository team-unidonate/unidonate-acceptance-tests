Feature: US17 - Contacto con centro universitario
  Como usuario,
  Quiero contactar con mi centro universitario mediante la aplicación
  Para tener mayor seguridad en la aplicación.

  # Escenario 1
  Escenario: Acceder al contacto
    Dado que el <usuario> está en la sección de <contacto_de_ayuda>
    Cuando presione el <boton_contacto_universitario>
    Y seleccione su <centro_universitario>
    Entonces el sistema iniciará a <contactarse_con_su_centro_universitario>

    Ejemplos: Datos de entrada
      | usuario     | contacto_de_ayuda | boton_contacto_universitario | centro_universitario |
      | estudiante1 | "Contacto de ayuda" | "Contacto universitario"     | "UPC Monterrico"     |

    Ejemplos: Datos de salida
      | contactarse_con_su_centro_universitario |
      | "Inicio de contacto con el centro universitario" |
