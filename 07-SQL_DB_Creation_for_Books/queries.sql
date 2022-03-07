-- 7.1 Books per author
SELECT Authors.AuthorID, Authors.Author_FirstName, Authors.Author_LastName,
COUNT(*) AS BookCounts
FROM Authors JOIN Books
ON Books.AuthorID = Authors.AuthorID
GROUP BY Authors.AuthorID
ORDER BY Authors.AuthorID;

-- 7.2 Authors per book
SELECT Books.BookID, Books.Title,
COUNT(Authors.Author_FirstName) AS AuthorsCount
FROM Books
JOIN Authors
ON Books.AuthorID = Authors.AuthorID
GROUP BY Books.BookID;

-- 7.3 Author Royalties on book
SELECT Books.Title, Books.Price, Publisher.Publisher_Name, Publisher.Publisher_Royalties AS RoyaltyAmount, 
ROUND(Publisher.Publisher_Royalties * Books.Price, 2)  AS RoyaltyforBook$
FROM Books
JOIN Publisher
ON Books.PublisherID = Publisher.PublisherID
ORDER BY Publisher.PublisherID;

-- 7.4 Book royalties per author
SELECT Books.Title, Authors.AuthorID,
ROUND(Publisher.Publisher_Royalties * Books.Price) AS RoyaltyPerBook$
FROM Books
JOIN Authors 
ON Books.AuthorID = Authors.AuthorID
JOIN Publisher
ON Books.PublisherID = Publisher.PublisherID;

-- 7.5 Books in a genre
SELECT Books.GenreID,
COUNT(Books.GenreID) AS GenreCount
FROM Books
GROUP BY Books.GenreID;

-- 7.6 Books Published by a Publisher
SELECT Publisher.PublisherID, Publisher.Publisher_Name,
COUNT(*) AS BookCounts
FROM Publisher
JOIN Books
ON Books.PublisherID = Publisher.PublisherID
GROUP BY Publisher.PublisherID
ORDER BY Publisher.PublisherID;

-- 7.7 Editors per book
SELECT Books.Title,
COALESCE((CASE WHEN Books.EditorID IS NOT NULL THEN 1 ELSE 0 END), 0) AS EditorsPerBook
FROM Books;

-- 7.8 Books per Editor
SELECT Editor.EditorID, Editor.Editor_Name,
COUNT(*) AS BookCount
FROM Editor
JOIN Books
ON Books.EditorID = Editor.EditorID
GROUP BY Editor.EditorID
ORDER BY Editor.EditorID;

-- 7.9 Books in an order
SELECT OrderID,
COUNT(OrderID) AS BooksPerOrder
FROM Orders
GROUP BY OrderID;

-- 7.10 Orders for a Book
SELECT Books.Title,
COUNT(Orders.BookID) AS AmountOrdered
FROM Orders
JOIN Books
ON Books.BookID = Orders.BookID
GROUP BY Books.BookID;

-- 7.11 Customer Orders
SELECT Orders.OrderID, Orders.BookID, Books.Title, Customer.Customer_FirstName, Customer.Customer_LastName, Customer.Customer_Email
FROM Orders
JOIN Books
ON Books.BookID = Orders.BookID
JOIN Customer
ON Customer.CustomerID = Orders.CustomerID
ORDER BY OrderID ASC;

-- 7.12 Orders per customer
SELECT Customer.Customer_FirstName, Customer.Customer_LastName, Customer.Customer_Email, Customer.Customer_Phone,
COUNT(DISTINCT Orders.OrderID) AS NumberOrders
FROM Customer
LEFT JOIN Orders
USING (CustomerID)
GROUP BY (Customer.CustomerID)
ORDER BY Customer.CustomerID;