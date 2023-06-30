// Untuk Bagian Tab ini terbagi menjadi kedalam 3 Bagian :
// VARIABEL - KONSTRUKTOR - METHOD ( FUNCTION )

class kupu{
  //GLOBAL VARIABEL
  float x = 0;
  float y = 0;
  float kecepatanX = 3;
  float kecepatanY = 2;
  
  //CONSTRUCTOR
  kupu (float x1, float y1){
    x = x1;
    y = y1;
  }
  
  //FUNCTION
  void run(){
    tampilan();
    bergerak();
    memantul();
  }
  void tampilan(){
    image(objek,x,y,60,60);
    
    stroke(#000000);
    strokeWeight(10);
  }
  
  void bergerak(){
    x += kecepatanX;
    y += kecepatanY;
  }
  
  void memantul(){
    if (x > width) {
      kecepatanX = kecepatanX *-1;
    }
    if (x < 0 ) {
      kecepatanX = kecepatanX *-1;
    }
    if (y > height) {
      kecepatanY = kecepatanY *-1;
    }
    if (y<0){
      kecepatanY = kecepatanY *-1;
    }
  }
}
