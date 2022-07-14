trigger ContAccount on Account (after insert) {

    list <Contact> cont=new list <Contact>();
    
   for (account acc : trigger.new)
   {
       contact cnt=new Contact();
       cnt.FirstName='Sema';
       cnt.LastName='Kim';
       cnt.Phone='111 222 333 444';
       cnt.accountID=acc.ID;
       cont.add(cnt);
   }
insert cont;
}