package ssm.hmily_blog.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ssm.hmily_blog.Exception.myException;
import ssm.hmily_blog.mapper.UserMapper;
import ssm.hmily_blog.pojo.User;
import ssm.hmily_blog.service.UserService;
import ssm.hmily_blog.utils.MD5Util;

import java.util.UUID;

@Service
@Transactional
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    public User findByUser_name(User user) {
        User byUser_name = userMapper.findByUser_name(user);
        if(byUser_name != null){
            //该用户存在
            if(!byUser_name.getPassword().equals(MD5Util.md5Encrypt32Upper(user.getPassword()))){
                //密码不正确
                throw new RuntimeException("密码不正确");
            }else{
                //密码正确
                return byUser_name;
            }
        }else{
            //用户不存在
           throw  new RuntimeException("用户不存在");
        }

    }

    public void registUser(User user) {
        //为user对象生成一个id
        user.setId(UUID.randomUUID().toString().replace("-",""));
        user.setPassword(MD5Util.md5Encrypt32Upper(user.getPassword()));
        userMapper.registUser(user);
    }

    public Boolean checkUsername(String user_name) {
       User user =  userMapper.checkUsername(user_name);
       if(user == null){
           return false;
       }
        return true;
    }
}
