package DAO;

import domain.Article;

import java.sql.SQLException;
import java.util.List;

public interface ArticleDao {
    /**
     * 通过文章id获取文章详细信息
     */
    Article getArticleById(String id) throws SQLException;

    /**
     * 获取所有文章
     *
     * @return 所有文章
     */
    List<Article> getArticleListAll() throws SQLException;

    /**
     * 获取所有文章标题列表
     *
     * @return 所有文章标题列表
     */
    List<String> getArticleTitleListAll() throws SQLException;

    /**
     * 上传文章
     * @throws SQLException
     */
    long uploadArticle(Article article) throws SQLException;
}
