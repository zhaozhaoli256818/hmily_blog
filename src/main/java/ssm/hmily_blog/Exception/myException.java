package ssm.hmily_blog.Exception;

public class myException extends Exception {
    private String msg;

    public myException(String msg) {
        this.msg = msg;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
}
