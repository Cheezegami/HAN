package nl.han.ica.ObjectOrientedAbyss;

import nl.han.ica.OOPDProcessingEngineHAN.Collision.ICollidableWithTiles;
import nl.han.ica.OOPDProcessingEngineHAN.Engine.GameEngine;
import nl.han.ica.OOPDProcessingEngineHAN.Exceptions.TileNotFoundException;
import java.util.List;
import nl.han.ica.OOPDProcessingEngineHAN.Collision.CollidedTile;
import nl.han.ica.OOPDProcessingEngineHAN.Objects.AnimatedSpriteObject;
import nl.han.ica.OOPDProcessingEngineHAN.Objects.GameObject;
import nl.han.ica.OOPDProcessingEngineHAN.Objects.Sprite;
import nl.han.ica.ObjectOrientedAbyss.ObjectOrientedAbyss;
import nl.han.ica.waterworld.Swordfish;
import processing.core.PGraphics;
import processing.core.PVector;

public class MonsterSpin extends Enemies {
	
	public MonsterSpin(ObjectOrientedAbyss wereld) {
		super("src/main/java/nl/han/ica/ObjectOrientedAbyss/media/NPC/spider1.png",4);
		super.wereld= wereld;
       
	}
	public void Beweeg(int keyCode, char key) {
        final int speed = 3;
        if (keyCode == wereld.UP) {
        	setCurrentFrameIndex(2);        	
        	this.y += size;     	        	
        }
        if (keyCode == wereld.RIGHT) {
        	this.x -= size;
            setCurrentFrameIndex(3);
        }
        if (keyCode == wereld.DOWN) {
        	this.y -= size;
            setCurrentFrameIndex(0);
           
        }
        if (keyCode == wereld.LEFT) {
        	this.x += size;
            setCurrentFrameIndex(1);
        }
	}
}
