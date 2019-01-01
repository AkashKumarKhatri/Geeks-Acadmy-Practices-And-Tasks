import java.util.*;
 class Demo {
	public static void main(String arg[]){
		Scanner ob = new Scanner(System.in);
		int n = ob.nextInt();
		for(int i=0;i<n;i++) {
			for(int j=0;j<=(n-i);j++) {
				System.out.print(" ");
			}
			for(int k=0;k<=i;k++) {
				System.out.print("*");
			}
			System.out.println();
			
		}
	}
} 





/*  class Demo {
	public static void main(String arg[]) {
		Scanner ob = new Scanner(System.in);
		int num = ob.nextInt();
		for(int i=1; i<=num; i++) {
			for(int j=1;j<=i;j++){
				System.out.print("*");
		
			}
			System.out.println();
		}
		
	}
}  */





/*  class Demo {
	public static void main(String arg[]){
		Scanner ob = new Scanner(System.in);
		int n = ob.nextInt();
		for(int i=n;i>0;i--) {
			for(int j=1;j<=i;j++) {
				System.out.print("*");
			}
			// for(int k=0;k<=i;k++) {
				//System.out.print("*");
			//} 
			System.out.println();
			
		}
	}
} 
 */


/*  class Demo {
	public static void main(String arg[]){
		Scanner ob = new Scanner(System.in);
		int n = ob.nextInt();
		for(int i=0;i<n;i++) {
			for(int j=0;j<=i;j++) {
				System.out.print(" ");
			}
			for(int k=1;k<=(n-i);k++) {
				System.out.print("*");
			} 
			System.out.println();
			
		}
	}
}  
 */

/*  class Demo {
	public static void main(String arg[]){
		Scanner ob = new Scanner(System.in);
		int n = ob.nextInt();
		for(int i=0;i<n;i++) {
			for(int j=0;j<=(n-i);j++) {
				System.out.print(" ");
			}
			for(int k=0;k<=(i*2);k++) {
				System.out.print("*");
			} 
			System.out.println();
			
		}
	}
}   
 */



/* class Demo {
	public static void main(String arg[]){
		Scanner ob = new Scanner(System.in);
		int n = ob.nextInt();
		for(int i=n;i>=0;i--) {
			for(int j=1;j<=(n-i);j++) {
				System.out.print(" ");
			}
			for(int k=0;k<=(i*2);k++) {
				System.out.print("*");
			} 
			System.out.println();	
		}
	}
} */   











/* 
class Demo {
	public static void main(String arg[]){
		Scanner ob = new Scanner(System.in);
		int n = ob.nextInt();
		for(int i=0;i<n;i++) {
			for(int j=0;j<=(n-i);j++) {
				System.out.print(" ");
			}
			for(int k=0;k<=(i*2);k++) {
				System.out.print("*");
			} 
			System.out.println();
			
		}
		for(int i=n;i>=0;i--) {
			for(int j=0;j<=(n-i);j++) {
				System.out.print(" ");
			}
			for(int k=0;k<=(i*2);k++) {
				System.out.print("*");
			} 
			System.out.println();	
		}
	}
}  

 */