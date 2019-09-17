package DAO;

import domain.Images;

import java.util.List;

public interface ImgDao {
    /**
     * 通过图片id获取图片信息
     * @param id
     * @return
     */
    Images imgById(String id);

    /**
     * 获取莫一页的所有图片数据
     * @param position
     * @return
     */
    List<Images> getAllImgByPosition(String position);
}
