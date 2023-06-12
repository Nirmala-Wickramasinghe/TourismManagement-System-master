package tours.com.TourismManagement.System.model;


import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Setter
@Getter
@Entity
public class Package {

    @Id
    @Column
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer Id;
    //created attribute packagename for tour package
    @Column(nullable = false, length = 50)
    private String packagename;
    //created attribute packagetype for tour package
    @Column
    private String packagetype;
    //created attribute packageprice for tour package
    @Column
    private String packageprice;
    //created attribute packagedescription for tour package
    @Column
    private String packagedescription;

}