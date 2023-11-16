ArrayList<Particle> particles;

void setup(){
 size(400,400);
 particles = new ArrayList<Particle>();
}

void draw(){
  background(0);
  for (int j = particles.size()-1; j > 1; j--){
    particles.get(j).update();
    particles.get(j).display(j);
  }
  if(mousePressed == true) {
    particles.add(new Particle(mouseX, mouseY));
  }
}
