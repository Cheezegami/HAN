package GeefAppel;

public class Appel extends Fruit {
	public String type;
	public static int aantal;
	
	public Appel(String fruit) {
		super(fruit);
		id = Fruit.aantal;
		aantal++;	

	}
	
	public void laatInfoZien() {
		System.out.println("Het id nummer van de appel is " + id + ", het aantal appels is " + Appel.aantal +", de appel is een " + type +" en het type fruit is " + fruit + ".");
	}
}

