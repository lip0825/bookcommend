package com.lp.controller;

import com.lp.entity.Recommend;
import com.lp.service.RecommendService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class RecommendController {
    @Autowired
    RecommendService recommendService;

    @RequestMapping("/selectRecommend/{id}")
    @ResponseBody
    public Recommend selectRecommend(@PathVariable("id") Integer id){
        Recommend recommend = recommendService.selectRecommend(id);
        return recommend;
    }
}
