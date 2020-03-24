package ssm.hmily_blog.service.impl;

import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ssm.hmily_blog.mapper.ArticleMapper;
import ssm.hmily_blog.pojo.Article;
import ssm.hmily_blog.service.ArticleService;

import java.util.Date;
import java.util.List;

@Service
public class ArticleServiceImpl implements ArticleService {

    @Autowired
    private ArticleMapper articleMapper;

    public List<Article> findArticleByPage(Integer page, Integer pageSize) {

        PageHelper.startPage(page,pageSize);
        return articleMapper.findArticleByPage();
    }

    public Article findArticleByArticleId(long article_id) {
        return articleMapper.findArticleByArticleId(article_id);

    }

    public Article findLastArticleByArticleId(Integer id) {
        return articleMapper.findLastArticleByArticleId(id);
    }

    public Article findNextArticleByArticleId(Integer id) {
        return articleMapper.findNextArticleByArticleId(id);
    }

    public void saveArticle(Article article) {
        article.setArticle_id(System.currentTimeMillis()+hashCode());
        article.setAuthor("赵力");
        article.setCreate_time(new Date());
        article.setUpdate_time(new Date());
        article.setClassify("原创");
        article.setSummary(article.getContent().substring(0,50));
        articleMapper.saveArticle(article);
    }

    public List<Article> archiveArticle(Integer page, Integer pageSize) {
        PageHelper.startPage(page,pageSize);
        List<Article> list = articleMapper.archiveArticle();
        return list;
    }

    public List<Article> findArchiveByMonth(Integer page, Integer pageSize, Date update_time) {
        PageHelper.startPage(page,pageSize);
        List<Article> list = articleMapper.findArchiveByMonth(update_time);
        return list;
    }

    public List<Article> program_record(Integer page, Integer pageSize) {
        PageHelper.startPage(page,pageSize);
        List<Article> list = articleMapper.program_record();
        return list;
    }

    public List<Article> mood(Integer page, Integer pageSize) {
        PageHelper.startPage(page,pageSize);
        List<Article> list = articleMapper.mood();
        return list;
    }

    public List<Article> lastArticle() {
        return articleMapper.lastArticle();
    }

    public List<Article> tag(String attribute_label, Integer page, Integer pageSize) {
        PageHelper.startPage(page,pageSize);
        return articleMapper.tag(attribute_label);
    }
}
