package cz.klasik.klasikspringserver.model;

import lombok.Data;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name = "tbl1_article")
@Data
public class Article {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String name;
    private String date;
    private String content;
    private String path;

    @ManyToOne
    @JoinColumn(name = "author")
    private User author;

    @OneToMany(targetEntity = Comment.class, mappedBy = "id_article", cascade = CascadeType.ALL)
    private Set<Comment> comments;

    public Article() {
    }

    public Article(Long id) {
        this.id = id;
    }

    public Article(String name, User author, String date, String path, String content) {
        this.name = name;
        this.author = author;
        this.date = date;
        this.path = path;
        this.content = content;
    }
}
