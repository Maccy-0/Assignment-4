class Particle {
  
  PVector position;
  PVector velocity;
  PVector acceleration;
  
  Particle(float x, float y){
    position = new PVector(x, y);
    velocity = new PVector(random(-2, 2), random(-2, 2));
    acceleration = new PVector(0, 0.5);
  }
  
  void update(){
    velocity.add(acceleration);
    position.add(velocity);
  }
  
  void display(int i){
    fill(random(0,255),random(0,255),random(0,255));
    ellipse(position.x, position.y, 10, 10);
    if (position.y>400){
      particles.remove(i);
    }
  }
}
