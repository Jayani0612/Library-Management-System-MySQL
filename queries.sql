-- සියලුම පොත් වල විස්තර ලබා ගැනීම
SELECT * FROM book;

-- 2000න් පස්සේ ප්‍රකාශයට පත් වුණු පොත්
SELECT Title, Author, PublishedYear FROM book WHERE PublishedYear > 2000;

-- 'Sinhala' භාෂාවෙන් තියෙන පොත්
SELECT * FROM book WHERE Language = 'Sinhala';

-- පොත් සහ ඒවායේ වර්ග (Category) එකට ලබා ගැනීම (JOIN)
SELECT b.Title, b.Author, c.CategoryName 
FROM book b 
INNER JOIN category c ON b.CategoryID = c.CategoryID;

-- පොත් ණයට ගත්තු සාමාජිකයන්ගේ විස්තර සහ පොත් වල විස්තර (JOIN)
SELECT m.FirstName, m.LastName, b.Title, i.IssueDate, i.ReturnDate 
FROM issue i 
JOIN member m ON i.MemberID = m.MemberID 
JOIN book b ON i.BookID = b.BookID;

-- එක එක Category එකට අයිති පොත් කීයක් තියෙනවද? (COUNT)
SELECT c.CategoryName, COUNT(b.BookID) AS Total_Books 
FROM category c 
LEFT JOIN book b ON c.CategoryID = b.CategoryID 
GROUP BY c.CategoryName;

-- තවම ආපසු දීලා නැති පොත් (Overdue / Not Returned)
SELECT m.FirstName, m.LastName, b.Title, i.IssueDate 
FROM issue i 
JOIN member m ON i.MemberID = m.MemberID 
JOIN book b ON i.BookID = b.BookID 
WHERE i.ReturnDate IS NULL;

-- සාමාජිකයෙක්ගේ ෆෝන් නම්බර් එක update කිරීම
UPDATE member SET PhoneNumber = '0771234567' WHERE MemberID = 'M001';

-- වැරදීමකින් ඇතුළත් කරපු පොතක් delete කිරීම
DELETE FROM book WHERE BookID = 'B005';
