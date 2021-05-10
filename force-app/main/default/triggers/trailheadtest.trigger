trigger trailheadtest on Account(before insert){
    for (Account b:Trigger.new){
        b.description='hhhhhh';
    }
}
/*click Debug-Open execute Anonymous-
 Account a=new Account(Name='****');
 insert a;
will create a new account **** with description hhhhh*/