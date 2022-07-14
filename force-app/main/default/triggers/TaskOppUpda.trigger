trigger TaskOppUpda on Opportunity (before insert, before update) {

        for(Opportunity oop: Trigger.new){
          Task tsk = new Task  (whatID = oop.ID,
                                subject = 'Salesforce Dev', 
                                Description = 'I want to saleforce dev at apple', priority = 'High');
        	insert tsk;

        }
    }