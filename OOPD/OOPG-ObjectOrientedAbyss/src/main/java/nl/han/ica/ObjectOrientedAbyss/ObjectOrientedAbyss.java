package nl.han.ica.ObjectOrientedAbyss;

import com.sun.prism.image.ViewPort;
import nl.han.ica.OOPDProcessingEngineHAN.Dashboard.Dashboard;
import nl.han.ica.OOPDProcessingEngineHAN.Engine.GameEngine;
import nl.han.ica.OOPDProcessingEngineHAN.Objects.GameObject;
import nl.han.ica.OOPDProcessingEngineHAN.Objects.Sprite;
import nl.han.ica.OOPDProcessingEngineHAN.Persistence.FilePersistence;
import nl.han.ica.OOPDProcessingEngineHAN.Persistence.IPersistence;
import nl.han.ica.OOPDProcessingEngineHAN.Sound.Sound;
import nl.han.ica.OOPDProcessingEngineHAN.Tile.TileMap;
import nl.han.ica.OOPDProcessingEngineHAN.Tile.TileType;
import nl.han.ica.OOPDProcessingEngineHAN.View.Viewport;
import nl.han.ica.ObjectOrientedAbyss.TextObject;
import nl.han.ica.OOPDProcessingEngineHAN.View.CenterFollowingViewport;
import nl.han.ica.OOPDProcessingEngineHAN.View.View;
import processing.core.PApplet;

/**
 * @author Bas ten Cate en Ronald van Egdom
 */
@SuppressWarnings("serial")
public class ObjectOrientedAbyss extends GameEngine {
	private int worldWidth;
	private int worldHeight;
	private Speler speler;
	private TextObject dashboardText;
	private MonsterSpin monsterSpin;
	private MonsterSpin2 monsterSpin2;
	private Sound backgroundSound;

    public static void main(String[] args) {
        PApplet.main(new String[]{"nl.han.ica.ObjectOrientedAbyss.ObjectOrientedAbyss"});
    }
    public void setupGame() {

        this.setWorldWidth(1680);
        this.setWorldHeight(1680);
        maakMap();
       initializeSound();
        createObjects();
        createDashboard(worldWidth, 100);
        createViewWithViewport(speler,getWorldWidth(), getWorldHeight(), 420,420);
        
    }
    private void createObjects() {
    	speler = new Speler(this);
        addGameObject(speler, 280, 560);
        monsterSpin = new MonsterSpin(this);
        addGameObject(monsterSpin, 560, 280);
        monsterSpin2 = new MonsterSpin2(this);
        addGameObject(monsterSpin2, 728, 560);
    }
    private void createViewWithViewport(GameObject speler, int worldWidth,int worldHeight,int zoomX, int zoomY) {
        CenterFollowingViewport viewPort = new CenterFollowingViewport(speler,zoomX, zoomY);
        View view = new View(viewPort, worldWidth,worldHeight);
        setView(view);
        size(worldHeight/2,worldHeight/2);
    }
    

    public void maakMap(){
    	Sprite muurTegel = new Sprite( "src/main/java/nl/han/ica/ObjectOrientedAbyss/media/Tile/walltile1.png");
    	Sprite vloerTegel = new Sprite( "src/main/java/nl/han/ica/ObjectOrientedAbyss/media/Tile/floortile1.png");
    	Sprite valTegel = new Sprite( "src/main/java/nl/han/ica/ObjectOrientedAbyss/media/Tile/falltile1.png");
    	Sprite trapTegel = new Sprite( "src/main/java/nl/han/ica/ObjectOrientedAbyss/media/Tile/stairstile1.png");
    	TileType<MuurTegel> TegelType = new TileType<>(MuurTegel.class, muurTegel);
    	TileType<VloerTegel> TegelType2 = new TileType<>(VloerTegel.class, vloerTegel);
    	TileType<ValTegel> TegelType3 = new TileType<>(ValTegel.class, valTegel);
    	TileType<TrapTegel> TegelType4 = new TileType<>(TrapTegel.class, trapTegel);
    	TileType[] tileTypes = { TegelType, TegelType2, TegelType3, TegelType4 };
    	int tileSize=56;
        int tilesMap[][]={
        		{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}, // Rij 1
        		{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}, // Rij 2
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}, // Rij 3
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}, // Rij 4
                {0,0,0,0,1,1,1,1,1,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,0}, // Rij 5
                {0,0,0,0,1,0,0,0,1,1,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,0,0,0,0,0}, // Rij 6
                {0,0,0,0,1,1,1,1,2,1,1,1,1,1,0,0,0,1,1,1,0,0,1,1,1,0,0,0,0,0}, // Rij 7
                {0,0,0,0,0,0,0,1,1,2,0,0,1,1,1,0,0,0,1,0,0,0,1,1,1,0,0,0,0,0}, // Rij 8
                {0,0,0,0,0,0,0,0,1,0,0,0,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0}, // Rij 9
                {0,0,0,0,1,1,1,0,1,0,0,0,1,1,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0}, //Rij 10
                {0,0,0,0,1,1,1,1,1,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0}, // Rij 11
                {0,0,0,0,1,1,1,0,0,0,0,0,1,1,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0}, // Rij 12
                {0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0}, // Rij 13
                {0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0}, // Rij 14
                {0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0}, // Rij 15
                {0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0}, // Rij 16
                {0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0}, // Rij 17
                {0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,2,1,1,1,2,0,0,0,0}, // Rij 18
                {0,0,0,0,1,1,1,1,1,0,0,0,0,1,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0}, // Rij 19
                {0,0,0,0,1,0,0,0,1,0,0,0,0,1,0,0,0,0,0,0,0,1,1,2,1,1,0,0,0,0}, // Rij 20
                {0,0,0,0,1,0,0,2,1,1,0,0,0,1,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0}, // Rij 21
                {0,0,0,0,1,1,1,1,2,1,1,1,1,1,0,0,0,0,0,0,0,2,1,1,1,2,0,0,0,0}, // Rij 22
                {0,0,0,0,0,0,0,1,1,2,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0}, // Rij 23
                {0,0,0,0,0,0,0,0,1,0,0,0,1,1,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0}, // Rij 24
                {0,0,0,0,1,1,1,0,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,1,0,0,0,0,0,0}, // Rij 25
                {0,0,0,0,1,3,1,1,1,0,0,0,1,1,1,0,0,1,1,1,1,1,1,1,0,0,0,0,0,0}, // Rij 26
                {0,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}, // Rij 27
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}, // Rij 28
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}, // Rij 29
                {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}, // Rij 30
        };
        tileMap = new TileMap(tileSize, tileTypes, tilesMap);
    }
    
    public void update() {
    	refreshDasboardText();
    }
	public int getWorldWidth() {
		return worldWidth;
	}
	public void setWorldWidth(int worldWidth) {
		this.worldWidth = worldWidth;
	}
	public int getWorldHeight() {
		return worldHeight;
	}
	public void setWorldHeight(int worldHeight) {
		this.worldHeight = worldHeight;
	}
	private void initializeSound() {
        Sound backgroundSound = new Sound(this, "src/main/java/nl/han/ica/ObjectOrientedAbyss/media/Sound/AchtergrondMuziek.wav");
        backgroundSound.loop(-1);
 
    }
	public void tekenResetKnop(){
		Dashboard createDashboard = new Dashboard(0,0,width,height);
		createDashboard.setBackground(0,0,0);
		GameOverKnop gameoverknop= new GameOverKnop(width,height/2, this);
		createDashboard.addGameObject(gameoverknop, 0, height/2);
		addGameObject(gameoverknop, 0, height/2);
		addDashboard(createDashboard);
		
	}
    private void createDashboard(int dashboardWidth,int dashboardHeight) {
        Dashboard dashboard = new Dashboard(0,0, dashboardWidth, dashboardHeight);
        dashboardText=new TextObject("");
        dashboard.addGameObject(dashboardText);
        addDashboard(dashboard);
        refreshDasboardText();
    }
    
   public void reset(){
	   deleteAllDashboards();
	   deleteAllGameOBjects();
    	super.setup();   	
    	
    }
    private void refreshDasboardText() {
        dashboardText.setText("Levens speler: "+speler.levens);
    }
}
