// TP#2 
//aaaaaaaaaaaaaaaaaaaaaa

color relleno1;
color colTexto,colTextoG,caja;

float posX,posY,tamX,tamY,tamX2,tamY2,xx,yy;//coordenadas y tamaño

float Reloj,mov1,mov2;//tiempo

String Presentación,Texto1,Texto2,Texto3,Texto4,Texto5,FinaldeP,iniciar,regresar;//páginas

PImage FNF,FNFinicio,fondo,parlantes,boy1,flechas,boyfriendretry;//imágenes

boolean dentrodelBoton;//botones

PFont fuenteNueva;


void setup(){
  size(640,480);
        textSize(20);
         fuenteNueva = loadFont("fuentefnf.vlw");
        textFont(fuenteNueva);
        
        //COLOR DE RELLENO a random
        relleno1 = color(random(250),random(255),random(255));
        
        //Vcolor
        colTexto = color(255);
        colTextoG = color(0,255,0);
        caja = color(0,240,240,55);
        
        //COORDENADAS Y TAMAÑOS
        posX = CENTER+20;
        posY = CENTER;
        tamX = 20;
        tamY = 50;
        tamX2 = width-55;
        tamY2 = height-200;
        xx = 0;
        yy = 0;
        
        // reloj
        Reloj = 0;
        mov1 = mov2 = 1;
         
        //Botones
        dentrodelBoton = (mouseX > 210 && mouseY > 340 && mouseX < 410 && mouseY < 440);
        println(dentrodelBoton);
        
        //Páginas
        Presentación = "holaa buenass\n He aquí la presentación de jugabilidad \nsobre el videojuego indie llamado 'Friday Night Funkin´'";
        //iniciar = "Go";
        Texto1 = " Es un videojuego de ritmo lanzado el 5\nde octubre de 2020,desarrollado por\nun Grupo de Personas llamada The Funkin Crew";
        Texto2 = " Se trata de un juego de ritmo,\npulsando el teclado correspondiente,\nel personaje cantará y bailará en consecuencia.\n Cuenta con semanas,en las cuales\nel jugador se enfrentará a distintos personajes.";
        Texto3 = "CONTROLES\n El juego está centrado en imitar patrones\n de movimiento,conforme a la dificultad seleccionada.";
        Texto4 = "El jugador debe presionar las flechas WASD o las flechas\nal lado derecho de su computador,cuando\naparecen en pantalla,y presionarlos en el momento exacto.";
        Texto5 = "si";
        FinaldeP = "hasta aqui el la presentación.\n ¡gracias por ver!";
        regresar = "volver a inicio";
        
        //imágenes
        FNF = loadImage("FNF2.jpg");
        parlantes = loadImage("parlantes.jpg");
        FNFinicio = loadImage("FNFinicio.jpg");
        fondo = loadImage("fondo.jpg");
        boyfriendretry = loadImage("boyfriendretry.jpg");
        boy1 = loadImage("boyfriend1.jpg");
        flechas = loadImage("iflechas.jpg");
        
}

void draw(){
  println(mouseX + "/" + mouseY);
  println(frameCount);
  background(random(50),random(50),random(50));

Reloj += 1;//empieza mi reloj
    println(Reloj);

float textoX,textoY;
textoX = textoY = 0;
        
      noFill();
      
      //PAG1
      if( frameCount / 60 < 10){
        fill(colTexto);
        text(Presentación,10,330+yy);
        
      image(FNF,0,0,width,tamY2+40);
      
      if( frameCount / 60 > 8 ){
        image(boy1,400,200,200,200);
      }
      
      
      if (yy >= height-400 ) {
        mov2 = -1;
      }
      if (yy <= 0+tamY/2) {
        mov2 = 1;
      }  
      yy += mov2;
      //texto1
      }
      
      //PAG2
      
      if( frameCount / 60 >= 10 && frameCount / 60 < 20){
      image(parlantes,posX,posY,tamX2,tamY2);
      
      if( frameCount / 60 >= 10 && frameCount / 60 < 20){
      image(flechas,170,10,300,100);
      }
       //texto2
        fill(colTexto);
        text(Texto1,xx-10,310);
        fill(colTexto);
        text(Texto2,xx+0,380);
      if( frameCount / 60 >= 18 && frameCount / 60 < 20){
      image(boyfriendretry,170,100,300,300);
      }
      if (xx >= width-500) { //derecho
        mov1 = -2;
      }
      if (xx <=0 ) { //izquierdo
        mov1 = 2;
      }
    
      xx += mov1;
      }
      //PAG3
      if( frameCount / 60 >= 20 && frameCount / 60 < 30){
        
        
        
      image(FNFinicio,posX,posY,tamX2,tamY2);
      fill(colTexto);
        text(Texto3,textoX+10,textoY+310);
        fill(colTexto);
        text(Texto4,textoX+10,textoY+400);
  
        
      }
      //página4
      if( frameCount / 60 >= 30){
      
      if (xx >= width-325) { //derecho
    mov1 = -2;
  }
  if (xx <=0+tamX/2) { //izquierdo
    mov1 = 2;
  }
  if (yy >= height-tamY/2 ) {
    mov2 = -2;
  }
  if (yy <= 0+tamY/2) {
    mov2 = 2;
  }
  
  xx += mov1;
  yy += mov2;
      
      image(fondo,0,0,width,height);
   
      noFill();
        stroke(random(200),random(200),random(200));
        strokeWeight(18);
        rect(0,0,width,height);
      
      stroke(25);
      strokeWeight(5);
      text(FinaldeP,xx,yy);
      fill(colTextoG);
        rect(210,340,200,100);
      fill(25);
       // text(Texto5,textoX+10,textoY+400);
        text(regresar,textoX+235,textoY+395);
  }
}

void mousePressed(){
   
   if (mouseX > 210 && mouseY > 340 && mouseX < 410 && mouseY < 440){
   frameCount = 0;
 }
  
}
