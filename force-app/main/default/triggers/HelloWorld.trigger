trigger HelloWorld on Lead (Before Update) {
/*    for(Lead l:Trigger.new){
    l.FirstName='Hello';
    l.LastName='World';
    }*/
    System.debug('Hello World2');
}