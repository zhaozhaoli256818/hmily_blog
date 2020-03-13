package ssm.hmily_blog.mapper;

import ssm.hmily_blog.pojo.User;

public interface UserMapper {
//    根据用户名称获取用户
    User findByUser_name(User user);
//    注册用户
    void registUser(User user);

    User checkUsername(String user_name);
}
