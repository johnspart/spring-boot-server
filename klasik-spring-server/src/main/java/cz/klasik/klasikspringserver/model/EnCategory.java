package cz.klasik.klasikspringserver.model;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name = "tbl7_en_category")
@Data
public class EnCategory {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String name;
    private String description;
    private boolean isActive;

    private Long cat1;
    private Long cat2;
    private Long cat3;
    private Long cat4;
}
