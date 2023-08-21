--items table

CREATE TABLE IF NOT EXISTS public.items
(
    id uuid NOT NULL,
    name character varying(128) COLLATE pg_catalog."default",
    price decimal,
    description character varying(512) COLLATE pg_catalog."default",
    created timestamp,
    updated timestamp,
    CONSTRAINT items_pkey PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.items
    OWNER to myuser;


--categories table

CREATE TABLE IF NOT EXISTS public.categories
(
    id uuid NOT NULL,
    name character varying(128) COLLATE pg_catalog."default",
    CONSTRAINT categories_pkey PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.categories
    OWNER to myuser;


--item category join table

CREATE TABLE IF NOT EXISTS public.items_category
(
    id serial PRIMARY KEY,
    item_id uuid NOT NULL,
    category_id uuid NOT NULL,
    CONSTRAINT fk_item FOREIGN KEY (item_id) REFERENCES public.items (id),
    CONSTRAINT fk_category FOREIGN KEY (category_id) REFERENCES public.categories (id)
);

ALTER TABLE IF EXISTS public.items_category
    OWNER to myuser;


--inventory table

CREATE TABLE IF NOT EXISTS public.inventory
(
    id serial NOT NULL,
    item_id uuid REFERENCES items (id),
    quantity integer,
    location character varying(256),
    CONSTRAINT inventory_pkey PRIMARY KEY (id)
);