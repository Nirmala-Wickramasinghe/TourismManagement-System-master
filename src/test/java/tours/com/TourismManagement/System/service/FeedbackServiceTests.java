package tours.com.TourismManagement.System.service;

import tours.com.TourismManagement.System.model.Feedback;
import org.junit.jupiter.api.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import javax.persistence.EntityNotFoundException;
@SpringBootTest
@TestInstance(TestInstance.Lifecycle.PER_CLASS)
public class FeedbackServiceTests {
    @Autowired
    private FeedbackService feedbackService;
    @BeforeAll
    void setup() {
        Feedback feedback = new Feedback();
        feedback.setName("Ashen");
        feedback.setEmail("ashen123@gmail.com");
        feedback.setMessage("10");
        feedbackService.saveFeedback(feedback);
    }
    @Test
    void testFindAll() {
        Assertions.assertFalse(feedbackService.findAll().isEmpty());
    }

    @Test
    void testFindByid() {
        Feedback feedback = feedbackService.findById(1).orElseThrow(EntityNotFoundException::new);
        Assertions.assertEquals("Ashen", feedback.getName());
    }
    @Test
    void testUpdateFeedback() {
        Feedback feedback = feedbackService.findById(1).orElseThrow(EntityNotFoundException::new);
        feedback.setEmail("ashen123@gmail.com");
        Feedback updatedFeedback = feedbackService.updatefeedback(1,feedback);
        Assertions.assertEquals("ashen123@gmail.com", updatedFeedback.getEmail());
    }
    @AfterAll
    void tearDown(){
        feedbackService.deleteById(1);
    }
}
