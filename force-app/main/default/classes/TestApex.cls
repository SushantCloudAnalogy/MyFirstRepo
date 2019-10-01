public with sharing class TestApex {
    public TestApex() {
        System.debug('Testjknhzvhc------------------------->');

        List<Account> accList = new List<Account>();
        Map<Id, Account> accIdVSAccountMap = new Map<Id, Account>();
        accList = [Select id, Name From Account LIMIT 10000];

        if (accList != null && accList.size() > 0) {
            System.debug('Account is not null');
            System.debug('You can use the Account records--------->');
            
            for (Account acc : accList) {
                accIdVSAccountMap.put(acc.id, acc);
            }

            System.debug('Map debug Log::' + accIdVSAccountMap);

        }
        
    }
}
