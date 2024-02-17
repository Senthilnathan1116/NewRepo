package com.test.karate;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestRun {

	@Test
	public Karate runTest() {
		return Karate.run("getReqWithPath").relativeTo(getClass());
	}

	/*
	 * @Test public Karate runTest() { return
	 * Karate.run("classpath:NewTest/getReqWithPath.feature"); }
	 */
}
