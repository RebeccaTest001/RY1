public class testR3 {
    public static ID valueOf(String toID){
	String idStr = '111111111111111111';
	ID id = ID.valueOf(idStr);
	Boolean isEquals = id.equals(idStr);
    return id;
    }
}