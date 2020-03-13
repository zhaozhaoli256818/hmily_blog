package ssm.hmily_blog.pojo;

import java.util.Date;

public class Article {
    /**
     * CREATE TABLE `article` (
     *   `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '文章id',
     *   `title` varchar(120) NOT NULL COMMENT '文章标题',
     *   `author` varchar(120) NOT NULL COMMENT '文章作者',
     *   `content` longtext NOT NULL COMMENT '文章内容',
     *   `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
     *   `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
     *   `attribute_label` varchar(120) DEFAULT NULL COMMENT '文章属性（热门）标签',
     *   `summary` longtext COMMENT '文章摘要',
     *   `article_id` bigint(20) DEFAULT NULL,
     *   `type` varchar(120) NOT NULL COMMENT '文章分类',
     *   `classify` varchar(120) NOT NULL COMMENT '文章类别（原创）',
     *   PRIMARY KEY (`id`)
     * ) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COMMENT='文章列表';
     */
    private Integer id;
    private Long article_id;
    private String title;
    private String author;
    private String content;
    private String attribute_label;
    private String summary;
    private String type;
    private String classify;
    private Date create_time;
    private Date update_time;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Long getArticle_id() {
        return article_id;
    }

    public void setArticle_id(Long article_id) {
        this.article_id = article_id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getAttribute_label() {
        return attribute_label;
    }

    public void setAttribute_label(String attribute_label) {
        this.attribute_label = attribute_label;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getClassify() {
        return classify;
    }

    public void setClassify(String classify) {
        this.classify = classify;
    }

    public Date getCreate_time() {
        return create_time;
    }

    public void setCreate_time(Date create_time) {
        this.create_time = create_time;
    }

    public Date getUpdate_time() {
        return update_time;
    }

    public void setUpdate_time(Date update_time) {
        this.update_time = update_time;
    }
}
