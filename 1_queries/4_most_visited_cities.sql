-- Get a list of the most visited cities.

-- Select the name of the city and the number of reservations for that city.
-- Order the results from highest number of reservations to lowest number of reservation

-- SELECT city, COUNT(reservations) AS "total_reservations"
-- FROM properties
-- JOIN reservations ON properties.id = property_id
-- GROUP BY city
-- ORDER BY total_reservations DESC;

SELECT properties.city, count(reservations) as total_reservations
FROM reservations
JOIN properties ON property_id = properties.id
GROUP BY properties.city
ORDER BY total_reservations DESC;