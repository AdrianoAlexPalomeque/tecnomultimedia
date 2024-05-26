//TP 2
//Adriano Alex Palomeque (93077/3)


//        ====CLICKEAR EN LA PALANCA DEL RELOJ=====
int tam;
int anchoDisplay = 640;
int altoDisplay = 480;
String estados;
boolean contador = false;
boolean botoninicio;
boolean botonreinicio;
boolean limiterect =true;
float opacidadt1;
float opacidadt2;
float opacidadrect1;
int areabiX = 256;
int areabiY = 359;
int tiempo;
int tiemporect;
float plogoY = 0;
float zlogoY = 0;
PImage humo;
PImage reloj;
PImage relojr1;
PImage relojr2;
PImage arcane;
PImage fondo1;
PImage fondo2;
PImage pfondo;
PImage zfondo;
PImage fondop4;
PImage sombraR;
PImage sombraL;
PImage luzreinicio;
PFont fuente1;
String texto1;
String texto2;
float texton1 = altoDisplay+10;
float rr1X = 0;
float rr2X = 0;
float rr1Y = -480;
float rr2Y = -480;
//   ===LOGOS===
PImage plogo;
PImage zlogo;


//   ===PERSONAJES===
PImage jinx;
PImage silco;
PImage vi;
PImage ekko;
PImage caitlin;
//Caitlin
String textop1;
String textotp1;
float textopcX = anchoDisplay/2-40;
//Vi
String textotz1;
String textoz1;
float textozvX = 40;
//Ekko
String textotz2;
String textoz2;
float textozeX = 40;
//Silco
String textotz3;
String textoz3;
float textozsX = 40;
//Jinx
String textotz4;
String textoz4;
float textozjX = 40;
void setup() {
  size(640, 480);
  background(0);
  estados = "inicio";
  humo = loadImage("humo.jpg");
  reloj = loadImage("reloj.png");
  relojr1 = loadImage("relojr1.png");
  relojr2 = loadImage("relojr2.png");
  arcane = loadImage("logo.png");
  plogo = loadImage("piltover-logo.png");
  zlogo = loadImage("zaun-logo.png");
  pfondo = loadImage("piltover-fondo.jpg");
  zfondo = loadImage("zaun-fondo.jpg");
  fondo1 = loadImage("fondo1.jpg");
  fondo2 = loadImage("fondo2.jpg");
  luzreinicio = loadImage("luzreinicio.png");
  //   ==PERSONAJES LOAD==
  jinx = loadImage("jinx.png");
  silco = loadImage("silco.png");
  vi = loadImage("vi.png");
  caitlin = loadImage("caitlin.png");
  ekko = loadImage("ekko.png");
  sombraR = loadImage("sombraR.png");
  sombraL = loadImage("sombraL.png");
  fondop4 = loadImage("fondop4.jpg");
  fuente1 = loadFont( "fuente1.vlw");
  texto1 = "Zaun, una urbe de vapor y acero en el mundo de Runaterra,\ndonde la ambición y la astucia se mezclan en un caldero de\nintriga y riesgo. Hogar de inventores y marginados, sus\ncallejones retorcidos ocultan secretos y peligros en cada\nesquina.";
  texto2 = "Piltover, la ciudad de las maravillas tecnológicas de Runaterra,\ndonde la brillantez de la innovación ilumina cada rincón.\nSus torres metálicas se alzan orgullosas, testigos de la alquimia\nentre la ciencia y la magia.\nEn sus bulliciosas calles, los inventores audaces\ny los pensadores progresistas dan forma al futuro.";
  //CAITLIN
  textotp1= "Caitlyn Kiramman";
  textop1 = "Edad: 22 años\n" +
    "Peso: 57 kg\n" +
    "Altura: 1.75 m\n" +
    "Origen: Piltover\n" +
    "Ocupación: Sheriff de Piltover\n" +
    "Armas Preferidas: Rifle Hextech de\n Francotirador\n\n" +
    "Nacida en una familia influyente de\nPiltover, es una talentosa y dedicada\nsheriff. Desde joven mostró habilidades\n excepcionales para la caza y la precisión,\ny su determinación la llevó a convertirse\nen una figura clave en la lucha contra el\ncrimen en la ciudad.";
  //VI
  textotz1 ="Vi/Violet";
  textoz1 ="Edad: 23 años\n" +
    "Peso: 62 kg\n" +
    "Altura: 1.70 m\n" +
    "Origen: Zaun\n" +
    "Ocupación: Enforcers de Piltover\n" +
    "Armas Preferidas: Guantes Hextech\n\n" +
    "Tras una infancia difícil en las calles\nde Zaun, Vi se unió a la fuerza policial\nde Piltover, donde utiliza sus poderosos\nguantes Hextech para mantener el orden.\nSu carácter impulsivo y su sentido del\nhumor la convierten en una aliada\nformidable y una enemiga temida.";
  //EKKO
  textotz2 = "Ekko";
  textoz2 ="Edad: 16 años\n" +
    "Peso: 58 kg\n" +
    "Altura: 1.65 m\n" +
    "Origen: Zaun\n" +
    "Ocupación: Inventor y líder de los\nFirelights\n" +
    "Armas Preferidas: Dispositivo Z-Drive\n\n" +
    "Es un joven prodigio que creó\nun dispositivo capaz de manipular\nbrevemente el tiempo.Conocido\npor su inteligencia y valentía, lidera\na los Firelights en la lucha contra la\nopresión y las amenazas que acechan\na Zaun. Su ingenio y sus habilidades\nlo convierten en una figura respetada\ny admirada entre los suyos.";
  //SILCO
  textotz3 = "Silco";
  textoz3 = "Edad: 45 años\n" +
    "Peso: 75 kg\n" +
    "Altura: 1.80 m\n" +
    "Origen: Zaun\n" +
    "Ocupación: Líder del inframundo de Zaun\n" +
    "Arma favorita: Influencia y manipulación\n\n" +
    "Silco es un hombre implacable y calculador,\nque sueña con la independencia de Zaun de\n la influencia de Piltover. Su rostro, marcado\npor una cicatriz distintiva, refleja su pasado\nturbulento y sus traiciones. Como líder del\ninframundo, utiliza su astucia y su capacidad\npara manipular a quienes lo rodean,\nconsolidando su poder y buscando alcanzar\nsus objetivos sin importar el costo.";

  //JINX
  textotz4 = "Jinx/Powder";
  textoz4 = "Edad: 21 años\n" +
    "Peso: 45 kg\n" +
    "Altura: 1.60 m\n" +
    "Origen: Zaun\n" +
    "Ocupación: Criminal y terrorista\n" +
    "Armas Preferidas: Fishbones, su lanzacohetes\n\n" +
    "Es una joven prodigio de Zaun que se\nconvirtió en una maníaca criminal tras\nuna serie de eventos traumáticos en su\ninfancia. Su comportamiento caótico y su\ngusto por la destrucción la han hecho\ninfame tanto en Zaun como en Piltover.\nDisfruta sembrando el caos y desafiando\na las autoridades, especialmente a su\nhermana Vi,con quien comparte un\n pasado tumultuoso y doloroso ";

  frameRate(60);
  tiempo = 0;
}

void draw() {
  println(tiempo);
  if (contador) {
    if (frameCount%60 == 0) {
      tiempo++;
    }
  }
  println( "X", mouseX);
  println( "Y", mouseY);
  if (estados.equals("inicio")) {
    background(0);
    image(humo, 0, 0, anchoDisplay, altoDisplay);
    image(reloj, 0, 0, anchoDisplay, altoDisplay);
    botoninicio=true;
  } else if (estados.equals("pantalla1")) {
    background(0);
    imageMode(CENTER);
    image(arcane, anchoDisplay/2, altoDisplay/2, anchoDisplay-300, altoDisplay-345);
  } else if (estados.equals("pantalla2")) {
    if (limiterect && opacidadrect1 <=255) {
      tiemporect ++;
      opacidadrect1 = map(tiemporect, 0, 200, 255, 0);
    }
    if (opacidadrect1 <=0) {
      opacidadrect1 = 0;
      limiterect = false;
      tiemporect = 0;
    }
    opacidadt1 = map(tiempo, 12, 14, 0, 255);
    opacidadt2 = map(tiempo, 29, 31, 0, 255);
    background(0);
    if (tiempo>=5 && tiempo < 25) {
      image(pfondo, 0, 0, anchoDisplay, altoDisplay);
      if (tiempo>=10 && plogoY > -140) {
        plogoY -=1;
      }
      image(plogo, 0, plogoY, anchoDisplay, altoDisplay);
      imageMode(CORNER);
      fill(203, 163, 123, opacidadt1);
      textFont(fuente1, 18);
      textAlign(CENTER);
      text(texto2, anchoDisplay/2, altoDisplay/2);
    }
    if (tiempo>=25 && tiempo <40) {
      image(zfondo, 0, 0, anchoDisplay, altoDisplay);
      if (tiempo>=27 && zlogoY > -140) {
        zlogoY -=1;
      }
      image(zlogo, 0, zlogoY, anchoDisplay, altoDisplay);
      fill(203, 163, 123, opacidadt2);
      textFont(fuente1, 18);
      textAlign(CENTER);
      text(texto1, anchoDisplay/2, altoDisplay/2);
    }
    noStroke();
    fill(0, opacidadrect1);
    rect(0, 0, anchoDisplay, altoDisplay);
  } else if (estados.equals("pantalla3")) {

    if (tiempo >=40 && tiempo < 55) {
      //PILTOVER
      image(fondo1, 0, 0, anchoDisplay, altoDisplay);
      image(sombraR, 0, 0, anchoDisplay, altoDisplay);
      image(caitlin, 0, 0, anchoDisplay, altoDisplay);
      if (tiempo>=53 && textopcX > +140) {
        textopcX +=5;
      }
      textAlign(LEFT);
      fill(203, 163, 123);
      textFont(fuente1, 30);
      text(textotp1, textopcX, 50);
      textFont(fuente1, 16);
      text(textop1, textopcX, 80);
    } else if (tiempo >=55 && tiempo <115) {
      //ZAUN
      image(fondo2, 0, 0, anchoDisplay, altoDisplay);
      image(sombraL, 0, 0, anchoDisplay, altoDisplay);


      if (tiempo >=55 && tiempo < 70) {
        fill(203, 163, 123);
        textFont(fuente1, 30);
        if (tiempo>=68 && textozvX > -400) {
          textozvX -=5;
        }
        text(textotz1, textozvX, 50);
        textFont(fuente1, 16);
        text(textoz1, textozvX, 80);
        image(vi, 0, 0, anchoDisplay, altoDisplay);
      } else if (tiempo >=70 && tiempo <85) {
        fill(203, 163, 123);
        textFont(fuente1, 30);
        if (tiempo>=83 && textozeX > -400) {
          textozeX -=5;
        }
        text(textotz2, textozeX, 50);
        textFont(fuente1, 16);
        text(textoz2, textozeX, 80);
        image(ekko, 0, 0, anchoDisplay, altoDisplay);
      } else if (tiempo >=85 && tiempo <100) {
        fill(203, 163, 123);
        textFont(fuente1, 30);
        if (tiempo>=98 && textozsX > -400) {
          textozsX -=5;
        }
        text(textotz3, textozsX, 50);
        textFont(fuente1, 16);
        text(textoz3, textozsX, 80);
        image(silco, 0, 0, anchoDisplay, altoDisplay);
      } else if (tiempo >=100 && tiempo <115) {
        fill(203, 163, 123);
        textFont(fuente1, 30);
        if (tiempo>=113 && textozjX > -400) {
          textozjX -=5;
        }
        text(textotz4, textozjX, 50);
        textFont(fuente1, 16);
        text(textoz4, textozjX, 80);
        image(jinx, 0, 0, anchoDisplay, altoDisplay);
      }
    }
  } else if (estados.equals("pantalla4")) {
    image(fondop4, 0, 0, anchoDisplay, altoDisplay);
    textAlign(CENTER);
    fill(255);
    textFont(fuente1, 20);
    text("¡GRACIAS POR VER!",anchoDisplay/2, altoDisplay/2);
    if (tiempo >= 116) {
      if (tiempo >=117 && rr1Y < 0 ) {
        rr1Y +=30;
      }
      if (tiempo >=117 && rr2Y < 0 ) {
        rr2Y +=30;
      }
      if (tiempo>=120 && rr1X > -80) {
        rr1X -=5;
      }
      if (tiempo>=120 && rr2X < +80) {
        rr2X +=5;
      }
      if (tiempo >= 119) {
        fill(0);
        ellipse(anchoDisplay/2, altoDisplay/2, tam, tam);
        tam= tam+55;
        image(luzreinicio, 0, 0, anchoDisplay, altoDisplay);
      }
      if (tiempo >= 120) {
        fill(0);
        textAlign(CENTER);
        textFont(fuente1, 20);
        text("REINICIO", anchoDisplay/2, altoDisplay/2-5);
        botonreinicio = true;
      }
      image(relojr1, rr1X, rr1Y, anchoDisplay, altoDisplay);
      image(relojr2, rr2X, rr2Y, anchoDisplay, altoDisplay);
    }
  }
  if (tiempo <0) {   //tiempo en el que se termina de romper el pergamino
    estados = "inicio";
  } else if (tiempo >=1 && tiempo < 5) {
    estados = "pantalla1";
  } else if (tiempo >=5 && tiempo < 40) {
    estados = "pantalla2";
  } else if (tiempo >=40 && tiempo < 115) {
    estados = "pantalla3";
  } else if (tiempo >=115) {
    estados = "pantalla4";
  }
}
void mouseClicked() {
  if (botoninicio) {
    if (mouseX>256 && mouseX<319 && mouseY>359 && mouseY<410) {
      println( "X", mouseX);
      println( "Y", mouseY);
      tiempo++;
      contador = true;
      botoninicio= false;
    }
  }
  if (botonreinicio) {
    if (mouseX>258 && mouseX<378 && mouseY>193 && mouseY<262) {
      estados = "inicio";
      limiterect= true;
      tiempo = 0;
      zlogoY = 0;
      plogoY = 0;
      contador = false;
      tiemporect = 0;
      botonreinicio = false;
      textopcX = anchoDisplay/2-40;
      textozvX = 40;
      textozeX = 40;
      textozsX = 40;
      textozjX = 40;
      rr1X =0;
      rr2X =0;
      rr1Y = -480;
      rr2Y = -480;
      tam = 0;
    }
  }
}
//PASAR RAPIDO TIEMPO

void keyPressed() {
  tiempo++;
  botoninicio=false;
}
