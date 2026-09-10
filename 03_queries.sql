USE library_db;

-- ==========================================
-- 1. JOIN QUERY
-- Display members and the books they borrowed
-- ==========================================

SELECT
    i.issue_id,
    m.name AS member_name,
    b.title AS book_title,
    i.issue_date,
    i.return_date,
    i.status
FROM Issues i
JOIN Members m
    ON i.member_id = m.member_id
JOIN Books b
    ON i.book_id = b.book_id;


-- ==========================================
-- 2. GROUP BY + HAVING
-- Find members who borrowed 2 or more books
-- ==========================================

SELECT
    m.member_id,
    m.name AS member_name,
    COUNT(i.issue_id) AS total_books
FROM Members m
JOIN Issues i
    ON m.member_id = i.member_id
GROUP BY m.member_id, m.name
HAVING COUNT(i.issue_id) >= 2;


-- ==========================================
-- 3. SUBQUERY
-- Find books borrowed more than once
-- ==========================================

SELECT
    book_id,
    title
FROM Books
WHERE book_id IN (
    SELECT book_id
    FROM Issues
    GROUP BY book_id
    HAVING COUNT(issue_id) > 1
);


-- ==========================================
-- 4. UNPAID FINES
-- ==========================================

SELECT
    f.fine_id,
    m.name AS member_name,
    b.title AS book_title,
    f.amount,
    f.paid_status
FROM Fines f
JOIN Issues i
    ON f.issue_id = i.issue_id
JOIN Members m
    ON i.member_id = m.member_id
JOIN Books b
    ON i.book_id = b.book_id
WHERE f.paid_status = 'Unpaid';


-- ==========================================
-- 5. MOST BORROWED BOOKS
-- ==========================================

SELECT
    b.title,
    COUNT(i.issue_id) AS times_borrowed
FROM Books b
JOIN Issues i
    ON b.book_id = i.book_id
GROUP BY b.book_id, b.title
ORDER BY times_borrowed DESC;


-- ==========================================
-- 6. TOTAL FINE
-- ==========================================

SELECT
    SUM(amount) AS total_fine
FROM Fines;


-- ==========================================
-- 7. PAID AND UNPAID FINE SUMMARY
-- ==========================================

SELECT
    paid_status,
    COUNT(*) AS number_of_fines,
    SUM(amount) AS total_amount
FROM Fines
GROUP BY paid_status;


-- ==========================================
-- 8. MEMBERS WITH THEIR ISSUE COUNT
-- ==========================================

SELECT
    m.name,
    COUNT(i.issue_id) AS total_issues
FROM Members m
LEFT JOIN Issues i
    ON m.member_id = i.member_id
GROUP BY m.member_id, m.name
ORDER BY total_issues DESC;
