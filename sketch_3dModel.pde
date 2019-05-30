import peasy.*;
PeasyCam cam;
float orbit=0;
float spin=0.01;
float x=.005;
PImage sunTexture;
PImage earthTexture;
PImage moonTexture;
PImage mercuryTexture;
PImage venusTexture;
PImage marsTexture;
PImage jupiterTexture;
PImage saturnTexture;
PImage uranusTexture;
PImage neptuneTexture;
PImage saturnring;
PImage stars;
PShape sun;
PShape earth;
PShape moon;
PShape mercury;
PShape venus;
PShape mars;
PShape jupiter;
PShape saturn;
PShape uranus;
PShape neptune;
PShape ring;


void setup() { 
  size(960, 576, P3D);
  cam=new PeasyCam(this, 800);
  cam.setMinimumDistance(50);
  cam.setMaximumDistance(3000);
  cam.setPitchRotationMode();
  smooth(2);


  //stars texture
  stars=loadImage("starfield.jpg");





  //sun texture
  sunTexture=loadImage("sunmap.jpg");
  noStroke();
  noFill();
  sun=createShape(SPHERE, 100);
  sun.setTexture(sunTexture);

  //earth texture
  earthTexture=loadImage("earthmap.jpg");
  noStroke();
  noFill();
  earth=createShape(SPHERE, 20);
  earth.setTexture(earthTexture);

  //moon texture
  moonTexture=loadImage("moon.jpg");
  noStroke();
  noFill();
  moon=createShape(SPHERE, 8);
  moon.setTexture(moonTexture);

  //mercury texture
  mercuryTexture=loadImage("mercurymap.jpg");
  noStroke();
  noFill();
  mercury=createShape(SPHERE, 14);
  mercury.setTexture(mercuryTexture);

  //venus texture
  venusTexture=loadImage("venusmap.jpg");
  noStroke();
  noFill();
  venus=createShape(SPHERE, 17);
  venus.setTexture(venusTexture);

  //mars texture
  marsTexture=loadImage("marsmap.jpg");
  noStroke();
  noFill();
  mars=createShape(SPHERE, 15);
  mars.setTexture(marsTexture);

  //jupiter texture
  jupiterTexture=loadImage("jupitermap.jpg");
  noStroke();
  noFill();
  jupiter=createShape(SPHERE, 35);
  jupiter.setTexture(jupiterTexture);

  //saturn texture
  saturnTexture=loadImage("saturnmap.jpg");
  noStroke();
  noFill();
  saturn=createShape(SPHERE, 25);
  saturn.setTexture(saturnTexture);
  
  //saturn ring
  saturnring=loadImage("saturnring.jpg");
  ring=createShape(ELLIPSE, 0, 0, 75, 75);
  ring.setTexture(saturnring);

  //uranus texture
  uranusTexture=loadImage("uranusmap.jpg");
  noStroke();
  noFill();
  uranus=createShape(SPHERE, 20);
  uranus.setTexture(uranusTexture);

  //neptune texture
  neptuneTexture=loadImage("neptunemap.jpg");
  noStroke();
  noFill();
  neptune=createShape(SPHERE, 16);
  neptune.setTexture(neptuneTexture);
  
  
}

void draw() {
  background(stars);
  orbit+=x;
  spin+=x;
  if (keyPressed && key=='a') {  
    orbit-=x;
    spin-=x;
  }

  //sun 
  pushMatrix();
  rotateY(spin*.3);
  shape(sun); 
  popMatrix();
  pointLight(220, 220, 220, 0, 0, 0); 
  ambientLight(50, 50, 50);

  //earth
  pushMatrix();
  rotate(-orbit);
  translate(280, 0, 20);
  rotateX((3*PI)/2);
  rotateY(spin*2);
  shape(earth);


  //moon
  pushMatrix(); 
  rotate(-orbit*8);
  translate(36, 0);
  rotateX((3*PI)/2);
  shape(moon);
  popMatrix();
  popMatrix();


  //mercury
  pushMatrix();
  rotate(-orbit*1.56);
  translate(165, 0, 5);
  rotateX((3*PI)/2);
  rotateY(spin*3);
  shape(mercury);
  popMatrix();

  //venus
  pushMatrix();
  rotate(-orbit*1.224);
  translate(220, 0, 22);
  rotateX((3*PI)/2);
  rotateY(spin*2.5);
  shape(venus);
  popMatrix();

  //mars
  pushMatrix();
  rotate(-orbit*0.651);
  translate(360, 0, 28);
  rotateX((3*PI)/2);
  rotateY(spin*1.5);
  shape(mars);
  popMatrix();

  //jupiter
  pushMatrix();
  rotate(-orbit*0.501);
  translate(430, 0, 0);        
  rotateX((3*PI)/2);
  rotateY(spin*1.25);
  shape(jupiter);
  popMatrix();

  //saturn
  pushMatrix();
  rotate(-orbit*.333);
  translate(510, 0, 14);
  rotateX((3*PI)/2);
  rotateY(spin);
  shape(saturn);
  
  //saturn's ring
  pushMatrix();
  stroke(255);
  rotateX((3*PI)/2);  
  rotate(spin*2);
  //shape(ring);
  strokeWeight(2);
  ellipse(0, 0, 75, 75);
  popMatrix();
  popMatrix();


  //uranus
  pushMatrix();
  rotate(-orbit*.222);
  translate(590, 0, 8);
  shape(uranus);
  rotateX((3*PI)/2);
  rotateY(spin*.85);
  popMatrix();

  //neptune
  pushMatrix();
  rotate(-orbit*.111);
  translate(620, 0, 0);
  rotateX((3*PI)/2);
  rotateY(spin*.75);
  shape(neptune);
  popMatrix();
}
