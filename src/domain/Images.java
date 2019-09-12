package domain;

/**
 * @Author: 方徐浩
 * @Date: 2019/4/28 9:17
 */
public class Images {
    private String id;
    private String src;
    private String describe;
    private String a;

    public Images(String id, String src, String describe , String a) {
        this.id = id;
        this.src = src;
        this.describe = describe;

        this.a = a;
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

    public String getA() {
        return a;
    }

    public void setA(String a) {
        this.a = a;
    }

    @Override
    public String toString() {
        return "Images{" +
                "id='" + id + '\'' +
                ", src='" + src + '\'' +
                ", describe='" + describe + '\'' +
                ", a='" + a + '\'' +
                '}';
    }
}
