SELECT reservations.*, properties.*, avg(rating) as "average_rating"
FROM reservations
JOIN property_reviews ON reservation_id = reservations.id
JOIN properties ON reservations.property_id = properties.id
WHERE reservations.guest_id = 1
AND end_date < now()::date
GROUP BY properties.id, reservations.id
ORDER BY start_date
LIMIT 10;