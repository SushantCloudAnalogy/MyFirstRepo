public with sharing class TestApex {
    public TestApex() {
        

        List<Account> accList = new List<Account>();
       
        Map<Id, Account> accIdVSAccountMap = new Map<Id, Account>();
        
        accList = [Select id, Name From Account LIMIT 10000];

        if (accList != null && accList.size() > 0) {

            System.debug('Sushant Branch Code ====>');
            System.debug('<======Sushant Branch Code===========> ');
            conName = [Select Id,LastName, AccountId From Contact Where AccountId IN: accList];
            if(conName != null && conName.size() > 0){
                System.debug('Contact is Present ');
            }

            for (Account accObj : accList) {
                accIdVSAccountMap.put(acc.id, acc);
            }

            System.debug('Master Comment');
        }
    }
}
