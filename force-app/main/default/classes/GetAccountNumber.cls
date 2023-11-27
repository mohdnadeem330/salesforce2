public class GetAccountNumber {
    @InvocableMethod(label='Get Account Number')
    public static List<String> GetAccountNumber(List<String> accountname){
        
        List<String> accountNumbers = new List<String>();
        List<Account> accounts = [SELECT Name, AccountNumber
                                 FROM Account
                                 WHERE Name in : accountName];
        
        for (Account accNr : accounts)
            accountNumbers.add(accNr.AccountNumber);
        return accountNumbers;
    }

}