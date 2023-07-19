SELECT properties.city as name , COUNT(reservations.id) as total_reservations
FROM properties
JOIN reservations ON properties.id = reservations.property_id 
GROUP BY name
ORDER BY total_reservations DESC