# 🎓 Student Course Management System – SQL Project

This is a simple and professional **SQL database project** designed to simulate a university's student, course, and professor management system. It includes table definitions, sample data insertion, and common SQL queries for analysis and reporting.

---

## 📁 Project Structure

| File Name            | Purpose                            |
|----------------------|-------------------------------------|
| `create_database.sql`| Creates database schema and tables  |
| `insert_data.sql`    | Inserts sample data                 |
| `queries.sql`        | Contains example SELECT queries     |

---

## 🗄️ Database Schema

This project uses the following tables:

- **Students**: Stores student details (ID, name, major)
- **Courses**: Stores course details (ID, name, credits)
- **Professors**: Stores professor information
- **Course_Professors**: Many-to-many relationship between courses and professors
- **Enrollments**: Many-to-many relationship between students and courses with grades

---

## 🛠️ How to Run

1. **Open MySQL Workbench** (or any MySQL client)
2. Run `create_database.sql` to create the schema and tables
3. Run `insert_data.sql` to insert sample records
4. Run `queries.sql` to test queries and view results

> 💡 Ensure MySQL server is running and user has permissions to create databases

---

## 📊 Sample Queries

- List all students and their enrolled courses with grades
- Display all students who scored 'A'
- Show which professor teaches which course
- Count total students per course

---

## 🔧 Technologies Used

- **MySQL 8+**
- SQL DDL & DML Commands
- Relational Database Design

---

## 🚀 Future Enhancements

- Add stored procedures for registration
- Create a frontend using Python Flask or PHP
- Export data to dashboards (Power BI, Tableau)

---

## 📌 Author

**Poojith**  
SQL Developer & Student at CBIT  
📧 [poojith1914@gmail.com](mailto:poojith1914@gmail.com)

---

## 📜 License

This project is open source and free to use for learning and academic purposes.
