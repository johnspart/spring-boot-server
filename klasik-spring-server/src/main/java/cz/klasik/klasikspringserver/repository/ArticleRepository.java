package cz.klasik.klasikspringserver.repository;

import cz.klasik.klasikspringserver.model.Article;
import cz.klasik.klasikspringserver.model.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ArticleRepository extends CrudRepository<Article, Long> {

    Article getArticleById(@Param("id") Long id);
}
