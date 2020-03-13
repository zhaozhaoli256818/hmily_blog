package ssm.hmily_blog.test;

import ssm.hmily_blog.Exception.myException;
import ssm.hmily_blog.pojo.User;
import ssm.hmily_blog.service.UserService;
import ssm.hmily_blog.service.impl.UserServiceImpl;

public class testMpper {

    public static void main(String[] args) throws myException {
            UserService us = new UserServiceImpl();
            User user = new User();
            user.setUser_name("zzl");
            user.setPassword("111");
            User user2 = us.findByUser_name(user);
            System.out.println(user2);
        }
    }

