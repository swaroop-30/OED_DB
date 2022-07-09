SELECT CustNo, CustFirstName, CustLastName, CustBal
  FROM Customer;

SELECT CustNo, CustFirstName, CustLastName, CustBal
  FROM Customer
  WHERE CustState = 'CO';

SELECT *
  FROM Product
  WHERE ProdPrice > 50
  ORDER BY ProdMfg, ProdName;

SELECT CustNo, CustFirstName, CustLastName, CustCity, CustBal
  FROM Customer
  WHERE (CustCity = 'Denver' AND CustBal > 150) 
           OR (CustCity = 'Seattle' AND CustBal > 300);

SELECT OrdNo, OrdDate, Customer.CustNo, CustFirstName, CustLastName
  FROM OrderTbl, Customer
  WHERE OrdState = 'CO' AND OrdDate BETWEEN '1-Jan-2017' AND '31-Jan-2017'
        AND OrderTbl.CustNo = Customer.CustNo;

SELECT CustCity, AVG(CustBal) AS AvgBal
  FROM Customer
  WHERE CustState = 'WA'
  GROUP BY CustCity;

SELECT CustCity, AVG(CustBal) AS AvgBal, COUNT(*) AS NumCustomers
  FROM Customer
  WHERE CustState = 'WA'
  GROUP BY CustCity
  HAVING COUNT(*) > 1;
