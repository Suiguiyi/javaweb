package package1;

public class Test {
   public static void main(String [] args) {
	   System.out.println("a java program.");
	   
	   Student s = new Student();
	   Student s1 = new Student();
//	   s.name="ss";
//	   s1.name="s1";
	   s.setName("ss");
	   s1.setName("s1");
	   s.introduce();
	   s1.introduce();
   }
   
}
