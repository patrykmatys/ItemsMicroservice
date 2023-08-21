package org.thesis.models;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "items_category")
@Data
public class ItemCategory {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "item_id")
    private Item item;

    @ManyToOne
    @JoinColumn(name = "category_id")
    private Category category;
}