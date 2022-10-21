package com.project.greenbook.controller;

import com.project.greenbook.dto.QnaDto;
import com.project.greenbook.service.QnaServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.HashMap;

@Controller
public class QnaController {
    @Autowired
    private QnaServiceImpl service;

    @RequestMapping("/list")
    public String list(Model model){
        ArrayList<QnaDto> list =service.list();
        model.addAttribute("list", list);

        return "list";
    }
    @RequestMapping("/write_view")
    public String write_view(Model model){
        return "write_view";
    }


    @RequestMapping("/write")
    public String write(@RequestParam HashMap<String, String> param) {
        System.out.println("write()");
        service.write(param);

        return "redirect:list";
    }

    @RequestMapping("/content_view")
    public String content_view(@RequestParam HashMap<String, String> param, Model model) {
        QnaDto dto = service.contentView(param);
        model.addAttribute("content_view", dto);

        return "content_view";
    }

    @RequestMapping("/modify")
    public String modify(@RequestParam HashMap<String, String> param) {

        service.modify(param);

        return "redirect:list";
    }
    @RequestMapping("/delete")
    public String delete(@RequestParam HashMap<String, String> param) {

        service.delete(param);
        return "redirect:list";
    }
}
