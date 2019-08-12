public class AccountTriggerHandler extends ITriggerHandler {
    public static Boolean triggerDisabled = false;

    public override Boolean isDisabled() {
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

    public override void afterInsert(Map<Id, SObject> newItems) {
        // SomeClass.doSomething(newItems.values());
    }

    public override void afterUpdate(List<SObject> newItems, Map<Id, SObject> oldItems) {
        // SomeClass.doSomethingElse(newItems, (Map<Id, Account>)oldItems);
    }
}
