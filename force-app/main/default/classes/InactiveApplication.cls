global class InactiveApplication implements Database.Batchable<sObject>
{
    global Database.QueryLocator start(Database.BatchableContext BC)
    {
        String query = 'Select Id, isNotif__c from Log__c where isNotif__c =false';
        return Database.getQueryLocator(query);
    }
 
    global void execute(Database.BatchableContext BC, List<log__c> scope)
    {       
        EmailTemplate emailTemplate = [select Id, Body from EmailTemplate where DeveloperName = 'Update_Service_Request'];
        
        for(log__c ta : (List<log__c>)scope) {
            Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
            email.setToAddresses(new String[] {'gulzatb@gmail.com'});
            email.setSaveAsActivity(false);
            email.setTargetObjectId(ta.OwnerId);
            email.setTemplateId(emailTemplate.Id);
            email.setWhatId(ta.Id);
            Messaging.sendEmail(new Messaging.SingleEmailMessage[] {email});
        }
    }  
    global void finish(Database.BatchableContext BC)
    {
    }
}