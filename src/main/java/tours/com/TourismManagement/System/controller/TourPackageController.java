package tours.com.TourismManagement.System.controller;

import tours.com.TourismManagement.System.service.TourPackageServices;
import tours.com.TourismManagement.System.model.Package;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class TourPackageController {


        @Autowired
        private TourPackageServices tourpackageServices;

        //view the tour package details on viewtourpackage page
        @GetMapping("/view-tourpackage")
        public String viewtourPackagePage(Model model){
            model.addAttribute("packages", tourpackageServices.findAll());
            return "viewtourpackage";
        }
        //add the tour package details on addtourpackage page
        @GetMapping("/add-tourpackage")
        public String viewaddtourPackagePage(Model model){
            model.addAttribute("command", new Package());
            return "addtourpackage";
        }
        //view the added tour packages  on the viewtourpage
        @PostMapping("/add-tourpackage")
        public String addtourPackage(@ModelAttribute("package") Package packages){
            tourpackageServices.savePackage(packages);
            return "redirect:/view-tourpackage";
        }

        //update the tour package details on the updatetourpackage page
        @GetMapping("/update-tourpackage/{id}")
        public String viewupdatePackagePage(@PathVariable int id, Model model){
            model.addAttribute("id", id);
            model.addAttribute("command", tourpackageServices.findById(id).orElse(null));
            return "updatetourpackage";
        }

        //view the tour package details on the viewtourpackage page
        @PostMapping("/update-tourpackage/{id}")
        public String updatetourPackage(@PathVariable int id, @ModelAttribute("package") Package packages){
            tourpackageServices.updatepackage(id, packages);
            return "redirect:/view-tourpackage";
        }

        //delete the tour package details on view tourpackage page
        @GetMapping("/delete-tourpackage/{id}")
        public String deletetourPackage(@PathVariable int id){
            tourpackageServices.deleteById(id);
            return "redirect:/view-tourpackage";
        }
    }



