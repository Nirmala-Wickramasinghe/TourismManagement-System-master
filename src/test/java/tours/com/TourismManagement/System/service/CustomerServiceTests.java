package tours.com.TourismManagement.System.service;

import tours.com.TourismManagement.System.model.Customer;
import org.junit.jupiter.api.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import javax.persistence.EntityNotFoundException;

@SpringBootTest
@TestInstance(TestInstance.Lifecycle.PER_CLASS)
public class    CustomerServiceTests {
    @Autowired
    private CustomerService customerService;
    @BeforeAll
    void setup(){
        Customer customer = new Customer();
        customer.setFirstname("Mohamed");
        customer.setLastname("Risky");
        customer.setMobile(Integer.valueOf("0771245558"));
        customer.setEmail("mohameds@gmail.com");
        customer.setPassword("Rizky@123");
        customer.setAddress("Kandy");
        customer.setCountry("Sri lanka");
        customerService.saveCustomer(customer);
    }
    @Test
    void testFindAll() {
        Assertions.assertFalse(customerService.findAll().isEmpty());
    }
    @Test
    void testFindById() {
        Customer customer = customerService.findById(1).orElseThrow(EntityNotFoundException::new);
        Assertions.assertEquals("Mohamed", customer.getFirstname());
    }
    @Test
    void testUpdateCustomer() {
        Customer customer = customerService.findById(1).orElseThrow(EntityNotFoundException::new);
        customer.setEmail("mohameds@gmail.com");
        Customer updateCustomer = customerService.updatecustomer(1, customer);
        Assertions.assertEquals("mohameds@gmail.com", updateCustomer.getEmail());
    }
    @AfterAll
    void tearDown() {
        customerService.deleteById(1);
    }
}
