Particle[] star=new Particle[500];
void setup()
{

  size(500,500);
 for(int i=0;i<star.length - 25;i++){

    star[i]= new Particle ();
  }
  
  for(int i=475;i<star.length;i++){

    star[i]= new Oddball ();
  }
}
void draw()
{
  background(0,28,124);
 for(int i=0;i<star.length;i++){
    star[i].show();
    star[i].fly();
  }
}
class Particle
{
  int size,colour;
double x,y,speed, type;
double angle;
Particle(){
  x=250;
  y=250;
  speed=5;
  colour=(int)(Math.random()*3);
  size=10;
  angle=Math.random()*2*Math.PI;
  type=(int)(Math.random()*6);
}
void show(){
  fill(253, 253, 203);
  rect((int)x,(int)y,size,size);
}
void fly(){
    x+=speed*Math.cos(angle);
    y+=speed*Math.sin(angle);
    if(x>=500||x<=0||y>=500||y<=0){
      x=250;
      y=250;
    }
}
}


class Oddball extends Particle
{
Oddball(){
  x=250;
  y=250;
  speed=0.5;
  size=50;
  angle=Math.random()*2*Math.PI;
}


}
