trigger ErrorContact on Contact (before insert, before update) {
    
    for(contact con:  trigger.new){
        if(con.Email==Null){
            con.email.addError('Please fill the email');
        }
            
    }
    
}