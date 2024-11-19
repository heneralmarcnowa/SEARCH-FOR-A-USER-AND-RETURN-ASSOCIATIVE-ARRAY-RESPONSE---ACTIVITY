
CREATE TABLE teacher_applications (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255),
    phone_number VARCHAR(20),
    gender VARCHAR(50),
    address VARCHAR(255),
    state VARCHAR(255),
    nationality VARCHAR(255),
    qualification VARCHAR(255),
    experience_years INT,
    subjects VARCHAR(255),
    date_added TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO teacher_applications (id, first_name, last_name, email, phone_number, gender, address, state, nationality, qualification, experience_years, subjects, date_added) VALUES
(1, 'Darrin', 'Fawlks', 'dfawlks0@xinhuanet.com', '123-456-7890', 'Male', '1st Floor', 'Villa Paula de Sarmiento', 'Argentina', 'Bachelor of Education', 5, 'Mathematics', '2024-05-09 22:12:22'),
(2, 'Jane', 'Doe', 'jane.doe@example.com', '987-654-3210', 'Female', '2nd Street', 'New York', 'USA', 'Master of Education', 8, 'Science', '2024-06-15 14:30:00'),
(3, 'John', 'Smith', 'john.smith@example.com', '555-123-4567', 'Male', '3rd Avenue', 'London', 'UK', 'PhD in Education', 10, 'History', '2024-07-20 10:00:00'),
(4, 'Alice', 'Johnson', 'alice.johnson@example.com', '444-777-8888', 'Female', '4th Boulevard', 'Sydney', 'Australia', 'Bachelor of Arts in Education', 3, 'English', '2024-08-25 16:45:00'),
(5, 'Bob', 'Brown', 'bob.brown@example.com', '222-333-4444', 'Male', '5th Lane', 'Toronto', 'Canada', 'Diploma in Education', 6, 'Physical Education', '2024-09-10 09:15:00'),
(6, 'Emily', 'Davis', 'emily.davis@example.com', '111-222-3333', 'Female', 'Main Street', 'Los Angeles', 'USA', 'Bachelor of Science in Education', 4, 'Biology', '2024-05-12 10:20:30'),
(7, 'Michael', 'Wilson', 'michael.wilson@example.com', '555-666-7777', 'Male', 'High Street', 'Chicago', 'USA', 'Master of Arts in Education', 7, 'Geography', '2024-06-18 12:45:00'),
(8, 'Jessica', 'Martinez', 'jessica.martinez@example.com', '888-999-0000', 'Female', 'Elm Street', 'Houston', 'USA', 'Bachelor of Education', 3, 'Chemistry', '2024-07-22 14:00:00'),
(9, 'David', 'Anderson', 'david.anderson@example.com', '444-555-6666', 'Male', 'Oak Avenue', 'Phoenix', 'USA', 'PhD in Education', 9, 'Physics', '2024-08-29 16:30:00'),
(10, 'Sarah', 'Taylor', 'sarah.taylor@example.com', '333-444-5555', 'Female', 'Pine Road', 'Philadelphia', 'USA', 'Master of Education', 6, 'Social Studies', '2024-09-12 18:15:00'),
(11, 'Chris', 'Lee', 'chris.lee@example.com', '222-333-4444', 'Male', 'Maple Street', 'San Antonio', 'USA', 'Bachelor of Arts in Education', 5, 'Art', '2024-05-15 09:00:00'),
(12, 'Ashley', 'White', 'ashley.white@example.com', '111-222-3333', 'Female', 'Cedar Lane', 'San Diego', 'USA', 'Diploma in Education', 8, 'Music', '2024-06-20 11:30:00'),
(13, 'Matthew', 'Harris', 'matthew.harris@example.com', '555-666-7777', 'Male', 'Birch Drive', 'Dallas', 'USA', 'Bachelor of Education', 4, 'Physical Education', '2024-07-25 13:00:00'),
(14, 'Amanda', 'Clark', 'amanda.clark@example.com', '888-999-0000', 'Female', 'Poplar Street', 'San Jose', 'USA', 'Master of Science in Education', 7, 'Computer Science', '2024-08-30 15:30:00'),
(15, 'Daniel', 'Robinson', 'daniel.robinson@example.com', '444-555-6666', 'Male', 'Willow Road', 'Austin', 'USA', 'PhD in Education', 10, 'Mathematics', '2024-09-14 17:00:00'),
(16, 'Laura', 'Lewis', 'laura.lewis@example.com', '333-444-5555', 'Female', 'Spruce Avenue', 'Jacksonville', 'USA', 'Bachelor of Education', 6, 'English', '2024-05-18 19:30:00'),
(17, 'James', 'Walker', 'james.walker@example.com', '222-333-4444', 'Male', 'Fir Street', 'Fort Worth', 'USA', 'Master of Arts in Education', 5, 'History', '2024-06-23 21:45:00'),
(18, 'Olivia', 'Hall', 'olivia.hall@example.com', '111-222-3333', 'Female', 'Ash Drive', 'Columbus', 'USA', 'Bachelor of Science in Education', 4, 'Science', '2024-07-28 23:00:00'),
(19, 'Joshua', 'Young', 'joshua.young@example.com', '555-666-7777', 'Male', 'Hickory Lane', 'Charlotte', 'USA', 'Master of Education', 7, 'Social Studies', '2024-08-02 08:15:00'),
(20, 'Megan', 'King', 'megan.king@example.com', '888-999-0000', 'Female', 'Chestnut Street', 'Indianapolis', 'USA', 'PhD in Education', 9, 'Geography', '2024-09-17 10:30:00'),
(21, 'Ryan', 'Scott', 'ryan.scott@example.com', '444-555-6666', 'Male', 'Dogwood Road', 'San Francisco', 'USA', 'Bachelor of Arts in Education', 6, 'Art', '2024-05-21 12:45:00'),
(22, 'Sophia', 'Adams', 'sophia.adams@example.com', '333-444-5555', 'Female', 'Magnolia Avenue', 'Seattle', 'USA', 'Master of Education', 8, 'Chemistry', '2024-06-26 15:00:00'),
(23, 'Tyler', 'Mitchell', 'tyler.mitchell@example.com', '222-333-4444', 'Male', 'Sycamore Street', 'Denver', 'USA', 'Bachelor of Education', 3, 'Biology', '2024-07-31 17:15:00'),
(24, 'Victoria', 'Perez', 'victoria.perez@example.com', '111-222-3333', 'Female', 'Holly Lane', 'Washington', 'USA', 'Diploma in Education', 5, 'English', '2024-08-04 19:30:00'),
(25, 'Kevin', 'Roberts', 'kevin.roberts@example.com', '555-666-7777', 'Male', 'Palm Street', 'Boston', 'USA', 'Master of Science in Education', 7, 'Computer Science', '2024-09-19 21:45:00'),
(26, 'Alyssa', 'Turner', 'alyssa.turner@example.com', '888-999-0000', 'Female', 'Cypress Avenue', 'Nashville', 'USA', 'PhD in Education', 10, 'Physics', '2024-05-24 23:00:00'),
(27, 'Brandon', 'Phillips', 'brandon.phillips@example.com', '444-555-6666', 'Male', 'Juniper Road', 'Baltimore', 'USA', 'Bachelor of Education', 6, 'Mathematics', '2024-06-29 08:15:00'),
(28, 'Natalie', 'Campbell', 'natalie.campbell@example.com', '333-444-5555', 'Female', 'Mulberry Street', 'Louisville', 'USA', 'Master of Arts in Education', 4, 'History', '2024-07-03 10:30:00'),
(29, 'Jason', 'Parker', 'jason.parker@example.com', '222-333-4444', 'Male', 'Laurel Lane', 'Milwaukee', 'USA', 'Bachelor of Science in Education', 5, 'Science', '2024-08-06 12:45:00'),
(30, 'Hannah', 'Evans', 'hannah.evans@example.com', '111-222-3333', 'Female', 'Aspen Drive', 'Albuquerque', 'USA', 'Master of Education', 8, 'Social Studies', '2024-09-22 15:00:00'),
(31, 'Ethan', 'Edwards', 'ethan.edwards@example.com', '555-666-7777', 'Male', 'Maple Avenue', 'Tucson', 'USA', 'PhD in Education', 9, 'Geography', '2024-05-27 17:15:00'),
(32, 'Lily', 'Collins', 'lily.collins@example.com', '888-999-0000', 'Female', 'Birch Street', 'Fresno', 'USA', 'Bachelor of Arts in Education', 6, 'Art', '2024-06-02 19:30:00'),
(33, 'Andrew', 'Stewart', 'andrew.stewart@example.com', '444-555-6666', 'Male', 'Cedar Road', 'Sacramento', 'USA', 'Master of Education', 7, 'Chemistry', '2024-07-07 21:45:00'),
(34, 'Zoe', 'Sanchez', 'zoe.sanchez@example.com', '333-444-5555', 'Female', 'Palm Avenue', 'Mesa', 'USA', 'Bachelor of Education', 4, 'Biology', '2024-08-09 23:00:00'),
(35, 'Anthony', 'Morris', 'anthony.morris@example.com', '222-333-4444', 'Male', 'Pine Lane', 'Kansas City', 'USA', 'Diploma in Education', 5, 'English', '2024-09-25 08:15:00'),
(36, 'Grace', 'Rogers', 'grace.rogers@example.com', '111-222-3333', 'Female', 'Elm Drive', 'Atlanta', 'USA', 'Master of Science in Education', 10, 'Computer Science', '2024-05-30 10:30:00'),
(37, 'Nathan', 'Reed', 'nathan.reed@example.com', '555-666-7777', 'Male', 'Ash Lane', 'Omaha', 'USA', 'PhD in Education', 6, 'Physics', '2024-06-04 12:45:00'),
(38, 'Ella', 'Cook', 'ella.cook@example.com', '888-999-0000', 'Female', 'Willow Drive', 'Raleigh', 'USA', 'Bachelor of Education', 7, 'Mathematics', '2024-07-09 15:00:00'),
(39, 'Logan', 'Morgan', 'logan.morgan@example.com', '444-555-6666', 'Male', 'Spruce Street', 'Miami', 'USA', 'Master of Arts in Education', 8, 'History', '2024-08-11 17:15:00'),
(40, 'Chloe', 'Bell', 'chloe.bell@example.com', '333-444-5555', 'Female', 'Fir Avenue', 'Oakland', 'USA', 'Bachelor of Science in Education', 4, 'Science', '2024-09-28 19:30:00'),
(41, 'Lucas', 'Murphy', 'lucas.murphy@example.com', '222-333-4444', 'Male', 'Hickory Road', 'Minneapolis', 'USA', 'Master of Education', 9, 'Social Studies', '2024-06-06 21:45:00'),
(42, 'Avery', 'Howard', 'avery.howard@example.com', '111-222-3333', 'Female', 'Dogwood Lane', 'Cleveland', 'USA', 'PhD in Education', 6, 'Geography', '2024-07-12 23:00:00'),
(43, 'Isaac', 'Ward', 'isaac.ward@example.com', '555-666-7777', 'Male', 'Magnolia Drive', 'Tulsa', 'USA', 'Bachelor of Arts in Education', 5, 'Art', '2024-08-13 08:15:00'),
(44, 'Scarlett', 'Brooks', 'scarlett.brooks@example.com', '888-999-0000', 'Female', 'Sycamore Road', 'Arlington', 'USA', 'Master of Education', 7, 'Chemistry', '2024-09-30 10:30:00'),
(45, 'Henry', 'Gray', 'henry.gray@example.com', '444-555-6666', 'Male', 'Juniper Lane', 'Tampa', 'USA', 'Bachelor of Education', 4, 'Biology', '2024-05-12 12:45:00'),
(46, 'Mila', 'James', 'mila.james@example.com', '333-444-5555', 'Female', 'Laurel Drive', 'New Orleans', 'USA', 'Diploma in Education', 5, 'English', '2024-06-13 15:00:00'),
(47, 'Sebastian', 'Russell', 'sebastian.russell@example.com', '222-333-4444', 'Male', 'Palm Street', 'Wichita', 'USA', 'Master of Science in Education', 8, 'Computer Science', '2024-07-14 17:15:00'),
(48, 'Stella', 'Peterson', 'stella.peterson@example.com', '111-222-3333', 'Female', 'Cypress Lane', 'Bakersfield', 'USA', 'PhD in Education', 10, 'Physics', '2024-08-16 19:30:00'),
(49, 'Jack', 'Bailey', 'jack.bailey@example.com', '555-666-7777', 'Male', 'Mulberry Drive', 'Aurora', 'USA', 'Bachelor of Education', 6, 'Mathematics', '2024-09-01 21:45:00'),
(50, 'Sofia', 'Cooper', 'sofia.cooper@example.com', '888-999-0000', 'Female', 'Aspen Street', 'Anaheim', 'USA', 'Master of Arts in Education', 7, 'History', '2024-05-14 23:00:00');