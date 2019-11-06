package com.homemarket.system.controller;


import com.homemarket.system.entity.Admin;
import com.homemarket.system.util.IMoocJSONResult;
import net.sf.json.JSONArray;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
@RequestMapping("/RegistLoginController")
public class RegistLoginController extends BaseController {
    Logger logger = LoggerFactory.getLogger(RegistLoginController.class);

    @RequestMapping(value = "/regist", method = RequestMethod.POST)
    public void regist(@RequestBody Admin user, HttpServletRequest req, HttpServletResponse resp) throws IOException {
        logger.info("进入到regist");
        System.out.println("进入到regist" + user.getuUsername());
        System.out.println("------------------");
        if (StringUtils.isBlank(user.getuUsername()) || StringUtils.isBlank(user.getuUsername())) {
        }
        Admin userdb=userService.findUserByName(user.getuUsername());
        if (userdb != null) {
            System.out.println("0000000000");
            System.out.println(IMoocJSONResult.ok());
            JSONArray json = JSONArray.fromObject(userdb);//将java对象转换为json对象
            resp.setCharacterEncoding("utf-8");
            resp.getWriter().write(json.toString());
        } else {
            System.out.println("11111111111");
            resp.getWriter().write(1);
        }
    }
}
