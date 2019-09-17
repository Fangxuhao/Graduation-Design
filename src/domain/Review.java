package domain;

/**
 * @author ：方徐浩
 * @date ：Created in 2019/9/17 13:49
 * @description: 评论
 * @version: $ 1.0
 */
public class Review {
    private int id;
    private int article_id;
    private String content;
    private String user;
    private String reply;
    private String date;



    public Review() {
    }

    @Override
    public String toString() {
        return "Review{" +
                "id=" + id +
                ", article_id=" + article_id +
                ", content='" + content + '\'' +
                ", user='" + user + '\'' +
                ", reply='" + reply + '\'' +
                ", date='" + date + '\'' +
                '}';
    }

    public int getArticle_id() {
        return article_id;
    }

    public void setArticle_id(int article_id) {
        this.article_id = article_id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getReply() {
        return reply;
    }

    public void setReply(String reply) {
        this.reply = reply;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
}
