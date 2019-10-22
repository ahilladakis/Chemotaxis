point [] arr;
void setup()  
{    
  noStroke();
  arr = new point[800];
  for (int count = 0; count < arr.length; count++)
  {
    arr[count] = new point();
  }
  size(1000, 500);
}  
void draw()  
{    
  background(0);
  for (int count = 0; count < arr.length; count++)
  {
    arr[count].walk();
    arr[count].show();
  }
}  
class point  
{    
  int myX, myY;

  point()
  {
    myX = (int)(Math.random() * 1000);
    myY = (int)(Math.random() * 500);
  }
  void show()
  {
    
    fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    ellipse(myX, myY, 15, 15);
  }
  void walk()
  {
    if(mouseX>myX)
      myX = myX + (int)(Math.random()*5)-1;
    else
      myX = myX + (int)(Math.random()*5)-3;
    if(mouseY>myY)
      myY = myY + (int)(Math.random()*5)-1;
    else
      myY = myY + (int)(Math.random()*5)-3;
   
  }
} 