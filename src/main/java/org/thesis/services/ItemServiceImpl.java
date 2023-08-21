package org.thesis.services;

import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.thesis.models.Item;
import org.thesis.repositories.ItemRepository;

import java.util.Optional;
import java.util.UUID;

@Service
@AllArgsConstructor
public class ItemServiceImpl implements ItemService {
    @Autowired
    private final ItemRepository itemRepository;

    @Override
    public Optional<Item> getItemById(UUID id) {
        return itemRepository.findById(id);
    }

    @Override
    public Iterable<Item> getItems() {
        return itemRepository.findAll();
    }

    @Override
    public Iterable<Item> getItemsByCategoryId(UUID id) {
        return itemRepository.findByCategoryId(id);
    }
}
