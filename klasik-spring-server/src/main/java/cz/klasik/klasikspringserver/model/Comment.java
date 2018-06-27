package cz.klasik.klasikspringserver.model;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "tbl5_comment")
@Data
public class Comment {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "id_user")
    private User id_user; //Author of the comment

    private Long id_article;

    private Date date;
    private String text;

}
