trigger ratingHot on Lead (before insert) {

   for (Lead l: trigger.new){
       If(l.rating == null)
          l.rating = 'Hot';}
}