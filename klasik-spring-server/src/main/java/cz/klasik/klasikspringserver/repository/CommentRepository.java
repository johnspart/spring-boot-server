package cz.klasik.klasikspringserver.repository;

import cz.klasik.klasikspringserver.model.Comment;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface CommentRepository extends CrudRepository<Comment, Long> {

    Comment getCommentById(@Param("id") Long id);
}
