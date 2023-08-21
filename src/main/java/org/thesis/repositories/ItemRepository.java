package org.thesis.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import org.thesis.models.Item;

import java.util.UUID;

@Repository
public interface ItemRepository extends CrudRepository<Item, UUID> {
    Iterable<Item> findByCategoryId(UUID categoryId);
}
