CREATE TABLE workschedule (
    workschedule_id     INT AUTO_INCREMENT,
    staff_id            INT NOT NULL,
    workschedule_start  TIME NOT NULL,
    workschedule_end    TIME NOT NULL,
    work_instructions   TEXT,
    PRIMARY KEY (workschedule_id),
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id)
);