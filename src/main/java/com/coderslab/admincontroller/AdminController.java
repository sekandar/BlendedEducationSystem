
package com.coderslab.admincontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/admin/")
public class AdminController {
    
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String loadIndexPage(){
        return "/admin/index";
    }
    
    
    
   
    
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loadLoginPage(){
        return "/admin/login";
    }
    
}
