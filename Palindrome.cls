public with sharing class Palindrome {
	
	public void palindromes(String chr){
		
		 {
			    
			        String reverse;
			        integer len=chr.length();
			        
			      
			         for(integer i=len-1;i>-1;i--)
			        {
			        reverse=reverse+chr.charAt(i);
			        }
			       
			 
			        if(chr.equals(reverse))
			        {
			          System.debug('The Given String is Palindrome');
			        }
			        else
			        {
			          System.debug('The Given String is not a Palindrome');
			        }
			    }

}

}