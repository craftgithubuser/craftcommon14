package com.exercise.junitTest;

//import org.junit.jupiter.api.Test;
import org.junit.Test;
import static org.junit.Assert.*;

class TestStudentMarks {
	@Test
	void test_getTotalMarks() {
		assertEquals(300.0, StudentMark.getTotallMarks(100, 100, 100), 0.0f);
	}

	//	@Test(expected = ArithmeticException.class)
	@Test
	public void test_getTotalMarkAbove() {
		StudentMark.getTotallMarks(1000, 1000, 1000);
	}

	//	@Test(expected = ArithmeticException.class)
	@Test
	public void test_getTotalMarksBelow() {
		StudentMark.getTotallMarks(-1, -1, -1);
	}

	@Test
	public void test_getTotalMarksArithmeticCheck() {
		StudentMark.getTotallMarks(10+20+30, 30+20, 40+20+10);
	}

	@Test
	public void test_getGrade() {
		assertEquals("A+", StudentMark.getGrade(90));
	}
	
	@Test
	public void test_getPercent() {
		assertEquals(100.0, StudentMark.getPercentage(100), 0.0f);
	}
	
	@Test(expected = ArithmeticException.class)
	public void test_getPercentInvalidMarks() {
		StudentMark.getPercentage(1000);
	}

}
