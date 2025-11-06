Feature: US09 - Inicio de Sesión
  Como usuario,
  Quiero iniciar sesión con mi correo institucional y contraseña
  Para usar mis funciones personalizadas.

  # Escenario 1
  Esquema del escenario: Inicio de sesión exitoso
    Dado que el <usuario> ingresa <correo_upc> y <password_valida>
    Cuando pulsa el <boton_iniciar_sesion>
    Entonces el sistema realiza la <autenticacion_exitosa>, muestra el <mensaje_bienvenida> y redirecciona al <home>

    Ejemplos:
      | usuario     | correo_upc             | password_valida | boton_iniciar_sesion | autenticacion_exitosa | mensaje_bienvenida | home       |
      | estudiante1 | correo@upc.edu.pe      | correcta        | "Iniciar sesión"     | login correcto        | "Bienvenido/a"     | Pantalla Home |

  # Escenario 2
  Esquema del escenario: Credenciales inválidas (mensaje genérico)
    Dado que el <usuario> ingresa <credenciales_incorrectas>
    Cuando pulsa el <boton_iniciar_sesion>
    Entonces el sistema muestra <mensaje_credenciales_invalidas> sin indicar si el correo existe

    Ejemplos:
      | usuario     | credenciales_incorrectas | boton_iniciar_sesion | mensaje_credenciales_invalidas |
      | estudiante1 | correo o contraseña errónea | "Iniciar sesión"     | "Credenciales inválidas" |

  # Escenario 3
  Esquema del escenario: Recuérdame (opcional)
    Dado que el <usuario> marca <mantener_sesion_iniciada>
    Cuando se autentica correctamente
    Entonces el sistema extiende la <validez_refresh_token> y mantiene la <sesion_persistente> tras reiniciar la app

    Ejemplos:
      | usuario     | mantener_sesion_iniciada | validez_refresh_token | sesion_persistente |
      | estudiante1 | activada                 | mayor vigencia         | mantiene sesión tras reinicio |

  # Escenario 4
  Esquema del escenario: Protecciones ante intentos fallidos
    Dado que el <usuario> acumula <intentos_fallidos_5>
    Cuando intenta nuevamente
    Entonces el sistema aplica <bloqueo_temporal> y presenta <recaptcha_o_espera_15min>

    Ejemplos:
      | usuario     | intentos_fallidos_5 | bloqueo_temporal            | recaptcha_o_espera_15min |
      | estudiante1 | 5 intentos fallidos | acceso bloqueado temporalmente | desafío reCAPTCHA o espera 15 min |
