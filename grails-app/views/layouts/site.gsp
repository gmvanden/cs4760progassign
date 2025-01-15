<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="site"/>
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
                    <li class="nav-item active">
                        <a class="nav-link" href="#books">Books</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#authors">Authors</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#purchase">Purchase</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <div class="jumbotron jumb-margin">
        <div class="container">
            <h1 class="display-4">Welcome to Our Book Store!</h1>
            <p class="lead">Explore a world of books, authors, and the joy of reading. Find your next great read or gift for someone special!</p>
            <a class="btn btn-primary btn-lg" href="#books" role="button">Shop Now</a>
        </div>
    </div>

    <!-- Featured Books Section -->
    <section id="books" class="container my-5">
        <h2 class="text-center mb-4">Featured Books</h2>
        <div class="row">
            <!-- Example Book 1 -->
            <div class="col-md-4">
                <div class="card">
                    <img src="book1.jpg" class="card-img-top" alt="Book 1">
                    <div class="card-body">
                        <h5 class="card-title">The Great Gatsby</h5>
                        <p class="card-text">A classic novel of the Jazz Age, full of wealth, glamour, and tragedy.</p>
                        <a href="#" class="btn btn-primary">View Details</a>
                        <a href="#" class="btn btn-success">Buy Now</a>
                    </div>
                </div>
            </div>
            <!-- Example Book 2 -->
            <div class="col-md-4">
                <div class="card">
                    <img src="book2.jpg" class="card-img-top" alt="Book 2">
                    <div class="card-body">
                        <h5 class="card-title">1984</h5>
                        <p class="card-text">A dystopian novel set in a totalitarian society controlled by Big Brother.</p>
                        <a href="#" class="btn btn-primary">View Details</a>
                        <a href="#" class="btn btn-success">Buy Now</a>
                    </div>
                </div>
            </div>
            <!-- Example Book 3 -->
            <div class="col-md-4">
                <div class="card">
                    <img src="book3.jpg" class="card-img-top" alt="Book 3">
                    <div class="card-body">
                        <h5 class="card-title">To Kill a Mockingbird</h5>
                        <p class="card-text">A gripping, heart-wrenching story of racial inequality and justice in the Deep South.</p>
                        <a href="#" class="btn btn-primary">View Details</a>
                        <a href="#" class="btn btn-success">Buy Now</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Authors Section -->
    <section id="authors" class="bg-light py-5">
        <div class="container">
            <h2 class="text-center mb-4">Featured Authors</h2>
            <div class="row">
                <!-- Example Author 1 -->
                <div class="col-md-4">
                    <div class="card">
                        <img src="author1.jpg" class="card-img-top" alt="Author 1">
                        <div class="card-body">
                            <h5 class="card-title">F. Scott Fitzgerald</h5>
                            <p class="card-text">The author of The Great Gatsby and one of the great American novelists.</p>
                            <a href="#" class="btn btn-primary">View Books</a>
                        </div>
                    </div>
                </div>
                <!-- Example Author 2 -->
                <div class="col-md-4">
                    <div class="card">
                        <img src="author2.jpg" class="card-img-top" alt="Author 2">
                        <div class="card-body">
                            <h5 class="card-title">George Orwell</h5>
                            <p class="card-text">A British writer and journalist best known for his novels 1984 and Animal Farm.</p>
                            <a href="#" class="btn btn-primary">View Books</a>
                        </div>
                    </div>
                </div>
                <!-- Example Author 3 -->
                <div class="col-md-4">
                    <div class="card">
                        <img src="author3.jpg" class="card-img-top" alt="Author 3">
                        <div class="card-body">
                            <h5 class="card-title">Harper Lee</h5>
                            <p class="card-text">An American novelist, best known for her Pulitzer Prize-winning novel To Kill a Mockingbird.</p>
                            <a href="#" class="btn btn-primary">View Books</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Purchase Section -->
    <section id="purchase" class="container my-5">
        <h2 class="text-center mb-4">How Would You Like to Buy?</h2>
        <div class="row">
            <div class="col-md-6">
                <h4>Buy by Book</h4>
                <p>Browse and purchase individual books from our vast collection. Whether you're looking for a classic or the latest bestseller, we've got you covered!</p>
                <a href="#" class="btn btn-warning">Browse Books</a>
            </div>
            <div class="col-md-6">
                <h4>Buy by Author</h4>
                <p>Love a particular author? Browse all of their works and find the perfect book to add to your collection.</p>
                <a href="#" class="btn btn-warning">Browse Authors</a>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="bg-dark text-white text-center py-4">
        <p>&copy; 2025 Book Store. All Rights Reserved.</p>
        <p><g:link controller="controllerList">Go to ControllerList</g:link></p>
    </footer>

</body>
</html>