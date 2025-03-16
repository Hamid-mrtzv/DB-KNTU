INSERT INTO users (phone_number, email, name, last_name, role, account_status, city, password)
VALUES 
('09123456789', 'user1@example.com', 'Ali', 'Ahmadi', 0, 1, 'Tehran', 'hashed_password1');

INSERT INTO ticket (vehicle_type, departure_time, arrival_time, company_name, price, remaining_capacity, travel_class, destinations, source)
VALUES 
('Plane', '2025-04-10 08:00:00', '2025-04-10 10:00:00', 'IranAir', 5000000, 50, 'Economy', 'Tehran', 'Mashhad'),
('Bus', '2025-04-12 06:30:00', '2025-04-12 12:30:00', 'Hamsafar', 250000, 30, 'VIP', 'Shiraz', 'Tehran');

INSERT INTO reservation (userID, ticketID, reserve_status, reserve_expiration_time)
VALUES 
(1, 1, 1, DATEADD(HOUR, 24, GETDATE()));

INSERT INTO payment (payment_status, reservationID, userID, payment_amount)
VALUES 
('Paid', 1, 1, 5000000),
('Pending', 2, 2, 250000),
('Failed', 3, 3, 400000);


SELECT userID, name, last_name, phone_number, email 
FROM users
WHERE phone_number IS NOT NULL AND email IS NOT NULL;

SELECT p.paymentID, u.name, u.last_name, p.payment_amount, p.payment_time
FROM payment p
JOIN users u ON p.userID = u.userID
WHERE p.payment_status = 'Paid';

SELECT * FROM ticket
WHERE source = 'Tehran' AND destinations = 'Mashhad' AND remaining_capacity > 0;



