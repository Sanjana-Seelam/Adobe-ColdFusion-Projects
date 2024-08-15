<!DOCTYPE html>
<html>
<head>
    <title>Result Page</title>
</head>
<body>
    <h1>Form Submission Result</h1>
    <cfif structKeyExists(form, "name")>
        <p>Hello, <cfoutput>#htmlEditFormat(form.name)#</cfoutput>!</p>
    <cfelse>
        <p>No data submitted.</p>
    </cfif>
    <a href="index.cfm">Go Back</a>
</body>
</html>