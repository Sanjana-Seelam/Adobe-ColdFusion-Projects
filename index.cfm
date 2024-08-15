<cfinclude template="UserProfile.cfc">

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profiles</title>
    <style>
        body { 
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; 
            background-color: #f4f4f4; 
            margin: 0; 
            padding: 0; 
            display: flex; 
            justify-content: center; 
            align-items: center; 
            min-height: 100vh;
        }
        .container {
            width: 90%;
            max-width: 800px;
            margin: 20px auto;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            overflow: hidden;
        }
        h1 {
            text-align: center;
            color: #333;
            padding: 20px;
            background-color: #0073e6;
            color: #fff;
            margin: 0;
        }
        table { 
            width: 100%; 
            border-collapse: collapse; 
        }
        th, td { 
            padding: 12px 15px; 
            text-align: left; 
            border-bottom: 1px solid #ddd; 
        }
        th { 
            background-color: #0073e6; 
            color: #fff; 
        }
        tr:hover { 
            background-color: #f1f1f1; 
            transition: background-color 0.3s ease; 
        }
        td { 
            color: #555; 
        }
        p { 
            text-align: center; 
            padding: 20px; 
            color: #555; 
        }
        @media screen and (max-width: 600px) {
            table, th, td { 
                font-size: 14px; 
            }
            th, td {
                padding: 10px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>User Profiles</h1>
        <cfset userProfile = []> <!--- Initialize the variable --->

        <cftry>
            <!--- Create an instance of the UserProfile CFC --->
            <cfset profileComponent = createObject("component", "UserProfile")>

            <!--- Fetch user profiles --->
            <cfset userProfile = profileComponent.getAllProfiles()>

            <cfcatch type="any">
                <cfoutput>An error occurred: #cfcatch.message#</cfoutput>
            </cfcatch>
        </cftry>

        <cfif arrayLen(userProfile) GT 0>
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Age</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Use cfoutput within cfloop to evaluate the expressions -->
                    <cfloop array="#userProfile#" index="user">
                        <cfoutput>
                        <tr>
                            <td>#user.id#</td>
                            <td>#user.name#</td>
                            <td>#user.email#</td>
                            <td>#user.age#</td>
                        </tr>
                        </cfoutput>
                    </cfloop>
                </tbody>
            </table>
        <cfelse>
            <p>No user profiles available.</p>
        </cfif>
    </div>
</body>
</html>

