<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="index"/>
    <title>Book Store Home</title>
    <asset:stylesheet src="application.css"/>
    <asset:stylesheet src="myStyles.css"/>
    <!-- Add some Bootstrap for responsiveness and styles -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="#">Book Store</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName }}">
                    <li class="nav-item mx-2">
                        <g:link controller="${c.logicalPropertyName}" class="nav-link">
                            ${c.fullName.tokenize('.')[-1].replaceAll('Controller$', '')}
                        </g:link>
                    </li>
                </g:each>
            </ul>
        </div>
    </div>
</nav>


    <!-- Featured Books Section -->
    <section id="books" class="container my-5">
        <h2 class="text-center mb-4">Featured Books</h2>
        <div class="row">
            <!-- Dynamically render books from the BooksController -->
            <g:each var="book" in="${books}">
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">${book.title}</h5>
                            <p class="card-text">${book.description}</p>
                            <a href="#" class="btn btn-primary">View Details</a>
                        </div>
                    </div>
                </div>
            </g:each>
        </div>
    </section>

    <!-- Authors Section -->
    <section id="authors" class="bg-light py-5">
        <div class="container">
            <h2 class="text-center mb-4">Featured Authors</h2>
            <div class="row">
                <!-- Dynamically render authors from the AuthorsController -->
                <g:each var="author" in="${authors}">
                    <div class="col-md-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">${author.name}</h5>
                                <a href="#" class="btn btn-primary">View Books</a>
                            </div>
                        </div>
                    </div>
                </g:each>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="bg-dark text-white text-center py-4">
        <p>&copy; 2025 Book Store. All Rights Reserved.</p>
    </footer>

</body>
</html>
