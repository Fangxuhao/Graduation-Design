package servlet;

import domain.Article;
import net.sf.json.JSONArray;
import service.ArticlesService;
import tool.GetJsonData;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collections;
import java.util.List;

@WebServlet(name = "ArticleServlet")
public class ArticleServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");
        String program = request.getParameter("program");
        String data = null;
        if (program.equals("IAL_5")){//获取首页文章小列表
            String type=request.getParameter("type");
           data=getIndexArticlesListMin(type);
        }else if (program.equals("getDataById")){
            String id=request.getParameter("id");
            data=getArticleDataById(id);
        }
        if (data != null && !data.equals("")) {
            response.getWriter().print(data);
        }
    }

    /**
     * 获取指定id的文章信息
     * @param id
     * @return
     */
    private String getArticleDataById(String id) {
        Article articleDate=new ArticlesService().getArticleDataById(id);
        return JSONArray.fromObject(articleDate).toString();
    }

    /**
     * 获取首页文章小列表
     * @param type 文章类型
     * @return JSON数据
     */
    private String getIndexArticlesListMin(String type) {
        List<Article> articleList=new ArticlesService().getArticleListByType(type,5);
        return JSONArray.fromObject(articleList).toString();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);

    }
}
