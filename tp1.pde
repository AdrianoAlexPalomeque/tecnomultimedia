//tp1
//TP#1 - Variables y Condicionales
//Legajo(93077/3)
//Alumno Alex Palomeque

//botom
boolean botoninicio;
boolean botonreinicio;
//botonInicio X
int botoninicioX = 243;
int botoninicioX2 = 395;
//botonInicioY
int botoninicioY = 204;
int botoninicioY2 = 270;
//maquina de estados
String estados;
int tiempo;
boolean contador =false;


//X Y pantalla
int anchoDisplay = 640;
int altoDisplay = 480;

//aumento de tamaño
int tam;
int tamc;
int tamdragon;
int tamdragonc;

//imagenes
PImage papel;
PImage cursor1;
PImage Dragon;
PImage pergamino, pergamino0, pergamino1, pergamino2, pergamino3, pergamino4, pergamino5, pergamino5a, pergaminob, pergamino6, pergamino7;
PImage imagenestado2a;
PImage mini4imagen1;
PImage mini4imagen2;
PImage mini4imagen3;
PImage i4magen1;
PImage i4magen2;
PImage i4magen3;
PImage sakura;
PImage samurai;
PImage dragoncompleto;
//animacion imagenes estado3
int posx =0;
int posxb=840;
//movertexto3
int movertexto1 = anchoDisplay;
int movertexto2 = anchoDisplay;
int movertexto3 = anchoDisplay;
int moveraa = anchoDisplay;
//animacion rect estado 4
int posya = altoDisplay;
int posya2 = altoDisplay;
int posya3 = altoDisplay;

//animacion imagen estado 4
int posxi = 30;
int posyi = 120;
int posxi2 = 30;
int posyi2 = 120;
int posxi3 = 30;
int posyi3 = 120;
//animacion imagen estado else
float posx4e = -640;
float posx4e2 = 0;
float posx4r = -1280;
int posx4eb = 30;
int posy4eb = 50;
//opacidad texto
float opacidad;
float opacidad2;
boolean limite = true;
boolean limite2 = true;
int tiempotexto = 0;

//tiempo rect
int tiemporect = 0;
//movimiento de rect
int posxr = anchoDisplay;
//animacion texto 2
int posy =altoDisplay/2+22;
int posy2 =altoDisplay/2;
///animacion de texto estado 3
int posx2 = anchoDisplay/2;

//animacion texto estado4
int posyt = altoDisplay-1060;
int posyt2 = altoDisplay-1060;
int posyt3 = altoDisplay-1060;
int movtexto4 = altoDisplay-1060;
int movtexto4a = altoDisplay-1060;
int movtexto4b = altoDisplay-1060;
//Fuente texto
PFont fuenteflama,fuentefachera2;

void setup() {
  size(640, 480);
  noCursor();
  textSize(50);
  cursor1 = loadImage("katana.png");
  papel = loadImage("papel.jpg");
  Dragon = loadImage("dragon.png");

  //pergamino
  pergamino = loadImage ("pergamino.png");
  pergamino0 = loadImage ("pergamino0.png");
  pergamino1 = loadImage ("pergamino1.png");
  pergamino2 = loadImage ("pergamino2.png");
  pergamino3 = loadImage ("pergamino3.png");
  pergamino4 = loadImage ("pergamino4.png");
  pergamino5 = loadImage ("pergamino5.png");
  pergamino5a = loadImage ("pergamino5a.png");
  pergaminob = loadImage ("pergaminob.png");
  pergamino6 = loadImage ("pergamino6.png");
  pergamino7 = loadImage ("pergamino7.png");

  tiempo = 0;
  estados = "inicio";
  imageMode(CENTER);

  fuenteflama = loadFont("Fuenteflama.vlw");
  fuentefachera2 =loadFont("fuentefachera2.vlw");
  //IMAGEN ESTADO2
  imagenestado2a = loadImage("imagenestado2a.jpg");
  //IMAGENES ESTADO 4
  mini4imagen1 = loadImage("mini4imagen1.jpg");
    mini4imagen2 = loadImage("mini4imagen2.jpg");
        mini4imagen3 = loadImage("mini4imagen3.jpg");
     i4magen1 = loadImage("4imagen1.jpg");
     i4magen2 = loadImage("4imagen2.jpg");
     i4magen3 = loadImage("4imagen3.jpg");
 //IMAGEN ESTADO ELSE
 sakura = loadImage("sakura.jpg");
 samurai = loadImage("samurai.jpg");
  dragoncompleto = loadImage("dragoncompleto.png");
}
void draw() {
  if (contador) {
    tiempo++;
  }
  //INICIO
  if (estados.equals("inicio")) {
    botoninicio = true;
    image(papel, anchoDisplay/2, altoDisplay/2, anchoDisplay, altoDisplay);
    //CAMBIO DE PERGAMINO
    if (tiempo <15) {
      image(pergamino, anchoDisplay/2, altoDisplay/2, anchoDisplay/2-150, altoDisplay/2-170);
    } else if (tiempo>=15 && tiempo < 20) {
      image(pergamino0, anchoDisplay/2, altoDisplay/2, anchoDisplay/2-150, altoDisplay/2-170);
    } else if (tiempo>=20 && tiempo < 30) {
      image(pergamino1, anchoDisplay/2, altoDisplay/2, anchoDisplay/2-150, altoDisplay/2-170);
    } else if (tiempo>=30 && tiempo < 35) {
      image(pergamino2, anchoDisplay/2, altoDisplay/2, anchoDisplay/2-150, altoDisplay/2-170);
    } else if (tiempo>=35 && tiempo < 45) {
      image(pergamino3, anchoDisplay/2, altoDisplay/2, anchoDisplay/2-150, altoDisplay/2-170);
    } else if (tiempo>=45 && tiempo < 55) {
      image(pergamino4, anchoDisplay/2, altoDisplay/2, anchoDisplay/2-150, altoDisplay/2-170);
    } else if (tiempo>=55 && tiempo < 60) {
      image(pergamino5, anchoDisplay/2, altoDisplay/2, anchoDisplay/2-150, altoDisplay/2-170);
    } else if (tiempo>=60 && tiempo < 65) {
      image(pergamino5a, anchoDisplay/2, altoDisplay/2, anchoDisplay/2-150, altoDisplay/2-170);
    } else if (tiempo>65 && tiempo < 70) {
      image(pergaminob, anchoDisplay/2, altoDisplay/2, anchoDisplay/2-150, altoDisplay/2-170);
    } else if (tiempo>=70 && tiempo < 75) {
      image(pergamino6, anchoDisplay/2, altoDisplay/2, anchoDisplay/2-150, altoDisplay/2-170);
    } else if (tiempo>=75 && tiempo < 80) {
      image(pergamino7, anchoDisplay/2, altoDisplay/2, anchoDisplay/2-150, altoDisplay/2-170);
    }
    //circulo negro
    else if (tiempo>=80 && tiempo < 150) {
      fill(0);
      ellipse(anchoDisplay/2, altoDisplay/2, tam, tam);
      tam= tam+55;
    } else if (tiempo>=150 && tiempo < 900) {
      background(0);
    }
    //CURSOR
    image(cursor1, mouseX, mouseY, 75, 75);
  }
  //PANTALLA 1
  else if (estados.equals("pantalla1")) {
    background(0);
    image (Dragon, anchoDisplay/2, altoDisplay/2, tamdragon, tamdragon);
    if (tamdragon <= altoDisplay+15) {
      tamdragon = tamdragon+30;
    }
    if (tiempo >=300){
    background(0);
    }
        if(tiempo >=400){
         image (dragoncompleto, anchoDisplay/2, altoDisplay/2, tamdragonc, tamdragonc+50);
        if (tamdragonc <= altoDisplay+200000) {
         tamdragonc = tamdragonc+100;
         if(tiempo>=430){
          tamdragonc = tamdragonc+1920;
         }
    }
   }
  }
  //PANTALLA2
  else if (estados.equals("pantalla2")) {
    background(255);
    if (limite && opacidad <= 255) {
      tiempotexto++;
      opacidad = map(tiempotexto, 0, 200, 0, 255);
    } else {
      opacidad = 255;
      limite = false;
      tiempotexto=0;
    }
    if (tiempo>=600 && tiempo < 1200) {
      fill(0, opacidad);
      textAlign(CENTER);
      textFont(fuenteflama);
      textSize(75);
      text("Kyoto", anchoDisplay/2, posy2);
      if (tiempo >1000 && tiempo < 1200) {
        if (posy2<=altoDisplay-50);
        posy2=posy2-60;
      }
    }
    if (tiempo>=800 && tiempo < 1200) {
      tiempotexto++;
      textSize(25);
      fill(213, 26, 117);
      text("JAPAN", anchoDisplay/2+25, posy);
      if (tiempo >1000 && tiempo < 1200) {
        if (posy<= altoDisplay-50) {
          posy=posy-60;
        }
      }
    }
    
    //PANTALLA3
  } else if (estados.equals("pantalla3")) {
    imageMode(CORNER);
  if(limite2 && opacidad2  <= 255){
    tiemporect++;
    opacidad2 = map(tiemporect, 0, 100, 255, 0);
    //LIMITE DE OPACIDAD2
  }if(opacidad2 <=0){
    opacidad2=0;
    limite2= false;
    tiemporect = 0;
  }
    
    //MUEVE LA IMAGEN PARA LA DERECHA
    image(imagenestado2a, posx, 0, posxb, altoDisplay );
  if (tiempo >= 1300 && tiempo <9000){
   if(posx >= -200){
     posx=posx-10;
   }
      if(posx2 >= -200){
            posx2=posx2-25;
         }
         fill(0,200);
         noStroke();
         rect(posxr,0,anchoDisplay,altoDisplay);
         if (posxr >= anchoDisplay/2-100){
           posxr = posxr-10;
    }
 }
    noStroke();
       fill(255,opacidad2);
    rect(0,0,640,480);
    textAlign(CENTER);
         fill(255);
         textSize(90);
         text("Kyoto",posx2,altoDisplay/2+20);
         fill(255);
        textAlign(CORNER);
        textSize(60);
        text("Kyoto",posxr+70,altoDisplay/2-70);
        textSize(11);
        text("Kyoto es una ciudad de Japón  que se encuentra en la región \n de Kansai y que cuenta con una gran riqueza cultural e histórica.\n Fue la capital del país durante más de mil años y conserva\n numerosos templos, santuarios, jardines y palacios que son\n Patrimonio de la Humanidad por la UNESCO.",posxr+25,altoDisplay/2-45);
     textSize(15);
        text("Región: Kansai",posxr+25,altoDisplay/2+50);
        text("Población: 1,5 millones",posxr+25,altoDisplay/2+80);
        text("Lenguaje: Japonés",posxr+25,altoDisplay/2+110);

//PANTALLA 4

 } else if (estados.equals("pantalla4")) { //parrafo 438
   
   
   //PARTE 1
   
   
   fill(20);
    rect(0, posya, 840, altoDisplay+50 );
    if ( posya >=0){
      posya=posya-30;
    }
   if (tiempo >= 1900 && tiempo <2100){
      fill(255);
      textSize(15);
      text("ALGUNOS LUGARES DESTACADOS DE KYOTO:" ,30 ,posyt);
      if (posyt <= 30){
        posyt=posyt+60;
       }
   } if (tiempo >= 1900 && tiempo <2100){
         if (tiempo >= 1960){
        image(mini4imagen1,30, 120, 50,altoDisplay-200);
         }
          if (tiempo >= 1980){
        image(mini4imagen2,110, 120, 50,altoDisplay-200);
         }
                   if (tiempo >= 2000){
        image(mini4imagen3,190, 120, 50,altoDisplay-200);
         }
 } else if(tiempo >=2100 && tiempo <2700){
   image(i4magen1,30,120,posxi,posyi);
   if(posxi < 300){
     posxi =posxi+15;
   }
   if(posyi < altoDisplay-200){
     posyi = posyi+15;
   }
   fill(255);
   textSize(15);
   text("TEMPLO KIYOMIZU-DERA", 30,movtexto4);
      if (movtexto4 <= 30){
        movtexto4=movtexto4+60;
       }
   textSize(11);
             if (movertexto1 >= 350){
           movertexto1 = movertexto1-10;
       }
   text("El templo Kiyomizu-dera: es uno\n de los templos más famosos de Japón \ny se encuentra en una colina \ncon vistas impresionantes de la ciudad.", movertexto1,130);
   text("Fue fundado en el año 778 y reconstruido\n varias veces a lo largo de los siglos, la\n estructura actual data del año 1633. El templo\n es conocido por su arquitectura y diseño único,\n que incluye una plataforma principal construida\n sobre pilares de madera de más de 13 metros\n de altura y vistas impresionantes de la ciudad\n de Kyoto desde sus terrazas.",movertexto1,200);


//  PARTE 2


       }if(tiempo >=2700 && tiempo <3400){
     fill(20);
    rect(0, posya2, 640, altoDisplay+50 );
    if ( posya2 >=0){
      posya2=posya2-15;
    }
       }
   if (tiempo >= 2800 && tiempo <3100){
      fill(255);
      textSize(15);
      text("ALGUNOS LUGARES DESTACADOS DE KYOTO:" ,30 ,posyt2);
      if (posyt2 <= 30){
        posyt2=posyt2+60;
       }
   } if (tiempo >= 2900 && tiempo <3100){
         if (tiempo >= 2960){
        image(mini4imagen2,30, 120, 50,altoDisplay-200);
         }
          if (tiempo >= 2980){
        image(mini4imagen3,110, 120, 50,altoDisplay-200);
         }
                   if (tiempo >= 3000){
        image(mini4imagen1,190, 120, 50,altoDisplay-200);
          }
         }
 else if(tiempo >=3100 && tiempo <3700){
   image(i4magen3,30,120,posxi2,posyi2);
   if(posxi2 < 300){
     posxi2 =posxi2+15;
   }
   if(posyi2 < altoDisplay-200){
     posyi2 = posyi2+15;
   }
   fill(255);
   textSize(15);
   text("TEMPLO RYOAN-JI", 30,movtexto4a);
         if (movtexto4a <= 30){
        movtexto4a=movtexto4a+60;
       }
   textSize(11);
          if (movertexto2 >= 350){
           movertexto2 = movertexto2-10;
       }
   text("El templo Ryoan-ji: conocido\n por su jardín de rocas zen,considerado\n uno de los más famosos del mundo.", movertexto2,130);
   text("Fue fundado a finales del siglo XV por \n un oficial de la corte japonesa y se\n ha convertido en uno de los destinos turísticos\n más populares de la ciudad debido su\n famoso jardín de rocas.",movertexto2,200);
   }
   
   
//  PARTE 3


       if(tiempo >=3700 && tiempo <4400){
     fill(20);
    rect(0, posya3, 640, altoDisplay+50 );
    if ( posya3 >=0){
      posya3=posya3-15;
    }
       }
   if (tiempo >= 3800 && tiempo <4000){
      fill(255);
      textSize(15);
      text("ALGUNOS LUGARES DESTACADOS DE KYOTO:" ,30 ,posyt3);
      if (posyt3 <= 30){
        posyt3=posyt3+60;
       }
   } if (tiempo >= 3800 && tiempo <4000){
         if (tiempo >= 3860){
        image(mini4imagen3,30, 120, 50,altoDisplay-200);
         }
          if (tiempo >= 3880){
        image(mini4imagen1,110, 120, 50,altoDisplay-200);
         }
                   if (tiempo >= 3900){
        image(mini4imagen2,190, 120, 50,altoDisplay-200);
          }
         }
 else if(tiempo >=4000 && tiempo <4600){
   image(i4magen2,30,120,posxi3,posyi3);
   if(posxi3 < 300){
     posxi3 =posxi3+15;
   }
   if(posyi3 < altoDisplay-200){
     posyi3 = posyi3+15;
   }
   fill(255);
   textSize(15);
   text("TEMPLO KINKAKU-JI", 30,movtexto4b);
      if (movtexto4b <= 30){
        movtexto4b=movtexto4b+60;
       }
   textSize(11);
       if (movertexto3 >= 350){
           movertexto3 = movertexto3-10;
       }
   text("El templo Kinkaku-ji: también conocido\n como el Pabellón Dorado, es uno de\n los símbolos más icónicos de Kyoto.",movertexto3,130);
   text(" Fue construido originalmente en 1397 como una\n villa de descanso para el shogun Ashikaga\n Yoshimitsu, pero después de su muerte, se\n convirtió en un templo budista Zen.",movertexto3,200);
   }
   
   //PANTALLA ELSE
 }else {
   textAlign(CORNER);
   if(tiempo >=4600){
     image(sakura,posx4e,0,posx4e2,altoDisplay);
     if (posx4e < 640){
     posx4e=posx4e+25;
     }
     if(posx4e2 < 1280){
       posx4e2=posx4e2+20;
     }
     fill(255);
     rect(posx4r,0,-640,480);
     if (posx4r < 1280){
       posx4r=posx4r+40;
     }
   }
     if(tiempo >=4700 && tiempo < 5000){
       background(255);
       image(samurai,30, 50, posx4eb,posy4eb);
       if (posx4eb <= 220){
         posx4eb= posx4eb+5;
       }
        if (posy4eb <= altoDisplay-200){
         posy4eb= posy4eb+5;
         
       }
       textSize(11);
       fill(0);
   if (moveraa >= 265){
           moveraa = moveraa-10;
  }
  text("Durante el período feudal de Japón, Kioto fue la capital\n del país y un lugar donde muchos samuráis vivían y\n entrenaban en artes marciales. Kioto también fue escenario\n de enfrentamientos entre diferentes clanes samuráis durante\n el período Sengoku. A pesar de esto, Kioto siguió siendo un\n importante centro cultural y religioso en Japón. En la\n actualidad, se pueden visitar varios sitios históricos\n relacionados con los samuráis en Kioto.",moveraa,120);
     }else if (tiempo>=5000){
     cursor();
     fill(255,0,0);
     rect(anchoDisplay-50,altoDisplay-50,anchoDisplay,altoDisplay);
     fill(0);
     textSize(45);
     text("R",595,475);
          botonreinicio=true;
     }
   }

  //Maquina de estados
  if (tiempo <150) {   //tiempo en el que se termina de romper el pergamino
    estados = "inicio";
  } else if (tiempo >=150 && tiempo < 500) {
    estados = "pantalla1";
  } else if (tiempo >=500 && tiempo < 1100) {
    estados = "pantalla2";
  } else if (tiempo >=1100 && tiempo < 1800) {
    estados = "pantalla3";
  } else if (tiempo >=1800 && tiempo < 4600) {
    estados = "pantalla4";
  } else {
    estados= "otra";
 }
 ///EXTRA
//  println(estados);
//println(tiempo);
//  println(opacidad);
//  println(tiempotexto);
}
//Boton inicio
void mouseDragged() {
  if (botoninicio) {
     if (mouseX>botoninicioX && mouseX<botoninicioX2 && mouseY>botoninicioY && mouseY<botoninicioY2) {
      tiempo++;
      contador = true;
      botoninicio = false;
    }
  }
}


void mousePressed(){
  if (botonreinicio){
  if (mouseX>590 && mouseX< 640 && mouseY>430 && mouseY< 480) {
  estados = "inicio";
  fill(255);
  rectMode(CORNER);
  noCursor();
  tiempo = 0;
  tiempotexto= 0;
  limite=true;
  botoninicio = true;
  contador= false;
  tamdragon=0;
    tamdragonc=0;
  tam=0;
  posy2 = altoDisplay/2;
  posy = altoDisplay/2+22;
  posya =altoDisplay;
  posya2 =altoDisplay;
   posya3 =altoDisplay;
    posx = 0;
    posx2 = anchoDisplay/2;
  posxr = anchoDisplay;
  limite2=true;
  tiemporect = 0;
  posyt = altoDisplay-1060;
    posyt2 = altoDisplay-1060;
        posyt3 = altoDisplay-1060;
     movtexto4 = altoDisplay-1060;
     movtexto4a = altoDisplay-1060;
     movtexto4b = altoDisplay-1060;
  posxi = 30;
  posyi = 120;
   posxi2 = 30;
  posyi2 = 120;
   posxi3 = 30;
  posyi3 = 120;
  posx4r = -1280;
  posy4eb = 50;
  posx4eb = 30;
  posx4e = -640;
 posx4e2 = 0;
 movertexto1 = anchoDisplay;
 movertexto2 = anchoDisplay;
 movertexto3 = anchoDisplay;
  moveraa= altoDisplay;
  imageMode(CENTER);
  botonreinicio=false; 
   }
  }
}
