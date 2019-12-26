package service;

import DAO.ArticleDao;
import DAO.impl.ArticleDaoImpl;
import domain.Article;
import org.junit.Test;

import java.util.List;

/**
 * @author ：方徐浩
 * @date ：Created in 2019/12/12 15:18
 * @description： 文章服务
 * @version: 1$
 */
public class ArticlesService {
    private ArticleDao articleDao = new ArticleDaoImpl();

    /**
     * 获取所有文章信息
     *
     * @return 所有文章信息
     */
    public List<Article> getAllArticles() {
        return articleDao.getArticleListAll();
    }

    public void viewsUpdate(String id) {
        articleDao.updateArticleViews(id);
    }


    /**
     * 获取以xxx字段为依据排列的前i篇文章信息
     *
     * @param XXX
     * @param i
     * @return
     */
    public List<Article> getArticleListByXXX(String XXX, int i) {
        return articleDao.getArticleListByXXX(XXX, i);
    }

    /**
     * 获取所有文章标题
     *
     * @return
     */
    public List<String> getArticleTitle() {
        return articleDao.getArticleTitleListAll();
    }

    /**
     * 获取最后发表的i篇指定类型文章
     *
     * @param type 指定类型
     * @param i    数量
     * @return
     */
    public List<Article> getArticleListByType(String type, int i) {
        return articleDao.getArticleListByType(type, i);
    }

    public Article getArticleDataById(String id) {
        return articleDao.getArticleById(id);
    }

    public void likedsUpdate(String id) {
        articleDao.updateArticleLikeds(id);
    }

    public List<Article> getArticleListByDate() {
        return articleDao.getArticleListByDate();
    }

    public List<Article> getHotArticleList() {
        return articleDao.getArticleListByXXX("recommend",12);
    }
}
