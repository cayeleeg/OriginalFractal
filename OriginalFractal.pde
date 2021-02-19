public void setup() {
  size(500, 500);
  background(0);
}
float angle = PI/4;
float angle2 = PI/4;
float angle3 = PI/8;
float angle4 = PI/8;
public void draw() {
  fill(255);
  translate(width/2, height);
  lines(150, 8);
}
public void lines(float b, float c) {
  stroke(255);
  strokeWeight(b/20);
  line(0, 0, 0, -b);
  translate(0, -b);
  if ( c > 1) {
    rotate(angle);
    lines(b/2, c-1);
    translate(0, b/2);
    rotate(-angle);
    rotate(-angle2);
    lines(b/2, c-1);
    translate(0, b/2);
    rotate(angle2);
    rotate(angle3/1.5);
    lines(b/1.5, c-1);
    translate(0, b/1.5);
    rotate(-angle3/1.5);
    rotate(-angle4/1.5);
    lines(b/1.5, c-1);
    translate(0, b/1.5);
    rotate(angle4/1.5);
  }
}
