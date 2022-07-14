public class Practice4 {

List<Opportunity> oppList= new List<Opportunity>();

public void insrt (){
for(integer i = 1; i<=100; i++ ){
Opportunity opp = new Opportunity();
opp.Name = 'Model  '+i;
opp.StageName='Closed Won';
opp.Discount_Percent__c=40;
opp.CloseDate=date.newInstance(2022, 06, 19);
oppList.add(opp);
} 
insert oppList;

}
}