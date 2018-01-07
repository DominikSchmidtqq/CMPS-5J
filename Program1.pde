/*This program draws a 'bus' on a road, a tree,
grass and the sun*/
void setup() {
    size(600,600);  
}
void draw() {
    background(0,200,255);//Sky
    noStroke();
    fill(0,200,0);//green for grass
    rect(0,390,600,600);//grass
    fill(188,122,-10);//brown
    rect(113,187,35,257);//tree trunk
    fill(52,147,104);//green for leaves
    ellipseMode(CENTER);
    ellipse(130,233,85,201);
    fill(244,252,8);//yellow for the sun
    ellipseMode(CENTER);
    ellipse(width,0,100,100);//draw the sun
    stroke(244,252,8);
    line(width, 0, width-60,60);//sunrays
    fill(40);//dark gray
    noStroke();
    quad(0, height, 0,height-50, width, height-100, width, height-90);//road 
    fill(255);//white 
    rect(70,450,147,83);//bus body
    fill(120);//grey
    ellipseMode(CENTER);
    ellipse(90,526,43,43);//wheel
    ellipseMode(CENTER);
    translate(115,0);
    ellipse(90,526,43,43);//wheel
}