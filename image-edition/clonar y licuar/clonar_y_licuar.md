# Clonar y licuar

Dos ejercicios cortos para practicar dos herramientas que se usan muchísimo en retoque: el **Tampón de clonar** y el filtro **Licuar**.

## Cómo funciona el Tampón de clonar

El tampón copia píxeles de un sitio (el **origen**) y los pinta en otro (el **destino**) con la forma, el tamaño y la dureza del pincel que tengas elegido.

![Esquema del tampón de clonar sobre el frutero](img/tampon-de-clonar.jpg)

*A. Origen: se fija con `Alt+clic`. B. Destino: al pintar, dentro del cursor se ve una previsualización de lo que vas a copiar. Mientras arrastras, la cruz del origen se mueve en paralelo al pincel.*

- **Alineado** (barra de opciones): activado, el origen se desplaza con cada trazo manteniendo la distancia al destino, así puedes clonar una zona grande en varias pasadas. Desactivado, cada trazo nuevo vuelve a empezar desde el mismo origen: para repetir el mismo objeto varias veces.
- **Muestra**: *Capa actual*, *Actual y debajo* o *Todas las capas*. Con *Actual y debajo* puedes clonar en una capa vacía y conservar el original intacto.
- **Dureza y opacidad**: un pincel duro copia bordes nítidos (objetos); uno suave funde (pieles, cielos, texturas). Con opacidad baja puedes acumular pasadas.
- Panel **Origen de clonación** (`Ventana > Origen de clonación`): permite escalar, rotar y voltear lo que clonas, guardar hasta cinco orígenes y mostrar la superposición del origen sobre la imagen.
- El origen tiene que tener la **misma luz y el mismo tamaño aparente** que el destino; si no, se nota el parche. Cambia de origen a menudo para no repetir patrones.

## 1. Más manzanas (clonar)

![Manzanas antes y después](manzanas.png)

Partiendo del frutero de la izquierda consigue el de la derecha: una montaña de manzanas. No vale pegar una foto de otras manzanas; tienen que ser las que ya hay en la imagen, clonadas.

### Cómo hacerlo

**Opción A: Tampón de clonar (`S`)**

1. Crea una **capa nueva vacía** encima de la foto y, en la barra de opciones del tampón, pon *Muestra: Actual y debajo*. Así clonas en una capa aparte y puedes borrar lo que salga mal sin tocar el original.
2. Elige un pincel redondo con **dureza entre 50 y 80 %** y un tamaño algo menor que una manzana.
3. Haz `Alt+clic` sobre la manzana que quieres copiar: ahí fijas el **punto de origen**.
4. Pinta donde quieras la copia. Verás una previsualización del origen dentro del cursor. Con *Alineado* activado, el origen se mueve contigo entre trazos; si quieres volver a copiar la misma manzana desde el mismo punto, desactívalo o vuelve a hacer `Alt+clic`.
5. Ve cambiando la manzana de origen, el tamaño del pincel y su ángulo para que no se note la repetición.
6. Las manzanas de arriba **tapan** a las de abajo, así que clona de abajo hacia arriba.

**Opción B: duplicar y transformar** (se puede combinar con la A)

1. Selecciona una manzana con *Selección de objeto* o *Lazo*.
2. `Ctrl+J` para copiarla a una capa nueva. Muévela, `Ctrl+T` para escalarla un poco y rotarla, y voltéala en horizontal para que no sea idéntica.
3. Añade una **máscara de capa** y, con pincel suave negro, borra el borde que se solapa con las manzanas vecinas.
4. Si hace falta, retoca luz y color con *Tono/saturación* o *Curvas* con máscara de recorte: no todas las manzanas son igual de rojas.

Herramientas hermanas que conviene conocer: el **Pincel corrector** (`J`) clona pero mezcla luz y textura con el destino, el **Parche** arrastra una selección entera a otro sitio y el **Relleno según contenido** inventa píxeles para tapar algo.

## Cómo funciona Licuar

`Filtro > Licuar` abre una ventana aparte donde la imagen se comporta como si fuera de goma: los pinceles empujan, encogen, agrandan o retuercen los píxeles. Lo que se mueve no es el color sino una **malla** invisible que hay debajo de la imagen; por eso se puede deshacer por zonas, guardar y volver a aplicar.

![Herramientas de Licuar aplicadas a un rostro](img/licuar-herramientas.jpg)

*Las herramientas principales sobre la misma cara. Deformar hacia delante tira de la frente hacia arriba; Inflar y Desinflar agrandan o encogen lo que hay bajo el pincel; Molinete retuerce. La máscara de congelación (en rojo) protege las zonas que no quieres mover.*

Los cuatro controles del panel de la derecha mandan más que la herramienta:

- **Tamaño**: cubre toda la zona que quieras mover de una vez. Para alargar un cráneo, un pincel más grande que la cabeza; para una comisura, uno pequeño.
- **Presión**: cuánto se mueve en cada pasada. Entre 10 y 30 para trabajar con control.
- **Densidad**: cómo de concentrado está el efecto en el centro del pincel. Baja, el borde del pincel apenas empuja y la deformación queda suave.
- **Velocidad**: para las herramientas que actúan mientras mantienes pulsado sin mover (Inflar, Desinflar, Molinete).

Si conviertes la capa en objeto inteligente antes de entrar, Licuar se aplica como **filtro inteligente**: lo vuelves a abrir con doble clic, con la malla tal y como la dejaste, y la máscara del filtro permite limitar el efecto a una zona.

## 2. Alien (licuar)

![Retrato, alien y resultado](alien.png)

Convierte el retrato de la chica en el alien de la izquierda. El resultado debe parecerse al de la derecha: cabeza alargada, ojos enormes y negros, nariz y boca pequeñas, piel azul verdosa y fondo negro.

### Cómo hacerlo

1. Duplica la capa y conviértela en **objeto inteligente** (`Capa > Objetos inteligentes > Convertir en objeto inteligente`). Así Licuar se aplica como filtro inteligente y lo puedes volver a abrir y modificar.
2. Abre `Filtro > Licuar` (`Ctrl+Shift+X`). Herramientas que vas a usar:
   - **Deformar hacia delante (`W`)**: arrastra píxeles como si fueran plastilina. Es la principal: tira de la frente hacia arriba, estrecha la barbilla, baja las comisuras.
   - **Inflar (`B`)**: agranda lo que hay bajo el pincel. Para los ojos.
   - **Desinflar (`S`)**: encoge. Para la boca y la nariz.
   - **Empujar hacia la izquierda (`O`)**: desplaza píxeles en perpendicular al trazo. Para estrechar el cuello o las mejillas de forma regular.
   - **Congelar máscara (`F`)**: pinta las zonas que no quieres que se muevan (por ejemplo los ojos mientras deformas la frente). **Descongelar (`D`)** las libera.
   - **Reconstruir (`R`)**: deshace la deformación solo donde pintas.
   - Panel **Licuar con reconocimiento facial**: Photoshop detecta la cara y te da deslizadores para ojos (tamaño, altura, inclinación), nariz, boca y forma de la cara. Empieza por aquí y termina a mano.
3. Trabaja con pinceles **grandes y de presión baja** (10-30). Muchas pasadas suaves quedan mejor que una brusca. Pincel grande para deformaciones generales (cráneo) y pequeño para detalles (comisuras).
4. Al salir de Licuar, el color:
   - Capa de ajuste *Tono/saturación* con **Colorear** activado hacia azul verdoso, o *Balance de color* empujando a cian y verde en medios tonos y sombras.
   - Los ojos: selecciónalos y rellénalos de negro, o pinta en una capa en modo *Multiplicar*, dejando un pequeño brillo.
   - Baja la saturación y sube el contraste con *Curvas* para que la piel parezca más dura.
5. Fondo y pelo: selecciona la figura, invierte la selección y rellena de negro en una capa nueva. El pelo que sobre se tapa con el tampón de clonar, con pincel negro o estrechando el contorno de la cabeza desde el propio Licuar.
6. Opcional: pega la textura de la piel del alien sobre la cara con una máscara y modo *Superponer* a baja opacidad.

## Entrega

- Los dos `.psd` con las capas y los filtros inteligentes editables.
- Las dos imágenes finales exportadas en `.jpg` o `.png`.

## Créditos de las imágenes

- Retrato de la figura de Licuar: Dmitry Makeev, [*Russia, Moscow Oblast. Young woman with umbrella, studio portrait*](https://commons.wikimedia.org/wiki/File:Russia,_Moscow_Oblast._Young_woman_with_umbrella,_studio_portrait.jpg), Wikimedia Commons, CC BY-SA 4.0.
- Los esquemas se han generado para estas prácticas con ImageMagick y son de uso libre.
