package GeefAppel;

public class Peer extends Fruit {
	public String type;
	public static int aantal;
	
	public Peer(String fruit) {
		super(fruit);
		id = Fruit.aantal;
		aantal++;	
	}
	
	public void laatInfoZien() {
		System.out.println("Het id nummer van de peer is " + id + ", het aantal peren is " + Peer.aantal +", de peer is een " + type +" en het type fruit is " + fruit + ".");
	}
}