public class MassEmailExample {
	public static void sendEmail(String templateId, Task[] tasks){	
		List<Id> ids= new List<Id>();//吧TASK的owner id拿出来。
		for(Task t: Tasks){
			ids.add(t.OwnerId);
		}
	
		Messaging.MassEmailMessage Email = new Messaging.MassEmailMessage();
		Email.setTargetObjectIds(ids);//setTargetObjectIds: A list of IDs of the contacts, leads, or users to which the email will be sent.       
		//Email.setSenderDisplayName('System Admin');        
		Email.setTemplateId(templateId);
        Email.setSaveAsActivity(false);
		Messaging.sendEmail(new Messaging.MassEmailMessage[] { Email });
		system.debug(Email);
	 }
}