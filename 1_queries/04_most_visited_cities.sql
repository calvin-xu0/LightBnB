SELECT properties.city as "city", count(*) as "total_reservations"
FROM properties
JOIN reservations ON properties.id = property_id
GROUP BY properties.city
ORDER BY count(*) DESC;