ALTER TABLE ticket
ADD CONSTRAINT FK_ticket_plane FOREIGN KEY (planeID) REFERENCES plane(planeID),
    CONSTRAINT FK_ticket_bus FOREIGN KEY (busID) REFERENCES bus(busID),
    CONSTRAINT FK_ticket_train FOREIGN KEY (trainID) REFERENCES train(trainID);


