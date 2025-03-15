CREATE TABLE plane (
    planeID INT PRIMARY KEY IDENTITY(1,1),
    airline VARCHAR(50) NOT NULL,
    class VARCHAR(20) NOT NULL,
    no_of_stops INT NOT NULL,
    airports_source VARCHAR(100) NOT NULL,
    airport_destination VARCHAR(100) NOT NULL,
    facilities TEXT,
    ticketID INT NOT NULL,
    FOREIGN KEY (ticketID) REFERENCES ticket(ticketID)
);

CREATE TABLE bus (
    busID INT PRIMARY KEY IDENTITY(1,1),
    bus_company VARCHAR(50) NOT NULL,
    bus_type VARCHAR(20) NOT NULL,
    seats_per_row INT NOT NULL,
    facilities TEXT,
    ticketID INT NOT NULL,
    FOREIGN KEY (ticketID) REFERENCES ticket(ticketID)
);

CREATE TABLE train (
    trainID INT PRIMARY KEY IDENTITY(1,1),
    stars INT CHECK (stars >= 1 AND stars <= 5), -- تعداد ستاره‌ها بین ۱ تا ۵
    facilities TEXT,
    exclusive_compartment BIT NOT NULL,
    ticketID INT NOT NULL,
    FOREIGN KEY (ticketID) REFERENCES ticket(ticketID)
);
