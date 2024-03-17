<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Basket</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>

<header>
    <h1>Elderly Care Center</h1>
    <nav>
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="contact.jsp">Contact</a></li>
        </ul>
    </nav>
</header>

<main>
    <h2>Your Basket</h2>

    <div id="basket-items">
        <!-- Display basket items dynamically here -->
        <%-- Example item --%>
        <div class="basket-item">
            <h3>Product Name</h3>
            <p>Description: Lorem ipsum dolor sit amet</p>
            <p>Price: $9.99</p>
        </div>
    </div>

    <div id="total-price">
        <!-- Display total price dynamically here -->
        <p>Total: $9.99</p>
    </div>

    <button onclick="checkout()">Checkout</button>
</main>

<footer>
    <p>&copy; 2024 Elderly Care Center | <a href="index.jsp">Home</a> | <a href="contact.jsp">Contact</a></p>
</footer>

<script>
    // Function to handle checkout process
    function checkout() {
        // Redirect to checkout page
        window.location.href = "checkout.jsp";
    }
</script>

</body>
</html>

