# Reto «Agencia de escapadas» · Guía para el profesor

Este reto sustituye a los siete bloques HTML del *Reto 2* (escapada para cuatro personas) manteniendo el mismo conjunto de datos, los alojamientos turísticos de Euskadi de Open Data Euskadi, y el mismo tipo de trabajo: limpiar, filtrar, calcular, presupuestar, graficar y presentar. Cambian tres cosas:

- **La herramienta es Hojas de cálculo de Google**, no Excel. Eso permite un único libro compartido por grupo, vistas de filtro por persona, historial de versiones en lugar de un archivo por paso, y gráficos vinculados en el documento final.
- **Cada grupo tiene un cliente distinto** (seis fichas), así que no hay dos libros iguales y los filtros, las fórmulas y los gráficos tienen un motivo.
- **Cada paso es una tarea de Moodle corta y autosuficiente**: qué hay que hacer, qué se aprende, un esquema cuando hace falta, una lista de comprobación y un apartado para subir nota.

## Archivos

| Archivo | Tarea de Moodle | Horas | Evaluación |
|---|---|---|---|
| [00-el-reto.md](00-el-reto.md) | Presentación, clientes, reglas, crear y compartir el libro | 1 | Entregado / no entregado |
| [01-prepara-los-datos.md](01-prepara-los-datos.md) | Importar, hojas Datos y Limpieza, quitar columnas, contar | 3 | Apto / No apto |
| [02-explora-y-elige.md](02-explora-y-elige.md) | Filtros, vistas de filtro, formato condicional, tabla dinámica, cinco candidatos | 3 | Apto / No apto |
| [03-calcula-los-costes.md](03-calcula-los-costes.md) | Hojas Cliente y Tarifas, BUSCARV, referencias absolutas, MIN, MAX, PROMEDIO, SI | 3 | Apto / No apto |
| [04-presupuesto-con-validacion.md](04-presupuesto-con-validacion.md) | Presupuesto con desplegables, casillas, semáforo, plan B, protección | 3 | Apto / No apto |
| [05-graficos.md](05-graficos.md) | Tres gráficos conectados a los datos | 2 | Apto / No apto |
| [06-presenta-la-propuesta.md](06-presenta-la-propuesta.md) | Ficha Propuesta, documento con gráficos vinculados, PDF, demo, rúbrica | 2 | Nota sobre 10 |

Las imágenes están en `img/`. La copia de los datos descargada el 30 de septiembre de 2026 está en la carpeta de arriba (`../alojamientos turisticos.xlsx`), por si el portal falla.

### Subirlo a Moodle

Cada paso existe en dos formatos:

- El `.md`, para editar. Si cambias algo, vuelve a generar el `.html` con el conversor que hay en la carpeta de arriba, desde Git Bash:

  ```
  perl ../md2html.pl 03-calcula-los-costes.md 03-calcula-los-costes.html es "CIFP Zornotza LHII · Aplicaciones Ofimáticas · Reto «Agencia de escapadas»"
  ```
- El `.html` del mismo nombre, para Moodle: lleva los estilos en línea y las imágenes incrustadas, así que no hay que subir nada más. Al crear la tarea, en la descripción abre el **código fuente** del editor (el botón `<>`), pega el contenido del archivo y guarda. También puedes subirlo tal cual como recurso de tipo *Archivo* o *Página*. Los avisos (consejo, nota, cuidado) salen como cajas de color.

Si prefieres pegar el Markdown, elige el formato **Markdown** bajo el editor y sube las imágenes de `img/` a mano; los avisos `> [!TIP]` se verán como citas.

## Hojas que debe tener el libro al final de cada paso

| Paso | Hojas nuevas |
|---|---|
| 00 | `Hoja 1` con grupo, integrantes y cliente |
| 01 | `Datos` (original intacto), `Limpieza` (17 columnas), `Registro`, `Respuestas`, `Pruebas` (opcional) |
| 02 | Vistas de filtro en `Limpieza` (al menos tres, una `Cliente X · candidatos`), `Resumen` (tabla dinámica), `Candidatos` (A:I, cinco filas) |
| 03 | `Cliente`, `Tarifas` (A1:B9 y D1:E9), columnas J:O en `Candidatos`, resumen A9:B12 |
| 04 | `Tarifas` G1:H18, `Presupuesto`, `Plan B`, protecciones |
| 05 | `Gráficos` con tres gráficos y la tabla A20:B28 |
| 06 | `Propuesta` como primera pestaña, documento de Google y PDF |

Orden de columnas en `Limpieza` si siguen la imagen del paso 01: A Nombre, B Tipo de Alojamiento, C Categoría, D Capacidad, E Municipio, F Provincia, G Marcas, H Teléfono, I Email, J WEB, K Restaurante, L Sala de Reuniones, M Surfing, N Diversidad functional física, O LATWGS84, P LONWGS84, Q Signatura. Las fórmulas de los pasos 02 y 05 dan por supuesto este orden y lo avisan.

## Los seis clientes y lo que deben encontrar

Comprobado con el archivo del 30 de septiembre de 2026 (1.469 alojamientos).

| Cliente | Personas · noches · límite | Filtro mínimo | Candidatos que cumplen |
|---|---|---|---|
| A · Familia Etxeberria | 4 · 3 · 200 € | Provincia = Gipuzkoa, Tipo = Agroturismos o Casas Rurales, Capacidad ≥ 4 | 205 |
| B · Cuadrilla surfera | 6 · 2 · 120 € | Surfing = 1, Capacidad ≥ 6 (cualquier tipo) | 36 |
| C · Despedida de Ane | 10 · 2 · 170 € | Provincia = Araba/Álava, Tipo = Casas Rurales, Agroturismos o Apartamentos, Capacidad ≥ 10 | 93 |
| D · Empresa Zubiri | 15 · 1 · 180 € | Municipio = Bilbao, Tipo = Hoteles, Sala de Reuniones = 1, Restaurante = 1, Capacidad ≥ 15 | 20 |
| E · Viaje de estudios | 26 · 2 · 100 € | Provincia = Bizkaia, Tipo = Campings o Albergues, Capacidad ≥ 26 | 34 |
| F · Aitona y amona | 2 · 2 · 320 € | Marcas contiene «Rioja Alavesa», Restaurante = 1 | 16 |

Los límites están ajustados para que la opción más obvia no entre siempre: a la familia le cuadra el agroturismo con picnic pero no con restaurante; a la cuadrilla no le sale el hotel; a la empresa le entra un hotel de tres o cuatro estrellas pero no uno de cinco; a los abuelos les cabe el de cuatro estrellas y se les escapa el de cinco (Marqués de Riscal, 150 € por noche con el suplemento). Si un grupo quiere un cliente propio, vale, siempre que lo apruebes antes y queden al menos cinco candidatos.

## Soluciones del paso 01

| Pregunta | Respuesta con el archivo del 30/09/2026 |
|---|---|
| 1.1 | 1.469 alojamientos (1.470 filas con la cabecera) y 52 columnas |
| 1.2 | 8 columnas vacías: Accesible, Descripción del Icono de Accesibilidad, Importancia, Nombre lugar, Dirección (la segunda), Teléfono (la segunda), Correo electrónico, Página web. Casi vacías: Actividades Gastronómicas (1 dato), Autocaravana (3), Visita Guiada (4), Calidad y su descripción (12) |
| 1.3 | *Dirección* y *Teléfono* aparecen dos veces (la segunda vez, vacías) |
| 1.4 | Sin teléfono 233 (15,9 %), sin email 80 (5,4 %), sin web 418 (28,5 %) |
| 1.5 | S (551), 1 (316), 2 (305), 3 (187), 4 (82), 5 (11), T (9), P (8). Mezcla números y letras: no se puede hacer la media, y aunque se hiciera con los números no significaría nada (una pensión de 2 no es «la mitad» que un hotel de 4) |
| 1.6 | 2 con capacidad 0: el apartamento MUNDAKA y el área de autocaravanas de Igeldo. Lo razonable es dejarlos y anotarlo, o quitarlos y anotarlo; lo que no vale es no decir nada |

Otros datos útiles para corregir: 216 municipios distintos; 58 nombres que se repiten (MADDIOLA, LIDAR, LEGAZPIDOCE, ITXASPE y EL PUERTO aparecen tres veces) y 21 signaturas repetidas; capacidad máxima 1.400 (un camping), media 43. Por tipo: Hoteles 336, Pensiones 330, Casas Rurales 298, Apartamentos 216, Agroturismos 159, Albergues 84, Campings 26, Hotel-Apartamento 20. Por provincia: Gipuzkoa 667, Bizkaia 566, Araba/Álava 236. Los 69 «Hoteles» con categoría S o los campings con P, S y T son buenos ejemplos para hablar de datos que no encajan.

## Tarifas simuladas

Base por persona y noche: Campings 14, Albergues 22, Pensiones 30, Apartamentos 34, Agroturismos 38, Casas Rurales 42, Hotel-Apartamento 55, Hoteles 60. Suplemento por categoría: 1 → 0, 2 → 6, 3 → 15, 4 → 35, 5 → 90, S → 0, P → 8, T → 0. Transporte: Bicicleta 0, Coche compartido 12, Tren o autobús 18, Autobús alquilado 25. Comidas por día: Picnic 8, Menú del día 15, Restaurante 30. Actividades: Ninguna 0, Museo 10, Visita guiada 12, Bodega con cata 20, Parque de aventura 28, Clase de surf 35. Seguro 5 €. Descuento por reserva anticipada, 10 % del alojamiento.

Ejemplo para el cliente A con un agroturismo (38 € × 3 noches = 114 €), coche compartido (12), menú del día cuatro días (60) y visita guiada (12): 198 € por persona, quedan 2 €. Con picnic dos de los días sale a 184 €.

## Qué mirar al corregir cada paso

- **01**: que `Datos` esté intacta (52 columnas) y que las respuestas tengan fórmula, no números tecleados. Que no hayan usado *Eliminar duplicados* por nombre.
- **02**: abrir `Datos > Vistas de filtro` y ver que existen con nombre; que `Limpieza` no quede filtrada; que los cinco candidatos cumplan la ficha y sean de dos tipos.
- **03**: hacer clic en `Candidatos!M3` y ver una fórmula con `Cliente!$B$3`; cambiar las noches en `Cliente` y ver que todo se mueve; ningún `#N/D`.
- **04**: escribir un nombre inventado en `Presupuesto!B2` y que lo rechace; marcar el descuento y ver el total bajar; que `Plan B` tenga su propio límite (`=Cliente!B4*0,85`).
- **05**: cambiar la actividad y ver moverse el circular; que el tercer gráfico coincida con la tabla dinámica.
- **06**: que la ficha esté hecha con fórmulas (`Propuesta!B4` debe ser `=Presupuesto!B2`, no un texto), que el documento tenga el gráfico vinculado y que en la demo hable más de uno.

## Créditos

Fotos de Wikimedia Commons, citadas en el paso 00 con autor y licencia (CC BY-SA 3.0 y 4.0). La imagen de BUSCARV del paso 03 es de la [ayuda de Google Sheets](https://support.google.com/docs/answer/3093318?hl=es), © Google, usada con fines educativos. Los esquemas (`flujo-del-reto`, `anatomia-de-la-hoja`, `ordenar-vs-filtrar`, `vista-de-filtro`, `referencias`, `buscarv`, `validacion-de-datos`, `semaforo-del-presupuesto`, `tipos-de-grafico`, `columnas-que-se-quedan`) se han generado con ImageMagick para este reto y son de uso libre.
