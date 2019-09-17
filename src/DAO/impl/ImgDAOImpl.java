package DAO.impl;

import DAO.ImgDao;
import domain.Images;

import java.util.List;

/**
 * @author ：方徐浩
 * @date ：Created in 2019/9/12 16:33
 * @description： 图片DAO
 * @version: $1.0
 */
public class ImgDAOImpl  extends BaseDAO<Images> implements ImgDao {

    @Override
    public Images imgById(String id) {
        String sql ="select * from images where id =?";
        return query(sql,id);
    }

    @Override
    public List<Images> getAllImgByPosition(String position) {
        String sql ="select * from images where position = ?";
        return queryForList(sql,position);
    }
}
