package DAO.impl;

import DAO.ArticleDao;
import domain.Article;
import org.junit.Test;
import tool.Date;

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
    public Article getArticleById(String id) {
        String sql = "select id, title,author,date,times,type,imgSrc,liked from article where id = ?";
        return query(sql, id);
    }

    @Override
    public List<Article> getArticleListAll() {
        String sql = "select * from article";
        return queryForList(sql);
    }


    @Override
    public List<String> getArticleTitleListAll() {
        String sql = "select title from article";
        List<Article> articles = queryForList(sql);
        List<String> s = new ArrayList<>();
        for (Article article : articles) {
            s.add(article.getTitle());
        }
        return s;
    }


    @Override
    public long uploadArticle(Article article) {
        String sql = "insert into article values(?,?,?,?,?,?,?,?,?,?)";
        return insert(sql, 0, article.getTitle(), article.getAuthor(), article.getContent(), new Date().getDate(), 0, article.getType(), article.getImgSrc(), 0, 0);
    }

    /**
     * 获取最后发表的10篇文章
     * @return 后发表的10篇文章信息
     */
    @Override
    public List<Article> getArticleListByDate() {
        String sql = "select id, title,date,type,imgSrc from article order by date desc limit 10";
        return queryForList(sql);
    }

    @Test
    public void test() {
        System.out.println(getArticleListByXXX("recommend",12));
    }
@Test
    public void  te1(){
        System.out.println(getArticleListByXXX("recommend",12));
    }
    /**
     * 获取以xxx为依据排列的前i篇文章信息
     * @param XXX 作为排列依据的列
     * @return 文章信息
     */
    @Override
    public List<Article> getArticleListByXXX(String XXX, int i) {
        String sql = "select id, title,author,date,times,type,imgSrc,liked,recommend from article order by ? desc limit ?";
        return queryForList(sql, XXX, i);
    }

    /**
     * 获取最后发表的i篇指定类型文章
     * @param type 指定类型
     * @param i 数量
     * @return
     */
    @Override
    public List<Article> getArticleListByType(String type, int i) {
        String sql = "select id, title,author,date_format(date,'%m-%d')AS date,times,type,imgSrc,liked from article  WHERE TYPE= ?  order by date desc limit ?";
        return queryForList(sql, type, i);
    }

    /**
     * 更新文章浏览量
     * @param id
     */
    @Override
    public void updateArticleViews(String id) {
        String sql="UPDATE article SET times=times+1 where id =?";
        update(sql,id);
    }

    /**
     * 更新文章点赞数信息
     * @param id
     */
    @Override
    public void updateArticleLikeds(String id) {
        String sql="UPDATE article SET liked=liked+1 where id =?";
        update(sql,id);
        System.out.println("liked11");
    }

    @Override
    public List<Article> getHotArticleList() {
        String sql = "select id, title,author,date,times,type,imgSrc,liked,recommend from article where recommend=1";

        return null;
    }

}
