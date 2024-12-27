-- Cada vez que se añada una reserva se obtiene el id y se añade 1 en al columna de Services.popularity
DELIMITER // 
CREATE TRIGGER update_popularity AFTER INSERT ON `Bookings`
FOR EACH ROW
BEGIN
    UPDATE alcortebarber.Services 
    SET popularity = popularity + 1 
    WHERE serviceId = NEW.bookingServiceId; 
END;
//
DELIMITER ;
-- Confuguración del timer para el tema de popularidad scheduled event

DELIMITER //
CREATE EVENT update_popularity_hourly
ON schedule every 1 hour 
DO
begin
-- Actualización de la popularidad 
	UPDATE alcortebarber.Services
    SET popularity = (SELECT COUNT(*) FROM alcortebarber.Bookings where bookingServiceId = serviceId);
END;
//
DELIMITER ;

-- Activar eventos globales
SET GLOBAL event_scheduler = ON;
