SELECT CategoryID From Products
Where UnitsInStock = 0

Select Employees.FirstName,Employees.LastName,max(OrderDetails.Quantity)
From ((Orders
Inner Join Employees 
ON Employees.EmployeeID = Orders.EmployeeID)
Inner Join Orders On Orders.ID = OrderDetails.OrderID);

Select * from Orders

 SELECT Orders.OrderID,Shippers.CompanyName,Orders.OrderDate FROM Shippers
INNER JOIN Orders
ON Shippers.ShipperID=Orders.ShipVia

SELECT Products.ProductName,Suppliers.CompanyName FROM Products
INNER JOIN Suppliers
ON Products.SupplierID=Suppliers.SupplierID

SELECT CompanyName,Address,OrderID FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID=Orders.CustomerID
WHERE OrderID is null


SELECT Products.ProductName, Count(CategoryName) FROM Products
INNER JOIN Categories
ON Products.CategoryID=Categories.CategoryID
Group By ProductName

SELECT OrderID, SUM(Quantity * UnitPrice) FROM OrderDetails GROUP BY OrderID

SELECT FirstName,LastName, YEAR(GETDATE())-YEAR(BirthDate) as Yas FROM Employees

SELECT OrderID, MIN(UnitPrice * Quantity) FROM OrderDetails GROUP By OrderID

SELECT AVG(UnitPrice) Ortalama FROM Products

SELECT MAX(UnitPrice) Ortalama FROM Products

SELECT SUM(UnitPrice*Quantity*(1-Discount)) Ciro FROM OrderDetails /* alýntýdýr discount kýsmý*/ 

SELECT COUNT(*) FROM Orders WHERE CustomerID='ALFK';

SELECT TOP 5 ProductName, UnitPrice FROM Products ORDER BY UnitPrice Desc

SELECT TOP 5 ProductName, UnitPrice FROM Products ORDER BY UnitPrice Asc

SELECT COUNT(DISTINCT Country) FROM Customers
SELECT DISTINCT Country FROM Customers

SELECT ProductName,UnitPrice,UnitsInStock FROM Products
WHERE ProductName LIKE '%'
ORDER BY UnitPrice DESC, UnitsInStock ASC

SELECT CompanyName,Country FROM Customers
ORDER BY Country DESC

SELECT Fax , CompanyName, CustomerID FROM Customers
where Fax is null

Select CustomerID,Country From Customers WHERE Country = 'Spain' OR Country = 'France';

SELECT OrderID,OrderDate FROM Orders
WHERE OrderDate BETWEEN '1996/08/03' AND '1997/11/21'

SELECT ProductName,UnitPrice FROM Products WHERE UnitPrice BETWEEN 80 AND 100

SELECT CompanyName FROM Customers
WHERE CompanyName LIKE '%app'


SELECT ProductName FROM Products
WHERE Productname LIKE 'B%'


Select CompanyName From Customers
WHERE ContactTitle = 'owner' AND City = 'Mexico D.F'


Select CompanyName,ContactName,Address,City,Country From Customers
WHERE Country = 'Spain'


SELECT Products.ProductName, Products.UnitPrice FROM Products
WHERE UnitPrice>100

SELECT CompanyName FROM Customers
WHERE  Country = 'Brazil'

SELECT CompanyName FROM Customers
WHERE  Country != 'Brazil'

SELECT CompanyName FROM Customers
WHERE  City ='Paris' And ContactTitle='Owner';

SELECT ProductName FROM Products
WHERE  Discontinued = 1;

