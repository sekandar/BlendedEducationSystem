package com.coderslab.admincontroller;

import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/admin/")
public class BackUpAndRestoreController {

    @RequestMapping(value = "/backup_data", method = RequestMethod.GET)
    public String loadBackUpPage(HttpServletRequest request, Model model) {
        model.addAttribute("sm", request.getParameter("sm"));
        model.addAttribute("em", request.getParameter("em"));
        return "/admin/backup_data";
    }

    @RequestMapping(value = "/doBackUp", method = RequestMethod.GET)
    public String doBackUp(HttpServletRequest request) {

        String path;
        String date = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
        
        String userName = "root";
        String password = "1234";
        String schemaName = "pf_crud";
        
        String dbpath = request.getSession().getServletContext().getRealPath("/");
        String webcut = dbpath.substring(0, dbpath.lastIndexOf("\\"));
        String buildcut = webcut.substring(0, webcut.lastIndexOf("\\"));
        String mainURLPath = buildcut.substring(0, buildcut.lastIndexOf("\\"));
        path = mainURLPath + "\\web\\resources\\backup\\" + date + ".sql";
        String exe_file = mainURLPath + "\\web\\resources\\exe\\mysqldump.exe";
        
        
        try {
            Process p = null;
            Runtime runtime = Runtime.getRuntime();
            p = runtime.exec(exe_file + " -u" + userName + " -p" + password + " --add-drop-database -B " + schemaName + " -r " + path);
            int processComplete = p.waitFor();
            if (processComplete == 0) {
                System.out.println("=========" + "backup successfull");
                request.setAttribute("sm", "Backup Successfull");
            } else {
                System.out.println("==== could not create backup");
                request.setAttribute("em", "Backup Not Successfull");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "redirect:/admin/backup_data";
    }

    @RequestMapping(value = "/doReStore", method = RequestMethod.POST)
    public String doReStore() {

        return "redirect:/admin/backup_data";
    }

}
