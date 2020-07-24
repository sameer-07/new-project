public class AnimalLocator {
    public static String getAnimalNameById(Integer Id)
    {
        Http http=new Http();
        HttpRequest request=new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+id);
        request.setMethod('GET');
        HttpResponse response=http.send(request);
        String strResp='';
        system.debug('*****Response'+response.getStatusCode());
        system.debug('*****Response'+response.getBody());
        
        if(response.getStatusCode() == 200)
        {
            Map<String,object> results=( Map<String,object>) JSON.deserializeUntyped(response.getBody());
            Map<String,object> animals=( Map<String,object>) results.get('animal');
            system.debug('Received the following animals:'+animals);
            strResp=string.valueof(animals.get('name'));
            system.debug('strResp >'+strResp);
          
        }
        
        return strResp;
    }
    
}