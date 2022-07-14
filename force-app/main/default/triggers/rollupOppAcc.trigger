trigger rollupOppAcc on Account (before update) {
    try{
        
    List <Opportunity> updOpAc = [Select AccountId, amount from opportunity where AccountId in:Trigger.newMap.keySet()];
    
    for (Opportunity o: updOpAc)
    {
    Account a=Trigger.newMap.get(o.AccountId);
    o.amount=a.total_amount__c;
    }
    update updOpAc;
 } catch (exception e)
    {
        system.debug(' the exception has occurred '+ e.getMessage());
    }
}