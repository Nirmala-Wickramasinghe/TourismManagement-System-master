package tours.com.TourismManagement.System.service;

import tours.com.TourismManagement.System.model.Package;
import tours.com.TourismManagement.System.repository.TourPackageRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class TourPackageServices {
    @Autowired
    private TourPackageRepository tourpackagerepositoryobject;
    /**
     * Creating LOG
     */
    private static Logger LOG = LoggerFactory.getLogger(TourPackageServices.class);
    /**
     *
     *This method returns all the Package
     * @return List<Customer>
     */
    public List<Package> findAll(){
        List<Package> packages = tourpackagerepositoryobject.findAll();
        LOG.info("Successfully retrieved all the tour package details");
        return packages;
    }
    /**
     *This method returns package for a given id
     * @param id
     * @return Optional<package>
     */
    public Optional<Package> findById(int id){
        Optional<Package> packag = tourpackagerepositoryobject.findById(id);
        LOG.info("Successfully retrieved tour package details for the given id");
        return packag;
    }
    /**
     * this method saves a package and returns it
     * @param packageobject
     * @return
     */
    public Package savePackage(Package packageobject){
        Package savedPackages = tourpackagerepositoryobject.save(packageobject);
        LOG.info("successfully saved tour package for the given details.");
        return savedPackages;
    }
    /**
     *
     * This method updates a package of given id
     * @param id
     * @param packages
     * @return
     */
    public Package updatepackage(int id, Package packages) {
        LOG.info("updating package for a given id.");
        Package updatepackage = tourpackagerepositoryobject.findById(id).orElse(null);
        if (updatepackage != null){
            updatepackage.setPackagename(packages.getPackagename());
            updatepackage.setPackagetype(packages.getPackagetype());
            updatepackage.setPackageprice(packages.getPackageprice());
            updatepackage.setPackagedescription(packages.getPackagedescription());
            tourpackagerepositoryobject.save(updatepackage);
        }else{
            LOG.warn("No tour package details found  for the given id");
        }
        return updatepackage;
    }
    /**
     *This method deletes a package for given id
     * @param id
     */
    public void deleteById(int id){
        tourpackagerepositoryobject.deleteById(id);
        LOG.info("Successfully removed the tour package details of the given id.");
    }
}
