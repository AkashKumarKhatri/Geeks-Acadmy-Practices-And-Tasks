package programs;

import java.util.Scanner;

import javax.swing.plaf.basic.BasicInternalFrameTitlePane;

public class BinarySearch {
	
	static Scanner input= new Scanner(System.in);
	int myArray[];
	public static void main(String args[])
	{
			BinarySearch bs = new BinarySearch();
			bs.showMenu();
		
	}
	
	 void  showMenu()
	{
		System.out.println("1-- Create/Add Elements in the array");
		System.out.println("2--Sort The Array");
		System.out.println("3-- Find Element in the Array ");
		System.out.println("4-- Show Array");
		System.out.println("5-- Binary Sort");
		
		
		int choice=input.nextInt();
		if(choice==1)
		{
			createArray();
			
		}
		else if(choice==2)
		{
			sortArray();
		}
		else if(choice==3)
		{
			findElement();
		}
		else if(choice==4)
		{
			showArray();
		}
		else if(choice==5)
		{
			binarySearh();
		}
	}
	 void showArray() 
	 {
		 	for(int a : myArray)
		 	{
		 		System.out.println(a);
		 	}
		 	showMenu();
	 }

	void createArray()
	{
		System.out.println("Enter the size of Array");
		int size=input.nextInt();
		myArray=new int[size];
		System.out.println("Enter Elements in the Array");
		for(int i=0; i<myArray.length ; i++)
		{
			myArray[i]=input.nextInt();
		}		
		showMenu();
	}
	void sortArray()
	{
			for(int i=0 ; i<myArray.length ; i++)
			{
				for(int j=i+1; j<myArray.length; j++)
				{
					if(myArray[i] > myArray[j])
					{
						int temp=myArray[i];
						myArray[i]=myArray[j];
						myArray[j]=temp;
					}
				}
			}
			showMenu();
	}
	void findElement()
	{
		System.out.println("Which element do you want to search");
		int search=input.nextInt();
		int found=-1;
		for(int i=0; i < myArray.length ; i++)
		{	
				if(search== myArray[i])
				{
					found=i;
					break;
				}
			
		}
		if(found!=-1)
		{
			System.out.println("ELement Found at "+found );
			
		}else
			System.out.println("ELement not Found");
		
		showMenu();
		
	}
	void binarySearh()
	{
		for(int i=0 ; i<myArray.length ; i++)
		{
			for(int j=i+1; j<myArray.length; j++)
			{
				if(myArray[i] > myArray[j])
				{
					int temp=myArray[i];
					myArray[i]=myArray[j];
					myArray[j]=temp;
				}
			}
		}
	int beg=0;
		int end=myArray.length -1;
		int mid=(beg + end )/2;
		System.out.println("Which element do you want to search");
		int item=input.nextInt();
		while(beg < end && myArray[mid]!=item)
		{
				if(myArray[mid] < item)
				{
					beg=mid+1;
				}
				else
				{
					end= mid - 1; 
				}
				mid=(beg+end)/2;
		}
		if(myArray[mid]==item)
		{
			System.out.println("found at mid "+ mid);
		}
		else
		{
			System.out.println("Not found");
		}
	}
	
}
