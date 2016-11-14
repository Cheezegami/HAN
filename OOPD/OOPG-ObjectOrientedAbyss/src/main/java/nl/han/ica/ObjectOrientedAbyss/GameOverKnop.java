package nl.han.ica.ObjectOrientedAbyss;
import nl.han.ica.OOPDProcessingEngineHAN.Objects.GameObject;
import nl.han.ica.OOPDProcessingEngineHAN.UserInput.IMouseInput;
import processing.core.PApplet;
import processing.core.PGraphics;

public class GameOverKnop extends GameObject implements IMouseInput{
	private int breedte;
	private int hoogte;
	ObjectOrientedAbyss wereld;
	public GameOverKnop(int breedte, int hoogte, ObjectOrientedAbyss wereld) {
		this.wereld = wereld;
		this.breedte = breedte;
		this.hoogte = hoogte;
	}

	@Override
	public void update() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void draw(PGraphics g) {
	//ziet er niet bijzonder goed uit, maar het zal maar moeten
		g.fill(204,0,0);
		g.rect(x,y,breedte,hoogte);
		g.textSize(56);
		g.fill(0);
		g.text("Reset", x, y+(hoogte/2));
	}
	/***
	*ik weet niet hoe ik mousepressed gebruik in deze engine 
	**/
	@Override
	public void mousePressed(int x, int y, int button){
	if(x > this.x && x < this.x+breedte &&y > this.y && y < this.y+ hoogte){
		wereld.reset();
		}
	}
}
