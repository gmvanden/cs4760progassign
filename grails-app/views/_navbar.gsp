<!DOCTYPE html>
<nav class="navbar navbar-expand-md navbar-dark bg-primary shadow-sm">
    <!-- Branding -->
    <a class="navbar-brand" href="/${grails.util.Metadata.current.getApplicationName()}">
        <i class="fas fa-book"></i> Book Store
    </a>

    <!-- Hamburger button for toggling -->
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <!-- Collapsible menu -->
    <div class="collapse navbar-collapse" id="navbarNav">
        <!-- Navigation links -->
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <g:link class="nav-link" controller="Books">
                    <i class="fas fa-book-open"></i> Books
                </g:link>
            </li>
            <li class="nav-item">
                <g:link class="nav-link" controller="Authors">
                    <i class="fas fa-user"></i> Authors
                </g:link>
            </li>
            <li class="nav-item">
                <g:link class="nav-link" controller="Book">
                    <i class="fas fa-book-open"></i> Add Book
                </g:link>
            </li>
            <li class="nav-item">
                <g:link class="nav-link" controller="Author">
                    <i class="fas fa-user"></i> Add Authors
                </g:link>
            </li>
        </ul>
    </div>
</nav>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Font Awesome CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">

<!-- Optional: Bootstrap JS (for responsive toggling) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
