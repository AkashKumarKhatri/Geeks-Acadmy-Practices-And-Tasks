package programs;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;

public class DemoList {

	public static void main(String []args)
	{
		
		List<Employee> employees= new ArrayList<Employee>();
	
		Employee emp = new Employee();
		emp.setEmployeeId(1);
		emp.setName("Faraz");
		emp.setSalary(1000.123);
		employees.add(emp);
		Employee emp2= new Employee();
		emp2.setEmployeeId(2);
		emp2.setName("Sadaquat");
		emp2.setSalary(18989.12);
		employees.add(emp2);	
		
		ListIterator<Employee> itr=employees.listIterator();
		
		while(itr.hasNext())
		{
			//System.out.println(itr.next().getName());
			Employee obj=(Employee)itr.next();
			if(obj.getName().equals("Sadaquat")){
				System.out.println(obj.getName()+" "+obj.getSalary());		
			}
		}
		
		HashMap<Integer, Employee> hashMap= new HashMap<Integer, Employee>();
		hashMap.put(1, emp);
		hashMap.put(2, emp2);
		Set set=hashMap.entrySet();
		Iterator itr2 = set.iterator();
		while(itr2.hasNext()){
			
			Map.Entry<Integer,Employee> obj=(Map.Entry)itr2.next();
			System.out.println(obj.getValue().getName());
			System.out.println(obj.getValue().getSalary());
			
			
		}
		
	}


}
