trigger myAccountTrigger on Account (before delete, before insert, before update, 
           after delete, after insert, after update) {
 
    if(Trigger.isBefore){
        if(Trigger.isUpdate){
            for (Account a: Trigger.new){
                if (a.Rating =='Hot'){
                    a.Phone.addError('It is can not be a Hot');
                }
            }
        }

    }
}