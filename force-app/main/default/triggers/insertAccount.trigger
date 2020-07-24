trigger insertAccount on Account (before insert) {

InsertAccount.call();
}