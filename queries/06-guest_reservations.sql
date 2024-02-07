SELECT reservations.id, properties.title, properties.cost_per_night, reservations.start_date, 
  (SELECT avg(rating) FROM property_reviews
  WHERE property_reviews.property_id = properties.id) AS average_rating
FROM reservations
JOIN properties
ON properties.id = reservations.property_id
WHERE reservations.guest_id = 1
GROUP BY reservations.id, properties.id, properties.title, reservations.start_date, properties.cost_per_night
ORDER BY reservations.start_date ASC
LIMIT 10;
