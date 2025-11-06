Feature: US25 - Visualización de publicaciones
  Como usuario,
  Quiero ver el listado de publicaciones con filtros y detalles básicos
  Para encontrar rápidamente lo que busco.

  # Escenario 1
  Scenario Outline: Ver listado
    Dado que el <usuario> accede a <vista_publicaciones>
    Cuando se ejecuta la <carga_inicial>
    Entonces se muestran <tarjetas_publicacion> con <titulo>, <autor>, <fecha>, <estado> y <boton_ver_detalle>

    Examples: Datos de entrada
      | usuario     | vista_publicaciones | carga_inicial |
      | estudiante1 | "Publicaciones"     | render de vista |

    Examples: Datos de salida
      | tarjetas_publicacion | titulo                         | autor         | fecha       | estado      | boton_ver_detalle        |
      | cards visibles       | "Libro Cálculo I (Larson)"     | "Ana Torres"  | 2025-10-20  | "Disponible"| "Ver detalle"            |

  # Escenario 2
  Scenario Outline: Filtrar/ordenar
    Dado que el <usuario> desea refinar
    Cuando aplica <filtro_categoria>, <filtro_estado> o cambia el <orden_lista>
    Entonces la <lista_actualizada> se muestra y los <chips_filtro_activos> permanecen visibles

    Examples: Datos de entrada
      | usuario     | filtro_categoria | filtro_estado | orden_lista  |
      | estudiante1 | "Libros"         | "Disponible"  | "Más recientes" |

    Examples: Datos de salida
      | lista_actualizada     | chips_filtro_activos     |
      | resultados refinados  | "Libros, Disponible"     |

  # Escenario 3
  Scenario Outline: Sin resultados
    Dado que los <filtros_aplicados> no tienen coincidencias
    Cuando se muestra la <lista_vacia>
    Entonces se visualiza el <estado_vacio_con_sugerencias> para ajustar criterios

    Examples: Datos de entrada
      | filtros_aplicados                       | lista_vacia   |
      | "Electrónica • Estado: Entregado"       | sin ítems     |

    Examples: Datos de salida
      | estado_vacio_con_sugerencias                                                     |
      | "Sin resultados. Prueba limpiar filtros o cambiar categoría/estado/orden."       |
