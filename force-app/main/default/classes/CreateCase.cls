global class CreateCase {
     @InvocableMethod(label='Create Case')
    global static List<Case> CreateCaseMakePayment(List<InputForm> Input) {
        
     List<Account> AccountList = [SELECT Id, Name
                                 FROM Account
                                 WHERE Name=: Input[0].AccName];
     
        List<Case> responseData = new List<case>();
        Case ca = new Case();
        ca.Subject = 'Feedback';
        ca.Origin  = 'Bot';
        ca.AccountId  = AccountList[0].Id;
        ca.Status = 'Closed';
        ca.Description = Input[0].Description;
        
        insert ca;
        
       case CaseNr = [SELECT Id, CaseNumber
                     FROM Case
                     WHERE Id=:ca.Id];
        responseData.add(CaseNr);
        return responseData;
                 
      }
    
    global class InputForm {
        @InvocableVariable
        global String AccName;
        @InvocableVariable
        global String Description;
        
    }
}