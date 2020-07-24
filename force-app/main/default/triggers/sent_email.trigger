trigger sent_email on Job__c (after insert, after update) {

        Job__c c = Trigger.New[0];
        Datetime moddate=c.LastModifiedDate;
    if(c.Number_of_Positions__c==c.Hired_Applicants__c){
        EmailManager.sendMail('sameerbshaikh07@gmail.com', 'No Job positions left', 'All required candidate has been hired for this job on '+
                    moddate + '.');
    }

}