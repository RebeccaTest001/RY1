@isTest         // Salesforce only lets an org have 3 million characters of Apex total 
private class HelloWorldTest {
    @isTest static void updateLead(){
        Lead myLead=new Lead();
        myLead.FirstName='DAvid';
        myLead.LastName='Liu';
        myLead.Company='Google';
        insert myLead;
    }
}