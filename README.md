# TCS iON RIO-125: Understanding CAPTCHA
Created by: Aikansh karde

## Project Description

This project demonstrates how to implement a CAPTCHA validation system in a Java web application. The project consists of:
- A JSP page to display a form with CAPTCHA.
- Servlets to generate the CAPTCHA image and validate user input.
- Two HTML pages to indicate the success or failure of CAPTCHA validation.

## Software Requirements

- **Java Development Kit (JDK)**
  - Make sure you have JDK 8 or above installed.
- **Apache Tomcat**
  - Deploy the web application on an Apache Tomcat server (version 8.0 or version 9.0).
- **SimpleCaptcha library**
  - `simplecaptcha` library to generate CAPTCHA images(not compataible with Tomcat version 10.0 or above).

## Project Structure

- **Java Classes**
  - `ValidateCaptchaServlet.java`: Handles form submission and validates CAPTCHA input.
  - `CaptchaServlet.java`: Generates and serves the CAPTCHA image.
- **JSP**
  - `index.jsp`: The main page containing the form with CAPTCHA.
- **HTML**
  - `Success.html`: Page displayed upon successful CAPTCHA validation.
  - `Failed.html`: Page displayed upon failed CAPTCHA validation.
- **Configuration**
  - `web.xml`: Configures the servlets and URL mappings.

## Instructions

1. **Setup the Development Environment**
   - Install JDK and set up the environment variables.
   - Install Apache Tomcat and configure it for your project.

2. **Add SimpleCaptcha Library**
   - Download the `simplecaptcha` library JAR and add it to your project's `WEB-INF/lib` directory.

3. **Compile and Deploy the Project**
   - Compile your Java classes and ensure your project directory structure is correct.
   - Deploy the project to the webapps directory of your Tomcat server.

4. **Access the Application**
   - Start your Tomcat server and access the application via the URL:
     ```
     http://localhost:8080/Captcha/index.jsp
     ```
   -or
     ```
     http://localhost:8084/Captcha/index.jsp
     ```
