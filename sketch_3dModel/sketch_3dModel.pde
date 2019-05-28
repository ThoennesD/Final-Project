import peasy.*;
PeasyCam cam;
float orbit =0;
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



  orbit +=.01;
  
  if (keyPressed)
  orbit-=.01;


  //sun 
  shape(sun); 
  pointLight(220, 220, 220, 0, 0, 0); 
  ambientLight(70, 70, 70);


  //earth
  pushMatrix();
  rotate(-orbit);
  translate(280, 0, 20);
  shape(earth);


  //moon
  pushMatrix(); 
  rotate(-orbit*4);
  translate(36, 0);
  shape(moon);
  popMatrix();
  popMatrix();


  //mercury
  pushMatrix();
  rotate(-orbit*3.1);
  translate(165, 0, 5);
  shape(mercury);
  popMatrix();

  //venus
  pushMatrix();
  rotate(-orbit*1.624);
  translate(220, 0, 22);
  shape(venus);
  popMatrix();

  //mars
  pushMatrix();
  rotate(-orbit*0.651);
  translate(360, 0, 28);
  shape(mars);
  popMatrix();

  //jupiter
  pushMatrix();
  rotate(-orbit*0.501);
  translate(430, 0, 0);
  shape(jupiter);
  popMatrix();

  //saturn
  pushMatrix();
  rotate(-orbit*.333);
  translate(490, 0, 32);
  shape(saturn);
  popMatrix();


  //uranus
  pushMatrix();
  rotate(-orbit*.222);
  translate(550, 0, 16);
  shape(uranus);
  popMatrix();

  //neptune
  pushMatrix();
  rotate(-orbit*.111);
  translate(610, 0, -5);
  shape(neptune);
  popMatrix();
}
