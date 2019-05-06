import org.apache.hadoop.hive.ql.exec.UDF;
import org.apache.hadoop.hive.ql.metadata.HiveException;

public class IsNullOrEmpty extends UDF {
    // Actual UDF code
    public String evaluate(String input,String output_default) throws HiveException {
        if (isNullOrEmpty(input)) {
            return output_default;
        }
        return input;
    }
    private boolean isNullOrEmpty(String value){
        if(value == null){
            return true;
        } 
		else if (value.trim().isEmpty()){
			return true;
		}
        return false;
    }
}
