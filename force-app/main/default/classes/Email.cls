public with sharing class Email {
    public static void send (String Address,String body ){
        Messaging.SingleEmailMessage mail= new Messaging.SingleEmailMessage();
        mail.setToAddresses=new String[] {Address};
        mail.setPlainTextBody=body;
        Messaging.SingleEmailMessage[] messages=new List<Messaging.SingleEmailMessage>{message};
        Messaging.sendEmail(messages);
    }
    }

