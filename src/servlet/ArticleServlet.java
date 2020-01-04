package servlet;

import domain.Article;
import net.sf.json.JSONArray;
import service.ArticlesService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.List;

@WebServlet(name = "ArticleServlet")
public class ArticleServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");
        String program = request.getParameter("program");
        String data = null;
        switch (program) {
            case "IAL_5": {//获取首页文章小列表
                String type = request.getParameter("type");
                data = getIndexArticlesListMin(type);
                break;
            }
            case "getDataById": {//获取指定id文章的信息
                String id = request.getParameter("id");
                data = getArticleDataById(id);
                break;
            }
            case "addTimes": {//更新文章浏览量
                String id = request.getParameter("id");
                updateArticleViews(id);
                break;
            }
            case "liked": {//点赞加一
                String id = request.getParameter("id");
                System.out.println("liked");
                updateArticleLikeds(id);
                break;
            }
            case "newArticle": //获取10篇最新文章
                data = getNewArticles();
                break;
            case "hotArticle": //获取热门文章
                data = getHotArticles();
                break;
            case "recommendArticle": //获取推荐文章
                data = getRecommemdArticles();
                break;
            case "AL": {//获取分类文章
                String type = request.getParameter("type");
                data = getArticlesListByType(type);
                break;
            }
            case "Search": //搜索文章
                String key = request.getParameter("key");
                key=  new String(key.getBytes("iso8859-1"), StandardCharsets.UTF_8);
                data = searchArticles(key);
                System.out.println("搜索文章" + "key=" + key);
                break;
        }
        if (data != null && !data.equals("")) {
            response.getWriter().print(data);
        }
    }

    private String searchArticles(String key) {
        List<Article> articleList = articlesService.searchArticles(key);
        return JSONArray.fromObject(articleList).toString();
    }

    private String getArticlesListByType(String type) {
        List<Article> articleList = articlesService.getArticleListByType(type, 999);
        return JSONArray.fromObject(articleList).toString();
    }

    private String getRecommemdArticles() {
        List<Article> articleList = articlesService.getRecommemdArticleList();
        return JSONArray.fromObject(articleList).toString();
    }

    /**
     * 获取热门文章
     *
     * @return
     */
    private String getHotArticles() {
        List<Article> articleList = articlesService.getHotArticleList();
        return JSONArray.fromObject(articleList).toString();
    }

    /**
     * 获取新文章
     *
     * @return
     */
    private String getNewArticles() {
        List<Article> articleList = articlesService.getArticleListByDate();
//        System.out.println(JSONArray.fromObject(articleList).toString());
        return JSONArray.fromObject(articleList).toString();
    }

    private ArticlesService articlesService = new ArticlesService();

    /**
     * 更新文章点赞量
     *
     * @param id
     */
    private void updateArticleLikeds(String id) {
        articlesService.likedsUpdate(id);
    }


    /**
     * 更新文章浏览量
     *
     * @param id
     */
    private void updateArticleViews(String id) {
        articlesService.viewsUpdate(id);
    }

    /**
     * 获取指定id的文章信息
     *
     * @param id
     * @return
     */
    private String getArticleDataById(String id) {
        Article articleDate = articlesService.getArticleDataById(id);
        System.out.println(JSONArray.fromObject(articleDate).toString());
        return JSONArray.fromObject(articleDate).toString();
    }

    /**
     * 获取首页文章小列表
     *
     * @param type 文章类型
     * @return JSON数据
     */
    private String getIndexArticlesListMin(String type) {
        List<Article> articleList = articlesService.getArticleListByType(type, 5);
        return JSONArray.fromObject(articleList).toString();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
