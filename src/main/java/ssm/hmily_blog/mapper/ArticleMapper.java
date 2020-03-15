package ssm.hmily_blog.mapper;

import com.github.pagehelper.PageInfo;
import ssm.hmily_blog.pojo.Article;

import java.util.List;

public interface ArticleMapper {

    Long countArticle();

    List<Article> findArticleByPage();

    Article findArticleByArticleId(long article_id);

    Article findLastArticleByArticleId(Integer id);

    Article findNextArticleByArticleId(Integer id);

    void saveArticle(Article article);

    List<Article> archiveArticle();
}
