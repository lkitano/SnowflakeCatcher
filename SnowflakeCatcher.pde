Snowflake [] snowFall; 
int x = 255;

void setup()
{
  //your code here
  frameRate(60);
  background(0);
  size(400,400);
  snowFall = new Snowflake[250];
  for(int i = 0; i < snowFall.length; i++){
      snowFall[i] = new Snowflake();
  }
}
void draw()
{
  //your code here
  
  for(int i = 0;i < snowFall.length; i++){
    snowFall[i].erase();
    snowFall[i].lookDown();
    snowFall[i].move();
    snowFall[i].wrap();
    snowFall[i].show();
  } 



}


class Snowflake
{
  //class member variable declarations
  int x,y;
  boolean isMoving;

  Snowflake()
  {
    //class member variable initializations
      x = (int)(Math.random()*400);
      y = (int)(Math.random()*400);
      isMoving = true;
  }
  void show()
  {
    //your code here
    stroke(0);
    fill(255);
    ellipse(x,y,5,5);
  }
  void lookDown()
  {
  
        if(get(x,y+5) != color(0,0,0)&&(y<=395 && y >=0)){
          isMoving = false;
        } else {
          isMoving = true;
        }

      
      
      
  }
  void erase()
  {
    //your code here
    fill(0);
    stroke(0);
    ellipse(x,y,7,7);



  }
  void move()
  {
    //your code here
      if (isMoving == true){
        y++;
      } 


  }
  void wrap()
  {
    //your code here
    if(y%400==395){
      y=0;
      x=(int)(Math.random()*400); 
    }

  }
}



void mouseDragged()
{
  //your code here
  
  noStroke();
  fill(x,0,0);
  ellipse(mouseX,mouseY,10,10);  

  
  
}
