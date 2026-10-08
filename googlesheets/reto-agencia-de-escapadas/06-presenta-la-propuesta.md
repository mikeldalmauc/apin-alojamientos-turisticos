# Paso 06 · Presenta la propuesta al cliente

**Tiempo:** 2 horas · **Entrega:** nota sobre 10

Tenéis los datos, las cuentas y los gráficos. Lo último es lo que de verdad ve el cliente: una **ficha de propuesta** limpia, un **documento** corto con las cuentas y los gráficos, y dos minutos de **demostración** en clase en los que enseñáis que vuestra hoja funciona.

## 1. La hoja Propuesta

Es la primera hoja que tiene que ver quien abra el libro. Arrástrala para que sea la primera pestaña.

Monta una ficha en `A1:F30`. Nada de esto se escribe a mano: todo sale de las otras hojas con fórmulas, así que si el grupo cambia de opinión en el desplegable de `Presupuesto`, la ficha se actualiza sola.

| Qué | Dónde sale | Fórmula de ejemplo |
|---|---|---|
| Título: *Propuesta de escapada para...* | `Cliente!B1` | `="Propuesta de escapada para " & Cliente!B1` |
| Alojamiento elegido | `Presupuesto!B2` | `=Presupuesto!B2` |
| Tipo y categoría | `Candidatos` | `=BUSCARV(B4; Candidatos!A:M; 2; FALSO)` y columna 3 |
| Municipio y plazas | `Candidatos` | columnas 4 y 5 |
| Teléfono y web | `Candidatos` | columnas 6 y 7 |
| Enlace al mapa | `Candidatos` | `=HIPERVINCULO("https://www.google.com/maps?q=" & BUSCARV(B4; Candidatos!A:M; 8; FALSO) & "," & BUSCARV(B4; Candidatos!A:M; 9; FALSO); "Ver en el mapa")` |
| Noches y personas | `Cliente` | `=Cliente!B3`, `=Cliente!B2` |
| Total por persona y total del grupo | `Presupuesto` | `=Presupuesto!C9`, `=Presupuesto!C15` |
| Lo que sobra del límite | `Presupuesto` | `=Presupuesto!C11` |
| Plan B por persona | `Plan B` | `='Plan B'!C9` |

(En los ejemplos, `B4` es la celda de la ficha donde está el nombre del alojamiento; ajústala a tu ficha. Cuando el nombre de una hoja lleva espacio, va entre comillas simples: `'Plan B'!C9`.)

Añade, escritas por vosotros:

- **Dos razones** para elegir ese alojamiento y no los otros cuatro (precio, zona, tipo, lo que pedía el cliente).
- La nota: *Precios simulados para una actividad de aula. Datos reales de Open Data Euskadi, descargados el (fecha).*

Pega los dos primeros gráficos (selecciona el gráfico en `Gráficos`, `Ctrl+C`, `Ctrl+V` en `Propuesta`).

Para que parezca una ficha y no una hoja de cálculo:

- `Ver > Mostrar > Líneas de cuadrícula` para quitarlas.
- Combina celdas para el título (`Formato > Combinar celdas`), ponle tamaño 20 y un color de fondo.
- Bordes a la tabla de cuentas y formato de moneda a los importes.
- Dos colores como máximo, y el mismo en los gráficos (*Personalizar* ▸ *Serie* ▸ color).

## 2. El documento para el cliente

Un documento de Google de **dos páginas**, en la carpeta del grupo, llamado `Agencia_GrupoXX_Propuesta`. Con estos apartados, y con estilos de título (`Formato > Estilos de párrafo > Título 1`), no con negritas sueltas:

1. **La propuesta.** Cliente, alojamiento elegido, municipio, fechas de ejemplo, enlace al mapa y las dos razones.
2. **Las cuentas.** La tabla del presupuesto por persona y el total del grupo. En Hojas de cálculo copia `Presupuesto!A1:C15`; al pegar en el documento elige **Vincular a hoja de cálculo**: si cambia el presupuesto, en el documento aparece un botón *Actualizar*. Debajo, el gráfico circular: `Insertar > Gráfico > Desde Hojas de cálculo`, eliges vuestro libro y el gráfico. También queda vinculado.
3. **El plan B.** Qué cambia y cuánto se ahorra. Una tabla de tres filas basta.
4. **De dónde salen los datos.** Fuente, fecha de descarga, licencia, cuántos alojamientos había y las dos decisiones de limpieza más importantes del paso 01 (sacadlas de `Registro`). Y la frase de los precios simulados.
5. **Tres fórmulas explicadas.** Tres fórmulas del libro (una por integrante) escritas tal cual y, debajo de cada una, una frase que diga qué hace. Por ejemplo: `=BUSCARV(B2; Candidatos!A:M; 13; FALSO)`: busca el alojamiento elegido y trae lo que cuesta por persona.

Exporta a PDF con `Archivo > Descargar > PDF` y ábrelo para comprobar que los gráficos se ven y que son dos páginas.

> [!NOTE]
> Un gráfico vinculado se actualiza si pulsáis *Actualizar*; el PDF no. Si cambiáis algo después de exportar, volved a exportar.

## 3. La demostración

Dos minutos por grupo, con el libro abierto en la pantalla:

1. Enseñáis la ficha `Propuesta` y decís en una frase qué le proponéis al cliente y por qué (20 segundos).
2. Vais a `Presupuesto` y cambiáis **una** elección en un desplegable: por ejemplo, la actividad. Enseñáis que cambian el total, el semáforo, el gráfico circular y la ficha. Lo volvéis a dejar (60 segundos).
3. Intentáis escribir algo que no vale en una celda validada y enseñáis que la hoja lo rechaza (20 segundos).
4. Otro grupo os hace una pregunta sobre una fórmula y la responde quien le toque, no siempre la misma persona (20 segundos).

## 4. Responde en la hoja Respuestas

| Nº | Pregunta |
|---|---|
| 6.1 | ¿Qué alojamiento le proponéis al cliente y por qué ese? Una frase por razón. |
| 6.2 | ¿Qué fórmula del libro puede explicar cada integrante sin leerla? Nombre y celda. |

## Comprueba antes de entregar

- [ ] `Propuesta` es la primera pestaña, sin líneas de cuadrícula, con todos los datos sacados por fórmula y los dos gráficos.
- [ ] El documento tiene los cinco apartados, la tabla y el gráfico vinculados, y cabe en dos páginas.
- [ ] El PDF coincide con lo que hay en el libro.
- [ ] Las hojas `Datos`, `Limpieza`, `Registro`, `Respuestas`, `Resumen`, `Candidatos`, `Cliente`, `Tarifas`, `Presupuesto`, `Plan B` y `Gráficos` siguen todas en el libro.
- [ ] Versión con nombre: `Paso 06 entregado`.

## Cómo se evalúa

| Criterio | Peso | Excelente (4) | Bien (3) | Suficiente (2) | Insuficiente (1) |
|---|---|---|---|---|---|
| **Resultados correctos** | 20 % | Costes, presupuesto, plan B y respuestas correctos; nada se desvía de lo que dicen los datos y las tarifas. | Un error pequeño que no cambia la decisión. | Varios errores; la decisión es discutible. | Las cuentas no cuadran o están escritas a mano. |
| **Fórmulas y automatización** | 25 % | Todo se calcula con fórmulas, BUSCARV y referencias con `$` bien usadas; al cambiar un dato, cambia todo. | Alguna referencia a mano o una fórmula frágil. | Varias celdas escritas a mano donde cabía una fórmula. | Resultados pegados como valores. |
| **Vistas, validación y protección** | 15 % | Vistas de filtro con nombre, desplegables que rechazan entradas, casillas, validación numérica y fórmulas protegidas. | Falta una de las cuatro cosas. | Solo hay desplegables. | No hay validación. |
| **Gráficos** | 15 % | Tres gráficos del tipo adecuado, con título, ejes, etiquetas y fuente; conectados a los datos. | Falta algún título o fuente. | Un gráfico mal elegido o desconectado. | Gráficos ilegibles o ausentes. |
| **Propuesta y documento** | 15 % | Ficha clara y bonita, documento de dos páginas con tabla y gráfico vinculados, fuente y precios simulados indicados. | Correcto pero poco cuidado. | Incompleto o con errores de maquetación. | No hay documento o no coincide con el libro. |
| **Demostración y explicación** | 10 % | Cada integrante explica una fórmula y la demo muestra que todo se actualiza. | Una persona lleva casi todo el peso. | La demo falla en algo o solo explica uno. | No se hace la demostración. |

La nota es la media ponderada pasada a escala de 0 a 10. Se aprueba con 5. Sin el libro compartido no se puede evaluar.

## Entrega

En la tarea de Moodle: el enlace al libro (versión `Paso 06 entregado`), el enlace al documento y el **PDF** adjunto.
