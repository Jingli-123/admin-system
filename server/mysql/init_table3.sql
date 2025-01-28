CREATE table timesheet (
    timesheet_id        INT AUTO_INCREMENT,
    workschedule_id     INT NOT NULL,
    timesheet_date      DATE NOT NULL,
    timesheet_start     DATE NOT NULL,
    timesheet_end       DATE NOT NULL,
    PRIMARY KEY (timesheet_id),
    FOREIGN KEY (workschedule_id) REFERENCES workschedule(workschedule_id)
);