
package com.coderslab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {
    
    @RequestMapping("/")
    public String loadHomePage(){
        return "index";
    }
    
    @RequestMapping("/contact")
    public String loadContactPage(){
        return "contact";
    }
    
    @RequestMapping("/live_class")
    public String loadLiveClassPage(){
        return "live_class";
    }
    
}
