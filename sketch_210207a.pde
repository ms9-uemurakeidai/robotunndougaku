float baseH = 60;
float armL1 = 60;
float armL2 = 50;
float armL3 = 40;
float armW1 = 10;
float armW2 = 10;
float armW3 = 5;
float angle0 = 0;
float angle1 = 0;
float angle2 = 0;
float l3 = 0;
float w3 = 0;
float k3 = 0;
float dif = 1.0;

void setup(){
  size(1200,800,P3D);
  //background(255);
  
  camera(100,100,100,0,0,0,0,0,-1);
  noStroke();
}

void draw(){
  background(255);
  
  if(keyPressed){
    if(key == 's'){
      angle1 = angle1 + dif;
    }
    if(key == 'S'){
      angle1 = angle1 - dif;
    }
    if(key == 'h'){
      l3 = l3 + dif;
    }
    if(key == 'H'){
      l3 = l3 - dif;
    }
    if(key =='w'){
      w3 = w3 - dif;
    }
    if(key == 'W'){
      w3 = w3 + dif;
    }
    if(key == 'k'){
      k3 = k3 - dif/10;
    }
     if(key == 'K'){
      k3 = k3 + dif/10;
    }
  }
  
  //base
  
  translate(0,0,0);
  fill(5);
  box(10,10,baseH);
  
  //1st link
  
  rotateZ(radians(angle1));
  translate(0,-armL1/2+armW1/2,baseH/2+armW1/2);
  fill(200,0,0);
  box(armW1,armL1,armW1);
  
  //2nd link
  translate(0,-armL1+5*armW2/2,-armW1/2+l3);
  fill(190,0,0);
  box(armW2,armW2,armL2);
  
  //3rd link
  translate(0,-armL1+9*armW2/2+w3,-armL2/2-armW1/2);
  fill(225,0,0);
  box(armW1,armL3,armW1);
  
  //hand
  translate(0,-armL1+15*armW2/4,-armL2/15-armW1/100);
  fill(0,0,155);
  box(armW1,5,3);
  
  //hand2
  translate(0,-armL1+24*armW2/4,-armL2/17-armW1/100+armW1+k3);
  fill(0,0,155);
  box(armW1,5,3);
}

  
