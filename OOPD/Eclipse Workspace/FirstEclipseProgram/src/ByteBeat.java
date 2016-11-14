import processing.core.PApplet;

public class ByteBeat extends PApplet {
	int time;
	boolean k;
	int i;
	
	public static void main(String[] args) {
		PApplet.main(new String[] {"ByteBeat"});
	}
	public void settings() {
		size(800, 800);
		
	}
	
	public void setup() {
		time = 0;
		i = 0;
		k = false;
		background(255,255,255);
		rectMode(CENTER);
		System.out.println("Hello world!");
	}
	public void draw() {
		if( millis() > time ){
			 time = millis() + 1000;
			 i++;
			 if(i < 256 && k == false) {
						 println(255-i);
						 if(i >= 255) {
							 k = true;
							 i = 0;
						 }
			 		}
			 else if(i < 256 && k == true) {
					 println(i);
					 if(i >= 255) {
						 k = false;
						 i = 0;
					 }
			}
		}
	}
}