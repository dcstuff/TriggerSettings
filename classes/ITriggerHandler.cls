public virtual class ITriggerHandler {
    public virtual void beforeInsert(List<SObject> newItems) {}

    public virtual void beforeUpdate(List<SObject> newItems, Map<Id, SObject> oldItems) {}

    public virtual void beforeDelete(Map<Id, SObject> oldItems) {}

    public virtual void afterInsert(Map<Id, SObject> newItems) {}

    public virtual void afterUpdate(List<SObject> newItems, Map<Id, SObject> oldItems) {}

    public virtual void afterDelete(Map<Id, SObject> oldItems) {}

    public virtual void afterUndelete(Map<Id, SObject> oldItems) {}

    public virtual Boolean isDisabled() { return false; }
}
