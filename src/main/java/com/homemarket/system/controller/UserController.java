package com.homemarket.system.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
@RequestMapping("/userController")
class UserController extends BaseController{

    @RequestMapping("/queryUserByusername")
    public void queryUserByusernam(String username, HttpServletRequest req, HttpServletResponse resp) throws IOException {
        System.out.println(username);
        System.out.println("---------------------------------------------------------------");
        System.out.println("---------------------------------------------------------------");
        System.out.println("---------------------------------------------------------------");
        System.out.println("---------------------------------------------------------------");
        System.out.println("---------------------------------------------------------------");
        System.out.println("---------------------------------------------------------------");
        System.out.println("---------------------------------------------------------------");
        int i=userService.queryUserByName(username);
        //如果数据库存在该用户，返回前端true
        if (i==1){
            resp.getWriter().write("true");
        }
        //如果数据库不存在存在该用户，返回前端false
        else {
            resp.getWriter().write("false");
        }
    }
}
