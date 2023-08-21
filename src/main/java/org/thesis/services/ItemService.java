package org.thesis.services;

import org.thesis.models.Item;

import java.util.Optional;
import java.util.UUID;

public interface ItemService {
    Optional<Item> getItemById(UUID id);
    Iterable<Item> getItems();
    Iterable<Item> getItemsByCategoryId(UUID id);
}
