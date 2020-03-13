package ssm.hmily_blog.controller;

import com.alibaba.fastjson.JSONObject;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import ssm.hmily_blog.pojo.Article;
import ssm.hmily_blog.service.ArticleService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.UUID;

@Controller

public class ArticleController {

    @Autowired
    private ArticleService articleService;

    @RequestMapping(value = "article")
    public String articleDetail(String article_id, Model model) {
        Article article = articleService.findArticleByArticleId(Long.parseLong(article_id));
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String update_time = sdf.format(article.getUpdate_time());
        Article lastArticle = articleService.findLastArticleByArticleId(article.getId());
        Article nextArticle = articleService.findNextArticleByArticleId(article.getId());
        model.addAttribute("article", article);
        model.addAttribute("update_time", update_time);
        model.addAttribute("lastArticle", lastArticle);
        model.addAttribute("nextArticle", nextArticle);
        return "detail";
    }


    @RequestMapping("/page")
    @ResponseBody
    public void index(@RequestParam(name = "page", required = true, defaultValue = "1") Integer page,
                      @RequestParam(name = "pageSize", required = true, defaultValue = "3") Integer pageSize,
                      HttpServletRequest request,
                      HttpServletResponse response
    ) throws ServletException, IOException {
        List<Article> pages = articleService.findArticleByPage(page, pageSize);
        PageInfo pageInfo = new PageInfo(pages);
        request.setAttribute("pageInfo", pageInfo);
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }

    @RequestMapping("/saveArticle")
    @ResponseBody
    public  String saveArticle(Article article) {
       articleService.saveArticle(article);
       return "OK";

    }
    @RequestMapping("/editormdPic")
    @ResponseBody
    public JSONObject editormdPic (@RequestParam(value = "editormd-image-file", required = true) MultipartFile file,
                                   HttpServletRequest request,
                                   HttpServletResponse response) throws Exception{

        String trueFileName = file.getOriginalFilename();

        String suffix = trueFileName.substring(trueFileName.lastIndexOf("."));

        String fileName = UUID.randomUUID().toString().replace("-","")+suffix;

        String path = request.getSession().getServletContext().getRealPath("upload");


        File targetFile = new File(path, fileName);
        if(!targetFile.exists()){
            targetFile.mkdirs();
        }

        //保存
        try {
            file.transferTo(targetFile);
        } catch (Exception e) {
            e.printStackTrace();
        }


        JSONObject res = new JSONObject();
        res.put("url",request.getContextPath()+"/upload/"+fileName);
        res.put("success", 1);
        res.put("message", "upload success!");

        return res;

    }


}
