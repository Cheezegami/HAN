package GeefAppel;

public class Fruit 
{
	public static int aantal;
	public int id;
	protected String fruit;
	
	protected Fruit(String fruit) {
		this.fruit = fruit;
		id = aantal;
		aantal++;	
	}

}

