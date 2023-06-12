package tours.com.TourismManagement.System.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Getter
@Setter
@Entity

public class Hotel {
    @javax.persistence.Id
    @Column
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer Id;
    //created attribute hotelname for hotel information
    @Column(nullable = false,length = 50)
    private String hotelname;

    //created attribute street1 for hotel information
    @Column
    private String street1;

    //created attribute street2 for hotel information
    @Column
    private String street2;

    //created attribute hoteldescription for hotel information
    @Column
    private String hoteldes;

    //created attribute numberofemployees for hotel information
    @Column
    private String contactNo;
}
