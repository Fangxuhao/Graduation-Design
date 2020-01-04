package servlet;

import com.oreilly.servlet.MultipartRequest;
import domain.Admin;
import service.AdminService;
import tool.MD5;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "UserServlet")
public class UserServlet extends HttpServlet {

    private AdminService adminService = new AdminService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    private void login(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Admin admin;
        String email;
        String pwd;
        String code;

        email = request.getParameter("email");
        pwd = new MD5().md5(request.getParameter("pwd"));
        code = request.getParameter("code");

        System.out.println(email + "   " + pwd + "   " + code);

        //验证码判断
        String sessionCode = request.getSession().getAttribute("code").toString();

        if (code != null && !"".equals(code) && sessionCode != null && !"".equals(sessionCode)) {
            if (!code.equalsIgnoreCase(sessionCode)) { //验证码错误返回-2
                System.out.println("验证码错误");
                response.getWriter().println(-2);
            } else {//验证码正确
                //账号密码判断

                admin = adminService.LoginByEmailAndPwd(email, pwd);
                if (admin != null) {//密码正确
                    //删除现有用户cookie
                    deleteC(request, response);
                    Cookie CName = new Cookie("name", admin.getName());
                    System.out.println(admin.getBirthday());
                    Cookie CBirthday = new Cookie("birthday", admin.getBirthday());
                    Cookie CSex = new Cookie("sex", admin.getSex());
                    Cookie CEmail = new Cookie("email", email);

                    CEmail.setMaxAge(60 * 60 * 24);
                    response.addCookie(CEmail);
                    CSex.setMaxAge(60 * 60 * 24);
                    response.addCookie(CSex);
                    CBirthday.setMaxAge(60 * 60 * 24);
                    response.addCookie(CBirthday);
                    CName.setMaxAge(60 * 60 * 24);
                    response.addCookie(CName);
                    response.getWriter().print(1);
                } else {
                    response.getWriter().print(-1);
                }
            }
        } else {
            response.getWriter().println("验证失败！");
        }
    }

    private void register(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username;
        String pwd;
        String email;
        String code;
        username = request.getParameter("name");
        //密码加密
        pwd = new MD5().md5(request.getParameter("pwd"));
        email = request.getParameter("email");
        code = request.getParameter("code");

        System.out.println(pwd + username + email + code);
        //验证码判断
        String sessionCode = request.getSession().getAttribute("code").toString();

        if (code != null && !"".equals(code) && sessionCode != null && !"".equals(sessionCode)) {
            if (!code.equalsIgnoreCase(sessionCode)) {
                //验证码错误返回-2
                response.getWriter().println(-2);
            } else {
                //如果邮箱重复则返回-1
                if (!adminService.IsAvailableByEmail(email)) {
                    PrintWriter out = response.getWriter();
                    System.out.println("邮箱重复");
                    out.print(-1);
                } else {//注册成功，返回1
                    adminService.Register(username, pwd, email);
                    PrintWriter out = response.getWriter();
                    out.print(1);
                    System.out.println("注册成功");
                    //删除现有用户cookie
                    deleteC(request, response);
                    Cookie CName = new Cookie("name", username);
                    Cookie CEmail = new Cookie("email", email);
                    Cookie CBirhtday = new Cookie("birthday", "1970-01-01");
                    Cookie CSex = new Cookie("sex", "保密");
                    CEmail.setMaxAge(60 * 60 * 24);
                    CName.setMaxAge(60 * 60 * 24);
                    CBirhtday.setMaxAge(60 * 60 * 24);
                    CSex.setMaxAge(60 * 60 * 24);
                    response.addCookie(CEmail);
                    response.addCookie(CBirhtday);
                    response.addCookie(CName);
                    response.addCookie(CSex);
                }
            }
        } else {
            response.getWriter().println("验证失败！");
        }

    }

    private void deleteC(HttpServletRequest request, HttpServletResponse response) {
        Cookie cookie;
        Cookie[] cookies;
        // 获取与该域相关的 Cookie 的数组
        cookies = request.getCookies();
        // 设置响应内容类型
        response.setContentType("text/html;charset=UTF-8");
        if (cookies != null) {
            for (Cookie value : cookies) {
                cookie = value;
                if (cookie.getName().equals("name")) {
                    cookie.setMaxAge(0);
                    response.addCookie(cookie);
                }
            }
        }
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");
        String program = request.getParameter("program");
        if (program.equals("register")) {
            register(request, response);
        } else if (program.equals("login")) {
            login(request, response);
        } else if (program.equals("userdata")) {
            userDataChange(request, response);
        }


    }

    private void userDataChange(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String birthday = request.getParameter("birthday");
        String sex = request.getParameter("sex");
        String email = request.getParameter("email");

        System.out.println(birthday + "         " + sex + "    " + email);


        adminService.updataUserData(birthday, sex, email);
        Admin admin = adminService.getUserDataByEmail(email);

        Cookie CBirthday = new Cookie("birthday", admin.getBirthday());
        Cookie CSex = new Cookie("sex", admin.getSex());

        CSex.setMaxAge(60 * 60 * 24);
        response.addCookie(CSex);
        CBirthday.setMaxAge(60 * 60 * 24);
        response.addCookie(CBirthday);
        response.getWriter().print(1);
    }

}
