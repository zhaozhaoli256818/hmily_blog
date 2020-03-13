package ssm.hmily_blog.service;

import ssm.hmily_blog.Exception.myException;
import ssm.hmily_blog.pojo.User;

public interface UserService {
    //    根据用户名称获取用户
    User findByUser_name(User user);
    //    注册用户
    void registUser(User user);

    Boolean checkUsername(String user_name);
}
