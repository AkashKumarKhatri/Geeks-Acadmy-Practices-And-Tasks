class Result {
	
	int java,cs,cpp,pythone,c;
	String grade;
	double per;
	Result(int java, int cs, int cpp, int pythone, int c) {
		this.java = java;
		this.cs = cs;
		this.cpp = cpp;
		this.pythone = pythone;
		this.c = c;
	}
	double getPercentage() {
		double total = java+cs+cpp+pythone+c;
		per = (total/500)*100;
		return per;
	}
	String getGrade(double per) {
		this.per = per;
		if(per>=80){
				 //System.out.println("Your Grade is A");
				 grade =  "A";
			 }	 	 
			  if(per<80){
				if(per>=60){
			     //System.out.println("Your Grade is B");
					grade = "B";
				}	
		     }
			  if(per<60){
				if(per>=40){
	            	
				 //System.out.println("Your Grade is C");
				grade = "C";
				}    
			 }
					  
			 if(per<40) 
			    
				{
				 //System.out.println("You are Fail"); 
					grade = "Your are Fail";
				}
	return grade;
	
	}
	public static void main(String arg[]) {
		Result res = new Result(99,77,85,89,99);
		double per = res.getPercentage();
		System.out.println("Your Percentage is "+per);
		System.out.println(res.getGrade(per));
	}
	
}