import peasy.*;
PeasyCam cam;
float orbit;
float spin;
int asteroidMove=2000;
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
PImage asteroid;

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
PShape ast;



void setup() { 
  size(1200, 720, P3D);
  cam=new PeasyCam(this, 800);
  cam.setMinimumDistance(50);
  cam.setMaximumDistance(3000);
  cam.setPitchRotationMode();
  smooth(2);


  //stars texture
  stars=loadImage("starfield.jpg");


  //asteroid texture
  asteroid=loadImage("asteroid.jpg");
  noStroke();
  noFill();
  ast=createShape(SPHERE, 15);
  ast.setTexture(asteroid);



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

  orbit+=.005;
  spin+=.0045;




  //pause animation
  if (keyPressed && key=='a') {  
    orbit-=.005;
    spin-=.0045;
  }

  //random 
  if (keyPressed && key=='s') {
    orbit=(float)(Math.random()*359)+1;
    spin=(float)(Math.random()*359)+1;
    println(orbit);
  }

  //reset animation
  if (keyPressed && key=='d') {
    orbit=0;
    spin=0;
  }



  //sun 
  pushMatrix();
  rotateX((3*PI)/2);
  rotateY(spin*.6);
  shape(sun); 
  popMatrix();
  pointLight(220, 220, 220, 0, 0, 0); 
  ambientLight(50, 50, 50);

  //earth
  pushMatrix();
  rotate(-orbit);
  translate(280, 0, 10);

  //moon
  pushMatrix(); 
  rotate(-orbit*6);
  translate(36, 0);  
  shape(moon);
  rotateX((3*PI)/2);
  popMatrix(); 

  //more earth
  rotateX((3*PI)/2);
  rotateY(spin*2);
  shape(earth);
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
  translate(220, 0, 10);
  rotateX((3*PI)/2);
  rotateY(spin*2.5);
  shape(venus);
  popMatrix();

  //mars
  pushMatrix();
  rotate(-orbit*0.651);
  translate(360, 0, 12);
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
  translate(520, 0, 12);
  rotateX((3*PI)/2);
  rotateY(spin);
  shape(saturn);

  //saturn's ring
  pushMatrix();
  stroke(249, 189, 111, 100);
  rotateX((55*PI)/36);  
  rotate(spin*2);
  strokeWeight(1.2);
  ellipse(0, 0, 75, 75);
  popMatrix();
  popMatrix();


  //uranus
  pushMatrix();
  rotate(-orbit*.222);
  translate(600, 0, 8);
  shape(uranus);
  rotateX((3*PI)/2);
  rotateY(spin*.85);
  popMatrix();

  //neptune
  pushMatrix();
  rotate(-orbit*.111);
  translate(680, 0, 0);
  rotateX((3*PI)/2);
  rotateY(spin*.75);
  shape(neptune);
  popMatrix();

  //asteroid
  if (keyPressed && key=='b') {
    if (asteroidMove<-3000) {
      asteroidMove=2000;
    }
    asteroidMove-=12;  

    rotate(-orbit*1.2);
    translate(asteroidMove, -500, -500);
    shape(ast);
    stroke(0, 0, 202);
    strokeWeight(5);
    ellipse(25, 0, -35, 0);
  }
}
