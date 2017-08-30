public with sharing class ReplaceString {
	
	public void replaceStr(String s, String a){
			
		s.replace('a', a);
		System.debug('String after replace is \n'+s);
		
}

}