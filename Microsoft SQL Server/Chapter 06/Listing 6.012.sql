SELECT C.CustomerID, C.CustFirstName, C.CustLastName
FROM Customers AS C INNER JOIN
   (SELECT DISTINCT Orders.CustomerID
    FROM Orders INNER JOIN Order_Details
      ON Orders.OrderNumber = Order_Details.OrderNumber
    INNER JOIN Products 
      ON Products.ProductNumber = Order_Details.ProductNumber
    WHERE Products.ProductName = 'Skateboard') AS OSk
  ON C.CustomerID = OSk.CustomerID
INNER JOIN
   (SELECT DISTINCT Orders.CustomerID
    FROM Orders INNER JOIN Order_Details
      ON Orders.OrderNumber = Order_Details.OrderNumber
    INNER JOIN Products 
      ON Products.ProductNumber = Order_Details.ProductNumber
    WHERE Products.ProductName = 'Helmet') AS OHel
  ON C.CustomerID = OHel.CustomerID
INNER JOIN
   (SELECT DISTINCT Orders.CustomerID
    FROM Orders INNER JOIN Order_Details
      ON Orders.OrderNumber = Order_Details.OrderNumber
    INNER JOIN Products 
      ON Products.ProductNumber = Order_Details.ProductNumber
    WHERE Products.ProductName = 'Knee Pads') AS OKn
  ON C.CustomerID = OKn.CustomerID
INNER JOIN
   (SELECT DISTINCT Orders.CustomerID
    FROM Orders INNER JOIN Order_Details
      ON Orders.OrderNumber = Order_Details.OrderNumber
    INNER JOIN Products 
      ON Products.ProductNumber = Order_Details.ProductNumber
    WHERE Products.ProductName = 'Gloves') AS OGl
  ON C.CustomerID = OGl.CustomerID;
