trigger StandardTrigger on Account (before insert,before update,before delete,after insert,after update,after delete) {
    
    StandardHandler handler =new StandardHandler(trigger.isExecuting,Trigger.size);
    if(Trigger.isInsert){
       If(Trigger.isBefore){
           handler.onBeforeInsert(Trigger.new);
       }
       else{
           handler.onAfterInsert(Trigger.new);
       }
   }
  else if ( Trigger.isUpdate ) {
           If(Trigger.isBefore){
               handler.onBeforeUpdate(Trigger.new,Trigger.old,Trigger.newmap,Trigger.oldmap);
           }
           else{
               handler.onAfterupdate(Trigger.new,Trigger.old,Trigger.newmap,Trigger.oldmap);
           }
       }  

}