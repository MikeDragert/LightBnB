SELECT properties.id, title, cost_per_night, avg(rating) as average_rating
FROM properties
LEFT JOIN property_reviews
on property_reviews.property_id = properties.id
WHERE city = 'Vancouver'
GROUP BY properties.id, title, cost_per_night
ORDER BY cost_per_night DESC;