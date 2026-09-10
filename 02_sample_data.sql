USE library_db;

-- =========================
-- 20 AUTHORS
-- =========================

INSERT INTO Authors (author_name) VALUES
('R.K. Narayan'),
('Chetan Bhagat'),
('George Orwell'),
('J.K. Rowling'),
('Dan Brown'),
('Robert C. Martin'),
('Thomas H. Cormen'),
('Abraham Silberschatz'),
('Andrew Tanenbaum'),
('Eric Matthes'),
('Stuart Russell'),
('Aurélien Géron'),
('Stephen Robbins'),
('N. Gregory Mankiw'),
('H.C. Verma'),
('Kenneth Rosen'),
('Plato'),
('F. Scott Fitzgerald'),
('William McNeill'),
('James Jones');


-- =========================
-- 20 MEMBERS
-- =========================

INSERT INTO Members
(name, email, phone, join_date) VALUES
('Aarav Sharma', 'aarav@gmail.com', '9876500001', '2024-01-10'),
('Priya Singh', 'priya@gmail.com', '9876500002', '2024-01-15'),
('Rahul Verma', 'rahul@gmail.com', '9876500003', '2024-02-01'),
('Ananya Gupta', 'ananya@gmail.com', '9876500004', '2024-02-10'),
('Rohan Mehta', 'rohan@gmail.com', '9876500005', '2024-02-15'),
('Sneha Patel', 'sneha@gmail.com', '9876500006', '2024-03-01'),
('Aditya Kumar', 'aditya@gmail.com', '9876500007', '2024-03-05'),
('Isha Nair', 'isha@gmail.com', '9876500008', '2024-03-12'),
('Karan Joshi', 'karan@gmail.com', '9876500009', '2024-03-20'),
('Neha Agarwal', 'neha@gmail.com', '9876500010', '2024-04-01'),
('Vivek Rao', 'vivek@gmail.com', '9876500011', '2024-04-10'),
('Meera Shah', 'meera@gmail.com', '9876500012', '2024-04-15'),
('Arjun Malhotra', 'arjun@gmail.com', '9876500013', '2024-05-01'),
('Pooja Yadav', 'pooja@gmail.com', '9876500014', '2024-05-05'),
('Nikhil Bansal', 'nikhil@gmail.com', '9876500015', '2024-05-10'),
('Kavya Mishra', 'kavya@gmail.com', '9876500016', '2024-05-15'),
('Sahil Chauhan', 'sahil@gmail.com', '9876500017', '2024-06-01'),
('Tanya Saxena', 'tanya@gmail.com', '9876500018', '2024-06-10'),
('Dev Kapoor', 'dev@gmail.com', '9876500019', '2024-06-15'),
('Simran Arora', 'simran@gmail.com', '9876500020', '2024-07-01');


-- =========================
-- 20 BOOKS
-- =========================

INSERT INTO Books
(title, author_id, category, published_year, available_copies) VALUES
('Malgudi Days', 1, 'Literature', 1982, 3),
('Five Point Someone', 2, 'Literature', 2004, 4),
('1984', 3, 'Literature', 1949, 3),
('Harry Potter', 4, 'Fantasy', 1997, 5),
('The Da Vinci Code', 5, 'Mystery', 2003, 4),
('Clean Code', 6, 'Software Engineering', 2008, 3),
('Introduction to Algorithms', 7, 'Computer Science', 2022, 4),
('Database System Concepts', 8, 'Database', 2019, 5),
('Computer Networks', 9, 'Networking', 2018, 4),
('Python Crash Course', 10, 'Programming', 2023, 5),
('Artificial Intelligence', 11, 'Artificial Intelligence', 2021, 4),
('Hands-On Machine Learning', 12, 'Data Science', 2022, 4),
('Management', 13, 'Management', 2020, 3),
('Principles of Economics', 14, 'Economics', 2021, 4),
('Concepts of Physics', 15, 'Physics', 2020, 6),
('Discrete Mathematics', 16, 'Mathematics', 2018, 3),
('The Republic', 17, 'Philosophy', 2017, 2),
('The Great Gatsby', 18, 'Literature', 2018, 5),
('World History', 19, 'History', 2015, 3),
('Statistics for Data Science', 20, 'Statistics', 2022, 4);


-- =========================
-- 20 ISSUE RECORDS
-- =========================

INSERT INTO Issues
(book_id, member_id, issue_date, return_date, status) VALUES
(1, 1, '2025-01-01', '2025-01-14', 'Returned'),
(2, 2, '2025-01-03', '2025-01-20', 'Returned'),
(3, 3, '2025-01-05', '2025-01-18', 'Returned'),
(4, 4, '2025-01-07', '2025-01-25', 'Returned'),
(5, 5, '2025-01-10', '2025-01-23', 'Returned'),
(6, 6, '2025-01-12', '2025-01-29', 'Returned'),
(7, 7, '2025-01-15', '2025-01-28', 'Returned'),
(8, 8, '2025-01-17', '2025-02-03', 'Returned'),
(9, 9, '2025-01-20', '2025-02-02', 'Returned'),
(10, 10, '2025-01-22', '2025-02-08', 'Returned'),
(11, 11, '2025-02-01', '2025-02-14', 'Returned'),
(12, 12, '2025-02-03', '2025-02-20', 'Returned'),
(13, 13, '2025-02-05', '2025-02-18', 'Returned'),
(14, 14, '2025-02-07', '2025-02-25', 'Returned'),
(15, 15, '2025-02-10', '2025-02-23', 'Returned'),
(16, 16, '2025-02-12', '2025-02-28', 'Returned'),
(17, 17, '2025-02-15', '2025-02-28', 'Returned'),
(18, 18, '2025-02-17', '2025-03-05', 'Returned'),
(19, 19, '2025-02-20', '2025-03-04', 'Returned'),
(20, 20, '2025-02-22', '2025-03-12', 'Returned');


-- =========================
-- 20 FINES
-- =========================

INSERT INTO Fines
(issue_id, amount, paid_status) VALUES
(1, 0.00, 'Paid'),
(2, 30.00, 'Unpaid'),
(3, 0.00, 'Paid'),
(4, 40.00, 'Unpaid'),
(5, 0.00, 'Paid'),
(6, 50.00, 'Paid'),
(7, 0.00, 'Paid'),
(8, 30.00, 'Unpaid'),
(9, 0.00, 'Paid'),
(10, 30.00, 'Paid'),
(11, 0.00, 'Paid'),
(12, 30.00, 'Unpaid'),
(13, 0.00, 'Paid'),
(14, 40.00, 'Unpaid'),
(15, 0.00, 'Paid'),
(16, 20.00, 'Paid'),
(17, 0.00, 'Paid'),
(18, 20.00, 'Unpaid'),
(19, 0.00, 'Paid'),
(20, 40.00, 'Unpaid');
