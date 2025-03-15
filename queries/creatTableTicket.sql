CREATE TABLE ticket (
    ticketID INT PRIMARY KEY IDENTITY(1,1),
    vehicle_type VARCHAR(20) NOT NULL,
    departure_time DATETIME NOT NULL,
    arrival_time DATETIME NOT NULL,
    company_name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL CHECK (price >= 0),
    remaining_capacity INT NOT NULL,
    travel_class VARCHAR(20),
    destinations VARCHAR(100),
    source VARCHAR(100),
);
