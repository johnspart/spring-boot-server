package cz.klasik.klasikspringserver.controller;

import cz.klasik.klasikspringserver.model.Article;
import cz.klasik.klasikspringserver.model.Comment;
import cz.klasik.klasikspringserver.repository.ArticleRepository;
import cz.klasik.klasikspringserver.repository.CommentRepository;
import cz.klasik.klasikspringserver.repository.UserRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Date;

@CrossOrigin(origins = "http://localhost:8080")
@RestController
@RequestMapping(path = "/article")
public class ArticleController {

    private static final Logger LOG = LoggerFactory.getLogger(ArticleController.class);

    @Autowired
    private ArticleRepository articleRepository;
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private CommentRepository commentRepository;

    @GetMapping(path = "/all")
    public @ResponseBody
    Iterable<Article> getAllArticles() {
        LOG.info("getAllArticles - start");
        return articleRepository.findAll();
    }

    @GetMapping(path = "/{id}")
    public @ResponseBody
    Article getArticleById(@PathVariable("id") Long id) {
        Article article = articleRepository.getArticleById(id);

        if (article == null) {
            return null;
        }

        return article;
    }

    @PostMapping(path = "/addComment")
    public String addComment(@RequestBody Comment comment) {
        comment.setDate(new Date());
        commentRepository.save(comment);
        return "saved";
    }

    @GetMapping(path = "/deleteComm/{id}")
    public @ResponseBody
    String removeComment(@PathVariable("id") Long id) {
        commentRepository.deleteById(id);

        return "Removed";
    }
}
