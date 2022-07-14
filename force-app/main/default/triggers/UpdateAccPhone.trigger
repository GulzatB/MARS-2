trigger UpdateAccPhone on Account (after update) {

    for (account acc: trigger.new){
       If(acc.phone == null)
          acc.phone = '+1 233 33 333';}

}