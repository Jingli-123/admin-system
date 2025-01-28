INSERT INTO staff (staff_id, staff_name, staff_role, staff_phone, staff_email, staff_password, staff_address, hourly_rate, create_at)
VALUES
    (1, "Sarah Logon", "admin", "0451236565", "sl@gmail.com", "staff", "1 Fake street, StKind, 3021", 32.20, "21-01-2025"),
    (2, "Sin Watton", "Director", "0452299965", "sd123@gmail.com", "staff", "2 Fake street, StKind, 3021", 42.20, "20-01-2025"),
    (3, "Jack Yan", "fulltime", "0450006125", "jack@gmail.com", "staff", "3 Fake street, StKind, 3021", 32.20, "21-01-2025"),
    (4, "Jenny Wang", "parttime", "0459655615", "jeny@gmail.com", "staff", "4 Fake street, StKind, 3021", 32.20, "21-01-2025"),
    (5, "Lily Zhang", "casual", "0455266565", "lily@gmail.com", "staff", "5 Fake street, StKind, 3021", 32.20, "21-01-2025"),
    ON DUPLICATE KEY UPDATE
    staff_name = VALUES(staff_name),
    staff_role = VALUES(staff_role),
    staff_phone = VALUES(staff_phone),
    staff_email = VALUES(staff_email),
    staff_password = VALUES(staff_password),
    staff_address = VALUES(staff_address),
    hourly_rate = VALUES(hourly_rate),
    create_at = VALUES(create_at);
