package cz.klasik.klasikspringserver.repository;

import cz.klasik.klasikspringserver.model.EnCategory;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EnCategoryRepository extends CrudRepository<EnCategory, Long> {
}
