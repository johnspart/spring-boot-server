package cz.klasik.klasikspringserver.controller;

import cz.klasik.klasikspringserver.model.User;
import cz.klasik.klasikspringserver.repository.ArticleRepository;
import cz.klasik.klasikspringserver.repository.CommentRepository;
import cz.klasik.klasikspringserver.repository.UserRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@CrossOrigin(origins = "http://localhost:8080")
@RestController
@RequestMapping(path = "/user")
public class UserController {

    private static final Logger LOG = LoggerFactory.getLogger(ArticleController.class);

    @Autowired
    private ArticleRepository articleRepository;
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private CommentRepository commentRepository;


    @GetMapping(path = "/add")
    public @ResponseBody
    String addNewUser (@RequestParam String name, @RequestParam String lastname) {
        User user = new User();
        user.setLastname(lastname);
        user.setName(name);
        userRepository.save(user);
        return "Saved";
    }

    @GetMapping(path = "/allUser")
    public @ResponseBody Iterable<User> getAllUsers() {
        return userRepository.findAll();
    }

    @GetMapping(path = "/{id}")
    public @ResponseBody User getUserById (@PathVariable("id") Long id) {
        User user = userRepository.getUserById(id);

        if (user == null) {
            return null;
        }

        return user;
    }
}
