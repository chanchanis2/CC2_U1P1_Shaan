class bee {
 
  PVector location;
  PVector velocity;
  PVector acceleration;
  float maxspeed;
 
  bee() {
    location = new PVector(random(width),random(height));
    velocity = new PVector(0,0);
    maxspeed = 10;
  }
 
  void update() {
 

    PVector mouse = new PVector(mouseX,mouseY);
    PVector dir = PVector.sub(mouse,location);
    dir.normalize();
    dir.mult(0.5);
    acceleration = dir;
 
    velocity.add(acceleration);
    velocity.limit(maxspeed);
    location.add(velocity);
  }
 
  void display() {
    stroke(0);
    fill(175);
    image(B,location.x,location.y);
  }
 
  void Edges() {
 
    if (location.x > width) {
      location.x = 0;
    } else if (location.x < 0) {
      location.x = width;
    }
 
    if (location.y > height) {
      location.y = 0;
    }  else if (location.y < 0) {
      location.y = height;
    }
  }
}