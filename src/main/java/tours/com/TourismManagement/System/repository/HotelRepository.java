package tours.com.TourismManagement.System.repository;

import tours.com.TourismManagement.System.model.Hotel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
@Repository

public interface HotelRepository extends JpaRepository <Hotel, Integer>{

}
