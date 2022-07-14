1.SELECT * FROM Customers
WHERE City LIKE 'S%' AND Country NOT LIKE 'S%'


2.SELECT City FROM Customers
WHERE Country NOT IN ('Germany', 'France', 'England') ORDER BY City


3.SELECT * FROM Employees
WHERE notes LIKE "%BA%English%" ORDER BY LastName, Firstname


4.INSERT INTO Customers (CustomerName, City, Country)
VALUES ('Pavlyuchenko', 'Novopolotsk', 'Belarus')


5.UPDATE Customers
SET ContactName='Alfred Schmidt', City='Frankfurt'
WHERE CustomerID=1


6.DELETE FROM Customers WHERE CustomerName='Pavlyuchenko'


7.SELECT firstName FROM Employees 
WHERE EmployeeID = (SELECT EmployeeID FROM Orders WHERE OrderID = (SELECT OrderID FROM OrderDetails WHERE ProductID = (SELECT ProductID FROM Products WHERE CategoryID = (SELECT CategoryID FROM Categories WHERE CategoryName = "Seafood"))))


8.SELECT firstName, Quantity FROM Employees 
INNER JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID INNER JOIN OrderDetails ON OrderDetails.OrderID = Orders.OrderID


9.SELECT firstName, ProductID, Quantity 
FROM Employees INNER JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID INNER JOIN OrderDetails ON OrderDetails.OrderID = Orders.OrderID WHERE Quantity = (SELECT TOP 5 Quantity FROM OrderDetails ORDER BY Quantity DESC)


10.SELECT SUM(Quantity), ShipperName 
FROM OrderDetails INNER JOIN Orders ON Orders.OrderID = OrderDetails.OrderID INNER JOIN Shippers ON Shippers.ShipperID = Orders.ShipperID GROUP BY ShipperName

