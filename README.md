# Final-Project
Solar System Final Project for CompSci


# Project Title and purpose

My final project for AP Computer Science is a model of our Solar System. I originally set out to create just a standard two dimensional model, and I very easily and quickly accomplished this. While it worked properly and was everything I set out to do, it was very lackluster as it was essentially just two dimensional circles rotating around one larger circle, all of them a single static color. I decided I wanted to expand on this and made it into a three dimensional animation. While this definetely made it look nicer, there was still much more to be done. I started with simple quality of life changes like adding a starfield to the background and applying three dimensional texture map to every planet to make them appear as they do in real life! This was interesting and all, but it was still just planets rotating in a circle. I decided that I would expand on each planet and add some unique features. Instead of just orbiting them sun, the planets also rotate on their respective axis, so they make their way around the sun, and also spin like they do in real life! I then gave Earth the moon and Saturn it's ring. After some extra fine-tuning, I had finished the solar system and decided to add some fun code in such as a way to reset the planets, pause the planets, randomize their orbits, and, my personal favorite, generate an asteroid that flys across the screen.

### Difficulties or opportunities you encountered along the way.

Some challenges that I encountered during this project was getting every planet to match up just right. I had to rotate each planet on the x-axis by 3Pi/2 so that they faced the correct direction, I had to calculate out how fast each planet orbited the sun and rotated basing my measurements off of Earth's rotation speed and so much more. Another difficulty I overcame during this project was adding a ring to saturn. 

### Most interesting piece of your code and explanation for what it does.

```Java
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
```
In this section of code, I display our planet, Earth, make it revolve around the sun, and display the moon alongside Earth. Like I said earlier, I rotated each planet by 3PI/2 so they were facing the correct direction towards the sun, but when I did this, the moon began rotating around the year on the y-axis. I had to re-arrangize my code for Earth and the Moon and try many different combinations of code to get it to work right. To get Earth to face it's correct direction and allow the Moon to rotate the Earth on the x-axis, I first spawned the Earth, then spawned the Moon, roated the Moon by 3PI/2, then rotated the Earth by 3PI/2 and rotated it on the y-axis to make it spin. If I placed the rotateX and rotateY functions before spawning the Moon, it followed a very strange path that did not look right.

## Built With

* [Processing](https://processing.org/) - The IDE used

## Authors

David Thoennes

## Acknowledgments

* Daniel Shiffman - member of the Board of Directors for Processing, introduced me to the pushMatrix() and popMatrix() functions
* Galactic Images (http://www.galacticimages.com/) - used one of their free textures, this is where I got the starfield texture for the background
* JHT's Planetary Pixel Emporium (http://planetpixelemporium.com/) - this is where I found a majority of my three dimensional texture maps that I displayed on my planets
* NASA - obtained the three dimensional texture maps for the Sun and Asteroid from here
