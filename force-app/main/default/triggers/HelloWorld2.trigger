trigger HelloWorld2 on Lead (before insert) {
   System.debug('Hello World2');
}