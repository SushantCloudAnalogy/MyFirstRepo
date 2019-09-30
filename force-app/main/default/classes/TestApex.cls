public with sharing class TestApex {
    public TestApex() {
        System.debug('Testjknhzvhc------------------------->');

        List<Account> accList = new List<Account>();
        accList = [Select id, Name From Account LIMIT 10000];

        if (accList != null && accList.size() > 0) {
            System.debug('Account is not null');
        }
        
    }
}
