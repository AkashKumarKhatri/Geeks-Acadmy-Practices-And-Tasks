5import java.util.*;

class ArrayWorld {
	int elements[] = new int[10];
	Scanner ob = new Scanner(System.in);
	
	void menu() {
		System.out.println("\n### Welcome To Array World ####");
		System.out.println("1 ->> Add Elements to Array");
		System.out.println("2 ->> Arrange in Acending Order");
		System.out.println("3 ->> Arrange in Decending Order");
		System.out.println("4 ->> Get the Max: No in Array");
		System.out.println("5 ->> Get the Min: no in Array");
		System.out.println("6 ->> Count Even and Odd Numbers in Array");
		System.out.println("7 ->> Get Average of Number in Array");
		System.out.println("8 ->> Show Array Number");
		System.out.println("\nEnter Your Choice");
		
		int choice = ob.nextInt();
		
		switch(choice){
		case 1: 
			addElements();
			break;
		case 2:
			arrAcending();
			break;
		case 3:
			arrDecending();
			break;
		case 4:
			maxNumber();	
			break;
		case 5:
			minNumber();
			break;
		case 6:
			oddEven();
			break;
		case 7:
			aveArray();
			break;
		case 8:
			showElements();
			break;
		}
		

	}
	void addElements() {
		System.out.println("ENTER THE ELEMENTS IN ARRAY \n");
		for(int i=0;i<10;i++){
			elements[i] = ob.nextInt();
		}
		menu();
		
	}
	
	void showElements() {
		for(int i=0;i<elements.length;i++) {
			System.out.println("\t"+elements[i]);
		}
		menu();
	}
	
	void arrAcending() {
 
		for (int i = 0; i < ( elements.length - 1 ); i++) {
			for (int j = 0; j < elements.length - i - 1; j++) {
				if (elements[j] > elements[j+1]) {
					int temp = elements[j];
					elements[j] = elements[j+1];
					elements[j+1] = temp;
				}
			}
		}
		menu();
	}	
	
	void arrDecending() {
		for (int i = 0; i < ( elements.length - 1 ); i++) {
			for (int j = 0; j < elements.length - i - 1; j++) {
				if (elements[j] < elements[j+1]) {
					int temp = elements[j];
					elements[j] = elements[j+1];
					elements[j+1] = temp;
				}
			}
		}
		menu();
	}
	
	void maxNumber() {
			int max = 0;
			for(int i=0;i<elements.length;i++){
				if(max<elements[i]){
					max = elements[i];
					
				}
			}
			System.out.println("Max: No is "+max);
		menu();
	}
	
	void minNumber() {
		int min = elements[0];
			for(int i=0;i<elements.length;i++){
				if(min>elements[i]){
					min = elements[i];
					
				}
			}
			System.out.println("Min: No is "+min);
		menu();
	}
	void aveArray() {
		int sum = 0;
		for(int i=0;i<elements.length;i++){
			sum = sum + elements[i];
		}
		double average  = sum/elements.length;
		System.out.println("Average of Array is "+average);
		
		
	}
	void oddEven() {
		int odd = 0;
		int even = 0;
		
		for(int i=0;i<elements.length;i++){
			int check = elements[i]%2;
			if(check==0){
				even++;
			}
			else{
				odd++;
			}
		}
		System.out.println("Even = "+even+" Odd = "+odd);
		menu();
	}
	
	
	public static void main(String arg[]) {
		
		ArrayWorld ary = new ArrayWorld();
		ary.menu();
	}
}