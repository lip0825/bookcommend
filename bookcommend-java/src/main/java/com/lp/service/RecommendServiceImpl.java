package com.lp.service;

import com.lp.dao.RecommendDao;
import com.lp.entity.Recommend;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class RecommendServiceImpl implements RecommendService{

    @Autowired
    private RecommendDao recommendDao;

    @Override
    public Recommend selectRecommend(Integer id) {
        return recommendDao.selectRecommend(id);
    }
}
