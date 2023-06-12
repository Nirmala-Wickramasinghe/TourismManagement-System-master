package tours.com.TourismManagement.System.service;

import tours.com.TourismManagement.System.model.Hotel;
import org.junit.jupiter.api.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import javax.persistence.EntityNotFoundException;

@SpringBootTest
@TestInstance(TestInstance.Lifecycle.PER_CLASS)
public class HotelServiceTests {
    @Autowired
    private HotelServices hotelServices;
    @BeforeAll
    void setup() {
        Hotel hotel = new Hotel();
        hotel.setHotelname("GrandKandyan");
        hotel.setStreet1("street1");
        hotel.setStreet2("street2");
        hotel.setHoteldes("Kandy Central Province");
        hotel.setContactNo("07774906050");

        hotelServices.saveHotel(hotel);
    }
    @Test
    void testFindAll() {
        Assertions.assertFalse(hotelServices.findAll().isEmpty());
    }

    @Test
    void testFindByid() {
        Hotel hotel = hotelServices.findById(1).orElseThrow(EntityNotFoundException::new);
        Assertions.assertEquals("GrandKandyan", hotel.getHotelname());
    }
    @Test
    void testUpdateHotel() {
        Hotel hotel = hotelServices.findById(1).orElseThrow(EntityNotFoundException::new);
        hotel.setHotelname("GrandKandyan");
        Hotel updatedHotel = hotelServices.updatehotel(1,hotel);
        Assertions.assertEquals("GrandKandyan", updatedHotel.getHotelname());
    }
    @AfterAll
    void tearDown(){
        hotelServices.deleteById(1);
    }
}
