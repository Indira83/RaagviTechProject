public class ContactCreator {
    @InvocableMethod(label='Create Contacts' description='Creates multiple contacts for a given account')
    public static void createContacts(List<Account> accDetails){
        List<Contact> conList=new List<Contact>();
        for(Integer i=0;i<accDetails[0].Number_of_Contacts__c;i++){
            Contact con =new Contact();
            con.LastName=accDetails[0].Name+i;
            con.AccountId=accDetails[0].Id;
            conList.add(con);
        }
        insert conList;
    }
}