Feature: US30 - Disponibilidad del sistema
  Como usuario,
  Quiero ver el estado de disponibilidad del sistema
  Para entender interrupciones o mantenimientos.

  # Escenario 1
  Escenario: Modo sin conexión
    Dado que la <conexion_offline>
    Cuando el <usuario> intenta navegar
    Entonces se muestra el <mensaje_sin_conexion> y el <boton_reintentar>

    Ejemplos: Datos de entrada
      | usuario     | conexion_offline |
      | estudiante1 | sin internet     |

    Ejemplos: Datos de salida
      | mensaje_sin_conexion | boton_reintentar |
      | "Estás sin conexión" | "Reintentar"     |

  # Escenario 2
  Escenario: Mantenimiento programado
    Dado que hay una <ventana_mantenimiento> activa
    Cuando el <usuario> accede a la <app>
    Entonces se muestra el <banner_mantenimiento> con <horario_mantenimiento> y <enlace_mas_info>

    Ejemplos: Datos de entrada
      | usuario     | ventana_mantenimiento | app              |
      | estudiante1 | programada            | aplicación móvil |

    Ejemplos: Datos de salida
      | banner_mantenimiento  | horario_mantenimiento       | enlace_mas_info   |
      | "Mantenimiento activo"| "Hoy de 22:00 a 23:30 hrs" | "Más información" |

  # Escenario 3
  Escenario: Reconexión automática
    Dado que vuelve la <conexion_online>
    Cuando el <usuario> pulsa <boton_reintentar>
    Entonces la <app> recarga el <contenido> sin perder el <contexto>

    Ejemplos: Datos de entrada
      | usuario     | conexion_online | boton_reintentar |
      | estudiante1 | conectada       | "Reintentar"     |

    Ejemplos: Datos de salida
      | contenido_recargado   | contexto_mantenido     |
      | "Datos actualizados"  | "Sin pérdida de estado"|
