# Library Management System (MySQL)

## 📌 Project Overview
This is a Database Management System (DBMS) project developed using MySQL. It is designed to automate and manage the daily operations of a library, replacing traditional manual record-keeping with an efficient, relational database solution.

## 🎯 Key Features (Modules)
The system is divided into the following main modules:
*   **Category Management:** Manage book categories (e.g., Programming, Science, Novels).
*   **Book Management:** Store and update book details including Title, Author, Language, and Published Year.
*   **Member Management:** Register new members and maintain their personal details.
*   **Librarian Management:** Manage librarian details and system access.
*   **Issue and Return Management:** Track which books are issued to which member, issue dates, and return dates.

## 🗄️ Database Structure (Tables)
The database (`library_management`) consists of 5 main tables:
1.  `category` - Stores category IDs and names.
2.  `book` - Stores book details and links to categories.
3.  `member` - Stores library member information.
4.  `librarian` - Stores librarian information.
5.  `issue` - Tracks issued and returned books, linking books, members, and librarians.

*(Refer to the ER Diagram in the repository for visual representation).*

## 🛠️ Technologies Used
*   **MySQL** (Database Engine)
*   **phpMyAdmin** (Database Management Tool)
*   **SQL** (Structured Query Language)

## 🚀 How to Use
1.  Download the `library_management.sql` file from this repository.
2.  Open **phpMyAdmin** or **MySQL Workbench**.
3.  Create a new database named `library_management`.
4.  Import the downloaded `.sql` file to create the tables and insert sample data.
5.  You can now execute SQL queries to interact with the library data.

## 👨‍💻 Author
*   **U.G.J. Prarthana** (Jayani) - [Jayani0612](https://github.com/Jayani0612)
