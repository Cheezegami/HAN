package nl.han.ica.ObjectOrientedAbyss;

import java.util.List;

import nl.han.ica.OOPDProcessingEngineHAN.Alarm.Alarm;
import nl.han.ica.OOPDProcessingEngineHAN.Alarm.IAlarmListener;
import nl.han.ica.OOPDProcessingEngineHAN.Collision.ICollidableWithGameObjects;
import nl.han.ica.OOPDProcessingEngineHAN.Objects.GameObject;
import nl.han.ica.OOPDProcessingEngineHAN.Objects.Sprite;
import nl.han.ica.OOPDProcessingEngineHAN.Sound.Sound;
import nl.han.ica.ObjectOrientedAbyss.ObjectOrientedAbyss;
import processing.core.PGraphics;

public class Zwaard extends Wapen implements ICollidableWithGameObjects, IAlarmListener {
	Sound klank;
	Sprite sprite;
	
	public Zwaard(ObjectOrientedAbyss wereld) {
		super(wereld, new Sprite("src/main/java/nl/han/ica/ObjectOrientedAbyss/media/Item/sword1.png"));
		this.sprite = new Sprite("src/main/java/nl/han/ica/ObjectOrientedAbyss/media/Item/sword1.png");
		this.klank = new Sound(wereld, "src/main/java/nl/han/ica/ObjectOrientedAbyss/media/Sound/SwordSlash.wav");
	}
	
	public void aanval() {
		Alarm alarm = new Alarm("eindAanval", 0.1);
		alarm.addTarget(this);
		alarm.start();
		klank.rewind();
		klank.play();
	
	}
	@Override
	public void update() {
		// TODO Auto-generated method stub
		
	}
	public void gameObjectCollisionOccurred(List<GameObject> collidedGameObjects) {  
		for (GameObject g:collidedGameObjects) {  
			if (g instanceof MonsterSpin || g instanceof MonsterSpin2) {
				wereld.deleteGameObject(g);
				
			}
		}
	}
	@Override
	public void triggerAlarm(String alarmName) {
		if(alarmName == "eindAanval"){
		wereld.deleteGameObject(this);
		}	
	}
}
