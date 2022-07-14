trigger SolutAccount on Account (before insert,before update) {

    account acc=Trigger.new[0];
    acc.Name='Dr  '+ acc.Name;
}