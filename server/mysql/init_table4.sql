CREATE table bookings{
    booking_id          INT AUTO_INCREMENT,
    workschedule_id     INT NOT NULL,
    booking_date        DATE NOT NULL,
    booking_time        TIME NOT NULL,
    PRIMARY KEY (booking_id),
    FOREIGN KEY (workschedule_id) REFERENCES workschedule(workschedule_id)
}