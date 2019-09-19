package domain;

/**
 * @Author: 方徐浩
 * @Date: 2019/5/17 8:58
 * @version: $ 2.0
 */

public class Article {
    private int id;
    private String title;//标题
    private String author;//作者
    private String content;//文章主体
    private String date;//上传日期
    private String times;//浏览次数
    private String type;//文章类别
    private String imgSrc;//图
    private String liked;//获赞数量
    private int recommend;//是否推荐

    public int getRecommend() {
        return recommend;
    }

    public void setRecommend(int recommend) {
        this.recommend = recommend;
    }

    public String getLiked() {
        return liked;
    }

    @Override
    public String toString() {
        return "Article{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", author='" + author + '\'' +
                ", content='" + content + '\'' +
                ", date='" + date + '\'' +
                ", times='" + times + '\'' +
                ", type='" + type + '\'' +
                ", imgSrc='" + imgSrc + '\'' +
                ", liked='" + liked + '\'' +
                ", recommend=" + recommend +
                '}';
    }

    public void setLiked(String liked) {
        this.liked = liked;
    }

    public Article() {
    }

    public String getImgSrc() {
        return imgSrc;
    }

    public void setImgSrc(String imgSrc) {
        this.imgSrc = imgSrc;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public String getDate() {
        return date;
    }

    public void setDate(String data) {
        this.date = data;
    }

    public String getTimes() {
        return times;
    }

    public void setTimes(String times) {
        this.times = times;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

}
