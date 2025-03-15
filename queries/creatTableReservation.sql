CREATE TABLE reservation (
    reservationID INT PRIMARY KEY IDENTITY(1,1),
    userID INT NOT NULL,
    ticketID INT NULL,
    reservation_time DATETIME DEFAULT GETDATE(),
    reserve_status BIT NOT NULL,
    reserve_expiration_time DATETIME NOT NULL,
    FOREIGN KEY (userID) REFERENCES users(userID),
    FOREIGN KEY (ticketID) REFERENCES ticket(ticketID)
);
