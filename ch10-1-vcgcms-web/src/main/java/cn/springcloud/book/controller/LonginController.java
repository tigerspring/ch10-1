package cn.springcloud.book.controller;

import org.springframework.stereotype.Controller;
import org.springframework.util.Assert;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

/**
 * @author xuefeng.jin
 * @create 2019 - 09 - 26 15:37
 */
@Controller
public class LonginController {

    @RequestMapping(value = "/login",method = {RequestMethod.POST,RequestMethod.GET})
    public String login(){
        return "freemarker/login";
    }

    @PostMapping(value = "/doLogin")
    public String doLogin(@RequestParam(required = false) String username,@RequestParam(required = false) String pwd){
        try {
            Assert.isTrue(!StringUtils.isEmpty(username),"用户名不能为空");
            Assert.isTrue(!StringUtils.isEmpty(pwd),"密码不能为空");
            return "freemarkerCtr/starter";
        }catch (Exception e){
            e.printStackTrace();
            return "redirect:login";
        }

    }



}
