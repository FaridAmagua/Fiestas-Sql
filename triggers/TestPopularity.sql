-- Test Trigger popularity
SHOW TRIGGERS;
-- Crear usuario de pruebas que hace la reserva
INSERT INTO alcortebarber.Users (userId, username, passwordHash, email, phone, name, surname, role, createdAt, updatedAt)
VALUES ('barberuser1', 'user1', 'hashedpassword', 'user1@example.com', '1234567890', 'User', 'One', 'user', NOW(), NOW());
-- Crear el usuario para saber donde se a hacer la reserva 
INSERT INTO alcortebarber.Sites (siteName, siteDirection, siteSchedule, sitePhone, siteDescription, createdAt, updatedAt)
VALUES ('Site 1', '123 Main St', 'Mon-Fri 9am-6pm', '555123456', 'A description of Site 1', NOW(), NOW());
-- Crear los servicios 
INSERT INTO `alcortebarber`.`Services` (`serviceType`, `servicePrice`, `serviceDuration`, `serviceDescription`, `createdAt`, `updatedAt`)
VALUES
('Corte de cabello', 15.0, '2024-12-13 00:30:00', 'Corte de cabello al estilo moderno.', NOW(), NOW()),
('Afeitado', 10.0, '2024-12-13 00:40:00', 'Afeitado tradicional con navaja.', NOW(), NOW());
-- Insert para activar el trigger
INSERT INTO alcortebarber.Bookings (bookingId, bookingDate, bookingAnnotations, bookingTransactionId, bookingPaymentDate, bookingPrice, bookingUserId, bookingSiteId, bookingServiceId)
VALUES ('unique-booking-id-1', '2024-12-15 10:00:00', 'Reserva para corte de cabello', 'transaction123', NULL, 15.0, 'barberuser1', 1, 1);
-- Consultar los servicios populares
SHOW TRIGGERS;
--
SELECT serviceId, serviceType, popularity
FROM alcortebarber.Services
ORDER BY popularity DESC;
