import java.util.*;
/* class GuessNumberOneTime {
	public static void main(String arg[]) {
		int number = (int) (Math.random() * 101);
		Scanner input = new Scanner(System.in);
		System.out.println("Guess a magic number between 0 and 100");
		System.out.println("Enter a Guess Number");
		int guess = input.nextInt();
		
		if(guess == number){
			System.out.println("Yes the Number is : "+number);
		}
		else if(guess>number){
			System.out.println("Guess number is too high");
		}
		else
		
			System.out.println("Guess number is too Low ");
		
	}
	
} */





/* class GuessNumberOneTime {
	public static void main(String arg[]) {
		int number = (int) (Math.random() * 101);
		Scanner input = new Scanner(System.in);
		System.out.println("Guess a magic number between 0 and 100");
		while(true){														//This loop repeatedly prompts the user to enter a guess. However, 																	
																			//this loop is not correct, because it never terminates.
		System.out.println("\n\nEnter a Guess Number");
		int guess = input.nextInt();
		
		if(guess == number){
			System.out.println("Yes the Number is : "+number);
		}
		else if(guess>number){
			System.out.println("Guess number is too high");
		}
		else
		
			System.out.println("Guess number is too Low ");
		}
	}
	
} */



class GuessNumberOneTime {
	public static void main(String arg[]) {
		int number = (int) (Math.random() * 101);
		Scanner input = new Scanner(System.in);
		System.out.println("Guess a magic number between 0 and 100");
		int guess = -1;
		while(guess!=number){												 																	
		System.out.println("\nEnter a Guess Number");
		 guess = input.nextInt();
		
		if(guess==number){
			System.out.println("Yes the Number is : "+number);
		}
		else if(guess>number){
			System.out.println("Guess number is too high");
		}
		else
		
			System.out.println("Guess number is too Low ");
		}
	}
	
}