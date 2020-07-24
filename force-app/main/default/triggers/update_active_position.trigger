trigger update_active_position on Job__c (after update) {

  
  List<Job__c> jobs=new List<Job__c>();
    for(Job__c c:[SELECT Number_of_Positions__c,Hired_Applicants__c,Active__c FROM Job__c WHERE Active__c !=true]){
        if(c.Hired_Applicants__c < c.Number_of_Positions__c){
            c.Active__c=true;
            jobs.add(c);
        }
    }
    if(jobs.size()>0){
        update jobs;
    }    

}