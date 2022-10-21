package com.project.greenbook.service;

import com.project.greenbook.dao.QnaDao;
import com.project.greenbook.dto.QnaDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;

@Service("QnaService")
public class QnaServiceImpl implements  QnaService {
    @Autowired
    private SqlSession sqlSession;

    @Override
    public ArrayList<QnaDto> list() {
        QnaDao dao = sqlSession.getMapper(QnaDao.class);
        ArrayList<QnaDto> list = dao.list();
        return list;
    }
    @Override
    public void write(HashMap<String, String> param) {

        QnaDao dao = sqlSession.getMapper(QnaDao.class);
        dao.write(param);


    }
    @Override
    public QnaDto contentView(HashMap<String, String> param) {

        QnaDao dao = sqlSession.getMapper(QnaDao.class);
        QnaDto dto = dao.contentView(param);

        return dto;
    }

    @Override
    public void modify(HashMap<String, String> param) {

        QnaDao dao = sqlSession.getMapper(QnaDao.class);
        dao.modify(param);
    }

    @Override
    public void delete(HashMap<String, String> param) {

        QnaDao dao = sqlSession.getMapper(QnaDao.class);
        dao.delete(param);

    }
}
