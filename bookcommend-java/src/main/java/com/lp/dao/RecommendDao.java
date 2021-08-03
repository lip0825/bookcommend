package com.lp.dao;

import com.lp.entity.Recommend;
import org.springframework.stereotype.Repository;

@Repository
public interface RecommendDao {

    Recommend selectRecommend(Integer id);

}
