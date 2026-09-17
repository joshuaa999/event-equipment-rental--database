CREATE TABLE Customers (
    customer_id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_name VARCHAR(100) NOT NULL,
    contact_number VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(150)
);

CREATE TABLE Employees (
    employee_id INTEGER PRIMARY KEY AUTOINCREMENT,
    employee_name VARCHAR(100) NOT NULL,
    position VARCHAR(50),
    contact_number VARCHAR(20)
);

CREATE TABLE Equipment (
    equipment_id INTEGER PRIMARY KEY AUTOINCREMENT,
    equipment_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    quantity_available INTEGER NOT NULL,
    rental_rate DECIMAL(10,2) NOT NULL
);

CREATE TABLE Reservations (
    reservation_id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER NOT NULL,
    employee_id INTEGER NOT NULL,
    reservation_date DATE NOT NULL,
    event_date DATE NOT NULL,
    event_location VARCHAR(150),
    status VARCHAR(30) NOT NULL,
    total_amount DECIMAL(10,2) NOT NULL,

    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id)
);

CREATE TABLE Reservation_Details (
    reservation_detail_id INTEGER PRIMARY KEY AUTOINCREMENT,
    reservation_id INTEGER NOT NULL,
    equipment_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL,
    subtotal DECIMAL(10,2) NOT NULL,

    FOREIGN KEY (reservation_id) REFERENCES Reservations(reservation_id),
    FOREIGN KEY (equipment_id) REFERENCES Equipment(equipment_id)
);

CREATE TABLE Payments (
    payment_id INTEGER PRIMARY KEY AUTOINCREMENT,
    reservation_id INTEGER NOT NULL,
    payment_date DATE NOT NULL,
    amount_paid DECIMAL(10,2) NOT NULL,
    payment_method VARCHAR(30),

    FOREIGN KEY (reservation_id) REFERENCES Reservations(reservation_id)
);