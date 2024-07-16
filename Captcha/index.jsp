<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>CAPTCHA</title>
    <style>
        .center-box {
            width: 300px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .center-box label, .center-box input {
            display: block;
            width: 100%;
            margin-bottom: 10px;
        }
        .center-box button {
            width: 100%;
        }
        .captcha-img {
            display: block;
            margin: 0 auto 10px;
        }
    </style>
</head>
<body>
    <div class="center-box">
        <form action="validate" method="post">
            <label for="field1">Name:</label>
            <input type="text" id="Name" name="Name" required>
            
            <label for="field2">Number:</label>
            <input type="text" id="Number" name="Number" required>
            
            <label for="captcha">Enter CAPTCHA:</label>
            <img src="captcha" alt="CAPTCHA Image" class="captcha-img"/>
            <input type="text" id="captcha" name="captcha" required>
            
            <button type="button" onclick="refreshCaptcha()">Refresh CAPTCHA</button>
            <button type="submit">Submit</button>
        </form>
    </div>

    <script>
        function refreshCaptcha() {
            const captchaImg = document.querySelector('.captcha-img');
            captchaImg.src = 'captcha?' + new Date().getTime();
        }
    </script>
</body>
</html>
