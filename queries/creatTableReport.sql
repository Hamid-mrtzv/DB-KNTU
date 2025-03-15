CREATE TABLE report (
    reportID INT PRIMARY KEY IDENTITY(1,1),
    userID INT NOT NULL,
    ticketID INT NULL,
    reservationID INT NULL,
    problem_status VARCHAR(50),
    category VARCHAR(50),
    text TEXT NOT NULL,
    FOREIGN KEY (userID) REFERENCES users(userID),
    FOREIGN KEY (ticketID) REFERENCES ticket(ticketID),
    FOREIGN KEY (reservationID) REFERENCES reservation(reservationID),
    CHECK ((ticketID IS NOT NULL OR reservationID IS NOT NULL) AND userID IS NOT NULL)
);
