function check(){
             
             var name=document.getElementById('{!$Component.name}').value;
             var salutation=document.getElementById('{!$Component.salutation}').value;
             var firstname=document.getElementById('{!$Component.firstname}').value;
             var lastname=document.getElementById('{!$Component.lastname}').value;
             var dob=document.getElementById('{!$Component.dob}').value;
             var email=document.getElementById('{!$Component.email}').value;
             var country=document.getElementById('{!$Component.country}').value;
             var application=document.getElementById('{!$Component.application}').value;
             
             var status=document.getElementById('{!$Component.status}').value;
             var salary=document.getElementById('{!$Component.salary}').value;
             var job=document.getElementById('{!$Component.job}').value;
            
        if(name=="" || salutation=="" || firstname=="" || lastname=="" || dob=="" || email=="" || country=="" || application=="" || status=="" || salary=="" || job=="")
         {
        document.getElementById('{!$Component.theButton}').disabled = true;
            
         }
         else
          {
              
            document.getElementById('{!$Component.theButton}').disabled = false;
              
          }
 }
