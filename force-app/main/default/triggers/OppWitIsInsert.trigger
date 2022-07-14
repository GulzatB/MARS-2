trigger OppWitIsInsert on Opportunity (before insert) {

    for(opportunity opp:  trigger.new){
        if(opp.Amount >100000000){
            opp.amount.addError('Dont save it');
        }
            
    }
}