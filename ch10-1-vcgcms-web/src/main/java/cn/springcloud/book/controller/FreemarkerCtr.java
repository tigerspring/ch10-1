package cn.springcloud.book.controller;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.support.RequestContext;

import javax.servlet.http.HttpServletRequest;

/**
 * @author xuefeng.jin
 * @create 2019 - 09 - 16 17:40
 */
@Controller
@RequestMapping("/freemarkerCtr")
public class FreemarkerCtr {
    @RequestMapping(value = "/index",method = {RequestMethod.POST,RequestMethod.GET})
    public String index(ModelMap map, HttpServletRequest request){
        System.out.println(request.getContextPath());
        return "freemarker/index";
    }

    @RequestMapping(value = "/index2",method = {RequestMethod.POST,RequestMethod.GET})
    public String index2(ModelMap map){
        return "freemarker/index2";
    }

    @RequestMapping(value = "/starter",method = {RequestMethod.POST,RequestMethod.GET})
    public String starter(ModelMap map){
        return "freemarker/starter";
    }

    @RequestMapping(value = "/webDesign",method = {RequestMethod.POST,RequestMethod.GET})
    public String webDesign(){
        return "freemarker/content/webDesign";
    }


    @RequestMapping(value = "/pageTypeList",method = {RequestMethod.POST,RequestMethod.GET})
    public String pageTypeList(){
        return "freemarker/tables/pageTypeList";
    }

    @RequestMapping(value = "/tuijianwei",method = {RequestMethod.POST,RequestMethod.GET})
    public String tuijianwei(){
        return "freemarker/pagemodel/tuijianwei";
    }

}
