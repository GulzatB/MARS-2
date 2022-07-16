trigger ContTrigUpd on Contact (after update) {
for (Contact con :trigger.new){
Contact tempcont=Trigger.oldMap.get(con.ID);
String oldemail=tempcont.email;
    if(con.email!=oldeamil){
    Messaging.SingleEmailMessage mail= new Messaging.SingleEmailMessage();
    String [] toAddress =new String []{'gukagul@gmail.com'};
    mail.setToAddresses(toAddress);
    mail.setSubject ('Yout email was ass to new contact ');
    mail.setPlainTextBody ('Dear admin, your email was assighned to this new contact');
    Messaging.sendEmail(new Messaging.SingleEmailMessage[]{mail});
}
}
}