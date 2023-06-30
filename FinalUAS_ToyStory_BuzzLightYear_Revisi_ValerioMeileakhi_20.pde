PFont font1;
PFont font2;
PImage bg;
PImage objek;
PImage gif;
int numberOfFrames;
float awan = 200;
float awanG = 0.7;
float awan2 = 700;
float awanG2 = 0.7;

kupu pertama = new kupu ( 20,680 );
kupu kedua = new kupu (870,50);
kupu ketiga = new kupu (250,400);
kupu keempat = new kupu (450,100);
kupu kelima = new kupu (800,400);
kupu keenam = new kupu (70,800);
kupu ketujuh = new kupu (70,100);
kupu kedelapan = new kupu (200,600);
kupu kesembilan = new kupu (900,600);

void setup(){
  size(1200,675, P3D); //size(width, height)
  smooth();
  bg = loadImage ("KamarToyStory.jpg");
  objek = loadImage ("KupuGerak.gif");
 
  font1= createFont("BungeeShade-Regular.ttf", 60);
  font2= createFont("Splash-Regular.ttf", 40);
  
  
}

void draw(){
  image(bg,0,0);
  noStroke();
    
  // TOYSTORY
  fill(#08FC77, random(510), random(920));
  textFont(font1, 80);
  textAlign(CENTER);
  text("TOY STORY", 600, 64);
  
  //BUZZ LIGHT YEAR
  fill(#02D8CC);
  textFont(font2, 40); 
  textAlign(CENTER);
  text("BuzzLight Year", 600, 118);

  //awan1
  fill(#B7C1FF);
  ellipse(awan,150,50,40);
  ellipse(awan +25,150,50,50);
  ellipse(awan+50, 150,50,40);
  
  //awan2
  fill(#B7C1FF);
  ellipse(awan2,150,70,40);
  ellipse(awan2 +25, 150,50,50);
  ellipse(awan2 +50, 150,50,40);
  
//rumus penggerak awan
awan = awan + awanG ;
awan2 = awan2 + awanG2 ;

//rumus memantulkan awan 1
if (awan > 900){
  awanG = awanG * -1;
}
if (awan2 < 0){
  awanG = awanG *-1;
}

//rumus memantulkan awan 2
if(awan2 > 900){
  awanG2 = awanG2 * -1;
}
if ( awan2 < 0 ) {
  awanG2 = awanG2 * -1;
}

pertama.run();
kedua.run();
ketiga.run();
keempat.run();
kelima.run();
keenam.run();
ketujuh.run();
kedelapan.run();
kesembilan.run();

//Matahari//
  fill(#FFA717); //Kecil 2
  ellipse(600,212,150,150);
  fill(#F6FF08); //Kecil 1
  ellipse(600,212,120,120);
  
//----------------------------------------------------------//

//Response Robot membesar saat di Klik

if (mousePressed){
  scale(1.0);
} else {
  scale(0.4);
}

//--------------------------------------------------------//

//Membuat robot dapat bergerak sesuai koordinat mouse//

translate(mouseX, mouseY);
//--------------------------------------------------------//

//Telinga Kiri dan Kanan Buzz LightYear


fill(#F0E68C);
ellipse(420,110, 30,70);{ //Kiri
}

fill(#F0E68C);
ellipse(565,110, 30,70);{ //Kanan
}
 
//Bagian Kepala Karakter BuzzLightYear
fill(#2708FF);
fill(255, 227, 200);
rect(420,15, 145,190, 350); 
fill(255, 227, 200);
strokeWeight(1);
stroke(148, 0, 211);

//Bagian Leher Karakter BuzzLightYear
fill(148, 0, 211);
rect(467,205, 50,20);

//Bagian Mata Kiri dan Kanan BuzzLightYear

//Mata Bagian Kiri
fill(255, 255, 255);
ellipse(460, 90, 50,40);//Lapis 1 Putih
fill(152, 251, 153);
ellipse(460, 90, 25,25);//Lapis 2 Hijau
fill(0, 0, 0);
ellipse(460, 90, 15,15);//Lapis 3 Hitam

//Mata Bagian Kanan
fill(255, 255, 255);
ellipse(520, 90, 50,40);//Lapis 1 Putih
fill(152, 251, 153);
ellipse(520, 90, 25,25);//Lapis 2 Hijau
fill(0, 0, 0);
ellipse(520, 90, 15,15);//Lapis 3 Hitam

//Alis Mata Buzz LightYear

fill(205, 133, 63);
rect(445,55, 26,10, 80);//Bagian Kiri

fill(205, 133, 63);
rect(508,55, 26,10, 80);//Bagian Kanan

//Mulut 

fill(252, 192, 203);
rect(460, 140, 65,42, 40);

//Gigi
fill(245, 255, 250);
rect(470, 140, 10,10, 3);
fill(245, 255, 250);
rect(480, 140, 10,10, 3);
fill(245, 255, 250);
rect(490, 140, 10,10, 3);
fill(245, 255, 250);
rect(500, 140, 10,10, 3);//Gigi Atas

fill(245, 255, 250);
rect(470, 170, 10,10, 3);
fill(245, 255, 250);
rect(480, 170, 10,10, 3);
fill(245, 255, 250);
rect(490, 170, 10,10, 3);
fill(245, 255, 250);
rect(500, 170, 10,10, 3);//Gigi Bawah

//Bagian Perut Karakter BuzzLightYear
fill(0, 0, 0);
rect(412,463, 150,19, 10);//1
fill(128, 128, 128);
rect(420,482, 130,8, 10);//2
fill(0, 0, 0);
rect(412,490, 150,12, 10);//3
fill(128, 128, 128);
rect(420,503, 130,8, 10);//4
fill(0, 0, 0);
rect(412,512, 150,12, 10);//5
fill(128, 128, 128);
rect(420,525, 130,8, 10);//6

//Bagian Pergelangan Bawah Kaki BuzzLightYear
fill(127, 255, 1);
rect(370, 532, 225,25, 40);//Pergelangan Engsel Tengah 
fill(225, 248, 220);
rect(340, 558, 140,25, 10);//Pergelangan Paha Kiri
fill(225, 248, 220);
rect(480, 558, 140,25, 10);//Pergelangan Paha Kanan

//Bagian Kaki BuzzLightYear

fill(225, 248, 220);
rect(340,583, 45,60);
fill(210, 105, 30);
rect(295,630, 100,30, 12);//Sepatu Kiri 

fill(225, 248, 220);
rect(575,583, 45,60, 10);
fill(210, 105, 30);
rect(566,630, 100,30, 12);//Sepatu Kanan

//Bagian Tangan BuzzLightYear

//Tangan Kiri
fill(169, 169, 169);
rect(240,325, 60,160, 18);

fill(34, 139, 35);
rect(240,455, 60,30, 20);

fill(225, 248, 220);
rect(249,485, 10,40);

fill(225, 248, 220);
rect(262,485, 10,40);

fill(225, 248, 220);
rect(273,485, 10,40);

fill(225, 248, 220);
rect(285,485, 10,40);

//Tangan Kanan
fill(169, 169, 169);
rect(680,325, 60,160, 18);

//Kepalan Tangan Kanan
fill(34, 139, 35);
rect(680,455, 60,30, 20);

fill(225, 248, 220);
rect(687,485, 10,40);

fill(225, 248, 220);
rect(700,485, 10,40);

fill(225, 248, 220);
rect(713,485, 10,40);

fill(225, 248, 220);
rect(725,485, 10,40);

//Bagian Otot BuzzLightYear

fill(138, 43, 226);
rect(240,285, 70,40, 12);//Otot Kiri

fill(138, 43, 226);
rect(670,285, 70,40, 12);//Otot Kanan

//Bagian Badan Buzz LightYear
fill(34, 139, 35);
rect(310,225, 360,240, 80);
fill(50, 205, 50);
rect(360,235, 260,215, 30);//DadaTengah
fill(169, 169, 169);
rect(368,280, 120,140, 30);//Dada Kiri
rect(493,280, 120,140, 30);//Dada Kanan

fill(#08FC77, random(510), random(920));
rect(380,320, 10,40, 15);//Kutip 1

fill(#08FC77, random(910), random(920));
rect(392,320, 10,40, 15);//Kutip 2

fill(#08FC77, random(510), random(920));
rect(404,320, 10,40, 15);//Kutip 3

fill(#08FC77, random(810), random(820));
rect(417,320, 10,40, 15);//Kutip 4

fill(#FF0808, random(770), random(660));
rect(430,320, 10,40, 15);//Kutip 5

fill(#FF0808);
ellipse(555, 340, 60,50);//Tombol On Mode Terbang 
fill(255, 255, 0);
rect(503,300, 100,10, 10);//Blog Kuning LightYear
strokeWeight(17);
} 
