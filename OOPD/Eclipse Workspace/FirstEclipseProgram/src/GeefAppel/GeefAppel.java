package GeefAppel;

public class GeefAppel {
	public static void main(String[] args) {
		Appel rodeAppel = new Appel("Appel");
		Appel groeneAppel = new Appel("Appel");
		Appel sinaasAppel = new Appel("SinaasAppel");
		Peer europesePeer = new Peer("Peer");
		Peer aziatischePeer = new Peer("Peer");
		
		rodeAppel.type = "rode appel";
		groeneAppel.type = "groene appel";
		sinaasAppel.type = "sinaasappel";
		europesePeer.type = "Europese peer";
		aziatischePeer.type ="Aziatische peer";
		
		rodeAppel.laatInfoZien();
		groeneAppel.laatInfoZien();
		sinaasAppel.laatInfoZien();
		europesePeer.laatInfoZien();
		aziatischePeer.laatInfoZien();
	}
}
