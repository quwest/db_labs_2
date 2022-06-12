SELECT N AS 'Number', Code AS 'Code', Is_new AS 'IS New', Name AS 'Name', Price AS 'Price', Publisher 'Publisher' FROM books_for_pc;
SELECT * FROM books_for_pc;
SELECT Code AS 'CODE', Name AS 'NAME',Is_new AS 'IS New', Pages_count as 'pages count', Price as 'price',N as 'NUMBER' FROM books_for_pc;
SELECT * FROM books_for_pc LIMIT 30;
SELECT TOP 10 PERCENT * FROM books_for_pc ORDER BY Name;
SELECT DISTINCT Code FROM books_for_pc;
SELECT * FROM books_for_pc WHERE Is_new=TRUE;
SELECT * FROM books_for_pc WHERE Is_new=TRUE AND Price BETWEEN 20 AND 30;
SELECT * FROM books_for_pc WHERE Is_new=TRUE AND (Price<20 AND PRICE>30);
SELECT * FROM books_for_pc WHERE Pages_count BETWEEN 300 AND 400 AND Price BETWEEN 30 AND 40;
SELECT * FROM books_for_pc WHERE date_book between CAST('01-01-2000' AS DATE) and CAST('29-02-2000' AS DATE) or date_book between CAST('01-12-2000' AS DATE) and CAST('31-12-2000' AS DATE);
SELECT * FROM books_for_pc WHERE Code IN ('5110','5141','4984','4241');
SELECT * FROM books_for_pc WHERE YEAR(Date_book) IN ('1999','2001','2003','2005');
SELECT * FROM books_for_pc WHERE Name>='А' AND Name<='К';
SELECT * FROM books_for_pc WHERE Name LIKE 'АПП%' AND YEAR(date_book)=2000 AND price<20;
SELECT * FROM books_for_pc WHERE Name LIKE 'АПП%e' AND Date_book BETWEEN CAST('01-01-2000' AS DATE) AND CAST('15-06-2020' AS DATE);
SELECT * FROM books_for_pc WHERE Name LIKE '%Microsoft%' AND NAME NOT LIKE '%Windows%';
SELECT * FROM books_for_pc WHERE Name LIKE '%[0-9]%';
SELECT * FROM books_for_pc WHERE Name LIKE '.*[0-9].*[0-9].*[0-9].*';
SELECT * FROM books_for_pc WHERE Name LIKE '.*[0-9].*[0-9].*[0-9].*[0-9].*[0-9][^0-9]*';