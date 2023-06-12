package  tours.com.TourismManagement.System.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Setter
@Getter
@Entity
public class Booking {
    //generating fields to store values in database automatically
    @Id
    @Column
    //generating unique values for ID to auto store in database
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer Id;
//generating firstname field
    @Column(nullable = false,length = 50)
    private String firstname;

//generating email field
    @Column
    private String email;

//generating package id field
    @Column
    private String packageid;

//generating phone number field
    @Column
    private String phonenumber;

//generating number of days field
    @Column
    private String numberofdays;
}

