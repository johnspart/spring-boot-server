package cz.klasik.klasikspringserver.repository;

import cz.klasik.klasikspringserver.model.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface UserRepository extends CrudRepository<User, Long> {

    User getUserById(@Param("id") Long id);
}
