# library-database
Library Database Management System using SQL
# 📚 Library Database Management System

A SQL-based Library Database Management System designed to manage books, authors, library members, book issue/return records, and fines.

## 🎯 Project Objective

The main objective of this project is to design and implement a normalized relational database for managing library operations efficiently.

## 🗂️ Database Schema

The database contains the following tables:

1. Authors
2. Members
3. Books
4. Issues
5. Fines

## 🔗 Relationships

- One Author can write many Books.
- One Member can have many Issue records.
- One Book can have many Issue records over time.
- One Issue can generate zero or one Fine.

## 🔑 Primary and Foreign Keys

### Authors
- `author_id` — Primary Key

### Members
- `member_id` — Primary Key

### Books
- `book_id` — Primary Key
- `author_id` — Foreign Key → Authors(author_id)

### Issues
- `issue_id` — Primary Key
- `book_id` — Foreign Key → Books(book_id)
- `member_id` — Foreign Key → Members(member_id)

### Fines
- `fine_id` — Primary Key
- `issue_id` — Foreign Key → Issues(issue_id)

## 📊 ER Diagram

The complete ER diagram is available in:

`ER_DIAGRAM.md`

## 🧹 Normalization

### First Normal Form (1NF)

All attributes contain atomic values and there are no repeating groups.

### Second Normal Form (2NF)

All non-key attributes are fully dependent on their respective primary keys.

### Third Normal Form (3NF)

There are no transitive dependencies between non-key attributes. Author, Member, Book, Issue and Fine information is stored in separate tables.

### Deliberate Denormalization

`available_copies` in the Books table is maintained as a controlled denormalized value. It can be calculated from transaction records, but storing it makes book availability checks faster.

## 💻 SQL Features Demonstrated

This project demonstrates:

- CREATE DATABASE
- CREATE TABLE
- Primary Keys
- Foreign Keys
- INSERT
- SELECT
- JOIN
- GROUP BY
- HAVING
- Subquery
- VIEW
- TRIGGER

## 🔍 Queries

The following queries are included in `03_queries.sql`:

- Member and book information using JOIN
- Members who borrowed multiple books using GROUP BY and HAVING
- Books borrowed multiple times using a subquery
- Unpaid fines
- Most borrowed books
- Total fines
- Fine summary
- Member issue count

## 👁️ View

A view named `library_issue_details` is created to display complete issue information including:

- Member name
- Email
- Book title
- Author
- Category
- Issue date
- Return date
- Status

## ⚡ Trigger

The project includes a trigger named:

`calculate_fine_after_return`

The trigger automatically calculates a fine when a book is returned late.

The fine rate is:

**₹10 per late day**

after the allowed 14-day borrowing period.

## 📦 Sample Data

The project contains sample data for testing:

- 20 Authors
- 20 Members
- 20 Books
- 20 Issue records
- 20 Fine records

## ▶️ How to Run

Run the SQL files in the following order:

```text
1. 01_schema.sql
2. 02_sample_data.sql
3. 03_queries.sql
4. 04_view.sql
5. 05_trigger.sql
