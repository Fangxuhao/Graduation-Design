package DAO.impl;

import DAO.ReviewDao;
import domain.Review;

import java.util.List;

/**
 * @author ：方徐浩
 * @date ：Created in 2019/9/17 14:00
 * @description： 评论DAO实现
 * @version: $1.0
 */
public class ReviewDAOImpl extends BaseDAO<Review> implements ReviewDao {
    @Override
    public List<Review> getAllReviewByArticleId(int id) {
        String sql ="select * from article_review where article_id=?";
        return queryForList(sql,id);
    }
}
