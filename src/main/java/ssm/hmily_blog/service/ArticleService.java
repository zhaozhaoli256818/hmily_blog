package ssm.hmily_blog.service;

import ssm.hmily_blog.pojo.Article;

import java.util.List;

public interface ArticleService {
    List<Article> findArticleByPage(Integer page, Integer pageSize);

    Article findArticleByArticleId(long article_id);

    Article findLastArticleByArticleId(Integer id);

    Article findNextArticleByArticleId(Integer id);

    void saveArticle(Article article);

    List<Article> archiveArticle(Integer page, Integer pageSize);
}
