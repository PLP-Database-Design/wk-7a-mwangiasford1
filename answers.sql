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

Question 2 Achieving 2NF (Second Normal Form)

step 1: create a customers table
CREATE TABLE Customers (
    Customer_ID INT PRIMARY KEY AUTO_INCREMENT,
    Customer_Name VARCHAR(100)
);

step 2: insert data into customer
    INSERT INTO Customers (Customer_ID, Customer_Name)
VALUES
    (1, 'John Doe'),
    (2, 'Jane Smith'),
    (3, 'Emily Clark');

step 3: create an orders table
CREATE TABLE Orders (
    Order_ID INT,
    Customer_ID INT,
    Product_Name VARCHAR(100),
    Quantity INT,
    PRIMARY KEY (Order_ID, Product_Name),
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID)
);
step 4: insert data into order
INSERT INTO Orders (Order_ID, Customer_ID, Product_Name, Quantity)
VALUES
    (101, 1, 'Laptop', 2),
    (101, 1, 'Mouse', 1),
    (102, 2, 'Tablet', 3),
    (102, 2, 'Keyboard', 1),
    (102, 2, 'Mouse', 2),



