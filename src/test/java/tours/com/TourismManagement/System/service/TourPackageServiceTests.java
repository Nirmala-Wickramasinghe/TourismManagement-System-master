package tours.com.TourismManagement.System.service;


import tours.com.TourismManagement.System.model.Package;
import org.junit.jupiter.api.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import javax.persistence.EntityNotFoundException;

@SpringBootTest
@TestInstance(TestInstance.Lifecycle.PER_CLASS)
public class TourPackageServiceTests {
    @Autowired
    private TourPackageServices tourpackageServices;
    @BeforeAll
    void setup() {
        Package packag = new Package();
        packag.setPackagename("Sigiriya Tour Package");
        packag.setPackagetype("fully Accommodation");
        packag.setPackagedescription("This package provides all the facilities");
        packag.setPackageprice("LKR.80000");
        tourpackageServices.savePackage(packag);
    }
    @Test
    void testFindAll() {
        Assertions.assertFalse(tourpackageServices.findAll().isEmpty());
    }
    @Test
    void testFindById(){
        Package packag = tourpackageServices.findById(1).orElseThrow(EntityNotFoundException::new);
        Assertions.assertEquals("Sigiriya Tour Package", packag.getPackagename());
    }
    @Test
    void testUpdateBooking(){
        Package packag = tourpackageServices.findById(1).orElseThrow(EntityNotFoundException::new);
        packag.setPackageprice("LKR.80000");
        Package updatepackage = tourpackageServices.updatepackage(1, packag);
        Assertions.assertEquals("LKR.80000",updatepackage.getPackageprice());
    }
    @AfterAll
    void teardown(){
        tourpackageServices.deleteById(1);
    }
}
