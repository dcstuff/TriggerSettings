public class AccountTriggerHandler implements ITriggerHandler {
    public static Boolean triggerDisabled = false;

    public Boolean isDisabled() {
        if (triggerDisabled == true) {
            return true;
        }

        try {
            triggerDisabled = ![
                SELECT IsActive__c
                FROM TriggerSetting__mdt
                WHERE Object__r.QualifiedApiName = 'Account'
            ].IsActive__c;
        } catch (Exception e) {
            triggerDisabled = false;
        }

        return triggerDisabled;
    }

    public void beforeInsert(List<SObject> newItems) {}

    public void beforeUpdate(List<SObject> newItems, Map<Id, SObject> oldItems) {}

    public void beforeDelete(Map<Id, SObject> oldItems) {}

    public void afterInsert(Map<Id, SObject> newItems) {
        // SomeClass.doSomething(newItems.values());
    }

    public void afterUpdate(List<SObject> newItems, Map<Id, SObject> oldItems) {
        // SomeClass.doSomethingElse(newItems, (Map<Id, Account>)oldItems);
    }

    public void afterDelete(Map<Id, SObject> oldItems) {}

    public void afterUndelete(Map<Id, SObject> newItems) {}
}