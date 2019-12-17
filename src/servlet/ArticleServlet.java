package servlet;

import domain.Article;
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
        if (program.equals("IAL_5")){//获取首页文章小列表
            String type=request.getParameter("type");
            String data=getIndexArticlesListMin(type);
            response.getWriter().print(data);
        }



    }

    /**
     * 获取首页文章小列表
     * @param type 文章类型
     * @return JSON数据
     */
    private String getIndexArticlesListMin(String type) {
        List<Article> articleList=new ArticlesService().getArticleListByType(type,5);
        return new GetJsonData<>().getJson(Collections.singletonList(articleList));
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);

    }
}
