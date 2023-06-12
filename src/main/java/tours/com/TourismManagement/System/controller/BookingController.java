package  tours.com.TourismManagement.System.controller;

import tours.com.TourismManagement.System.model.Booking;
import tours.com.TourismManagement.System.service.BookingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class BookingController {
    @Autowired
    private BookingService bookingService;
//specifying the URL path
    //viewing the booking details
    @GetMapping("/read-booking")
    public String showreadBookingPage(Model model){
        model.addAttribute("bookings", bookingService.findAll());
        return "readbooking";
    }
    //adding a new booking record
    @GetMapping("/add-booking")
    public String showaddBookingPage(Model model){
        model.addAttribute("command", new Booking());
        return "addbooking";
    }
    //new record redirecting to the view page
    @PostMapping("/add-booking")
    public String addBooking(@ModelAttribute("booking")Booking booking){
        bookingService.saveBooking(booking);
        return "redirect:/read-booking";
    }
     //updating the previously added record
    @GetMapping("/update-booking/{id}")
    public String showupdateBookingPage(@PathVariable int id, Model model){
        model.addAttribute("id", id);
        model.addAttribute("command", bookingService.findById(id).orElse(null));
        return "updatebooking";
    }
    //updated record redirecting to the view/read page
    @PostMapping("/update-booking/{id}")
    public String updateBooking(@PathVariable int id, @ModelAttribute("booking") Booking booking){
        bookingService.updatebooking(id, booking);
        return "redirect:/read-booking";
    }
//delete the record and redirecting to view page
    @GetMapping("/delete-booking/{id}")
    public String deleteBooking(@PathVariable int id){
        bookingService.deleteById(id);
        return "redirect:/read-booking";
    }


}
