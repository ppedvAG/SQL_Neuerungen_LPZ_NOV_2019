

SELECT        Customers.CustomerID, Customers.CompanyName, Customers.ContactName, Customers.ContactTitle, Customers.City, Customers.Country, Orders.EmployeeID, Orders.OrderDate, Orders.Freight, Orders.ShipCity, 
                         Orders.ShipCountry, [Order Details].OrderID, [Order Details].ProductID, [Order Details].UnitPrice, [Order Details].Quantity, Employees.LastName, Employees.FirstName, Employees.BirthDate, Products.ProductName, 
                         Products.UnitsInStock
INTO ku1
FROM            Customers INNER JOIN
                         Orders ON Customers.CustomerID = Orders.CustomerID INNER JOIN
                         Employees ON Orders.EmployeeID = Employees.EmployeeID INNER JOIN
                         [Order Details] ON Orders.OrderID = [Order Details].OrderID INNER JOIN
                         Products ON [Order Details].ProductID = Products.ProductID


