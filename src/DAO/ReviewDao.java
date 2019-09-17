package DAO;

import domain.Review;

import java.util.List;

public interface ReviewDao {
    /**
     * 通过文章id获取改文章的所有游湖评论
     * @param id  需要获取评论的文章id
     * @return 返回获取的评论列表
     */
   List<Review>  getAllReviewByArticleId(int id);
}
