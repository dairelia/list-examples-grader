import static org.junit.Assert.*;
import org.junit.*;
import java.util.*;


class Checks implements StringChecker {
	public boolean checkString(String s){
		if(s.length() < 4){
			return true;
		}

		else{
			return false;
		}
	}
}

public class TestListExamples {
	@Test(timeout = 500)
	public void testFilter(){
		StringChecker sc = new Checks();
		ArrayList before = new ArrayList<String> ();
		before.add("hello");
		before.add("sis");
		ArrayList after = new ArrayList<String> ();
		after.add("sis");
		assertEquals(after, ListExamples.filter(before, sc));
	}

	@Test(timeout = 500)
	public void testMerge(){
		ArrayList list1 = new ArrayList<String>(Arrays.asList("a", "c", "d"));
		ArrayList list2 = new ArrayList<String>(Arrays.asList("b", "e"));
		ArrayList finalList = new ArrayList<String>(Arrays.asList("a", "b", "c", "d", "e"));
		assertEquals(finalList, ListExamples.merge(list1, list2));
	}
}
