@isTest 
public class AccountTriggerTest {
@isTest private static void TriggerTask(){
   Account acc1=new Account();
   acc1.Name='Venus';
   acc1.BillingStreet='Ahunbaeva';
   acc1.BillingCity='Bishkek';
   acc1.BillingState='Chui';
   acc1.BillingCountry='KG';
   acc1.BillingPostalCode='312456';

     
Account acc2 = [Select Id, Name, ShippingStreet, ShippingCity, ShippingState, ShippingPostalCode, ShippingCountry From 
                     Account Where Id=:acc1.Id];
     System.assertEquals(acc1.BillingStreet, acc2.ShippingStreet);
     System.assertEquals(acc1.BillingCity, acc2.ShippingCity);
     System.assertEquals(acc1.BillingState, acc2.ShippingState);
     System.assertEquals(acc1.BillingCountry, acc2.ShippingCountry);
     System.assertEquals(acc1.BillingPostalCode, acc2.ShippingPostalCode);
 }
}