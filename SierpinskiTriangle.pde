int count = 20;
int nTriangle = 3;
boolean bigger = true;
final int BASEHEIGHT = 10;
public void setup()
{
	size(640,640);
	background(0);
}
public void stats(){
	double perimeter = nTriangle*(BASEHEIGHT+Math.sqrt(Math.pow(BASEHEIGHT,2)+Math.pow(BASEHEIGHT/2,2)));
	double area = nTriangle*(BASEHEIGHT*BASEHEIGHT/2);
	double scale = Math.pow(10,3);
    perimeter = Math.round(perimeter * scale) / scale;
    area = Math.round(area*scale)/scale;
	fill(255,255,0);
	text("Perimeter: "+perimeter,500,10);
	text("Area: "+area,500,25);
}
public void draw()
{
	background(0);
	sierpinski(0,height,count);
	stats();
}
public void mousePressed()//optional
{
	if(count==640||count==10)
		bigger= !bigger;
	if(bigger==true){
		count*=2;
		nTriangle*=3;
	}
	else{
		count/=2;
		nTriangle/=3;
	}
	background(0);
}
public void sierpinski(int x, int y, int len) 
{
	float r,g,b;
	r = (float)Math.random()*255;
	g = (float)Math.random()*255;
	b = (float)Math.random()*255;
	stroke(r,g,b);
	fill(r,g,b);
	if(len<=10) triangle(x,y,x+len,y,x+len/2,y-len);
	else{
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,y-len/2,len/2);
	}
}