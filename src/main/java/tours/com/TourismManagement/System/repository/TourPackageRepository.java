package tours.com.TourismManagement.System.repository;

import tours.com.TourismManagement.System.model.Package;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TourPackageRepository extends JpaRepository<Package, Integer> {
        }
