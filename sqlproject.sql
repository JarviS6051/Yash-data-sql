-- 1. Create BB_Manager Table
CREATE TABLE BB_Manager (
    M_id int NOT NULL,
    mName varchar(100) NOT NULL,
    m_phNo bigint,
    CONSTRAINT Mid_pk PRIMARY KEY (M_id)
);

-- 2. Insert Data into BB_Manager
INSERT INTO BB_Manager VALUES
(102, 'Jack', 4693959671),
(103, 'Peter', 4693959601),
(104, 'Mark', 4693959677),
(105, 'Jason', 4693957671),
(106, 'Steve', 4694959671),
(107, 'Jason', 4695959671),
(108, 'Stella', 4663959671),
(109, 'Monika', 4673959671),
(110, 'John', 4693859671);

-- 3. Select Data from BB_Manager
SELECT * FROM BB_Manager;

-- 4. Create Blood_Donor Table
CREATE TABLE Blood_Donor (
    bd_ID int NOT NULL,
    bd_name varchar(100) NOT NULL,
    bd_age int,
    bd_sex varchar(1),
    bd_Bgroup varchar(10),
    bd_reg_date date,
    reco_ID int NOT NULL,
    City_ID int NOT NULL,
    CONSTRAINT bdID_pk PRIMARY KEY (bd_ID)
);

-- 5. Insert Data into Blood_Donor
INSERT INTO Blood_Donor VALUES
(150221, 'Mark', 25, 'M', 'B+', '2015-12-17', 101212, 1100),
(160011, 'Abdul', 35, 'F', 'A+', '2016-11-22', 101212, 1100),
(160101, 'Smith', 22, 'M', 'O+', '2016-01-04', 101312, 1200),
(150011, 'Pat', 29, 'M', 'O+', '2015-07-19', 101412, 1300),
(150021, 'Shyam', 42, 'F', 'A-', '2015-12-24', 101412, 1300),
(150121, 'Dan', 44, 'M', 'AB+', '2015-08-28', 101212, 1200),
(160031, 'Mike', 33, 'F', 'AB-', '2016-02-06', 101212, 1400),
(160301, 'Elisa', 31, 'F', 'AB+', '2016-09-10', 101312, 1200),
(160091, 'Carrol', 24, 'M', 'B-', '2016-10-15', 101312, 1500),
(160401, 'Mark', 29, 'M', 'O-', '2016-12-17', 101212, 1200);

-- 6. Select Data from Blood_Donor
SELECT * FROM Blood_Donor;

-- 7. Create BloodSpecimen Table
CREATE TABLE BloodSpecimen (
    specimen_number int NOT NULL,
    b_group varchar(10) NOT NULL,
    status int,
    dfind_ID int NOT NULL,
    M_id int NOT NULL,
    CONSTRAINT specimenumber_pk PRIMARY KEY (specimen_number)
);

-- 8. Insert Data into BloodSpecimen
INSERT INTO BloodSpecimen VALUES
(1001, 'B+', 1, 11, 101),
(1002, 'O+', 1, 12, 102),
(1003, 'AB+', 1, 11, 102),
(1004, 'O-', 1, 13, 103),
(1005, 'A+', 0, 14, 101),
(1006, 'A-', 1, 13, 104),
(1007, 'AB-', 1, 15, 104),
(1008, 'AB-', 0, 11, 105),
(1009, 'B+', 1, 13, 105),
(1010, 'O+', 0, 12, 105),
(1011, 'O+', 1, 13, 103),
(1012, 'O-', 1, 14, 102),
(1013, 'B-', 1, 14, 102),
(1014, 'AB+', 0, 15, 101);

-- 9. Select Data from BloodSpecimen
SELECT * FROM BloodSpecimen;

-- 10. Create City Table
CREATE TABLE City (
    City_ID int NOT NULL,
    City_name varchar(100) NOT NULL,
    CONSTRAINT CityID_pk PRIMARY KEY (City_ID)
);

-- 11. Insert Data into City
INSERT INTO City VALUES
(1200, 'Austin'),
(1300, 'Irving'),
(1400, 'Houston'),
(1500, 'Richardson'),
(1600, 'Plano'),
(1700, 'Frisco'),
(1800, 'Arlington'),
(1900, 'San Antonio'),
(2000, 'Tyler');

-- 12. Select Data from City
SELECT * FROM City;

-- 13. Create DiseaseFinder Table
CREATE TABLE DiseaseFinder (
    dfind_ID int NOT NULL,
    dfind_name varchar(100) NOT NULL,
    dfind_PhNo bigint,
    CONSTRAINT dfindID_pk PRIMARY KEY (dfind_ID)
);

-- 14. Insert Data into DiseaseFinder
INSERT INTO DiseaseFinder VALUES
(11, 'Peter', 4693804223),
(12, 'Park', 4693804223),
(13, 'Jerry', 4693804223),
(14, 'Mark', 4693804223),
(15, 'Monika', 4693804223),
(16, 'Ram', 4693804123),
(17, 'Swathi', 4693804223),
(18, 'Gautham', 4693804323),
(19, 'Ashwin', 4693804423),
(20, 'Yash', 4693804523);

-- 15. Select Data from DiseaseFinder
SELECT * FROM DiseaseFinder;

-- 16. Create Hospital_Info_1 Table
CREATE TABLE Hospital_Info_1 (
    hosp_ID int NOT NULL,
    hosp_name varchar(100) NOT NULL,
    City_ID int NOT NULL,
    M_id int NOT NULL,
    PRIMARY KEY(hosp_ID)
);

-- 17. Insert Data into Hospital_Info_1
INSERT INTO Hospital_Info_1 VALUES
(1, 'MayoClinic', 1100, 101),
(2, 'CleavelandClinic', 1200, 103),
(3, 'NYU', 1300, 103),
(4, 'Baylor', 1400, 104),
(5, 'Charlton', 1800, 103),
(6, 'Greenoaks', 1300, 106),
(7, 'Forestpark', 1300, 102),
(8, 'Parkland', 1200, 106),
(9, 'Pinecreek', 1500, 109),
(10, 'WalnutHill', 1700, 105);

-- 18. Select Data from Hospital_Info_1
SELECT * FROM Hospital_Info_1;

-- 19. Create Hospital_Info_2 Table
CREATE TABLE Hospital_Info_2 (
    hosp_ID int NOT NULL,
    hosp_name varchar(100) NOT NULL,
    hosp_needed_Bgrp varchar(10),
    hosp_needed_qnty int,
    PRIMARY KEY(hosp_ID, hosp_needed_Bgrp)
);

-- 20. Insert Data into Hospital_Info_2
INSERT INTO Hospital_Info_2 VALUES
(1, 'MayoClinic', 'A+', 20),
(1, 'MayoClinic', 'AB+', 0),
(1, 'MayoClinic', 'A-', 40),
(1, 'MayoClinic', 'B-', 10),
(1, 'MayoClinic', 'AB-', 20),
(2, 'CleavelandClinic', 'A+', 40),
(2, 'CleavelandClinic', 'AB+', 20),
(2, 'CleavelandClinic', 'A-', 10),
(2, 'CleavelandClinic', 'B-', 30),
(2, 'CleavelandClinic', 'B+', 0),
(2, 'CleavelandClinic', 'AB-', 10),
(3, 'NYU', 'A+', 0),
(3, 'NYU', 'AB+', 0),
(3, 'NYU', 'A-', 0),
(3, 'NYU', 'B-', 20),
(3, 'NYU', 'B+', 10),
(3, 'NYU', 'AB-', 0),
(4, 'Baylor', 'A+', 10),
(5, 'Charlton', 'B+', 30),
(4, 'Baylor', 'A-', 40),
(7, 'Forestpark', 'B-', 40),
(8, 'Parkland', 'B+', 10),
(9, 'Pinecreek', 'AB-', 20);

-- 21. Select Data from Hospital_Info_2
SELECT * FROM Hospital_Info_2;

-- 22. Create Recipient Table
CREATE TABLE Recipient (
    reci_ID int NOT NULL,
    reci_name varchar(100) NOT NULL,
    reci_age int,
    reci_sex varchar(1),
    reci_Brgp varchar(10),
    reci_Bqnty int,
    reci_cityID int NOT NULL,
    M_id int NOT NULL,
    CONSTRAINT reciID_pk PRIMARY KEY (reci_ID)
);

-- 23. Insert Data into Recipient
INSERT INTO Recipient VALUES
(10001, 'John', 45, 'M', 'B+', 5, 1300, 103),
(10002, 'Alice', 35, 'F', 'A+', 4, 1200, 102),
(10003, 'David', 25, 'M', 'AB-', 2, 1300, 103),
(10004, 'Eve', 40, 'F', 'O+', 1, 1500, 106),
(10005, 'Sophia', 29, 'F', 'B-', 3, 1200, 107),
(10006, 'Charlie', 38, 'M', 'A-', 4, 1200, 106);

-- 24. Select Data from Recipient
SELECT * FROM Recipient;

-- New Queries

-- 1. Update Manager's Phone Number
UPDATE BB_Manager 
SET m_phNo = 4694000000
WHERE M_id = 102;

-- 2. Select Blood Donors Based on Blood Group
SELECT bd_name, bd_Bgroup, bd_age
FROM Blood_Donor
WHERE bd_Bgroup = 'A+';

-- 3. Find the Number of Donors by Blood Group
SELECT bd_Bgroup, COUNT(bd_ID) AS num_of_donors
FROM Blood_Donor
GROUP BY bd_Bgroup;

-- 4. List Hospitals in a Specific City
SELECT h.hosp_name, c.City_name
FROM Hospital_Info_1 h
JOIN City c ON h.City_ID = c.City_ID
WHERE c.City_name = 'Austin';

-- 5. Find Donors and Their Matching Hospitals
SELECT b.bd_name, b.bd_Bgroup, h.hosp_name
FROM Blood_Donor b
JOIN Hospital_Info_2 h ON b.bd_Bgroup = h.hosp_needed_Bgrp
WHERE h.hosp_needed_qnty > 0;

-- 6. Get Blood Specimens for a Specific Manager
SELECT s.specimen_number, s.b_group, s.status, s.dfind_ID
FROM BloodSpecimen s
WHERE s.M_id = 102;

-- 7. Delete a Blood Donor by ID
DELETE FROM Blood_Donor
WHERE bd_ID = 150221;

-- 8. Get the Count of Recipients for Each Blood Group
SELECT reci_Brgp, COUNT(reci_ID) AS num_of_recipients
FROM Recipient
GROUP BY reci_Brgp;

-- 9. Find Hospitals with Low Blood Stock (Below a Certain Quantity)
SELECT h.hosp_name, h.hosp_needed_Bgrp, h.hosp_needed_qnty
FROM Hospital_Info_2 h
WHERE h.hosp_needed_qnty < 10;

-- 10. Update Recipient's Blood Group
UPDATE Recipient 
SET reci_Brgp = 'A-'
WHERE reci_ID = 10005;

-- 11. Find Disease Finder Details
SELECT d.dfind_name, d.dfind_PhNo
FROM DiseaseFinder d
WHERE d.dfind_name = 'Peter';

-- 12. Find All Donors and Their Cities
SELECT b.bd_name, c.City_name
FROM Blood_Donor b
JOIN City c ON b.City_ID = c.City_ID;

-- 13. Get Hospitals with Blood Needs and Available Donors
SELECT h.hosp_name, b.bd_name, b.bd_Bgroup
FROM Hospital_Info_2 h
JOIN Blood_Donor b ON h.hosp_needed_Bgrp = b.bd_Bgroup
WHERE h.hosp_needed_qnty > 0
AND b.bd_Bgroup = h.hosp_needed_Bgrp;

-- 14. Get the Total Blood Quantity Needed for a Hospital
SELECT h.hosp_name, SUM(h.hosp_needed_qnty) AS total_blood_needed
FROM Hospital_Info_2 h
GROUP BY h.hosp_name;

-- 15. Find Donors Who Have Donated in Specific Date Range
SELECT bd_name, bd_reg_date
FROM Blood_Donor
WHERE bd_reg_date BETWEEN '2015-01-01' AND '2016-01-01';

-- 16. Get the Details of Hospitals with Matching Donor Blood Type
SELECT h.hosp_name, b.bd_name, b.bd_Bgroup
FROM Hospital_Info_2 h
JOIN Blood_Donor b ON h.hosp_needed_Bgrp = b.bd_Bgroup
WHERE h.hosp_needed_qnty > 0;

-- 17. Find the Hospital(s) That Need the Most Blood of a Specific Type
SELECT h.hosp_name, h.hosp_needed_qnty
FROM Hospital_Info_2 h
WHERE h.hosp_needed_Bgrp = 'A+'
ORDER BY h.hosp_needed_qnty DESC
LIMIT 1;

-- 18. Get All Blood Specimens Collected by a Disease Finder
SELECT s.specimen_number, s.b_group, s.status
FROM BloodSpecimen s
JOIN DiseaseFinder d ON s.dfind_ID = d.dfind_ID
WHERE d.dfind_name = 'Peter';

-- 19. Get Recipients and Their Hospitals
SELECT r.reci_name, r.reci_Brgp, h.hosp_name
FROM Recipient r
JOIN Hospital_Info_1 h ON r.M_id = h.M_id;

-- 20. Delete a Recording Staff by Name
DELETE FROM Recording_Staff
WHERE reco_Name = 'Walcot';

-- 21. Get the Average Blood Donation Quantity per Recipient
SELECT AVG(reci_Bqnty) AS avg_blood_quantity
FROM Recipient;

-- 1. Find All Donors with Matching Hospitals and Their Blood Group (INNER JOIN)
SELECT b.bd_name, b.bd_Bgroup, h.hosp_name
FROM Blood_Donor b
INNER JOIN Hospital_Info_2 h ON b.bd_Bgroup = h.hosp_needed_Bgrp
WHERE h.hosp_needed_qnty > 0;

-- 2. List Recipients and Their Donor's Blood Group Using INNER JOIN
SELECT r.reci_name, r.reci_Brgp, b.bd_name, b.bd_Bgroup
FROM Recipient r
INNER JOIN Blood_Donor b ON r.reci_Brgp = b.bd_Bgroup;

-- 3. Get Hospitals and Their City Names Using INNER JOIN
SELECT h.hosp_name, c.City_name
FROM Hospital_Info_1 h
INNER JOIN City c ON h.City_ID = c.City_ID;

-- 4. Show Donors Who Have Donated to a Specific Hospital (INNER JOIN with multiple tables)
SELECT b.bd_name, b.bd_Bgroup, h.hosp_name
FROM Blood_Donor b
INNER JOIN BloodSpecimen s ON b.bd_ID = s.dfind_ID
INNER JOIN Hospital_Info_2 h ON s.b_group = h.hosp_needed_Bgrp
WHERE h.hosp_name = 'MayoClinic';

-- 5. List All Donors Who Are Not Matching Any Hospital’s Blood Needs (LEFT JOIN)
SELECT b.bd_name, b.bd_Bgroup, h.hosp_name
FROM Blood_Donor b
LEFT JOIN Hospital_Info_2 h ON b.bd_Bgroup = h.hosp_needed_Bgrp
WHERE h.hosp_name IS NULL;

-- 6. Get All Hospitals and Their Blood Type Needs Including Those With No Blood Need (LEFT JOIN)
SELECT h.hosp_name, h.hosp_needed_Bgrp, h.hosp_needed_qnty
FROM Hospital_Info_2 h
LEFT JOIN BloodSpecimen s ON h.hosp_needed_Bgrp = s.b_group
WHERE s.specimen_number IS NULL;

-- 7. Find All Recipients and Their Hospitals Even if They Have No Blood Type Match (LEFT JOIN)
SELECT r.reci_name, r.reci_Brgp, h.hosp_name
FROM Recipient r
LEFT JOIN Hospital_Info_1 h ON r.M_id = h.M_id;

-- 8. List Donors and Their Matching Blood Type Hospitals, Including Hospitals with No Donors (RIGHT JOIN)
SELECT b.bd_name, h.hosp_name, h.hosp_needed_Bgrp
FROM Blood_Donor b
RIGHT JOIN Hospital_Info_2 h ON b.bd_Bgroup = h.hosp_needed_Bgrp
WHERE h.hosp_needed_qnty > 0;

-- 9. Get All Donors and Hospitals with Matching Blood Groups (FULL OUTER JOIN)
SELECT b.bd_name, b.bd_Bgroup, h.hosp_name
FROM Blood_Donor b
FULL OUTER JOIN Hospital_Info_2 h ON b.bd_Bgroup = h.hosp_needed_Bgrp
WHERE b.bd_name IS NOT NULL OR h.hosp_name IS NOT NULL;

-- 10. List Recipients with Their Hospital Names (INNER JOIN and JOIN multiple tables)
SELECT r.reci_name, r.reci_Brgp, h.hosp_name
FROM Recipient r
JOIN Hospital_Info_1 h ON r.M_id = h.M_id
WHERE r.reci_Brgp = h.hosp_needed_Bgrp;

-- 11. Count Number of Donors for Each Blood Group (GROUP BY and HAVING)
SELECT bd_Bgroup, COUNT(bd_ID) AS num_of_donors
FROM Blood_Donor
GROUP BY bd_Bgroup
HAVING COUNT(bd_ID) > 5;  -- Only blood groups with more than 5 donors

-- 12. Find Hospitals with Blood Needs and Quantity Greater Than 10 (GROUP BY)
SELECT h.hosp_name, SUM(h.hosp_needed_qnty) AS total_blood_needed
FROM Hospital_Info_2 h
GROUP BY h.hosp_name
HAVING SUM(h.hosp_needed_qnty) > 10;

-- 13. Get the Total Blood Quantity Needed per Hospital (GROUP BY and HAVING)
SELECT h.hosp_name, SUM(h.hosp_needed_qnty) AS total_blood_quantity
FROM Hospital_Info_2 h
GROUP BY h.hosp_name;

-- 14. Find Donors Who Are in a Specific City (JOIN with City Table)
SELECT b.bd_name, b.bd_Bgroup, c.City_name
FROM Blood_Donor b
INNER JOIN City c ON b.City_ID = c.City_ID
WHERE c.City_name = 'Austin';

-- 15. List Hospitals That Need Blood But Have No Donors (INNER JOIN with Subquery)
SELECT h.hosp_name, h.hosp_needed_Bgrp
FROM Hospital_Info_2 h
WHERE h.hosp_needed_qnty > 0
AND h.hosp_needed_Bgrp NOT IN (SELECT bd_Bgroup FROM Blood_Donor);

-- 16. Find Recipients and Their Matching Donor Information (SUBQUERY)
SELECT r.reci_name, r.reci_Brgp, (SELECT bd_name FROM Blood_Donor b WHERE b.bd_Bgroup = r.reci_Brgp LIMIT 1) AS donor_name
FROM Recipient r;

-- 17. Get Hospitals with the Highest Blood Need (SUBQUERY)
SELECT h.hosp_name, h.hosp_needed_Bgrp, h.hosp_needed_qnty
FROM Hospital_Info_2 h
WHERE h.hosp_needed_qnty = (SELECT MAX(hosp_needed_qnty) FROM Hospital_Info_2);

-- 18. Get Blood Donors and Their Corresponding Disease Finder Contact (INNER JOIN with DiseaseFinder)
SELECT b.bd_name, b.bd_Bgroup, d.dfind_name, d.dfind_PhNo
FROM Blood_Donor b
INNER JOIN DiseaseFinder d ON b.bd_ID = d.dfind_ID;

-- 19. List All Managers with Their Contact Information (INNER JOIN with Manager Table)
SELECT m.mName, m.m_phNo
FROM BB_Manager m;

-- 20. Combine Results from Two Tables Using UNION (e.g., Hospital and City Information)
SELECT h.hosp_name AS location_name, h.hosp_needed_Bgrp AS blood_group, h.hosp_needed_qnty AS quantity
FROM Hospital_Info_2 h
UNION
SELECT c.City_name AS location_name, 'N/A' AS blood_group, 0 AS quantity
FROM City c
WHERE c.City_name = 'Austin';

-- 21. Find Hospitals with Matching Blood Group Needs from Two Sources (UNION ALL)
SELECT h.hosp_name, h.hosp_needed_Bgrp
FROM Hospital_Info_2 h
WHERE h.hosp_needed_Bgrp = 'O+'
UNION ALL
SELECT h.hosp_name, h.hosp_needed_Bgrp
FROM Hospital_Info_2 h
WHERE h.hosp_needed_Bgrp = 'A+';

-- 22. Subquery to Get Recipients with a Specific Blood Group
SELECT r.reci_name, r.reci_Brgp
FROM Recipient r
WHERE r.reci_Brgp IN (SELECT bd_Bgroup FROM Blood_Donor WHERE bd_Bgroup = 'A+');

-- 23. Use of LIKE in a Subquery to Match Blood Group Needs
SELECT h.hosp_name
FROM Hospital_Info_2 h
WHERE h.hosp_needed_Bgrp LIKE 'A%';

-- 24. Find the Total Number of Blood Donations by City (JOIN with City Table and GROUP BY)
SELECT c.City_name, COUNT(b.bd_ID) AS num_of_donations
FROM Blood_Donor b
JOIN City c ON b.City_ID = c.City_ID
GROUP BY c.City_name;

-- 25. Get Recipients Who Are in Need of a Specific Blood Group, and Match Donors' Availability
SELECT r.reci_name, r.reci_Brgp, b.bd_name
FROM Recipient r
JOIN Blood_Donor b ON r.reci_Brgp = b.bd_Bgroup
WHERE r.reci_Brgp = 'A+' AND b.bd_Bgroup = r.reci_Brgp;

-- 26. Calculate the Total Amount of Blood Donated Per Hospital (WITH Clause Example)
WITH BloodDonations AS (
    SELECT h.hosp_name, SUM(h.hosp_needed_qnty) AS total_blood
    FROM Hospital_Info_2 h
    GROUP BY h.hosp_name
)
SELECT * FROM BloodDonations;

-- 27. Find the Maximum Number of Donors per Blood Group (Window Function Example)
SELECT bd_Bgroup, COUNT(bd_ID) AS num_of_donors,
       RANK() OVER (ORDER BY COUNT(bd_ID) DESC) AS rank
FROM Blood_Donor
GROUP BY bd_Bgroup;

-- 28. Find Hospitals with the Highest Demand for Blood of Each Type (Window Function Example)
SELECT h.hosp_name, h.hosp_needed_Bgrp, h.hosp_needed_qnty,
       ROW_NUMBER() OVER (PARTITION BY h.hosp_needed_Bgrp ORDER BY h.hosp_needed_qnty DESC) AS rank
FROM Hospital_Info_2 h;
