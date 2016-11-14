package nl.han.ica.ObjectOrientedAbyss;

import nl.han.ica.OOPDProcessingEngineHAN.Objects.GameObject;
import processing.core.PGraphics;

/**
 * @author Ralph Niels
 * Wordt gebruikt om een tekst te kunnen afbeelden
 */
public class TextObject extends GameObject {

    private String text;

    public TextObject(String text) {
        this.text=text;
    }

    public void setText(String text) {
        this.text=text;
    }

    @Override
    public void update() {

    }

    @Override
    public void draw(PGraphics g) {
    	g.color(255,255,180);
        g.textAlign(g.LEFT,g.TOP);
        g.textSize(30);
        g.text(text,getX(),getY());
    }
}