public with sharing class Prime {
	
    public void primeNumber(integer num){
		integer flag=0;
		for(integer i=2; i<=num/2; ++i)
	    {
	        if(math.mod(num,i)==0)
	        {
	            flag=1;
	            break;
	        }
	    }

	    if (flag==0)
	    
	        System.debug('Number is prime');
	    else
	    	System.debug('Number is not prime');   	
	    		
}

public Prime(integer a, integer b){
		
		 System.debug('parameterized constructor');
	      System.debug(' with Two parameters');
	      System.debug(a+' '+b);
	      
	}












}