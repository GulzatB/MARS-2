@isTest
private class LogUpdateBatchTest {
@isTest 
  private static void logTask()
{
    list<Log__c> lg=new list<Log__c>();
    for (integer i=0; i<10;i++){
        lg.add(new log__c(message__c='test 1',type__c='testing Log'));
    }
insert lg;
    
    system.Test.startTest();
    LogUpdateBatch lb=new LogUpdateBatch ();
    Id batchID= database.executeBatch (lb,200);
    system.Test.stopTest();
    
   list<log__c>updateLogs=[Select Id, isNotif__c from Log__c where isNotif__c =false];
    system.assertEquals(200,updateLogs.size(), 'error');
}
    
}