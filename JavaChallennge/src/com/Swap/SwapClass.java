package com.Swap;

public class SwapClass {
	
	
	public void printarray(int[] input)
	{
    	
   	 System.out.println("the  array  : ");
        System.out.print( "{ ");
       for(int x:input) {
       	System.out.print(x + "  ");
       	
       }
       System.out.println( "}");
       
	}
  public int[] swap(int[] x)
  {
	  int[]y=new int[x.length];
	  for (int i=0;i<x.length;i++)
	  {
    	  y[i]=x[x.length-i-1];
    	  }
    	  return y;
      }
}
  
	
	
	
	
	
	


