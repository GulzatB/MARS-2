global class LogUpdateBatch implements Database.Batchable<sObject>
     {    
        
global Database.QueryLocator start (Database.BatchableContext bc)
     {
         return Database.getQueryLocator([Select Id, isNotif__c from Log__c where isNotif__c =false]);
     }
global void execute (Database.BatchableContext bc, List <log__c> lList)
    
    {
        List<Log__c> log = new List<Log__c>();
        for(Log__c l:lList)
        {
            l.isNotif__c =false;
        }
 update lList;
    }
         
global void finish (Database.BatchableContext bc)
    {
    
    Messaging.SingleEmailMessage mail= new Messaging.SingleEmailMessage();
         String [] toAddress =new String []{'gulzatb@gmail.com'};
         mail.setToAddresses(toAddress);
         mail.setSubject ('Error Massage');
         mail.setPlainTextBody ('These Logs are not "isNotified"');
         Messaging.sendEmail(new Messaging.SingleEmailMessage[]{mail});
     }
    }