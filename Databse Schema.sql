Create database Fitness;
Use fitness;
Create table user (
	UserID INT AUTO_INCREMENT PRIMARY KEY,
    Username VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Password VARCHAR(255) NOT NULL, 
    JoinDate DATE NOT NULL,
    Age INT,
    Gender VARCHAR(10),
    Height DECIMAL(5, 2), 
    Weight DECIMAL(5, 2)
);
Create table Activity (
    ActivityID INT AUTO_INCREMENT PRIMARY KEY,
    ActivityName VARCHAR(100) NOT NULL,
    Description TEXT,
    CaloriesBurnedPerMinute DECIMAL(5, 2) 
);
Create table Daily_Log (
	LogID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT,
    ActivityID INT,
    Date DATE NOT NULL,
    Duration INT NOT NULL, 
    CaloriesBurned DECIMAL(5, 2), 
    FOREIGN KEY (UserID) REFERENCES User(UserID),
    FOREIGN KEY (ActivityID) REFERENCES Activity(ActivityID)
);

INSERT INTO User (Username, Email, Password, JoinDate, Age, Gender, Height, Weight)
VALUES ('Aditya', 'aditya@yahoo.com', '67HADF3', '2024-01-30', 19, 'Male', 155, 60);

INSERT INTO Activity (ActivityName, Description, CaloriesBurnedPerMinute)
VALUES ('Running', 'Running outdoor or on a treadmill', 10.0);

INSERT INTO Daily_Log (UserID, ActivityID, Date, Duration, CaloriesBurned)
VALUES (1, 1, '2024-01-30', 30, 300);

Select * from user;
