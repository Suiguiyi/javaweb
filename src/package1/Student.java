package package1;

public class Student {
	private String id;
	private String name;
	private int age;
	
	public void setName(String name) {
		this.name=name;
	}
	public String getName() {
		return this.name;
	}
    public void introduce() {
    	System.out.println("I am "+name+",my id is "+id+", my age is "+age+"");
    }
	
}
