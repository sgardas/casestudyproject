package Helperpack;

public class Helperclass {

	public Helperclass() {
		
	}
	
	
	public int validateattempt(String pass) {
		
		if(pass.contentEquals("Tcs@123")) {
			System.out.println("First attempt");
			return 1;
		}else {
			System.out.println("Not your first attempt");
			return 2;
		}
		
	}

}
