package programs;

public class AgeException  extends Exception{
	
	AgeException(String msg)
	{	
		super(msg);
	}
	public String getMessage()
	{
		return "Age is not valid";
	}
}
