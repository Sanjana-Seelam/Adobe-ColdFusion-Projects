<cfinclude template="/learning-platform/includes/header.cfm">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Responsive Learning Platform</title>
    <link rel="stylesheet" href="styles/style.css">
</head>
<body>
    <main>
        <h1>Login</h1>
        <form action="login.cfm" method="post" id="login-form">
    <label for="username">Username:</label>
    <input type="text" id="username" name="username" required>
    <label for="password">Password:</label>
    <input type="password" id="password" name="password" required>
    <button type="submit">Login</button>
</form>

        <cfif isDefined("form.username")>
            <cfset user = createObject("component", "User").validateUser(form.username, form.password)>
            <cfif user neq false>
                <p>Login successful! Welcome, #user.username#.</p>
            <cfelse>
                <p>Invalid username or password.</p>
            </cfif>
        </cfif>
    </main>
    <cfinclude template="/learning-platform/includes/footer.cfm">
    <script src="scripts/script.js"></script>
</body>
</html>
