package com.ab.spring.mvc;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MyController {
    
    @RequestMapping("/")
    public String askEmpDetails() {
        return "ask-details-view";
    }
    
    @RequestMapping("/showDetails")
    public String showEmpDetails(HttpServletRequest request, Model model) { // получаем значение monthName
        
        String monthName = request.getParameter("monthName");
                
        List<Month> creat = creatingList();        
        List<Month> find = findingMatches(monthName, creatingList());
        
        model.addAttribute("monthNameAttr", monthName);
        model.addAttribute("creatingList", creat);
        model.addAttribute("findingMatches", find);    
        
        return "show-details-view";
    }    
    
    @RequestMapping("/addNewMonth")
    public String addNewMonth() {
        return "variant";
    }
    @RequestMapping("/updateMonth")
    public String updateMonth() {
        return "variant";
    }
    @RequestMapping("/deleteMonth")
    public String deleteMonth() {
        return "variant";
    }

    public List<Month> creatingList() {
        Month month1 = new Month(1, "January");
        Month month2 = new Month(2, "February");
        Month month3 = new Month(3, "March");
        Month month4 = new Month(4, "April");
        Month month5 = new Month(5, "May");
        Month month6 = new Month(6, "June");
        Month month7 = new Month(7, "July");
        Month month8 = new Month(8, "August");
        Month month9 = new Month(9, "September");
        Month month10 = new Month(10, "October");
        Month month11 = new Month(11, "November");
        Month month12 = new Month(12, "December");

        List<Month> months = new ArrayList<>();
        months.add(month1);
        months.add(month2);
        months.add(month3);
        months.add(month4);
        months.add(month5);
        months.add(month6);
        months.add(month7);
        months.add(month8);
        months.add(month9);
        months.add(month10);
        months.add(month11);
        months.add(month12);
        
        return months;
    }

    public List<Month> findingMatches(String s, List<Month> months) { // нахождение соответствий
        
        List<Month> foudMonth = new ArrayList<>();
        
        for (Month m : months) {
            if ((m.getName().toLowerCase()).contains(s.toLowerCase())) {
                foudMonth.add(m);
            } 
            if (s == null) {
                return months;
            }
        }
        return foudMonth;
    }
    

    
    
}
