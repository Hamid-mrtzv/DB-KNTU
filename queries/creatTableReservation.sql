CREATE TABLE reservation (
    reservationID INT IDENTITY(1,1),
    userID INT NOT NULL,
    ticketID INT NOT NULL,
    reservation_time DATETIME DEFAULT GETDATE(),
    reserve_status TINYINT NOT NULL CHECK (reserve_status IN (0, 1, 2)),
    reserve_expiration_time DATETIME NOT NULL,
    PRIMARY KEY (reservationID, userID, ticketID),
    FOREIGN KEY (userID) REFERENCES users(userID),
    FOREIGN KEY (ticketID) REFERENCES ticket(ticketID),
    CHECK (reserve_expiration_time > reservation_time)
);
