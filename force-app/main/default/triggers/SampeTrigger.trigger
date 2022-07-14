trigger SampeTrigger on Opportunity (after update) {
  
    Map<Id, List<Opportunity>> acctoopp = new Map<Id, List<Opportunity>>();
    Set<Id> acctIds = new Set<Id>();    
    
    List<Account> acctList = new List<Account>();
        acctList = [SELECT total_amount__c  FROM Account WHERE Id IN: acctIds];
        for(Account acct : acctList){
            List<Opportunity> opplist = new List<Opportunity>();
            opplist = acctoopp.get(acct.Id);
            Double oppyamount = 0;
            for(Opportunity oppty : opplist){
                if(oppty.Amount != null){
                    oppyamount += oppty.Amount;
                }
            }
            acct.total_amount__c   = oppyamount;
        }
        update acctList;
    }