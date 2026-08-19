-- Creating the core Bus table based on Term 2 design
CREATE TABLE buses (
    id INT PRIMARY KEY,
    registration_number VARCHAR(20) UNIQUE,
    capacity INT,
    bus_type VARCHAR(50),
    is_active BOOLEAN DEFAULT TRUE
);

-- Creating the Live Tracking table
CREATE TABLE bus_positions (
    id INT PRIMARY KEY,
    bus_id INT REFERENCES buses(id),
    latitude DOUBLE PRECISION,
    longitude DOUBLE PRECISION,
    reported_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
