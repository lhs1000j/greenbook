package com.project.greenbook.dao;


import com.project.greenbook.dto.QnaDto;

import java.util.ArrayList;
import java.util.HashMap;

public interface QnaDao {
    public ArrayList<QnaDto> list();
    public void write(HashMap<String, String> param);
    public QnaDto contentView(HashMap<String, String> param);
    public void modify(HashMap<String, String> param);
    public void delete(HashMap<String, String> param);
}
