// TP1 "The Rocky Horror Picture Show" 
//Lazarte Laureano 
//Legajo:86528/8 Com: 4(online)
//Profe: Tobias Albirosa


//VARIABLES
PImage imagen1, imagen2, imagen3, imagen4, imagen5, imagen6,
imagen7, imagen8, imagen9, imagen10, imagen11, imagen12, imagen13, imagen14, poster, imagenMouse;
PFont fuente;
String texto1, texto2, texto3, texto4, texto5, texto6, 
texto7, texto8, texto9, texto10, texto11, texto12, texto13;

int contador;
int velocidad;
int pantalla;

int miVariable;
boolean botonLOOP;

void setup (){
 size(960,960);
       //IMAGENES
  imagen1 = loadImage("lips 1.jpg");
  imagen2 = loadImage("lips 8.jpg");
  imagen3 = loadImage("frank 3.jpg");
  imagen4 = loadImage("janet weiss.jpg");
  imagen5 = loadImage("brad majors.jpg");
  imagen6 = loadImage("handyman.jpg");
  imagen7 = loadImage("magenta.jpg");
  imagen8 = loadImage("columbia.jpg");
  imagen9 = loadImage("dr scott.jpg");
  imagen10 = loadImage("rocky.jpg");
  imagen11 = loadImage("eddie.jpg");
  imagen12 = loadImage("the criminologist.jpg");
  imagen13 = loadImage("foto.jpg");
  imagen14 = loadImage("handyman magenta.jpg");
  poster = loadImage("poster 3.jpg");
  imagenMouse = loadImage("lipss.png");
  miVariable = 0;
  contador = 0;
  velocidad = 5;
  pantalla = 0;
          // FUENTE
  fuente = createFont("ROCKYAOE.ttf",50);
          //TÍTULO
  texto1 = "        The \nRocky Horror \nPicture Show";
         // REPARTO
  texto2 ="Starring: \n Tim Curry\n as DR.FRANK-N-FURTER\n (a scientist)";
  texto3 ="Susan Sarandon\n as JANET WEISS\n (a heroine)";
  texto4 ="Barry Bostwick\n as BRAD MAJORS\n (a hero)";
  texto5 ="Richard O'Brien\n as RIFF RAFF\n (a handyman)";
  texto6 ="Patricia Quinn\n as MAGENTA\n (a domestic)";
  texto7 ="Little Nell\n as COLUMBIA\n (a groupie)";
  texto8 ="Jonathan Adams\n as DR.EVERETT V.SCOTT\n (a rival scientist)";
  texto9 ="Peter Hinwood\n as ROCKY HORROR\n (a creation)";
  texto10 ="Meatloaf\n as EDDIE\n (ex delivery boy)";
  texto11 ="Charles Gray\n as THE CRIMINOLOGIST\n (an expert)";
         // DIRECCIÓN Y MUSICA
  texto12 = "directed\n by jim sharman\n  executive producer\n lou adler";
  texto13 = "original musical play\n music and lyrics\n by Richard O'Brien";
 
  
  textFont(fuente);
  imageMode(CENTER);
  
}


void draw() {
    miVariable = frameCount;
  
    contador+=velocidad;
  
    background(0);

  
      // PANTALLA 1
if (pantalla == 0){
    tint(contador/4);
    image(imagen1, width/2, height/2, contador, contador);
    
  } 
      // PANTALLA 2
if (pantalla == 1){
   tint(contador/4);
 image(imagen2,width/2,height/2,contador,contador);
 fill(255,0,0);
    text(texto1, width/3, miVariable);

}
      // PANTALLA 3
if (pantalla == 2){
  image(imagen3,width/2,height/2,960,960);
  fill(255,0,0);
    text(texto2, width/3, height/2.5);
}
     // PANTALLA 4
if (pantalla == 3){
  image(imagen4,width/2,height/2,960,960);
  fill(255,0,0);
    text(texto3, width/3, height/2.5);
}
    // PANTALLA 5
if (pantalla == 4){
  image(imagen5,width/2,height/2,960,960);
  fill(255,0,0);
    text(texto4, width/3, height/2.5);
}
     // PANTALLA 6
if (pantalla == 5){
  image(imagen6,width/2,height/2,960,960);
  fill(255,0,0);
    text(texto5, width/3, height/2.5);
}
     // PANTALLA 7
if (pantalla == 6){
  image(imagen7,width/2,height/2,960,960);
  fill(255,0,0);
    text(texto6, width/3, height/2.5);
}
     // PANTALLA 8
if (pantalla == 7){
  image(imagen8,width/2,height/2,960,960);
  fill(255,0,0);
    text(texto7, width/3, height/2.5);
}
     // PANTALLA 9
if (pantalla == 8){
  image(imagen9,width/2,height/2,960,960);
  fill(255,0,0);
    text(texto8, width/3, height/2.5);
}
      // PANTALLA 10
if (pantalla == 9){
  image(imagen10,width/2,height/2,960,960);
  fill(255,0,0);
    text(texto9, width/3, height/2.5);
}
     // PANTALLA 11
if (pantalla == 10){
  image(imagen11,width/2,height/2,960,960);
  fill(255,0,0);
    text(texto10, width/3, height/2.5);
}
    // PANTALLA 12
if (pantalla == 11){
  image(imagen12,width/2,height/2,960,960);
  fill(255,0,0);
    text(texto11, width/3, height/2.5);
}
     // PANTALLA 13
if (pantalla == 12){
  image(imagen13, width/2, height/2,960,960);
  fill(255,0,0);
  text(texto12,width/3, height/2.5);
  
}
    // PANTALLA 14
if (pantalla == 13){
  image(imagen14, width/2, height/2,960,960);
  fill(255,0,0);
  text(texto13,width/3, height/2.5);
}
   // PANTALLA 15
if (pantalla == 14){
  image(poster, width/2, height/2,960,960);
  fill(255,0,0);
  rect(400,400,200,100);
  fill(255);
  textSize(30);
  text("press to LOOP",400,480);
}
   //PUNTERO LABIO
   fill(255);
   image(imagenMouse,mouseX, mouseY,40,20);
if (contador >= 960) {
    contador = 0;
    pantalla++;
  }
}
void mousePressed(){
    //BOTON PARA LOOPEAR
  botonLOOP = mouseX >400 && mouseY> 400 && mouseX < 600 && mouseY < 500;
  println(botonLOOP);
    if(botonLOOP){
      pantalla = 0;
    }
}   

   
