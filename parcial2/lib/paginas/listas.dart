import 'package:flutter/material.dart';

const List categorias_tienda=[
  "sillas",
  "muebles",
  "camas",
  "cunas",
  "mesas",
];

const List ItenSillas=[
  {
    "nombre":"Silla Guanaca",
    "precio":"24.99",
    "descripcion": "está diseñado en base de las ramas y hojas de laurel, proporcionando la sensación de naturaleza para tu vida. Con el estilo nórdico, se queda perfectamente a cualquier lugar, tanto el interior como el exterior. No solamente brinda una maravilla visualmente, sino también puedes cambiar la forma de asiento a tu gusto.",
    "vistas": "250",
    "imgP":"lib/imagenes/silla01grupo01.png",
    "grupo":[
      {
        "color": 0xFF3FC700,
        "img":"lib/imagenes/silla01grupo01.png",
      },
      {
        "color": 0xFFE18F00,
        "img":"lib/imagenes/silla01grupo02.png",
      },
      {
        "color": 0xFFCB0000,
        "img":"lib/imagenes/silla01grupo03.png",
      },
      {
        "color": 0xFFB9B9B9,
        "img":"lib/imagenes/silla01grupo04.png",
      },
    ],
  },
  {
    "nombre":"7211B SENSILLA BARSTOOL",
    "precio":"15.99",
    "descripcion": "Si te complace nuestra silla Sensilla que ya es muy solicitada, la misma filosofía de diseño se ha extendido a los productos Barstool y Counter Stool. En ambos se mantiene el estilo original y moderno de la silla Sensilla, ideal para uso en hogar o proyecto comercial. Vienen en una variedad de colores asombrosos que traerán diversión y elegancia a su espacio vital.",
    "vistas": "7250",
    "imgP":"lib/imagenes/silla02grupo01.png",
    "grupo":[
      {
        "color": 0xFF202020,
        "img":"lib/imagenes/silla02grupo01.png",
      },
      {
        "color": 0xFFE18F00,
        "img":"lib/imagenes/silla02grupo02.png",
      },
      {
        "color": 0xFFC70039,
        "img":"lib/imagenes/silla02grupo03.png",
      },
    ],
  },
  {
    "nombre":"7055 NIDO",
    "precio":"20.99",
    "descripcion": "El concepto de diseño de Nido son las casas y los nidos; hace que una silla se convierta en un puerto tranquilo. El amplio espacio del asiento le hace sentir tan cómodo como si estuviera en los brazos de su madre en casa. El diseño elegante parece un nido rodeado de ramas de árboles, ya sea de frente o de atrás.",
    "vistas": "2350",
    "imgP":"lib/imagenes/silla03grupo01.png",
    "grupo":[
      {
        "color": 0xFFAD3B16,
        "img":"lib/imagenes/silla03grupo01.png",
      },
      {
        "color": 0xFF48DF17,
        "img":"lib/imagenes/silla03grupo02.png",
      },
      {
        "color": 0xFFE36112,
        "img":"lib/imagenes/silla03grupo03.png",
      },
    ],
  },
  {
    "nombre":"7029-DC IRIS",
    "precio":"23.99",
    "descripcion": "La silla Iris, con su amplio espacio para sentarse y los cómodos reposabrazos es la silla más adecuada para relajarse. Con sus dos medidas para cualquier momento es la mejor opción al momento de decorar su área de hogar o negocio.",
    "vistas": "1136",
    "imgP":"lib/imagenes/silla04grupo01.png",
    "grupo":[
      {
        "color": 0xFF3FC700,
        "img":"lib/imagenes/silla04grupo01.png",
      },
      {
        "color": 0xFFE18F00,
        "img":"lib/imagenes/silla04grupo02.png",
      },
    ],
  },
  {
    "nombre":"7066-OR MONSTERA",
    "precio":"27.99",
    "descripcion": "Los elementos de diseño de la silla Monstera versión mecedora se derivan de su nombre y forma. Los márgenes irregulares de las hojas y los agujeros largos y estrechos de forma ovalada son los puntos de diseño inspirados en la planta. Sentarse en el amplio cojín se siente como estar en la naturaleza: fácil y cómodo. La silla Monstera mecedora es una elegante silla de anfitrión, que brinda a su casa un ambiente puro y fresco tanto en interior como en el exterior.",
    "vistas": "5620",
    "imgP":"lib/imagenes/silla05grupo01.png",
    "grupo":[
      {
        "color": 0xFFB2D3D8,
        "img":"lib/imagenes/silla05grupo01.png",
      },
      {
        "color": 0xFFA3DDA8,
        "img":"lib/imagenes/silla05grupo02.png",
      },
      {
        "color": 0xFFE18F00,
        "img":"lib/imagenes/silla05grupo03.png",
      },
    ],
  },
  
];
const List ItenMueble=[
  {
    "nombre":"Sillón Laurel",
    "precio":"35.60",
    "descripcion": "El sofá Laurel está diseñado en base de las ramas y hojas de laurel, proporcionando la sensación de naturaleza para tu vida. Con el estilo nórdico, se queda perfectamente a cualquier lugar, tanto el interior como el exterior. No solamente brinda una maravilla visualmente, sino también puedes cambiar la forma de asiento a tu gusto.",
    "vistas": "6520",
    "imgP":"lib/imagenes/mueble01.png",
    "grupo":[
      {
        "color": 0xFFFFFFFF,
        "img":"lib/imagenes/mueble01.png",
      },
    ],
  },
  {
    "nombre":"Sofá Triple Laurel",
    "precio":"52.99",
    "descripcion": "El sofá Laurel está diseñado en base de las ramas y hojas de laurel, proporcionando la sensación de naturaleza para tu vida. Con el estilo nórdico, se queda perfectamente a cualquier lugar, tanto el interior como el exterior. No solamente brinda una maravilla visualmente, sino también puedes cambiar la forma de asiento a tu gusto.",
    "vistas": "7250",
    "imgP":"lib/imagenes/mueble02.png",
    "grupo":[
      {
        "color": 0xFFFFFFFF,
        "img":"lib/imagenes/mueble02.png",
      },
    ],
  },
  {
    "nombre":"7023-LC MAGNOLIA",
    "precio":"55.99",
    "descripcion": "¡Llegó el verano, llegaron las vacaciones! Las vacaciones son épocas y recuerdos inolvidables porque estamos acompañados de nuestros seres querido. Un set Magnolia formado por sillón de dos asientos (también conocido como loveseat), más dos sillones individuales, y una mesa de centro, es lo que su espacio necesita para las tardes veraniegas, el cóctel en el jardín y el sol, disfrutando de bellos momentos con familiares y amigos. Nuestra serie de sala Magnolia se vende en piezas por separado, así podrá armar su propia sala a su gusto, ¿qué espera? Magnolia es su mejor opción.",
    "vistas": "2350",
    "imgP":"lib/imagenes/mueble03.png",
    "grupo":[
      {
        "color": 0xFFFFFFFF,
        "img":"lib/imagenes/mueble03.png",
      },
    ],
  },
  {
    "nombre":"7023-OT MAGNOLIA",
    "precio":"23.99",
    "descripcion": "El ottoman, también conocido como descansapies, reposapiés o taburete, es una pieza de mobiliario que usamos no sólo para acompañar a un sillón o sofá al sentarnos y subir los pies, sino que hemos descubierto la versatilidad de usos que tiene. Este ottoman tiene la misma estructura que combina perfectamente con los otros elementos del set Magnolia, incluye el cojín de asiento, tal como se muestra en la imagen. ¿Desea un espacio mejor ambientado y combinado? ¡Pruébalo ya!",
    "vistas": "1136",
    "imgP":"lib/imagenes/mueble04.png",
    "grupo":[
      {
        "color": 0xFFFFFFFF,
        "img":"lib/imagenes/mueble04.png",
      },
    ],
  },
  {
    "nombre":"Ottoman Laurel",
    "precio":"12.99",
    "descripcion": "El sofá Laurel está diseñado en base de las ramas y hojas de laurel, proporcionando la sensación de naturaleza para tu vida. Con el estilo nórdico, se queda perfectamente a cualquier lugar, tanto el interior como el exterior. No solamente brinda una maravilla visualmente, sino también puedes cambiar la forma de asiento a tu gusto.",
    "vistas": "5620",
    "imgP":"lib/imagenes/mueble05.png",
    "grupo":[
      {
        "color": 0xFFFFFFFF,
        "img":"lib/imagenes/mueble05.png",
      },
    ],
  },
];

const List ItenMesas=[
  {
    "nombre":"Mesa para comedor Heron 90",
    "precio":"60.95",
    "descripcion": "El diseño limpio y sencillo integra la mesa con la naturaleza, es tan adecuado para espacio residental y comercial.",
    "vistas": "520",
    "imgP":"lib/imagenes/mesa01.png",
    "grupo":[
      {
        "color": 0xFFFFFFFF,
        "img":"lib/imagenes/mesa01.png",
      },
    ],
  },
  {
    "nombre":"7095 UNO",
    "precio":"12.95",
    "descripcion": "La mesa ideal para acompañarle en los momentos de relajación, todo lo que necesite a su alcance. Su práctico diseño le permite usarla al lado de su sillón, tendrá a la mano lo que necesite: café, bebidas, botanas, los controles de los aparatos electrónicos, trabajar cómodamente en su laptop, etc. Sólo colóquela a su lado, su diseño le permite colocar las patas bajo el sofá y su mesa quedará a su alcance.",
    "vistas": "5420",
    "imgP":"lib/imagenes/mesa02.png",
    "grupo":[
      {
        "color": 0xFFFFFFFF,
        "img":"lib/imagenes/mesa02.png",
      },
    ],
  },
  {
    "nombre":"7097 CHLOE GARDEN",
    "precio":"24.95",
    "descripcion": "Los muebles de jardín empiezan a tener importancia en el diseño moderno. La mesa Chloe Garden llega como respuesta a tener la sensación de frescura en los muebles, simulando una flor, con su cubierta blanca y patas verdes, como en primavera. Ideal para la terraza o jardín, disfrutando al aire libre de sus reuniones y amistades, por su perfecta combinación entre estructura y diseño.",
    "vistas": "7620",
    "imgP":"lib/imagenes/mesa03.png",
    "grupo":[
      {
        "color": 0xFFFFFFFF,
        "img":"lib/imagenes/mesa03.png",
      },
    ],
  },
  {
    "nombre":"7020-DT OSLO",
    "precio":"60.95",
    "descripcion": "Las mesas Oslo, con su diseño tan sencillo como elegante, decora y aporta clase a cualquier espacio residencial. La superficie de la mesa tiene una textura de tejido tipo rattan, con la gran ventaja de que no se deshila o pierde la forma. Ideal para 4 personas, es la base perfecta para combinarla con sillas como Rue y Koppla, que armonizan entre sí para darle una sensación de confort y cercanía a sus familiares. Además, tenemos disponible la cubierta de cristal templado para este modelo, si quiere usarla con un ambiente más sofisticado, ya que incluso para ambientes formales resaltará por su toque único.",
    "vistas": "1520",
    "imgP":"lib/imagenes/mesa04.png",
    "grupo":[
      {
        "color": 0xFFFFFFFF,
        "img":"lib/imagenes/mesa04.png",
      },
    ],
  },
  {
    "nombre":"7099 FOREST",
    "precio":"60.95",
    "descripcion": "Cuando nos juntamos con nuestros seres queridos para disfrutar de esos momentos que a todos nos gusta para compartir anécdotas y pláticas, sentirse libres con la sensación de estar en el bosque eso es lo que percibes con la mesa Forest que lleva el nombre del bosque. Mesa de madera gruesa ideal para compartir deliciosas comidas con familiares y amigos.",
    "vistas": "520",
    "imgP":"lib/imagenes/mesa05.png",
    "grupo":[
      {
        "color": 0xFFFFFFFF,
        "img":"lib/imagenes/mesa05png",
      },
    ],
  },
];
const List ItenCamas=[
  {
    "nombre":"cama de parejas",
    "precio":"80.95",
    "descripcion": "El diseño limpio y sencillo integra la cama",
    "vistas": "4020",
    "imgP":"lib/imagenes/cama01.png",
    "grupo":[
      {
        "color": 0xFFFFFFFF,
        "img":"lib/imagenes/cama01.png",
      },
    ],
  },
  {
    "nombre":"doble gris",
    "precio":"70.95",
    "descripcion": "El diseño limpio y sencillo integra la cama",
    "vistas": "1220",
    "imgP":"lib/imagenes/cama02.png",
    "grupo":[
      {
        "color": 0xFFFFFFFF,
        "img":"lib/imagenes/cama02.png",
      },
    ],
  },
  {
    "nombre":"cama doble blanca",
    "precio":"68.99",
    "descripcion": "El diseño limpio y sencillo integra la cama",
    "vistas": "5620",
    "imgP":"lib/imagenes/cama03.png",
    "grupo":[
      {
        "color": 0xFFFFFFFF,
        "img":"lib/imagenes/cama03.png",
      },
    ],
  },
  {
    "nombre":"cama con gabetas",
    "precio":"97.95",
    "descripcion": "El diseño limpio y sencillo integra la cama",
    "vistas": "6520",
    "imgP":"lib/imagenes/cama04.png",
    "grupo":[
      {
        "color": 0xFFFFFFFF,
        "img":"lib/imagenes/cama04.png",
      },
    ],
  },
  {
    "nombre":"cama de parejas con gavetas",
    "precio":"100.95",
    "descripcion": "El diseño limpio y sencillo integra la cama",
    "vistas": "520",
    "imgP":"lib/imagenes/cama05.png",
    "grupo":[
      {
        "color": 0xFFFFFFFF,
        "img":"lib/imagenes/cama05.png",
      },
    ],
  },
];

const List ItenCuna=[
  {
    "nombre":"cuna de madera",
    "precio":"60.95",
    "descripcion": "El diseño limpio y sencillo integra la cama",
    "vistas": "320",
    "imgP":"lib/imagenes/cuna01.jpg",
    "grupo":[
      {
        "color": 0xFFFFFFFF,
        "img":"lib/imagenes/cuna01.jpg",
      },
    ],
  },
  {
    "nombre":"cuna para niñas",
    "precio":"45.95",
    "descripcion": "El diseño limpio y sencillo integra la cama",
    "vistas": "720",
    "imgP":"lib/imagenes/cuna02.jpg",
    "grupo":[
      {
        "color": 0xFFFFFFFF,
        "img":"lib/imagenes/cuna02.jpg",
      },
    ],
  },
  {
    "nombre":"cuna con petate",
    "precio":"57.95",
    "descripcion": "El diseño limpio y sencillo integra la cama",
    "vistas": "4020",
    "imgP":"lib/imagenes/cuna03.png",
    "grupo":[
      {
        "color": 0xFFFFFFFF,
        "img":"lib/imagenes/cuna03.png",
      },
    ],
  },
  {
    "nombre":"cuna sencilla",
    "precio":"13.95",
    "descripcion": "El diseño limpio y sencillo integra la cama",
    "vistas": "72120",
    "imgP":"lib/imagenes/cuna04.png",
    "grupo":[
      {
        "color": 0xFFFFFFFF,
        "img":"lib/imagenes/cuna04.png",
      },
    ],
  },
  {
    "nombre":"cuna blanca",
    "precio":"43.95",
    "descripcion": "El diseño limpio y sencillo integra la cama",
    "vistas": "1020",
    "imgP":"lib/imagenes/cuna05jpg",
    "grupo":[
      {
        "color": 0xFFFFFFFF,
        "img":"lib/imagenes/cuna05jpg",
      },
    ],
  },
];