int count = 10;
public void setup()
{
	size(640,640);
	background(0);
}
public void draw()
{
	sierpinski(0,height,count);
}
public void mousePressed()//optional
{
	if(count<=320){
		count*=2;
	}
	else{
		count/=2;
	}
	background(0);
}
public void sierpinski(int x, int y, int len) 
{
	stroke(255,0,0);
	fill(255,0,0);
	if(len<=10) triangle(x,y,x+len,y,x+len/2,y-len);
	else{
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,y-len/2,len/2);
	}
}