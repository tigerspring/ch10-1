package cn.springcloud.book.datacontroller;

import com.alibaba.fastjson.JSON;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

/**
 * @author xuefeng.jin
 * @create 2019 - 09 - 27 10:12
 */
@RestController
@RequestMapping("/pageDesign")
public class PageDesignController {

    @GetMapping("/list")
    public Object list(){
        PageDesignEntity pageDesignEntity1 = new PageDesignEntity(1,"编辑图片首页");
        PageDesignEntity pageDesignEntity2 = new PageDesignEntity(2,"创意图片首页");
        PageDesignEntity pageDesignEntity3 = new PageDesignEntity(3,"汽车图库首页");
        PageDesignEntity pageDesignEntity4 = new PageDesignEntity(4,"汽车图库详情页");
        List<PageDesignEntity> list = new ArrayList<>();
        list.add(pageDesignEntity1);
        list.add(pageDesignEntity2);
        list.add(pageDesignEntity3);
        list.add(pageDesignEntity4);
        return list;
    }
}
class PageDesignEntity{
    private Integer id;
    private String pageType;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPageType() {
        return pageType;
    }

    public void setPageType(String pageType) {
        this.pageType = pageType;
    }

    public PageDesignEntity() {
    }

    public PageDesignEntity(Integer id, String pageType) {
        this.id = id;
        this.pageType = pageType;
    }
}
