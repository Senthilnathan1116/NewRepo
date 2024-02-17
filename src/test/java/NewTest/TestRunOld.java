package NewTest;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestRunOld {

	/*
	 * @Test public Karate runTest() { return
	 * Karate.run("getReq").relativeTo(getClass()); }
	 */

	@Test
	public Karate runTest() {
		return Karate.run("classpath:NewTest/getReqWithPath.feature");
	}
}
