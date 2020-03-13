package ssm.hmily_blog.pojo;

import java.util.Date;

public class User {
    /**
     * CREATE TABLE `user` (
     *   `id` varchar(255) NOT NULL,
     *   `gender` tinyint(4) NOT NULL,
     *   `user_name` varchar(255) NOT NULL,
     *   `email` varchar(255) DEFAULT NULL,
     *   `birthday` varchar(255) DEFAULT NULL,
     *   `image_url` varchar(255) DEFAULT NULL,
     *   `recent_login_date` timestamp NULL DEFAULT NULL,
     *   `phone` varchar(255) NOT NULL COMMENT '手机号',
     *   `password` varchar(255) NOT NULL,
     *   `name` varchar(255) DEFAULT NULL,
     *   `introduce` varchar(255) DEFAULT NULL,
     *   PRIMARY KEY (`id`)
     * ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
     */
    private String id;
    private Integer gender;
    private String user_name;
    private String email;
    private String birthday;
    private String image_url;
    private String phone;
    private String password;
    private String name;
    private String introduce;

    private Date recent_login_date;





    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Integer getGender() {
        return gender;
    }

    public void setGender(Integer gender) {
        this.gender = gender;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getImage_url() {
        return image_url;
    }

    public void setImage_url(String image_url) {
        this.image_url = image_url;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce;
    }

    public Date getRecent_login_date() {
        return recent_login_date;
    }

    public void setRecent_login_date(Date recent_login_date) {
        this.recent_login_date = recent_login_date;
    }
}
