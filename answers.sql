Question 1 Achieving 1NF (First Normal Form) 🛠️

Step 1: Create the OrderProducts Table
CREATE TABLE OrderProducts (
    Order_ID INT,
    Product_Name VARCHAR(100),
    PRIMARY KEY (Order_ID, Product_Name),
    FOREIGN KEY (Order_ID) REFERENCES ProductDetail(Order_ID)
);
STEP 2: Insert data in 1st normalization format

INSERT INTO OrderProducts (Order_ID, Product_Name)
VALUES
    (101, 'Laptop'),
    (101, 'Mouse'),
    (102, 'Tablet'),
    (102, 'Keyboard'),
    (102, 'Mouse'),
    (103, 'Phone');


