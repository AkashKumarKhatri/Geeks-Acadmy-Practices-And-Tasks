package programs;

public class TestCustomException {

	public static void main(String arg[]) throws AgeException
	{
		checkAge(10);
		
	}
	static void checkAge(int age) throws AgeException
	{
		
			if(age < 18)
			{
				throw new AgeException("Not valid");
			}
			else
			System.out.println("Welcome");	
			
				
	}
	
}
