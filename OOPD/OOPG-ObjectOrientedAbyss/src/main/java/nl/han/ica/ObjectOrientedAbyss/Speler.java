package nl.han.ica.ObjectOrientedAbyss;

import nl.han.ica.OOPDProcessingEngineHAN.Collision.ICollidableWithTiles;
import nl.han.ica.OOPDProcessingEngineHAN.Engine.GameEngine;
import nl.han.ica.OOPDProcessingEngineHAN.Exceptions.TileNotFoundException;
import java.util.List;
import nl.han.ica.OOPDProcessingEngineHAN.Collision.CollidedTile;
import nl.han.ica.OOPDProcessingEngineHAN.Collision.ICollidableWithGameObjects;
import nl.han.ica.OOPDProcessingEngineHAN.Objects.AnimatedSpriteObject;
import nl.han.ica.OOPDProcessingEngineHAN.Objects.GameObject;
import nl.han.ica.OOPDProcessingEngineHAN.Objects.Sprite;
import nl.han.ica.ObjectOrientedAbyss.ObjectOrientedAbyss;
import processing.core.PGraphics;
import processing.core.PVector;

public class Speler extends AnimatedSpriteObject implements ICollidableWithTiles, ICollidableWithGameObjects {
	
	private int xTile;
	private int yTile;
	int levens;
	private Wapen wapens;
	private boolean currentTurn;
	private final ObjectOrientedAbyss wereld;
	final int size=14;
	
	public Speler(ObjectOrientedAbyss wereld) {
		super(new Sprite("src/main/java/nl/han/ica/ObjectOrientedAbyss/media/Player/BluePlayer.png"),4);
		this.wereld=wereld;
        setCurrentFrameIndex(0);
       this.levens = 100;
        wapens = new Zwaard(wereld);
        //wereld.addGameObject(wapens, (int)x, (int)y);
	}
	
	public void keyPressed(int keyCode, char key) {
		Aanval(keyCode, key);
		Beweeg(keyCode, key);
	}	
	
	public void Aanval(int keyCode, char key){
		if(key == ' '){
			
		wapens.aanval();
		if(getCurrentFrameIndex() == 0){
			wereld.addGameObject(wapens,(int)x, (int)y-4*size);
			}
		if(getCurrentFrameIndex() == 1){
			wereld.addGameObject(wapens,(int)x+4*size, (int)y);
			}
		if(getCurrentFrameIndex() == 2){
			wereld.addGameObject(wapens,(int)x, (int)y+4*size);
			}
		if(getCurrentFrameIndex() == 3){
			wereld.addGameObject(wapens,(int)x-4*size, (int)y);
			}
		}
	}

	private void Beweeg(int keyCode, char key) {
        final int speed = 0;
        if (keyCode == wereld.UP) {
        	setCurrentFrameIndex(0);        	
        	this.y -= size;     	        	
        }
        if (keyCode == wereld.RIGHT) {
        	this.x += size;
            setCurrentFrameIndex(1);
        }
        if (keyCode == wereld.DOWN) {
        	this.y += size;
            setCurrentFrameIndex(2);
           
        }
        if (keyCode == wereld.LEFT) {
        	this.x -= size;
            setCurrentFrameIndex(3);
        }
	}
//private void collide(){
//	 if(wereld.getTileMap().getTileOnPosition((int)x,(int)y) instanceof muurTegel ||wereld.getTileMap().getTileOnPosition((int)this.x,(int)this.y) instanceof valTegel){
//     	this.x = prevX;
//     	this.y = prevY;
//     }
//}
	@Override
    public void update() {
		if(levens < 1)
		{
			wereld.deleteGameObject(this);
			wereld.tekenResetKnop();
		}
        if (getX()<=0) 
        {
            setxSpeed(0);
            setX(0);
        }
        if (getY()<=0)
        {
            setySpeed(0);
            setY(0);
        }
        if (getX()>=wereld.getWorldWidth()-size) 
        {
            setxSpeed(0);
            setX(wereld.getWorldWidth() - size);
        }
        if (getY()>=wereld.getWorldHeight()-size) 
        {
            setySpeed(0);
            setY(wereld.getWorldHeight() - size);}
		}

	
	@Override
	public void tileCollisionOccurred(List<CollidedTile> collidedTiles) {
		// TODO Auto-generated method stub
		PVector vector;

        for (CollidedTile ct : collidedTiles) {
            if (ct.theTile instanceof MuurTegel) {
                if (ct.collisionSide == ct.TOP) {
                    try {
                        vector = wereld.getTileMap().getTilePixelLocation(ct.theTile);
                        setY(vector.y - getHeight());
                    } catch (TileNotFoundException e) {
                        e.printStackTrace();
                    }
                }
                if (ct.collisionSide == ct.RIGHT) {
                    try {
                        vector = wereld.getTileMap().getTilePixelLocation(ct.theTile);
                        setX(vector.x + getHeight());
                    } catch (TileNotFoundException e) {
                        e.printStackTrace();
                    }
                }
                if (ct.collisionSide == ct.BOTTOM) {
                    try {
                        vector = wereld.getTileMap().getTilePixelLocation(ct.theTile);
                        setY(vector.y + getHeight());
                    } catch (TileNotFoundException e) {
                        e.printStackTrace();
                    }
                }
                if (ct.collisionSide == ct.LEFT) {
                    try {
                        vector = wereld.getTileMap().getTilePixelLocation(ct.theTile);
                        setX(vector.x - getHeight());
                    } catch (TileNotFoundException e) {
                        e.printStackTrace();
                    }
                }
                
            }
            if (ct.theTile instanceof ValTegel){
                	levens = 0;
            }   
        }
        
	}
	public void gameObjectCollisionOccurred(List<GameObject> collidedGameObjects) {  
		for (GameObject g:collidedGameObjects) {  
			if (g instanceof MonsterSpin || g instanceof MonsterSpin2) {
				levens -=1;
				
			}
		}
	}
}
