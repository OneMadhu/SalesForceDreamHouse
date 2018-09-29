@RestResource(urlMapping='/products/*')
global with sharing class ProductsResource {

/*
    @HttpDelete
    global static void doDelete() {
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        String accountId = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        Account account = [SELECT Id FROM Account WHERE Id = :accountId];
        delete account;
    }
*/
  
    @HttpGet
    global static String doGet() {
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;

        Account account = new Account();

        account.Name = 'Test Account';
        account.phone = '415-819-5759';
        account.website = 'web.com';

        return JSON.serialize(account);


        // return JSON.serializePretty('Hello');
        /*
        String accountId = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        // Account result = [SELECT Id, Name, Phone, Website FROM Account WHERE Id = :accountId];
        Account result = [SELECT Id, Name, Phone, Website FROM Account];
        return result;
        */
    }
  
  /*
  @HttpPost
    global static String doPost(String name,
        String phone, String website) {
        Account account = new Account();
        account.Name = name;
        account.phone = phone;
        account.website = website;
        insert account;
        return account.Id;
    }
    */
}