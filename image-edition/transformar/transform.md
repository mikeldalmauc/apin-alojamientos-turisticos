# Transformar

Dos ejercicios para dominar `Edición > Transformar` y la *Transformación libre* (`Ctrl+T`): escala, rotación, voltear, sesgar, distorsionar, perspectiva y deformar.

## Antes de empezar: objetos inteligentes

Antes de transformar cualquier capa, conviértela en **objeto inteligente** (`Capa > Objetos inteligentes > Convertir en objeto inteligente`, o botón derecho sobre la capa). Un objeto inteligente guarda dentro los píxeles originales: puedes reducirlo, ampliarlo, deformarlo y cambiar de idea cien veces, y Photoshop siempre parte del original. Una capa de píxeles normal, en cambio, pierde información cada vez que la reduces.

![La misma foto reducida y vuelta a ampliar como objeto inteligente y como capa de píxeles](img/objeto-inteligente.jpg)

*La misma foto reducida al 15 % y vuelta a ampliar a su tamaño. A la izquierda, como objeto inteligente: intacta. A la derecha, como capa de píxeles: los píxeles que se tiraron al reducir no vuelven.*

Al colocar una imagen con `Archivo > Colocar incrustado` ya entra como objeto inteligente. Si quieres pintar o clonar sobre él tendrás que rasterizarlo (`Capa > Rasterizar`) o, mejor, pintar en una capa aparte encima.

## Los tipos de transformación

Todos están en `Edición > Transformar` y en el menú del botón derecho dentro de la Transformación libre.

![Los ocho tipos de transformación aplicados a la misma foto](img/tipos-de-transformacion.jpg)

- **Escala**: cambia el tamaño. Arrastrando una esquina escala en los dos ejes; arrastrando un lado, solo en uno.
- **Rotar**: gira alrededor del punto de referencia. En la barra de opciones puedes escribir el ángulo exacto, y en el menú hay atajos para 180° y para 90° a cada lado.
- **Voltear horizontal / vertical**: crea el reflejo. Útil para que una copia no se note (globos, manzanas) y para reflejos en el agua.
- **Sesgar**: inclina la capa desplazando un lado y dejando el opuesto fijo. Los lados siguen paralelos. Para tumbar sombras y textos.
- **Distorsionar**: cada esquina se mueve por separado, sin ninguna restricción. Es la que usas para encajar una imagen en un plano que está en ángulo (una pantalla, un cuadro, un espejo).
- **Perspectiva**: al mover una esquina, la del mismo lado se mueve en espejo, de modo que ese lado se estrecha o se ensancha. Simula que el objeto se aleja por ahí. Solo sirve si el plano está de frente; si está en ángulo, usa Distorsionar.
- **Deformar**: aparece una malla de 3 × 3 con puntos y tiradores de curva. Sirve para curvar la capa sobre una superficie (una taza, una botella, una bandera) y tiene deformaciones preestablecidas (arco, bandera, ola, abultar...) en la barra de opciones.

## Transformación libre (`Ctrl+T`)

Es la manera rápida de hacer todo lo anterior sin pasar por el menú. Al pulsar `Ctrl+T` aparece una caja con ocho tiradores alrededor de la capa.

![La caja de transformación libre con sus tiradores](img/transformacion-libre.jpg)

*A. Tiradores de esquina: escalan en los dos ejes. B. Tiradores laterales: escalan en un solo eje. C. Punto de referencia: el centro de la rotación y de la escala; puedes arrastrarlo a otro sitio (si no lo ves, actívalo en la barra de opciones). D. Con el cursor fuera de la caja aparece una flecha curva: arrastra para rotar.*

- **Proporción**: en las versiones recientes de Photoshop (desde 2019) la escala es proporcional por defecto y `Shift` la rompe; en las antiguas es al revés. Fíjate en el icono de la cadena de la barra de opciones.
- `Alt` mientras arrastras escala desde el centro.
- `Ctrl` + arrastrar una esquina = **Distorsionar**. `Ctrl+Shift` + arrastrar un lado = **Sesgar**. `Ctrl+Alt+Shift` + arrastrar una esquina = **Perspectiva**. El botón derecho abre el menú con todas.
- `Shift` mientras rotas limita el giro a saltos de 15°.
- En la **barra de opciones** puedes escribir valores exactos: posición (X, Y), anchura y altura en porcentaje, ángulo, y el botón para pasar a Deformar.
- `Intro` confirma y `Esc` cancela. `Ctrl+Shift+T` repite la última transformación, y `Ctrl+Alt+Shift+T` la repite sobre una copia nueva (ideal para hacer series de globos cada vez más pequeños).

## Capadoccia

| `baloon.png` | `landscape1.png` | `landscape2.png` |
|---|---|---|
| ![Globo](capadoccia/baloon.png) | ![Paisaje 1](capadoccia/landscape1.png) | ![Paisaje 2](capadoccia/landscape2.png) |

Coloca el globo en varios tamaños volando por el cielo, **al menos 8 o 9 globos**. Usa balance de color para que no sean todos idénticos.

Elige uno de los dos paisajes (o haz los dos) y convierte el cielo en un festival de globos como los de la Capadocia.

### Pasos

1. Abre el paisaje y coloca `baloon.png` dentro como objeto inteligente (`Archivo > Colocar incrustado`). Si el globo trae fondo en vez de transparencia, recórtalo con *Varita mágica* o *Selección de objeto* y aplica una máscara.
2. Duplica la capa del globo (`Ctrl+J`) tantas veces como globos quieras e ir colocándolos con `Ctrl+T`:
   - **Escala** arrastrando una esquina. Fíjate en el icono de la cadena de la barra de opciones para mantener la proporción (según la versión de Photoshop, `Shift` la mantiene o la rompe).
   - Los globos **lejanos**: más pequeños, más cerca del horizonte y agrupados. Los **cercanos**: grandes, más arriba o incluso cortados por el borde.
   - **Rota** ligeramente algunos (2-5°) y **voltea en horizontal** otros (`Edición > Transformar > Voltear horizontal`) para que no sean copias evidentes.
3. Para que no sean idénticos, a cada globo (o a grupos de globos) añádele una capa de ajuste con **máscara de recorte** (`Alt+clic` entre la capa de ajuste y la del globo):
   - **Balance de color** para cambiar la dominante (unos más cálidos, otros más fríos).
   - **Tono/saturación** moviendo el *Tono* para cambiar los colores de las franjas.
4. Integra con la atmósfera: los globos lejanos tienen menos contraste, menos saturación y tiran al color del cielo (*Curvas* bajando el contraste más *Filtro de fotografía* azulado, o una capa del color del cielo a baja opacidad con máscara de recorte). Un ligero *Desenfoque gaussiano* en los más lejanos ayuda.
5. Organiza las capas en grupos (*lejos*, *medio*, *cerca*) y nómbralas.

## The devil in disguise

| `devil/image1.png` | `devil/image.png` | `devil/finaldevil.png` |
|---|---|---|
| ![Foto del espejo](devil/image1.png) | ![Ilustración del diablo](devil/image.png) | ![Resultado](devil/finaldevil.png) |

Usa transformar y cambia la perspectiva.

El hombre de la foto se mira al espejo y lo que ve es la ilustración del diablo. Tienes que meter el reflejo del cómic dentro del espejo de la foto, con la perspectiva correcta, como en el resultado de ejemplo.

### Pasos

1. Abre la foto (`image1.png`) como documento base.
2. Del cómic (`image.png`) selecciona la zona del espejo con el diablo (con marco o solo el interior). Usa *Marco rectangular*, o *Pluma* si quieres precisión. Cópiala y pégala en la foto como capa nueva y conviértela en objeto inteligente.
3. Encaja la ilustración en el espejo con `Ctrl+T` y botón derecho:
   - **Escala** primero a un tamaño aproximado.
   - **Perspectiva**: al arrastrar una esquina, la opuesta se mueve en espejo. Sirve cuando el espejo se ve de frente pero inclinado.
   - **Distorsionar**: mueve cada esquina por separado. Es la que vas a usar más: lleva cada esquina de la ilustración a cada esquina del interior del espejo. También puedes mantener `Ctrl` mientras arrastras una esquina en Transformación libre.
   - **Deformar**: para pequeños ajustes si el marco no es perfectamente recto.
4. Añade una **máscara de capa** y oculta todo lo que se salga del marco del espejo. El hombre de la foto está delante del espejo: su cabeza y su hombro tienen que quedar por encima del reflejo, así que píntalos también en la máscara (o duplica la capa de la foto, recorta al hombre y colócalo arriba).
5. Iguala la ilustración con la foto: *Curvas* o *Niveles* con máscara de recorte para el contraste, *Balance de color* o *Filtro de fotografía* para que coja la luz cálida de la habitación, y si la foto está algo desenfocada aplica un *Desenfoque gaussiano* suave al cómic. Un degradado de blanco a transparente en modo *Luz suave* a baja opacidad simula el reflejo del cristal.
6. Opcional: un poco de *Sombra interior* en el borde del espejo para dar profundidad al cristal.

## Iratxoak

Recorta los dos cuadrados superiores de la imagen y cámbialos de sitio de esta manera.

![Los enanitos antes de recortar](./iratxoak/image.png)
![Los enanitos con los dos cuadrados intercambiados](./iratxoak/image%20copy.png)

¿Qué ha pasado con el enanito que falta?

## Entrega

- Los `.psd` de los dos ejercicios, con las capas nombradas y los objetos inteligentes conservados.
- Las imágenes finales exportadas en `.jpg` o `.png`.
## Créditos de las imágenes

- Foto de paisaje de las figuras: Vyacheslav Argenberg, [*Ergaki, Mountain lake Skazka, Rock formations, Sayan Mountains, Russia*](https://commons.wikimedia.org/wiki/File:Ergaki,_Mountain_lake_Skazka,_Rock_formations,_Sayan_Mountains,_Russia.jpg), Wikimedia Commons, CC BY 4.0.
- Los esquemas se han generado para estas prácticas con ImageMagick y son de uso libre.
