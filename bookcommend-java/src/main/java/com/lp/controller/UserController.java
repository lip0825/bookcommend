package com.lp.controller;

import com.lp.entity.User;
import com.lp.service.RecommendService;
import com.lp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;


@Controller
public class UserController {

    @Autowired
    private UserService userService;
    @Autowired
    private RecommendService recommendService;

    @RequestMapping(value="/login",method= RequestMethod.GET)
    public String toLogin() {
        return "/login";
    }

    @RequestMapping(value="/login",method=RequestMethod.POST)
    public String login(User user, Model model, HttpSession session) {
        Integer temp = userService.selectUser(user);
        if(temp != null) {
            // 将用户对象添加到Session
            session.setAttribute("USER_SESSION", user);
            // 重定向到主页面的跳转方法
            return "redirect:main";
        }
        model.addAttribute("msg", "用户名或密码错误，请重新登录！");
        return "login";
    }

    @RequestMapping(value="/main")
    public String toMain() {
        return "main";
    }

    @RequestMapping(value = "/logout")
    public String logout(HttpSession session) {
        // 清除Session
        session.invalidate();
        // 重定向到登录页面的跳转方法
        return "redirect:login";
    }

}
