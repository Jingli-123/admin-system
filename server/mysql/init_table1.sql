CREATE TABLE staff (
    staff_id            INT AUTO_INCREMENT,
    staff_name          VARCHAR(150) NOT NULL,
    staff_role          VARCHAR(50) NOT NULL,
    staff_phone         VARCHAR(15) NOT NULL,
    staff_email         VARCHAR(255) NOT NULL,
    staff_password      VARCHAR(255) NOT NULL,
    staff_address       TEXT NOT NULL,
    hourly_rate         DECIMAL(10, 2) NOT NULL,
    created_at          TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at          TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (staff_id)
)