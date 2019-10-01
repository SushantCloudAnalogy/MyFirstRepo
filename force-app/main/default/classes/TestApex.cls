public with sharing class TestApex {
    public TestApex() {
        System.debug('Testjknhzvhc------------------------->');

        List<Account> accList = new List<Account>();
        List<Contact> conList = new List<Contact>();
        accList = [Select id, Name From Account LIMIT 10000];

        if (accList != null && accList.size() > 0) {
            System.debug('Account is not null');
            System.debug('You can use the Account records--------->');
            
            conList = [Select id, LastName From Contact Where AccountId IN: accList LIMIT 10000];

            if (conList != null && conList.size() > 0) {
                System.debug('Contacts are present');
            }
        }
        
    }
}

