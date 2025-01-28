CREATE table payroll (
    payroll_id          INT AUTO_INCREMENT,
    workschedule_id     INT NOT NULL,
    payroll_date        DATE NOT NULL,
    pay_amount          DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (payroll_id),
    FOREIGN KEY (workschedule_id) REFERENCES workschedule(workschedule_id)
)