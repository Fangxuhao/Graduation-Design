package DAO.impl;

import DAO.ArticleDao;
import domain.Article;
import tool.Date;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * @author ：方徐浩
 * @date ：Created in 2019/9/12 16:33
 * @description： 文章DAO
 * @version: $1.0
 */
public class ArticleDaoImpl extends BaseDAO<Article> implements ArticleDao {

    @Override
    public Article getArticleById(String id) throws SQLException {
        String sql = "select * from images where id = ?";
        return query(sql, id);
    }

    @Override
    public List<Article> getArticleListAll() throws SQLException {
        String sql = "select * from article";
        return queryForList(sql);
    }

    @Override
    public List<String> getArticleTitleListAll() throws SQLException {
        String sql = "select title from article";
        List<Article> articles = queryForList(sql);
        List<String> s = new ArrayList<>();
        for (Article article : articles) {
            s.add(article.getTitle());
        }
        return s;
    }


    @Override
    public long uploadArticle(Article article) throws SQLException {
        String sql = "insert into article values(?,?,?,?,?,?,?,?,?)";
        return insert(sql, 0, article.getTitle(), article.getAuthor(), article.getContent(), new Date().getDate(), 0, article.getType(), article.getImgSrc(),0);
    }
}
