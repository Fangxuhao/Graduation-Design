package DAO;

import domain.Article;

import java.sql.SQLException;
import java.util.List;

public interface ArticleDao {
    /**
     * 通过文章id获取文章详细信息
     */
    Article getArticleById(String id);

    /**
     * 获取所有文章
     * @return 所有文章
     */
    List<Article> getArticleListAll();

    /**
     * 获取所有文章标题列表
     * @return 所有文章标题列表
     */
    List<String> getArticleTitleListAll();

    /**
     * 上传文章
     *
     */
    long uploadArticle(Article article);

    /**
     * 获取最后上传的?篇文章信息，按时间顺序由后往前排列
     * @return 最后上传的?篇文章信息（除文章具体内容）
     */
    List<Article> getArticleListByDate();

    /**
     * 获取以XXX为依据，排列的前i篇文章
     * @return 获取的所有文章信息（除文章具体内容）
     */
    List<Article> getArticleListByXXX(String XXX,int i);

}
