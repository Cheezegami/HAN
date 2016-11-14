import processing.core.PApplet;

public class FirstClass extends PApplet {
	int time;
	boolean k;
	int i;
	
	public static void main(String[] args) {
		PApplet.main(new String[] {"FirstClass"});
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
			 time = millis() + 1;
			 i++;
			 if(i < 256 && k == false) {
						 fill(256-i);
						 stroke(256-i);
						 rect(width/2,height/2,width/i*16,height/i*16);
						 if(i >= 255) {
							 k = true;
							 i = 0;
						 }
			 		}
			 else if(i < 256 && k == true) {
					 fill(i);
					 stroke(i);
					 ellipse(width/2,height/2,width/i*16,height/i*16);
					 if(i >= 255) {
						 k = false;
						 i = 0;
					 }
			}
		}
	}
}