global class TaskEmailScheduler implements Database.batchable<Sobject>, Schedulable { // Database.batchable<Sobject>, Schedulable是被这个apex使用的两个不同的interfaces。 
    public String templateId;//Database.batchable<Sobject>:给数据分批量处理，每两百条，一个batch. 
    public TaskEmailScheduler(){}//默认构造函数,
    public TaskEmailScheduler(String templateId){ 
        this.templateId = templateId;
    }
	global Database.QueryLocator start(Database.BatchableContext BC){ // Database.QueryLocator:Database.batchable<Sobject> methods. 记住是哪一批的200个（EG:200-400；400-600）
      return  Database.getQueryLocator([Select id,OwnerId from Task where ActivityDate = TODAY]);//或者 ActivityDate=:System.today()
   }
   global void execute(Database.BatchableContext info, List<Task> scope){ // Database.batchable<Sobject> methods. 除了TASK,其它的都是固定写法。
      MassEmailExample.sendEmail(templateId, scope);//引用外面的apex class
   }     
   global void finish(Database.BatchableContext info){      // 执行完了之后，有没有想做的事情？Database.batchable<Sobject> methods
   } 
   
   global void execute(SchedulableContext SC) {  //  Schedulable method： 怎么样来发邮件。

      EmailTemplate tem=[Select id,name from EmailTemplate where name = 'Schedule task test from Apex Class' limit 1];
      Database.batchable<Sobject> emailService = new TaskEmailScheduler(tem.Id); //new出一个新的batchable来（用同一个template），给这个新的batchable分批，每两百条一批。
      database.executebatch(emailService);//满足条件的情况下，发email.
   }
}