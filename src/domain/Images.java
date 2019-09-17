package domain;

/**
 * @Author: 方徐浩
 * @Date: 2019/4/28 9:17
 */
public class Images {
    private String id;
    private String src;
    private String describe;
    private String liked;

    public Images(String id, String src, String describe , String liked) {
        this.id = id;
        this.src = src;
        this.describe = describe;

        this.liked = liked;
    }

    public Images() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getSrc() {
        return src;
    }

    public void setSrc(String src) {
        this.src = src;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public String getLiked() {
        return liked;
    }

    public void setLiked(String liked) {
        this.liked = liked;
    }

    @Override
    public String toString() {
        return "Images{" +
                "id='" + id + '\'' +
                ", src='" + src + '\'' +
                ", describe='" + describe + '\'' +
                ", liked='" + liked + '\'' +
                '}';
    }
}
