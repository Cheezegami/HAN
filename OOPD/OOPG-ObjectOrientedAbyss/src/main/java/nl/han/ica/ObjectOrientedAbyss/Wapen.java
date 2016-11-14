package nl.han.ica.ObjectOrientedAbyss;

import java.util.List;

import nl.han.ica.OOPDProcessingEngineHAN.Objects.GameObject;
import nl.han.ica.OOPDProcessingEngineHAN.Objects.Sprite;
import nl.han.ica.OOPDProcessingEngineHAN.Objects.SpriteObject;
import processing.core.PGraphics;

public abstract class Wapen extends SpriteObject {
	static Speler speler;
	protected final ObjectOrientedAbyss wereld;
	public Wapen(ObjectOrientedAbyss wereld, Sprite sprite) {
		super(sprite);
		this.wereld = wereld;
	}
	protected abstract void aanval();
}
