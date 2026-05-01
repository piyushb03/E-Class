<div align="center">
  <h1>🎓 E-Classes Platform</h1>
  <p>A full-stack, responsive e-learning platform built with PHP and MySQL.</p>
</div>

## 📖 Overview
**E-Classes** is a comprehensive educational platform designed to provide a seamless learning experience. Students can browse through various courses, register for an account, and enroll in classes covering topics like Web Development, Machine Learning, and Graphic Design.

The platform also features a secure administrative dashboard for managing the educational content and user access.

## ✨ Features
* **Student Portal:** Secure user registration and login workflows using prepared SQL statements to prevent injection attacks.
* **Course Catalog:** Dynamic fetching of available courses, descriptions, and pricing directly from the database.
* **Admin Dashboard:** A dedicated and secured portal for administrators to oversee the platform's operations.
* **Responsive Design:** Clean, dynamic, and mobile-friendly user interface.
* **Secure API Endpoints:** Dedicated backend endpoints handling AJAX requests for fluid, page-reload-free interactions.

## 🚀 Setup & Installation

The project is structured to run smoothly on any traditional local PHP server environment like **XAMPP**, **WAMP**, or **MAMP**.

### 1. Prerequisites
* Install [XAMPP](https://www.apachefriends.org/index.html) (or an equivalent local server).
* Ensure both **Apache** and **MySQL** modules are running from your control panel.

### 2. Local Installation
1. Clone this repository directly into your web server's public directory (`htdocs` for XAMPP, `www` for WAMP):
   ```bash
   cd C:\xampp\htdocs
   git clone https://github.com/piyushb03/E-Class.git
   ```

2. Open your web browser and navigate to `http://localhost/phpmyadmin`.
3. Create a new database named `EClasses`.
4. Select the `EClasses` database, go to the **Import** tab, and upload the `EClasses.sql` file provided in the root of this repository.

### 3. Database Configuration (Optional)
By default, the application expects a standard local MySQL setup (username: `root`, no password). If your local setup differs, update `dbConnection.php`:
```php
$db_hostname = "localhost";
$db_user = "your_username";
$db_password = "your_password";
$db_name = "EClasses";
```

### 4. Run the App
Navigate to `http://localhost/E-Class` in your browser. You are now ready to explore!

## 🌍 Production Deployment

To deploy this application to a live web host (e.g., HostGator, Hostinger, cPanel):
1. Zip the repository and upload it to your `public_html` directory via File Manager.
2. In cPanel, navigate to **MySQL Databases** and create a new database and user.
3. Import `EClasses.sql` into the new database via **phpMyAdmin**.
4. Update `dbConnection.php` with your live database credentials.

## 🛠️ Tech Stack
* **Frontend:** HTML5, CSS3, JavaScript (jQuery, SwiperJS)
* **Backend:** PHP (Vanilla)
* **Database:** MySQL
* **Icons & Fonts:** Unicons, Google Fonts (Montserrat)

## 🔒 Security
* Implemented parameterized queries (`mysqli_prepare`) in all authentication endpoints.
* Removed legacy structural dependencies and optimized asset loading via APIs (`pravatar.cc`, `placehold.co`).

---
<div align="center">
  <p>Built with ❤️ by Piyush</p>
</div>
