package cz.klasik.klasikspringserver.model;

import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "tbl2_users")
@Data
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String name;
    private String lastname;
    private boolean isActive;

    public User() {
    }

    public User(Long id) {
        this.id = id;
    }

    public User(String name, String lastname, boolean isActive) {
        this.name = name;
        this.lastname = lastname;
        this.isActive = isActive;
    }
}
