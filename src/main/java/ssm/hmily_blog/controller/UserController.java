package ssm.hmily_blog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import ssm.hmily_blog.Exception.myException;
import ssm.hmily_blog.pojo.User;
import ssm.hmily_blog.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
@RequestMapping("user")
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("toLogin")
    public String toLogin(){
        return "login";
    }

    @RequestMapping("login")
    @ResponseBody
    public void login(User user, HttpServletRequest request,HttpServletResponse response) throws Exception {

        try {
            User user1 = userService.findByUser_name(user);
            request.getSession().setAttribute("loginUser",user1);
            response.sendRedirect(request.getContextPath()+"/index.jsp");
        } catch (Exception e) {
            request.setAttribute("error",e.getMessage());
            request.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(request,response);
        }
    }

    @RequestMapping("logOut")
    @ResponseBody
    public void logOut(HttpServletRequest request,HttpServletResponse response) throws IOException {
        request.getSession().invalidate();
        response.sendRedirect(request.getContextPath()+"/index.jsp");
    }

    @RequestMapping("toRegist")
    public String toRegist(){
        return "regist";
    }

    @RequestMapping("regist")
    public String regist(User user,Model model){
        userService.registUser(user);
        model.addAttribute("reg_msg","注册成功请登录");
        return "login";
    }
    @RequestMapping("checkUsername")
    @ResponseBody
    public Boolean checkUsername(String user_name){
        Boolean flag = userService.checkUsername(user_name);
        return flag;
    }


}
