<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>

<header>
    <h1>Elderly Care Center</h1>
    <nav>
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="basket.jsp">Basket</a></li>
        </ul>
    </nav>
</header>

<main>
    <h2>Contact Us</h2>

    <p>For inquiries or assistance, please fill out the form below:</p>

    <form action="submit_contact.jsp" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required><br>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br>

        <label for="message">Message:</label>
        <textarea id="message" name="message" rows="4" required></textarea><br>

        <button type="submit">Send Message</button>
    </form>
</main>

<footer>
    <p>&copy; 2024 Elderly Care Center | <a href="index.jsp">Home</a> | <a href="basket.jsp">Basket</a></p>
</footer>

</body>
</html>

