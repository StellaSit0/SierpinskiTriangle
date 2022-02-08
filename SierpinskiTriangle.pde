public void setup(){
  size(600,600);
}
public void draw(){
  sierpinski(200,350,200);
}
public void mouseDragged(){
  for(int i=0;i<1000;i+=100){
    sierpinski(i-100,350,i);
  }
}
public void sierpinski(int x, int y, int len){
  if(len<=20){
    triangle(x,y,x+len/2,y-len,x+len,y);
  }else{
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);
  }
}
