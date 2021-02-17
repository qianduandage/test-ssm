package com.li.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.apache.commons.io.FileUtils;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;

@Controller
public class LoginController {

    @RequestMapping({"/login"})
    public String toLogin(){
        return "login";
    }

    @RequestMapping({"/main/home"})
    public String login(HttpServletRequest request ){
        return "main";
    }


}
