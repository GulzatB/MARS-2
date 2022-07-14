trigger EmailPriority on Case (before insert) {

     for (Case cs: trigger.new){
        cs.origin='email';
        cs.status='new';
        cs.priority='Normal';
    }
    
}