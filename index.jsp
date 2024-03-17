<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Elderly Care Center</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <script>
        function showEmailPopup() {
            var emailPopup = document.getElementById('emailPopup');
            emailPopup.style.display = 'block';
        }

        function showBookingPopup() {
            var bookingPopup = document.getElementById('bookingPopup');
            bookingPopup.style.display = 'block';
        }

        function submitBooking() {
            var name = document.getElementById('bookingName').value;
            var email = document.getElementById('bookingEmail').value;
            var time = document.getElementById('bookingTime').value;
            var carer = document.getElementById('bookingCarer').value;

            var xhr = new XMLHttpRequest();
    
            xhr.open('POST', 'book', true); // Assuming 'book' is the URL mapping for the servlet
    
            xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');

            xhr.onreadystatechange = function() {
                if (xhr.readyState == XMLHttpRequest.DONE) {
                    if (xhr.status == 200) {
                        alert('Booking submitted successfully!');
                        closePopup('bookingPopup');
                    } else {
                        alert('Error: ' + xhr.responseText);
                    }
                }
            };

            var formData = 'name=' + encodeURIComponent(name) +
               '&email=' + encodeURIComponent(email) +
               '&time=' + encodeURIComponent(time) +
               '&carer=' + encodeURIComponent(carer);

            xhr.send(formData);

            return false;
        }

        function closePopup(id) {
            document.getElementById(id).style.display = 'none';
        }
    </script>
</head>
<body>

<header>
    <h1>Elderly Care Center</h1>
    <nav>
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="basket.jsp">Basket</a></li>
            <li><a href="contact.jsp">Contact</a></li>
        </ul>
    </nav>
</header>

<main>
    <!-- Carer Booking System -->
    <div class="carer-booking">
        <h2>Book a Meeting with a Carer</h2>
        <button onclick="showBookingPopup()">Book Now</button>
    </div>

    <!-- Mini Store -->
    <div class="mini-store">
        <h2>Medication for Elderly</h2>
        <div id="medication-listings">
            <!-- Medication listings will be dynamically added here -->
            <div class="medication-item">
                <h3>Aspirin</h3>
                <p>Pain reliever and fever reducer</p>
                <p>Price: £5.99 per bottle</p>
            </div>
            <div class="medication-item">
                <h3>Blood Pressure Medication</h3>
                <p>Controls high blood pressure</p>
                <p>Price: £12.49 per pack</p>
            </div>
            <div class="medication-item">
                <h3>Calcium Supplements</h3>
                <p>Strengthens bones and prevents osteoporosis</p>
                <p>Price: £8.99 per bottle</p>
            </div>
            <div class="medication-item">
                <h3>Vitamin D Supplements</h3>
                <p>Helps maintain bone health and immune system</p>
                <p>Price: £6.99 per bottle</p>
            </div>
            <div class="medication-item">
                <h3>Eye Drops</h3>
                <p>Relieves dry eyes and irritation</p>
                <p>Price: £4.29 per bottle</p>
            </div>
        </div>
    </div>

    <!-- Reminder for Rebuying Products -->
    <div class="reminder">
        <h2>Product Rebuy Reminder</h2>
        <p>Don't forget to check your stock and reorder if needed!</p>
    </div>

    <!-- Email Subscription Popup -->
    <div id="emailPopup" class="popup">
        <div class="popup-content">
            <span class="close" onclick="closePopup('emailPopup')">&times;</span>
            <h3>Subscribe for Special Offers</h3>
            <form onsubmit="submitEmail(); return false;">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
                <button type="submit">Subscribe</button>
            </form>
        </div>
    </div>

    <!-- Booking Popup -->
    <div id="bookingPopup" class="popup">
        <div class="popup-content">
            <span class="close" onclick="closePopup('bookingPopup')">&times;</span>
            <h3>Book a Meeting with a Carer</h3>
            <form onsubmit="submitBooking(); return false;">
                <label for="name">Name:</label>
                <input type="text" id="bookingName" name="name" required><br>
                <label for="email">Email:</label>
                <input type="email" id="bookingEmail" name="email" required><br>
                <label for="time">Preferred Time:</label>
                <input type="datetime-local" id="bookingTime" name="time" required><br>
                <label for="carer">Select Carer:</label>
                <select id="bookingCarer" name="carer" required>
                    <option value="Karen Smith">Carer 1</option>
                    <option value="John Kane">Carer 2</option>
                    <option value="Sebastian Johnson">Carer 3</option>
                    <option value="Lola Williams">Carer 4</option>
                </select><br>
                <button type="submit">Book</button>
            </form>
        </div>
    </div>
</main>

<footer>
    <p>&copy; 2024 Elderly Care Center | <a href="index.jsp">Home</a> | <a href="basket.jsp">Basket</a> | <a href="contact.jsp">Contact</a> 
</footer>

</body>
</html>


