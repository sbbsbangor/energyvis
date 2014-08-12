float value=0,val=0;
color[] col;
float bur=169,bug=56,bub=62;
float ex=0,egx=0,es=0.05;

void setup()
{
  size(600,300);
  col=getColors(value);
}

void draw()
{
  background(145,209,247);
  val=10-constrain(map(mouseX,0,width,0,10),0,10);
  pushMatrix();
  translate(width/2+width/4,height/2);
  drawsmileyface(width/2);
  popMatrix();
  value=map(mouseX, 0, width, 0, 1000);
  pushMatrix();
  translate(width/4, height/2);
  drawarcs(width/2);
  popMatrix();
}

void drawsmileyface(float sz)
{
  int r=int(sz)/2;
  float vmax=10f;
  float dia=2*r,oy=dia*0.05,ed=dia*0.15,hl=0;
  float unhap=map(val,0,vmax,0,1);
  float fr=map(unhap,0,1,255,0);
  float fg=map(unhap,0,1,0,255);
  float x1,y1,x2,y2,x3,y3,x4,y4;
  strokeCap(ROUND);
  if(random(100)<5)
  {
    egx=random(ed*0.9)-(ed*0.45);
    es=random(0.05)+((1-unhap)*0.1);
  }
  if(ex!=egx) ex+=(egx-ex)*es;
  hl=(0.4-unhap)*(r*0.5)+(r*0.05);
  if(unhap<=0.4) // Bad, so get some horns!!
  {
    pushMatrix();
    rotate(-0.2*PI);
    stroke(255,255,255);
    strokeWeight(r*0.02);
    noFill();
    beginShape();
    vertex(-dia/5,0);
    vertex(0,-(r*0.8)-hl);
    vertex(dia/5,0);
    endShape(CLOSE);
    popMatrix();
    pushMatrix();
    rotate(0.2*PI);
    stroke(255,255,255);
    strokeWeight(r*0.02);
    noFill();
    beginShape();
    vertex(-dia/5,0);
    vertex(0,-(r*0.8)-hl);
    vertex(dia/5,0);
    endShape(CLOSE);
    popMatrix();
  }
  noStroke();
  fill(255,255,255);
  ellipse(0,oy,dia*0.8,dia*0.8);
  fill(fr,fg,0);
  ellipse(0,oy,dia*0.79,dia*0.79);
  if(unhap<=0.4) // Bad, so get some horns!!
  {
    pushMatrix();
    rotate(-0.2*PI);
    noStroke();
    fill(fr,fg,0);
    beginShape();
    vertex(-dia/5,0);
    vertex(0,-(r*0.8)-hl);
    vertex(dia/5,0);
    endShape(CLOSE);
    popMatrix();
    pushMatrix();
    rotate(0.2*PI);
    noStroke();
    fill(fr,fg,0);
    beginShape();
    vertex(-dia/5,0);
    vertex(0,-(r*0.8)-hl);
    vertex(dia/5,0);
    endShape(CLOSE);
    popMatrix();
  }
  fill(255,255,255);
  ellipse(-(r*0.3),-(r*0.1),ed,(ed*0.5)+(ed*0.5*unhap));
  ellipse((r*0.3),-(r*0.1),ed,(ed*0.5)+(ed*0.5*unhap));
  fill(bur,bug,bub);
  ellipse(-(r*0.3)+ex,(random(2)-1)-(r*0.1)-map(unhap,0,1,-ed*0.15,ed*0.15),ed*0.2,ed*0.2);
  ellipse((r*0.3)+ex,(random(2)-1)-(r*0.1)-map(unhap,0,1,-ed*0.15,ed*0.15),ed*0.2,ed*0.2);
  fill(100,100,100);
  ellipse(-(r*0.3)+ex,(random(2)-1)-(r*0.1)-map(unhap,0,1,-ed*0.15,ed*0.15),ed*0.1,ed*0.1);
  ellipse((r*0.3)+ex,(random(2)-1)-(r*0.1)-map(unhap,0,1,-ed*0.15,ed*0.15),ed*0.1,ed*0.1);
  x1=-(r*0.4);
  y1=r*0.35;
  x2=-(r*0.2);
  y2=map(unhap,0,1,y1-(r*0.3),y1+(r*0.3));
  x3=r*0.2;
  y3=y2;
  x4=r*0.4;
  y4=y1;
  noFill();
  stroke(255,255,255);
  strokeWeight(ed*0.5);
  bezier(x1,y1,x2,y2,x3,y3,x4,y4);
  if(unhap>=0.6) // Good, so get a halo!!
  {
    strokeWeight(ed*0.2);
    stroke(255,255,0,100);
    noFill();
    ellipse(0,-(0.85*r),(dia*0.7*(unhap-0.6))+(dia*0.3),r*0.15);
    strokeWeight(ed*0.05);
    stroke(255,255,0);
    ellipse(0,-(0.85*r),(dia*0.7*(unhap-0.6))+(dia*0.3),r*0.15);
  }
}

void drawarcs(float sz)
{
  float scl=(sz/360.0)*0.85;
  strokeWeight(13*scl);
  strokeCap(SQUARE);
  noFill();
  smooth();
  //ring 1 components
  stroke(col[0]);      //Line colour of ring 1 components set to col array position 0.
  float rotSpeedPos=map(value,0,1000,1,3);  //Speed of clockwise rotation mapped to parametric value.
  rotate(radians(frameCount)*rotSpeedPos);          //Set rotation speed clockwise for ring 1 & ring 3
  arc(0*scl,-5*scl,75*scl,65*scl,-PI,0);      //arc parameters (x, y, width, height, start, stop);
  arc(0*scl,5*scl,75*scl,65*scl,0,PI);
  //ring 3 components
  stroke(col[2]);
  float w=map(value,0,1000,225,285);    //Width of arc mapped to parametric data scale so it can resize for ring 3.
  float h=map(value,0,1000,225,285);    //Height of arc mapped to parametric data scale so it can resize for ring 3.
  arc(-5*scl,-5*scl,w*scl,h*scl,-PI,-PI/2);
  arc(-5*scl,5*scl,w*scl,h*scl,PI/2,PI);
  arc(5*scl,5*scl,w*scl,h*scl,0,PI/2);
  arc(5*scl,-5*scl,w*scl,h*scl,-PI/2,0);
  //ring 2 components
  stroke(col[1]);
  float rotSpeedNeg=map(value,0,1000,-2,-6);    //Speed of anti-clockwise rotation
  rotate(radians(frameCount)*rotSpeedNeg);            //Set rotation speed anti-clockwise for ring 2 & ring 4
  w=map(value,0,1000,140,190);      //Width of arc mapped to parametric data scale so it can resize for ring 2.
  h=map(value,0,1000,135,185);      //Height of arc mapped to parametric data scale so it can resize for ring 2.
  arc(-5*scl,-5*scl,w*scl,h*scl,-PI,-PI/3);
  arc(-5*scl,5*scl,w*scl,h*scl,PI/3,PI);
  arc(5*scl,0*scl,w*scl,h*scl,-PI/3,PI/3);
  //ring 4 components
  w=map(value,0,1000,300,360);      //Width of arc mapped to parametric data scale so it can resize for ring 4.
  h=map(value,0,1000,300,360);      //Height of arc mapped to parametric data scale so it can resize for ring 4.
  arc(-5*scl,-5*scl,w*scl,h*scl,-PI,-PI/1.5);
  arc(-5*scl,5*scl,w*scl,h*scl,PI/1.5,PI);
  arc(5*scl,5*scl,w*scl,h*scl,0,PI/3);
  arc(0*scl,8*scl,w*scl,h*scl,PI/3,PI/1.5);
  arc(0*scl,-8*scl,w*scl,h*scl,-PI/1.5,-PI/3);
  arc(5*scl,-5*scl,w*scl,h*scl,-PI/3,0);
  col= getColors(value);
}

/*
Gets the color of an arc based on the parametric value on a scale of 0 to 1000.
Float 'datin' is used to set the current position on the scale. Returns the colour
to set depending on the colour array selected.
*/
color[] getColors(float datin)
{
  float r=map(datin,0,1000,10,0);       //Ring 1 colour maps
  float g=map(datin,0,1000,240,0);
  float b=map(datin,0,1000,230,0); 
  float r1=map(datin,0,1000,12,255);    //Ring's 2 and 4 colour maps
  float g1=map(datin,0,1000,237,69);
  float b1=map(datin,0,1000,35,9);
  float r2=map(datin,0,1000,252,139);   //Ring 3 colour maps
  float g2=map(datin,0,1000,252,69);
  float b2=map(datin,0,1000,3,19);
  //Array of colours, where the values of r, g & b are mapped to parametric data scale with the colours considered to be 'opposite'.
  color c[]={   //converted colour map values are initially blue, green & yellow.
    color(int(r),int(g),int(b)),color(int(r1),int(g1),int(b1)),color(int(r2),int(g2),int(b2)),
    color(0,0,0),color(255,0,0),color(139,69,19)     //black, red, brown
  };
  return c;
}

