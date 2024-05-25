 PImage damastp6;
 PImage damas2tp;
 PImage damas5tp;
 String estado;
 String estado2;
 String estado3;
 int alpha;
 int tam;
 int tam2;
 int alpha2;
 int tam3;
 int alpha3;
 color relleno2;
 color relleno;
 color relleno3;
 float x,y; 
 float x1,y1; 
 float x2, y2; 
 

 void setup(){
  size( 640, 480 );
  damastp6=loadImage("damastp6.jpg");
 image(damastp6,0,0);
damas5tp=loadImage("damas5tp.jpg");
 image(damas5tp,0,0);

 damas2tp=loadImage("damas2tp.jpg");
 image(damas2tp,0,0);
  estado = "DAMAS\n juego interactivo\n  para dos personas";
  tam = 10;
  x = width / 2;
  y = height / 2;
  relleno = color(250);
  alpha = 500;
  textSize( 42 );
  textAlign( CENTER, CENTER ); 
  estado2 = "¿cual es el objetibo del juego?\n El objetivo del juego de damas\n es Capturar las fichas del Oponente\n o Acorralarlas para que\n los únicos Movimientos\n Que puedan realizar sean los\n que Lleven a su captura\n Se Juega por Turnos Alternos " ;
  tam2= 42;
  x1 = width/2;
  y1 = height/2;
  relleno2= color(250);
  alpha2= 550;
  textSize( 42 );
  textAlign( CENTER, TOP ); 
   estado3 = "Se gana la partida cuando\n el adversario ha quitado\n (comido) a su rival todas las piezas en el tablero.";
  tam3 = 10;
  x2 = width / 2;
  y2 = height / 2;
  relleno3 = color(0);
  alpha3 = 480;

}
 
 void draw() {
  background( 0 );
  //println( frameCount/60 );  // segundos no exacto
  //println( frameRate );  // velocidad real del draw

  // ---------------------------------------------------------
  // ESTADOS

 
  //if( estado == "menu" ){damastp4=loadImage("damastp4.jpg");
   //expresion correcta
   damas2tp=loadImage("damas2tp.jpg");
 image(damas2tp,0,0); 
 if( tam < 70 ){  //limito la animacion, true or false
    //tam = tam + 1;
    tam += 1;
    println(tam);
  }else{  // cuando NO se cumpla la condicion (cuando llega al tam maximo el texto)
    // cuando tam == 180
    relleno = color(0, 200, 0);  // cambio color a verde
  }
  
    
  // empiezo a animar el eje Y cuando alcance el tamaño
  if( tam >=70 ){
    // tres maneras diferentes de escribir la misma operacion matematica
    y = y - 1;
    y -= 0;
    y--;  //a la variable y le resto 1 pixel
    //
    // ademas voy a hacer que se vaya por fadeout de color
    relleno = color(250, alpha);
    alpha = alpha - 2;
    
     
    
  
     }
   fill( relleno );
  textSize( tam );
  textAlign( CENTER, TOP );
  text( estado, x, y );
  // EVENTO POR TIEMPO
   { if ( frameCount/60 >= 5){ // si pasaron 5 segundos desde el inicio del draw
      estado = "damas2tp.jpg";
    
damastp6=loadImage("damastp6.jpg");
 image(damastp6,0,0);
    relleno2 = color(250, alpha2);
    alpha2 = alpha2 - 1 ;
    
     fill( relleno2 );
  textSize( tam2 );
  textAlign( CENTER, CENTER );
  text( estado2,x1,y1 );
  }
    
    

    // estado #2
  
  }if ( frameCount/60 >= 15 ){ // si pasaron 5 segundos desde el inicio del draw
      estado="damastp6.jpg";
     damas5tp=loadImage("damas5tp.jpg");
 image(damas5tp,0,0);
 if( tam3 < 30 ){  //limito la animacion, true or false
    //tam = tam + 1;
    tam3 += 1;
    println(tam3);
  }else{  // cuando NO se cumpla la condicion (cuando llega al tam maximo el texto)
    // cuando tam == 180
    relleno3 = color(0, 200, 0);  // cambio color a verde
  }
  // empiezo a animar el eje Y cuando alcance el tamaño
  if( tam3 >= 30 ){
    // tres maneras diferentes de escribir la misma operacion matematica
    y2 = y2 +1    ;
    y2 -=0;
    y2--;  //a la variable y le resto 1 pixel
    //
    // ademas voy a hacer que se vaya por fadeout de color
    relleno3 = color(250, alpha3);
    alpha3 = alpha3 - 1 ;
     
  }

  // 3. uso mis variables = dibujo
  fill( relleno3 );
  textSize( tam3 );
  textAlign( CENTER, TOP);
  text( estado3, x2, y2 );
  }
  }
 
