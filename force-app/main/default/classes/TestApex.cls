public with sharing class TestApex {
    public TestApex() {
        System.debug('Testjknhzvhc------------------------->');

        List<Account> accList = new List<Account>();
        List<Contact> conName = new List<Contact>();
        Map<Id, Account> accIdVSAccountMap = new Map<Id, Account>();
        
        accList = [Select id, Name From Account LIMIT 10000];

        if (accList != null && accList.size() > 0) {

            System.debug('Sushant Branch Code ============>');
        }
    }
}
