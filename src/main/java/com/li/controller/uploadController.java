package com.li.controller;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;

@Controller
@RequestMapping("/user")
public class uploadController {


    @RequestMapping(value="/doUpload")
    public String doUploadFile(@RequestParam("file") MultipartFile file) throws IOException {
        if (!file.isEmpty()) {
            System.out.println("Process file:{}"+file.getOriginalFilename());
        }
        FileUtils.copyInputStreamToFile(file.getInputStream(), new File("E:\\",System.currentTimeMillis()+file.getOriginalFilename()));
        return "main";
    }

}
