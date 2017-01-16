public with sharing class LeadListAuraController {
	@AuraEnabled
    public static List<Lead> getLeads(Integer offsetVal) {
    	Integer offsetParam = Integer.valueof(offsetVal);
	    return [SELECT Id, Name, Company, State, Email, Status, CreatedDate FROM Lead ORDER BY Name LIMIT 10 OFFSET :offsetParam];
	}
}