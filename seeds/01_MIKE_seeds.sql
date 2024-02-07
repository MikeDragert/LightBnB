
-- THIS WAS FUN, BUT DON'T USE IT
INSERT 
INTO users (name, email, password)
VALUES 
  ('Joe Awesome', 'aweseome@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
  ('Bullseye Bob','bullseye@gmail.com','$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
  ('Ninja Jane','ninja@gmail.com','$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT 
INTO properties (
  owner_id,
  title,
  description,
  thumbnail_photo_url,
  cover_photo_url,
  cost_per_night,
  parking_spaces,
  number_of_bathrooms,
  number_of_bedrooms,
  country,
  street,
  city,
  province,
  post_code,
  active
)
VALUES 
(
  1,
  'Sweet Home',
  'This home is so sweet, you should rent it now',
  'thumbnail_photo_url',
  'cover_photo_url',
  1000,
  2,
  5,
  10,
  'Canada',
  '100 Awesome Street',
  'Toronto',
  'Ontario',
  'A1A 1A1',
  TRUE
),
(
  3,
  'Ninja Flophouse',
  'Best place for ninjas to rest and party',
  'thumbnail_photo_url',
  'cover_photo_url',
  20,
  10,
  2,
  2,
  'Canada',
  '10 Kata Way',
  'Montreal',
  'Quebec',
  'K2K 2K2',
  true
),
(
  1,
  'chill place',
  'A great place to chill and give your awesomeness a break',
  'thumbnail_photo_url',
  'cover_photo_url',
  50,
  2,
  1,
  2,
  'Canada',
  '420 Chillout Place',
  'Vancouver',
  'British Columbi',
  'C4C 4C4',
  true
);

INSERT
INTO reservations (start_date, end_date, property_id, guest_id)
VALUES 
  ('2024-01-10','2024-01-31',1,2),
  ('2024-02-01','2024=02-5',2,1),
  ('2024-01-20','2024-02-01',3,2);

INSERT 
INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
VALUES
  (2,1,1,5, 'This home was so sweet!'),
  (1,2,2,5, 'The ninjas loved it!'),
  (2,3,3,2, 'Not so chill, construction across the street :(');
