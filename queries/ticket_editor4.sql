CREATE INDEX idx_ticket_departure_time ON ticket(departure_time);
CREATE INDEX idx_ticket_remaining_capacity ON ticket(remaining_capacity);
CREATE INDEX idx_ticket_price ON ticket(price);
CREATE INDEX idx_ticket_route ON ticket(source, destinations);
