package ssm.hmily_blog.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import ssm.hmily_blog.pojo.Article;
import ssm.hmily_blog.service.ArticleService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
@Controller
public class IndexController {
    @Autowired
    private ArticleService articleService;

    @RequestMapping("/index")
    @ResponseBody
    public PageInfo index(@RequestParam(name = "page", required = true, defaultValue = "1") Integer page,
                            @RequestParam(name = "pageSize", required = true, defaultValue = "3") Integer pageSize
                                      ){
        List<Article> pages = articleService.findArticleByPage(page, pageSize);
        PageInfo pageInfo = new PageInfo(pages);

        return pageInfo;
    }


    @RequestMapping("/edit")
    public  String edit(){
        return "edit";
    }


    @RequestMapping("/archive")
    public  String archive(){
        return "archive";
    }

    @RequestMapping("/update")
    public  String update(){
        return "update";
    }

}
