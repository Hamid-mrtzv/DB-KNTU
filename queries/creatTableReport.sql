CREATE TABLE report (
    reportID INT IDENTITY(1,1),
    userID INT NOT NULL,
    ticketID INT NULL,
    reservationID INT NULL,
    problem_status VARCHAR(100),
    category VARCHAR(50),
    text TEXT NOT NULL,
    PRIMARY KEY (reportID, userID),
    FOREIGN KEY (userID) REFERENCES users(userID),
    FOREIGN KEY (ticketID) REFERENCES ticket(ticketID),
    FOREIGN KEY (reservationID) REFERENCES reservation(reservationID),
    CHECK (
        (ticketID IS NULL AND reservationID IS NOT NULL) 
        OR 
        (reservationID IS NOT NULL AND ticketID IS NOT NULL AND ticketID = (SELECT ticketID FROM reservation WHERE reservationID = report.reservationID))
        OR
        (ticketID IS NOT NULL AND reservationID IS NULL)
    )
);
