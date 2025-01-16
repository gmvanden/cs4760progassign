<!doctype html>
<html lang="en" class="no-js">
<head>
    <!-- Meta Information -->
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- Favicon -->
    <asset:link rel="icon" href="favicon.ico" type="image/x-icon" />

    <!-- Stylesheets -->
    <asset:stylesheet src="application.css" />

    <!-- Dynamic Head Content -->
    <g:layoutHead />
</head>

<body>
    <!-- Navbar -->
    <div id="navbar">
        <g:render template="/navbar" />
    </div>

    <!-- Main Content -->
    <main role="main">
        <g:layoutBody />
    </main>

    <!-- Scripts -->
    <asset:javascript src="application.js" />
</body>
</html>
