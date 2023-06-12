package tours.com.TourismManagement.System.service;

import tours.com.TourismManagement.System.model.Booking;
import org.junit.jupiter.api.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import javax.persistence.EntityNotFoundException;
@SpringBootTest
@TestInstance(TestInstance.Lifecycle.PER_CLASS)
public class BookingServiceTests {

    @Autowired
    private BookingService bookingService;
    @BeforeAll
    void setup() {
        Booking booking = new Booking();
        booking.setFirstname("Ashen");
      //  booking.setId("1");
        booking.setPackageid("1");
        booking.setEmail("abc@gmail.com");
        booking.setNumberofdays("10");
        bookingService.saveBooking(booking);
    }
    @Test
    void testFindAll() {
        Assertions.assertFalse(bookingService.findAll().isEmpty());
    }
    @Test
    void testFindById() {
        Booking booking = bookingService.findById(1).orElseThrow(EntityNotFoundException::new);
        Assertions.assertEquals("Ashen", booking.getFirstname());
    }
    @Test
    void testUpdateBooking() {
        Booking booking = bookingService.findById(1).orElseThrow(EntityNotFoundException::new);
        booking.setNumberofdays("10");
        Booking updateBooking = bookingService.updatebooking(1, booking);
        Assertions.assertEquals("10", updateBooking.getNumberofdays());
    }
    @AfterAll
    void tearDown() {
        bookingService.deleteById(1);
    }
}
