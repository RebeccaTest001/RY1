trigger Hello_World on Lead (before update) {
    for(Lead L:Trigger.new){
        L.firstName='Hello';
        L.lastName='World';
   }
}