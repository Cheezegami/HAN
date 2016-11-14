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
import processing.core.PGraphics;
import processing.core.PVector;


public abstract class Enemies extends AnimatedSpriteObject implements ICollidableWithTiles{
	protected static Sprite sprite;
	protected ObjectOrientedAbyss wereld;
	protected final int size=14;
	
	
	public Enemies(String fileNaam, int totalFrames) {
		super(new Sprite(fileNaam), totalFrames);
		 setCurrentFrameIndex(0);
		// TODO Auto-generated constructor stub
	}
	
	public static void Aanval() {
		
	}
	public void keyPressed(int keyCode, char key) {
		Beweeg(keyCode, key);
	}

	
	public abstract void Beweeg(int keyCode, char key);

	@Override
    public void update() {
        if (getX()<=0) {
            setxSpeed(0);
            setX(0);
        }
        if (getY()<=0) {
            setySpeed(0);
            setY(0);
        }
        if (getX()>=wereld.getWorldWidth()-size) {
            setxSpeed(0);
            setX(wereld.getWorldWidth() - size);
        }
        if (getY()>=wereld.getWorldHeight()-size) {
            setySpeed(0);
            setY(wereld.getWorldHeight() - size);}
        }

	@Override
	public void tileCollisionOccurred(List<CollidedTile> collidedTiles) {
		// TODO Auto-generated method stub
		PVector vector;

        for (CollidedTile ct : collidedTiles) {
            if (ct.theTile instanceof MuurTegel || ct.theTile instanceof ValTegel) {
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
        }
	}
}




