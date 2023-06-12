package  tours.com.TourismManagement.System.repository;

import tours.com.TourismManagement.System.model.Booking;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

//managing booking entity in the database
@Repository
public interface BookingRepository extends JpaRepository<Booking, Integer> {
}
