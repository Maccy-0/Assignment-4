ArrayList<Particle> particles;

void setup(){
 size(400,400);
 particles = new ArrayList<Particle>();
}

void draw(){
  background(0);
  for (int i = particles.size()-1; i > 1; i--){
    particles.get(i).update();
    particles.get(i).display(i);
  }
  if(mousePressed == true) {
    particles.add(new Particle(mouseX, mouseY));
  }
}
