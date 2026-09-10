USE library_db;

-- ==========================================
-- LIBRARY ISSUE DETAILS VIEW
-- ==========================================

CREATE VIEW library_issue_details AS
SELECT
    i.issue_id,
    m.name AS member_name,
    m.email,
    b.title AS book_title,
    a.author_name,
    b.category,
    i.issue_date,
    i.return_date,
    i.status
FROM Issues i
JOIN Members m
    ON i.member_id = m.member_id
JOIN Books b
    ON i.book_id = b.book_id
JOIN Authors a
    ON b.author_id = a.author_id;
