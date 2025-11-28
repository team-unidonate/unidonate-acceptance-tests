Feature: US24 - Categorías y secciones
  Como usuario,
  Quiero explorar categorías y secciones
  Para ubicar rápidamente el contenido que me interesa.

  # Escenario 1
  Scenario Outline: Ver categorías
    Dado que el <usuario> abre <vista_categorias>
    Cuando se realiza la <carga_inicial>
    Entonces se muestran <tarjetas_categoria> con <nombre_categoria>, <icono_categoria> y <contador_publicaciones>

    Examples: Datos de entrada
      | usuario     | vista_categorias | carga_inicial   |
      | estudiante1 | "Categorías"     | render de vista |

    Examples: Datos de salida
      | tarjetas_categoria | nombre_categoria          | icono_categoria   | contador_publicaciones |
      | cards visibles     | "Libros, Apuntes"         | iconos visibles   | "12, 8"                |

  # Escenario 2
  Scenario Outline: Navegar a una sección
    Dado que el <usuario> selecciona una <categoria>
    Cuando pulsa la <tarjeta_categoria>
    Entonces se abre la <seccion_filtrada> con <breadcrumb_visible>

    Examples: Datos de entrada
      | usuario     | categoria |
      | estudiante1 | "Libros"  |

    Examples: Datos de salida
      | seccion_filtrada     | breadcrumb_visible      |
      | resultados filtrados | "Categorías > Libros"   |

  # Escenario 3
  Scenario Outline: Categoría sin publicaciones
    Dado que la <categoria> no tiene publicaciones
    Cuando se abre la <seccion_vacia>
    Entonces se visualiza el <estado_vacio_con_sugerencias> para volver o cambiar filtros

    Examples: Datos de entrada
      | categoria      | seccion_vacia |
      | "Electrónica"  | sin ítems     |

    Examples: Datos de salida
      | estado_vacio_con_sugerencias                                             |
      | "Sin publicaciones. Prueba volver o elegir otra categoría."              |
