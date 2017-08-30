public with sharing class Prog1set2soql {
	public void oppRecords(){
		List<Opportunity> l1=[Select Account.Name From Opportunity 
                   		   	  Where Account.Name!=NULL ];
		System.debug(l1);
		map<id,String> m1=new map<id,String>();
		for(Opportunity o: l1)
		{
    		m1.put(o.Id,o.Account.id);
		}
		System.debug(m1);
		list<Opportunity> s1=[Select Account.Id From Opportunity 
                   Where Account.Name!=NULL ];

		System.debug(s1);

	}
	
	
	public void aggregateResult(){
	
		List<AggregateResult> l1=[SELECT Count(Name) 
                  				  FROM Account 
                  				  WHERE Name LIKE 'a%'
								 ];

		Account a = new Account(Name='Acme2');

		Account myacc=[SELECT Name
                 	   FROM Account 
               		   WHERE Name LIKE 'a%'
               		   LIMIT 1
                  	  ];
		myacc.Name='Updated via update function';

		try
		{
    		update myacc;
		} catch(DmlException d){  }
		
	}
	
	
	public void campRec(){
		list<Campaign> listCamp=[SELECT Name FROM Campaign  ORDER BY Name DESC LIMIT 10];
	
		System.debug(listCamp);
	
	}
	
	
	public void contRec(){
	
		list<Contact> listCont=[SELECT Name FROM Contact Where LastModifiedDate=TODAY];
		System.debug(listCont);
	
	}
	
	
	public void DatabaseQuery(){
	
		List<Account> accounts = (List<Account>)
    	Database.query('SELECT Name FROM Account');
    	System.debug(accounts);
	
	}

}