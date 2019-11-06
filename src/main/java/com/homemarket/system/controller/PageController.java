package com.homemarket.system.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/pageController")
public class PageController {
//用户跳转：
    @RequestMapping("/login")
    public String login() {
        return "user/login";
    }

    @RequestMapping("/userRegister")
    public String userRegister() {
        return "user/userRegister";
    }

    
    @RequestMapping("/error")
    public String error() {
        return "error";
    }

    @RequestMapping("/main")
    public String main() {
        return "main";
    }
    
    @RequestMapping("/shouye")
    public String shouye() {
        return "user/shouye";
    }
}
