package tours.com.TourismManagement.System.service;


import tours.com.TourismManagement.System.model.Hotel;
import tours.com.TourismManagement.System.repository.HotelRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

/**
 *This class contains methods for Hotel for the tourism organization
 */
@Service
public class HotelServices {
    @Autowired
    private HotelRepository hotelRepositoryobject;

    private static final Logger LOG = LoggerFactory.getLogger(HotelServices.class);
    /**
     *
     *This method returns all the Hotel information
     * @return List<Hotel>
     */
    public List<Hotel> findAll(){
        List<Hotel> hotels = hotelRepositoryobject.findAll();
        LOG.info("Successfully retrieved all the hotel details");
        return hotels;
    }

    /**
     *This method returns hotel for a given id
     * @param id
     * @return Optional<Hotel>
     */
    public Optional<Hotel> findById(int id){
        Optional<Hotel> hotel = hotelRepositoryobject.findById(id);
        LOG.info("Successfully find hotel details for the given id");
        return hotel;
    }

    /**
     * this method saves a hotel information and returns it
     * @param hotelobject
     * @return
     */
    public Hotel saveHotel(Hotel hotelobject){
        Hotel savedHotel = hotelRepositoryobject.save(hotelobject);
        LOG.info("successfully saved hotel information for the given details.");
        return savedHotel;
    }

    /**
     *
     * This method updates a hotel of given id
     * @param id
     * @param hotel
     * @return
     */
    public Hotel updatehotel(int id, Hotel hotel) {
        LOG.info("updating hotel  information for a given id.");
        Hotel updatehotel = hotelRepositoryobject.findById(id).orElse(null);
        if (updatehotel != null){
            updatehotel.setHotelname(hotel.getHotelname());
            updatehotel.setStreet1(hotel.getStreet1());
            updatehotel.setStreet2(hotel.getStreet2());
            updatehotel.setHoteldes(hotel.getHoteldes());
            updatehotel.setContactNo(hotel.getContactNo());
            hotelRepositoryobject.save(updatehotel);
        }else{
            LOG.warn("Not updated hotel details for the given id");
        }
        return updatehotel;
    }
    /**
     *This method deletes a hotel for given id
     * @param id
     */
    public void deleteById(int id){
        hotelRepositoryobject.deleteById(id);
        LOG.info("Successfully removed the details of the given id.");
    }

}