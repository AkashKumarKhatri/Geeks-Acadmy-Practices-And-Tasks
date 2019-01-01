package programs;

class AccountException extends Exception
{
	public AccountException(String a)
	{
		super(a);
	}
}
public class DemoException {
	
	public static void main(String args[])
	{
		int a=2;
		System.out.println("****IN***");
		try{
			if(a==2)
			{
				throw new AccountException("Not Valid");
			}
		}
		catch(AccountException exe)
		{
			System.out.println("asdf");
			exe.printStackTrace();
		}
		catch(ArithmeticException talha)
		{
			talha.printStackTrace();
		}
		catch(IndexOutOfBoundsException io)
		{
			io.printStackTrace();
		}
		finally
		{
			System.out.print("hey");
		}
		
		System.out.println("****OUT***");
	
	}
}
