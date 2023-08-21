package org.thesis.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;
import org.thesis.models.Item;
import org.thesis.services.ItemService;

import java.util.UUID;

@RestController
public class ItemController {
    @Autowired
    private ItemService itemService;

    @GetMapping("/api/v1/items/{id}")
    public Item getItemById(@PathVariable UUID id) {
        return itemService.getItemById(id).orElse(null);
    }

    @GetMapping("/api/v1/items")
    public Iterable<Item> getItems() {
        return itemService.getItems();
    }

    @GetMapping("/api/v1/items/category/{id}")
    public Iterable<Item> getItemsByCategory(@PathVariable UUID id) {
        return itemService.getItemsByCategoryId(id);
    }
}
