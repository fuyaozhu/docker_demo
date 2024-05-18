package com.wf.ew;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/test")
public class TestController {


    @RequestMapping("/getTest")
    public String test(String str){

        return "测试docker启动SpringBoot项目："+str;
    }
}
