<cfinclude template="/learning-platform/includes/header.cfm">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register - Responsive Learning Platform</title>
    <link rel="stylesheet" href="styles/style.css">
</head>
<body>
    <main>
        <h1>Register</h1>
        <form action="register.cfm" method="post" id="register-form">
    <label for="username">Username:</label>
    <input type="text" id="username" name="username" required>
    <label for="password">Password:</label>
    <input type="password" id="password" name="password" required>
    <button type="submit">Register</button>
</form>

        <cfif isDefined("form.username")>
            <cfset result = createObject("component", "User").registerUser(form.username, form.password)>
            <cfif result>
                <p>Registration successful! You can now <a href="login.cfm">log in</a>.</p>
            <cfelse>
                <p>Registration failed. Please try again.</p>
            </cfif>
        </cfif>
    </main>
    <cfinclude template="/learning-platform/includes/footer.cfm">
    <script src="scripts/script.js"></script>
</body>
</html>