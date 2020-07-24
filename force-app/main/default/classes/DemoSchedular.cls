public class DemoSchedular implements Schedulable {
    
    public void execute(SchedulableContext contexts){
        
        system.enqueueJob(new DemoQueuableClass());
    }
    
}