public with sharing class ListAndSet {
	
	public void sortList (){
	    	List<String> initialList = new List<String>{'abc', 'xyz', 'pqr', 'abc', 'pqr', 'asd'};
	        System.debug('Initial list:'+initialList);
	        Set<String> hashsetList = new Set<String>(initialList);
	        System.debug('Unique values using HashSet: '+hashsetList);
	
	        
	    }
}