package cz.klasik.klasikspringserver.repository;

import cz.klasik.klasikspringserver.model.Definition;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DefinitionRepository extends CrudRepository<Definition, Long> {
}
