package cz.klasik.klasikspringserver.model;

import lombok.Data;

import javax.persistence.*;

@Entity (name = "tbl6_definition")
@Data
public class Definition {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String name;

    @Column(columnDefinition = "text")
    private String text;

    @ManyToOne
    @JoinColumn(name = "id_user")
    private User id_user;

    @OneToOne
    @JoinColumn(name = "id_en_category")
    private EnCategory id_en_category;

}
