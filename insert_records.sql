INSERT INTO Customers
(customer_id, customer_name, contact_number, email, address)
VALUES
(1, 'Juan Dela Cruz', '09171234567', 'juan@email.com', 'Imus, Cavite'),
(2, 'Maria Santos', '09181234567', 'maria@email.com', 'Dasmarinas, Cavite'),
(3, 'Pedro Reyes', '09191234567', 'pedro@email.com', 'Bacoor, Cavite'),
(4, 'Ana Garcia', '09201234567', 'ana@email.com', 'General Trias, Cavite'),
(5, 'Carlos Mendoza', '09211234567', 'carlos@email.com', 'Kawit, Cavite');


INSERT INTO Employees
(employee_id, employee_name, position, contact_number)
VALUES
(1, 'Mark Villanueva', 'Rental Coordinator', '09170000001'),
(2, 'Sofia Ramirez', 'Rental Staff', '09170000002'),
(3, 'Daniel Cruz', 'Rental Staff', '09170000003'),
(4, 'Angela Flores', 'Manager', '09170000004'),
(5, 'Kevin Bautista', 'Rental Staff', '09170000005');


INSERT INTO Equipment
(equipment_id, equipment_name, category, quantity_available, rental_rate)
VALUES
(1, 'Plastic Chair', 'Seating', 200, 15.00),
(2, 'Round Table', 'Tables', 30, 150.00),
(3, 'Folding Table', 'Tables', 25, 100.00),
(4, 'Event Tent', 'Tent', 10, 2500.00),
(5, 'Sound System', 'Audio Equipment', 5, 3500.00),
(6, 'LED Lights', 'Lighting', 20, 500.00),
(7, 'Buffet Table', 'Tables', 15, 200.00);


INSERT INTO Reservations
(reservation_id, customer_id, employee_id, reservation_date, event_date, event_location, status, total_amount)
VALUES
(1, 1, 1, '2026-09-01', '2026-09-20', 'Imus, Cavite', 'Confirmed', 3250.00),
(2, 2, 2, '2026-09-02', '2026-09-22', 'Dasmarinas, Cavite', 'Pending', 4500.00),
(3, 3, 3, '2026-09-03', '2026-09-25', 'Bacoor, Cavite', 'Completed', 7000.00),
(4, 4, 1, '2026-09-04', '2026-09-28', 'General Trias, Cavite', 'Confirmed', 5000.00),
(5, 5, 4, '2026-09-05', '2026-10-01', 'Kawit, Cavite', 'Pending', 2500.00),
(6, 1, 5, '2026-09-06', '2026-10-05', 'Imus, Cavite', 'Completed', 6000.00);


INSERT INTO Reservation_Details
(reservation_detail_id, reservation_id, equipment_id, quantity, subtotal)
VALUES
(1, 1, 1, 50, 750.00),
(2, 1, 2, 5, 750.00),
(3, 1, 4, 1, 2500.00),

(4, 2, 1, 100, 1500.00),
(5, 2, 3, 5, 500.00),
(6, 2, 6, 5, 2500.00),

(7, 3, 1, 100, 1500.00),
(8, 3, 2, 10, 1500.00),
(9, 3, 5, 1, 3500.00),
(10, 3, 3, 5, 500.00),

(11, 4, 1, 80, 1200.00),
(12, 4, 4, 1, 2500.00),
(13, 4, 6, 2, 1000.00),

(14, 5, 1, 50, 750.00),
(15, 5, 4, 1, 2500.00),

(16, 6, 1, 100, 1500.00),
(17, 6, 2, 10, 1500.00),
(18, 6, 5, 1, 3500.00);


INSERT INTO Payments
(payment_id, reservation_id, payment_date, amount_paid, payment_method)
VALUES
(1, 1, '2026-09-10', 1500.00, 'Cash'),
(2, 1, '2026-09-18', 1750.00, 'GCash'),
(3, 2, '2026-09-12', 2000.00, 'GCash'),
(4, 3, '2026-09-15', 4000.00, 'Cash'),
(5, 3, '2026-09-25', 3000.00, 'GCash'),
(6, 4, '2026-09-16', 2500.00, 'Bank Transfer'),
(7, 5, '2026-09-17', 1000.00, 'Cash'),
(8, 6, '2026-09-20', 6000.00, 'GCash');