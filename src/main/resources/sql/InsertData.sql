INSERT INTO public.items (id, name, price, description, created, updated)
VALUES
    ('d820f30e-9423-4d6e-88d4-2d2e7b1b3d51', 'T-shirt', 19.99, 'Comfortable cotton T-shirt for everyday wear.', '2023-08-16 08:00:00', '2023-08-16 08:00:00'),
    ('b406a1a2-968e-42af-9ee4-546fe23bdf46', 'Jeans', 39.99, 'Classic denim jeans with a modern fit.', '2023-08-16 09:00:00', '2023-08-16 09:00:00'),
    ('8e9eaf2a-11e1-4cf1-b00f-d5b1a7d789ea', 'Dress Shirt', 29.99, 'Elegant dress shirt for formal occasions.', '2023-08-16 10:00:00', '2023-08-16 10:00:00'),
    ('5dbb52e9-19ab-41a5-92b6-4ea9b7e2d5e3', 'Sweater', 49.99, 'Cozy knit sweater to keep you warm in colder weather.', '2023-08-16 11:00:00', '2023-08-16 11:00:00'),
    ('c8ea2a48-1d6f-45d6-8257-b829a39d1964', 'Sneakers', 59.99, 'Sporty sneakers with cushioned soles for active lifestyles.', '2023-08-16 12:00:00', '2023-08-16 12:00:00'),
    ('f4e5d3e2-3062-4aa2-a96c-0dd6d3b56e4f', 'Summer Dress', 34.99, 'Lightweight and stylish summer dress for sunny days.', '2023-08-16 13:00:00', '2023-08-16 13:00:00'),
    ('890a4372-1893-4a2d-b63e-148db24371e6', 'Hoodie', 44.99, 'Casual hoodie with a comfortable fit and kangaroo pocket.', '2023-08-16 14:00:00', '2023-08-16 14:00:00'),
    ('26700fc3-6250-4f51-aa67-2fbd992a7d06', 'Shorts', 24.99, 'Stylish shorts for a relaxed and laid-back look.', '2023-08-16 15:00:00', '2023-08-16 15:00:00'),
    ('19f0c2c5-0ebd-4e67-83db-d8dd50a1df66', 'Blouse', 28.99, 'Elegant blouse that pairs well with various outfits.', '2023-08-16 16:00:00', '2023-08-16 16:00:00'),
    ('48d8e2e5-9740-4212-9963-e8d4b44b6a3f', 'Polo Shirt', 22.99, 'Classic polo shirt for a smart-casual appearance.', '2023-08-16 17:00:00', '2023-08-16 17:00:00');

INSERT INTO public.categories (id, name)
VALUES
    ('b09d3b53-4e54-43da-9131-cab595f9c8d1', 'T-shirts'),
    ('d5e9f6ca-0fc4-46f4-8784-e1998c20fc2e', 'Jeans'),
    ('f57e5b5f-9bfc-4006-89f9-38aa8e9c0e9f', 'Dresses'),
    ('b69e4c97-18c1-4a9f-9e8a-890374d26f69', 'Sweaters'),
    ('73ab51b3-11c4-4135-b8c0-43be41b31904', 'Athletic Wear'),
    ('f5c84744-7162-416b-96e6-7c65c0e496f3', 'Outerwear'),
    ('0cafd2d7-7d10-4ab5-8eeb-2fb32bf779b3', 'Formal Wear'),
    ('9e19ee58-3633-4e3e-aae3-8287b101d8e2', 'Lingerie'),
    ('179cd0a7-1347-4f5b-9bc0-13c53630d00e', 'Swimwear'),
    ('ced2ce1a-0cde-4da0-8315-93a17f38386e', 'Active Wear');


INSERT INTO public.items_category (item_id, category_id)
VALUES
    ('d820f30e-9423-4d6e-88d4-2d2e7b1b3d51', 'b09d3b53-4e54-43da-9131-cab595f9c8d1'),
    ('b406a1a2-968e-42af-9ee4-546fe23bdf46', 'd5e9f6ca-0fc4-46f4-8784-e1998c20fc2e'),
    ('8e9eaf2a-11e1-4cf1-b00f-d5b1a7d789ea', '0cafd2d7-7d10-4ab5-8eeb-2fb32bf779b3'),
    ('5dbb52e9-19ab-41a5-92b6-4ea9b7e2d5e3', 'b69e4c97-18c1-4a9f-9e8a-890374d26f69'),
    ('c8ea2a48-1d6f-45d6-8257-b829a39d1964', '73ab51b3-11c4-4135-b8c0-43be41b31904'),
    ('f4e5d3e2-3062-4aa2-a96c-0dd6d3b56e4f', 'f57e5b5f-9bfc-4006-89f9-38aa8e9c0e9f'),
    ('890a4372-1893-4a2d-b63e-148db24371e6', 'f5c84744-7162-416b-96e6-7c65c0e496f3'),
    ('26700fc3-6250-4f51-aa67-2fbd992a7d06', '73ab51b3-11c4-4135-b8c0-43be41b31904'),
    ('19f0c2c5-0ebd-4e67-83db-d8dd50a1df66', '0cafd2d7-7d10-4ab5-8eeb-2fb32bf779b3'),
    ('48d8e2e5-9740-4212-9963-e8d4b44b6a3f', 'b09d3b53-4e54-43da-9131-cab595f9c8d1');

INSERT INTO public.inventory (item_id, quantity, location)
VALUES
    ('d820f30e-9423-4d6e-88d4-2d2e7b1b3d51', 100, 'Warsaw'),
    ('b406a1a2-968e-42af-9ee4-546fe23bdf46', 50, 'Krakow'),
    ('8e9eaf2a-11e1-4cf1-b00f-d5b1a7d789ea', 75, 'Wroclaw'),
    ('5dbb52e9-19ab-41a5-92b6-4ea9b7e2d5e3', 60, 'Gdansk'),
    ('c8ea2a48-1d6f-45d6-8257-b829a39d1964', 90, 'Poznan'),
    ('f4e5d3e2-3062-4aa2-a96c-0dd6d3b56e4f', 40, 'Lodz'),
    ('890a4372-1893-4a2d-b63e-148db24371e6', 70, 'Katowice'),
    ('26700fc3-6250-4f51-aa67-2fbd992a7d06', 55, 'Szczecin'),
    ('19f0c2c5-0ebd-4e67-83db-d8dd50a1df66', 65, 'Bydgoszcz'),
    ('48d8e2e5-9740-4212-9963-e8d4b44b6a3f', 80, 'Gdynia');
