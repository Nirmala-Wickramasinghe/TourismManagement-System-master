package tours.com.TourismManagement.System.controller;


import tours.com.TourismManagement.System.model.Hotel;
import tours.com.TourismManagement.System.service.HotelServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class HotelController {
    @Autowired
    private HotelServices hotelServices;
    //view the Hotel details on the viewhotel page
    @GetMapping("/view-hotel")
    public String showviewHotelPage(Model model){
        model.addAttribute("hotels", hotelServices.findAll());
        return "viewhotel";
    }
    //add the hotel details on the addhotel page
    @GetMapping("/add-hotel")
    public String showCreateHotelPage(Model model){
        model.addAttribute("command", new Hotel());
        return "addhotel";
    }
    // redirect to the view hotel page after add hotel information
    @PostMapping("/add-hotel")
    public String createHotelpage(@ModelAttribute("hotel")Hotel hotel){
        hotelServices.saveHotel(hotel);
        return "redirect:/view-hotel";
    }

    //update the hotel information  on the updatehotel page
        @GetMapping("/update-hotel/{id}")
    public String showupdateHotelPage(@PathVariable int id, Model model){
        model.addAttribute("id", id);
        model.addAttribute("command", hotelServices.findById(id).orElse(null));
        return "updatehotel";
    }
    //view the hotel information after update the hotel information
    @PostMapping("/update-hotel/{id}")
    public String updateHotelpage(@PathVariable int id, @ModelAttribute("hotel") Hotel hotel){
        hotelServices.updatehotel(id, hotel);
        return "redirect:/view-hotel";
    }
    //delete the hotel information and redirect the viewhotel page
    @GetMapping("/remove-hotel/{id}")
    public String deleteHotelpage(@PathVariable int id){
        hotelServices.deleteById(id);
        return "redirect:/view-hotel";
    }
}
