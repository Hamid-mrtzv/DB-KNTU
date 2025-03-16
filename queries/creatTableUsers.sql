CREATE TABLE users (
    userID INT PRIMARY KEY IDENTITY(1,1),
phone_number VARCHAR(11) UNIQUE CHECK (phone_number LIKE '09[0-9]%' AND LEN(phone_number) = 11 OR phone_number IS NULL),
    email VARCHAR(50) UNIQUE CHECK (email LIKE '%_@_%._%' OR email IS NULL),
    name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    role BIT NOT NULL,
    account_status BIT NOT NULL,
    city VARCHAR(50),
    password VARCHAR(100) NOT NULL,
    registration_date DATETIME DEFAULT GETDATE(),
    CHECK (phone_number IS NOT NULL OR email IS NOT NULL)
);
