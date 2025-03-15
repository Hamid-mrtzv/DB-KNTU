CREATE TABLE payment (
    paymentID INT PRIMARY KEY IDENTITY(1,1),
    payment_status VARCHAR(50) NOT NULL,
    reservationID INT NOT NULL,
    userID INT NOT NULL,
    payment_amount DECIMAL(10, 2) NOT NULL CHECK (payment_amount >= 0),
    payment_time DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (reservationID) REFERENCES reservation(reservationID),
    FOREIGN KEY (userID) REFERENCES users(userID)
);
