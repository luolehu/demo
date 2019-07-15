package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
//@RestController直接所有默认返回json
public class IndexController {

    @Value("${password}")
    private String password;

    @GetMapping("/index.html")
    public String index() {
        System.out.println(password);
        return "index";
    }

    /**
     * freemarker:(跳转到 freemarker.ftl).
     *
     * @param map
     * @return
     * @author Joe
     * Date:2017年11月6日下午4:52:19
     */
    @RequestMapping("/freemarker")
    public String freemarker(Map<String, Object> map) {
        map.put("name", "Joe");
        map.put("sex", 1);    //sex:性别，1：男；0：女；

        // 模拟数据
        List<Map<String, Object>> friends = new ArrayList<>();
        Map<String, Object> friend = new HashMap<>();
        friend.put("name", "xbq");
        friend.put("age", 22);
        friends.add(friend);
        friend = new HashMap<String, Object>();
        friend.put("name", "July");
        friend.put("age", 18);
        friends.add(friend);
        map.put("friends", friends);
        return "freemarker";
    }


    //访问其他页面
    @GetMapping("/{page}.html")
    public String showPage(@PathVariable String page) {
        return page;
    }

}
