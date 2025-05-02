/* Write an SQL query to transform this table into 1NF, ensuring that each row represents a single product for an order*/

CREATE TABLE ProductDetail (
    OrderID INT,
    CustomerName VARCHAR(100),
    Product VARCHAR(50)
);


/* Write an SQL query to transform this table into 2NF by removing partial dependencies. Ensure that each non-key column fully depends on the entire primary key.*/

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

CREATE TABLE OrderDetails (
    OrderID INT,
    Product VARCHAR(100),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
