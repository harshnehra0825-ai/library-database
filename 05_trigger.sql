USE library_db;

DELIMITER //

CREATE TRIGGER calculate_fine_after_return
AFTER UPDATE ON Issues
FOR EACH ROW
BEGIN
    DECLARE late_days INT;
    DECLARE fine_amount DECIMAL(10,2);

    IF NEW.return_date IS NOT NULL
       AND OLD.return_date IS NULL
       AND NEW.return_date > NEW.issue_date THEN

        SET late_days = DATEDIFF(NEW.return_date, NEW.issue_date) - 14;

        IF late_days > 0 THEN

            SET fine_amount = late_days * 10;

            INSERT INTO Fines
            (issue_id, amount, paid_status)
            VALUES
            (NEW.issue_id, fine_amount, 'Unpaid');

        END IF;

    END IF;
END //

DELIMITER ;
