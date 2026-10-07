# Ajustes de imagen

![Práctica de ajustes](ajusteak.png)

La imagen de arriba contiene **todos los ejercicios de esta práctica**. Ábrela en Photoshop y trabaja directamente sobre ella: en cada ejercicio la imagen de la izquierda (**A**) tiene que acabar pareciéndose lo máximo posible a la de la derecha (**B**).

| Ejercicio | Herramienta | Qué hay que conseguir |
|---|---|---|
| 1 | Tono/Saturación (`Ctrl+U`) | Que cada círculo **A** tenga el mismo color que su círculo **B** |
| 2 | Niveles (`Ctrl+L`) o Curvas (`Ctrl+M`) | Que la foto y la ilustración de la izquierda tengan el mismo contraste y luminosidad que las de la derecha |
| 3 | Balance de color (`Ctrl+B`) | Que las frutas de la izquierda tengan los mismos tonos que las de la derecha |
| 4 | Todas las anteriores | Que la ilustración de la playa de la izquierda tenga los colores de la de la derecha |

## Antes de empezar

- Trabaja siempre con **capas de ajuste** (`Capa > Nueva capa de ajuste` o el icono del círculo mitad blanco mitad negro del panel Capas), no con `Imagen > Ajustes`. El ajuste no destruye la imagen y puedes volver a tocarlo cuando quieras.
- Selecciona primero la zona que quieres cambiar (*Marco rectangular*, *Varita mágica*, *Selección de objeto*). Si creas la capa de ajuste con una selección activa, Photoshop convierte esa selección en la **máscara** de la capa y el ajuste solo afecta a esa zona.
- Otra opción: copia cada imagen de la izquierda a su propia capa (`Ctrl+J`) y aplica el ajuste con **máscara de recorte** (`Alt+clic` entre la capa de ajuste y la capa de la imagen).
- Nombra las capas: `1-circulo-rojo`, `2-curvas-playa`, etc.

![Panel Ajustes de Photoshop con los iconos de Niveles y Tono/saturación señalados](img/panel-ajustes.jpg)

*Panel **Ajustes** (`Ventana > Ajustes`): cada icono crea una capa de ajuste nueva. Señalados, los de Niveles y Tono/saturación.*

![Capa de ajuste de Niveles en el panel Capas, con su máscara en blanco](img/capa-de-ajuste.jpg)

*Así se ve una capa de ajuste en el panel Capas: a la izquierda el icono del ajuste y a la derecha su máscara. Con la máscara en blanco el ajuste afecta a toda la imagen; donde la pintes de negro, deja de afectar.*

## Tono / Saturación

`Capa > Nueva capa de ajuste > Tono/saturación`

Tiene tres deslizadores:

- **Tono**: gira el color sobre la rueda cromática. Es el que cambia *qué color es* (rojo, naranja, amarillo, verde...). Va de -180 a +180.
- **Saturación**: la pureza del color. Hacia la izquierda se apaga hasta el gris, hacia la derecha se vuelve más intenso.
- **Luminosidad**: hacia la izquierda se oscurece hacia negro, hacia la derecha se aclara hacia blanco.

![Cilindro HSL: el tono gira alrededor, la saturación va del centro al borde y la luminosidad de abajo a arriba](img/tono-saturacion-luminosidad.png)

*Los tres deslizadores son los tres ejes del modelo HSL: **Hue** es el Tono (gira alrededor del cilindro), **Saturation** la Saturación (del gris del centro al color puro del borde) y **Lightness** la Luminosidad (del negro de abajo al blanco de arriba).*

![Rueda de color RGB con los grados de cada tono](img/rueda-de-color.png)

*El deslizador Tono recorre esta rueda en grados. Partiendo del rojo, +60 lleva al amarillo, +120 al verde y ±180 al cian, que es su opuesto.*

Consejos para el ejercicio 1:

1. Primero mueve el **Tono** hasta dar con la familia de color del círculo B.
2. Después ajusta la **Saturación** y por último la **Luminosidad**.
3. Si no llegas (por ejemplo para pasar de un verde pálido a un rojo intenso), activa la casilla **Colorear**: el ajuste parte de un color plano y es mucho más fácil llegar a cualquier destino.
4. En el desplegable **Maestro** puedes elegir afectar solo a los Rojos, Amarillos, Verdes, Cianes, Azules o Magentas. Sirve para cambiar un solo color de una foto sin tocar el resto.

![Barras de color de la parte inferior del panel Tono/saturación con los reguladores de gama](img/tono-rangos-de-color.png)

*Al elegir un color en el desplegable aparecen estos reguladores entre las dos barras de color de la parte inferior del panel. A. Ajusta la atenuación (la transición suave hacia los colores vecinos) sin cambiar la gama. B. Ajusta la gama sin cambiar la atenuación. C. Ajusta la gama del componente de color. D. Arrastra el regulador entero.*

![Tres versiones de la misma foto: original, virada a sepia y con los magentas cambiados de tono](img/tono-saturacion-ejemplo.png)

*A. Original. B. Toda la imagen virada a sepia con **Colorear**. C. Solo los magentas, seleccionados en el desplegable y cambiados con el deslizador Tono.*

## Niveles

`Capa > Nueva capa de ajuste > Niveles`

Muestra el **histograma**: cuántos píxeles hay en cada nivel de luminosidad, de 0 (negro) a 255 (blanco). Una imagen "lavada" como la foto en blanco y negro del ejercicio 2 tiene el histograma concentrado en el centro: no hay negros ni blancos puros.

![Tres fotos con sus histogramas: sobreexpuesta, correcta y subexpuesta](img/histograma-ejemplos.png)

*Cómo leer un histograma. A. Foto sobreexpuesta: todo amontonado a la derecha. B. Foto bien expuesta, con toda la gama tonal. C. Foto subexpuesta: todo a la izquierda.*

![Panel Propiedades de Niveles con el histograma, los tres triángulos de entrada y los niveles de salida](img/niveles-panel.jpg)

*El panel de Niveles: debajo del histograma, los tres triángulos de niveles de entrada (negro, gris y blanco) y, más abajo, la barra de niveles de salida.*

Debajo del histograma hay tres triángulos de **niveles de entrada**:

- **Negro (izquierda)**: todo lo que quede a su izquierda pasa a negro puro. Arrástralo hasta donde empieza el histograma para recuperar las sombras.
- **Blanco (derecha)**: todo lo que quede a su derecha pasa a blanco puro. Arrástralo hasta donde termina el histograma para recuperar las luces.
- **Gris (centro)**: aclara u oscurece los medios tonos sin tocar los negros ni los blancos.

![Histograma que no llega a los extremos, con flechas en los reguladores de sombra e iluminación](img/niveles-histograma.png)

*Este histograma no llega a los extremos: la imagen no usa toda la gama tonal. Arrastra el regulador de sombras (**A**) hasta donde empieza y el de iluminaciones (**B**) hasta donde termina.*

Los **niveles de salida** hacen lo contrario: limitan el rango y reducen contraste (sirven para "lavar" una imagen a propósito).

En el desplegable puedes trabajar cada canal (Rojo, Verde, Azul) por separado para corregir dominantes de color.

## Curvas

`Capa > Nueva capa de ajuste > Curvas`

Es la herramienta más potente de todas: hace lo mismo que Niveles pero con control total. La línea diagonal relaciona el valor de entrada (eje horizontal) con el de salida (eje vertical). Si no la tocas, cada valor sale igual que entra.

![Panel Propiedades de Curvas con sus controles marcados con letras](img/curvas-panel.png)

*El panel de Curvas. A. Herramienta de ajuste en imagen. B, C y D. Cuentagotas para fijar el punto negro, gris y blanco. E. Editar la curva con puntos. F. Dibujar la curva a mano. G. Ajustes preestablecidos. H, I y J. Punto negro, punto gris y punto blanco. K. Mostrar recorte.*

- Haz clic sobre la línea para añadir un **punto** y arrástralo: hacia arriba aclara, hacia abajo oscurece.
- Los extremos de la línea son el punto negro y el punto blanco, igual que en Niveles.
- Una **curva en S** (bajar un punto en las sombras y subir otro en las luces) aumenta el contraste. Una S invertida lo reduce.
- Puedes editar cada canal **RGB** por separado: subir la curva del Azul añade azul y quita amarillo, bajar la del Rojo añade cian, etc.
- La herramienta de **ajuste sobre la imagen** (icono de la mano con el dedo) permite hacer clic en una zona de la foto y arrastrar para aclararla u oscurecerla; Photoshop coloca el punto en la curva por ti.
- Los **cuentagotas** de negro, gris y blanco fijan de un clic qué píxel debe ser negro puro, gris neutro o blanco puro. Muy útiles para quitar dominantes.

![Con la herramienta de ajuste en imagen se hace clic sobre la foto y se arrastra; Photoshop añade el punto a la curva](img/curvas-ajuste-en-imagen.png)

*Herramienta de ajuste en imagen: al hacer clic sobre una zona de la foto se añade un punto en la curva, y al arrastrar se aclara u oscurece esa zona.*

![Curva con mayor pendiente en la zona central](img/curvas-pendiente.png)

*Cuanta más pendiente tenga la curva en los medios tonos, más contraste. Eso es justo lo que hace una curva en S.*

En la ilustración del ejercicio 2 la versión de la derecha tiene más contraste y sombras más profundas: una curva en S suave suele bastar.

## Balance de color

`Capa > Nueva capa de ajuste > Equilibrio de color`

Tres deslizadores enfrentan cada color con su complementario:

- **Cian ↔ Rojo**
- **Magenta ↔ Verde**
- **Amarillo ↔ Azul**

Y se aplican por separado a **Sombras**, **Medios tonos** e **Iluminaciones**. Lo normal es empezar por los medios tonos, que son los que más se notan, y retocar sombras e iluminaciones solo si hace falta.

Deja marcada **Preservar luminosidad** para que al cambiar el color no se aclare ni oscurezca la imagen.

![Panel Propiedades de Equilibrio de color con los tres deslizadores](img/balance-de-color-panel.jpg)

*El panel de Equilibrio de color: el desplegable de tono (sombras, medios tonos o iluminaciones), los tres deslizadores y la casilla Preservar luminosidad. Cada pareja son colores opuestos en la rueda de color de más arriba.*

En el ejercicio 3 las frutas de la derecha son más cálidas: desplaza los medios tonos hacia el rojo y el amarillo y comprueba si las sombras piden algo de magenta.

![Antes y después de desplazar el deslizador Cian–Rojo hacia el rojo en los medios tonos](img/balance-de-color-antes-despues.jpg)

*Antes y después: la foto de la izquierda tiene una dominante cian. Moviendo el deslizador Cian–Rojo a +70 en los medios tonos se neutraliza.*

## Otros ajustes

No hacen falta para esta práctica, pero conviene conocerlos. Están en el mismo menú de capas de ajuste.

| Ajuste | Para qué sirve |
|---|---|
| **Brillo/Contraste** | Versión rápida y poco precisa de Niveles. Para retoques pequeños. |
| **Exposición** | Simula abrir o cerrar el diafragma de la cámara. Pensado para imágenes HDR, pero funciona en cualquiera. |
| **Intensidad** | Como la saturación pero inteligente: satura más los colores apagados y protege los tonos de piel. |
| **Blanco y negro** | Convierte a escala de grises dejándote decidir cómo de claro u oscuro sale cada color original. |
| **Filtro de fotografía** | Añade una dominante cálida o fría, como poner un filtro de color delante del objetivo. |
| **Corrección selectiva** | Modifica la cantidad de cian, magenta, amarillo y negro dentro de un color concreto (solo los rojos, solo los blancos...). |
| **Mapa de degradado** | Sustituye las luminosidades por un degradado de colores. Para virados y efectos duotono. |
| **Invertir** | Crea el negativo de la imagen. |
| **Umbral** | Cada píxel pasa a blanco o negro según un valor de corte. |
| **Posterizar** | Reduce el número de niveles tonales. Efecto cartel. |

## Entrega

- El archivo `.psd` con todas las capas de ajuste y sus máscaras, con las capas nombradas.
- Una exportación en `.png` o `.jpg` del resultado final.

## Créditos de las imágenes

- Panel de Curvas, herramienta de ajuste en imagen, pendiente de la curva, histogramas y reguladores de Niveles: [Ayuda de Adobe Photoshop](https://helpx.adobe.com/es/photoshop/using/curves-adjustment.html) ([Niveles](https://helpx.adobe.com/es/photoshop/using/levels-adjustment.html), [Histogramas](https://helpx.adobe.com/es/photoshop/using/viewing-histograms-pixel-values.html)). Reguladores de gama y ejemplo de Tono/saturación: [Ayuda de Photoshop Elements](https://helpx.adobe.com/es/photoshop-elements/using/adjusting-color-saturation-hue-vibrance.html). © Adobe.
- Panel de Equilibrio de color, antes y después, y capa de ajuste en el panel Capas: [Pacific Lutheran University, *Photoshop: Color Balance Adjustment*](https://kb.plu.edu/91927).
- Panel Ajustes y panel de Niveles anotado: John Watts, [Apogee Photo Magazine](https://www.apogeephoto.com/photoshop-cs6-cc-the-adjustments-panel-and-properties-panel/).
- Cilindro HSL: SharkD, [Wikimedia Commons, CC BY-SA 3.0](https://commons.wikimedia.org/wiki/File:HSL_color_solid_cylinder_saturation_gray.png). Rueda de color RGB: Jim McKeeth, [Wikimedia Commons, CC BY-SA 4.0](https://commons.wikimedia.org/wiki/File:RGB_color_wheel_with_hue_and_hex.svg).
