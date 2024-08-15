<cfinclude template="/learning-platform/includes/header.cfm">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Courses - Responsive Learning Platform</title>
    <link rel="stylesheet" href="styles/style.css">
</head>
<body>
    <main>
        <h1>Available Courses</h1>
        <ul id="courses-list">
            <!-- Example courses, this can be dynamically populated -->
            <li>Introduction to ColdFusion</li>
            <li>Responsive Web Design</li>
            <li>Advanced JavaScript Techniques</li>
        </ul>
    </main>
    <cfinclude template="/learning-platform/includes/footer.cfm">
    <script src="scripts/script.js"></script>
</body>
</html>
