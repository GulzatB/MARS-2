trigger CaseUpdate on Case (after update) {

    for (case cc: trigger.new){
        if(trigger.oldMap.get(cc.ID).Priority =='Low'){
       
       cc.Priority = 'high';
       cc.status='new'; 
        }

}
}