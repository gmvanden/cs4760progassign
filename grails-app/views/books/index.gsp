<!DOCTYPE html>
<html>
<head>
    <style>
        /* General Styles */
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }

        #navbar {
            background-color: #333;
            padding: 10px 0;
        }

        #navbar a {
            color: white;
            text-decoration: none;
            margin: 0 15px;
            font-size: 16px;
        }

        #navbar a:hover {
            text-decoration: underline;
        }

        /* Content Container */
        #content {
            padding: 30px 0;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
        }

        h1 {
            font-size: 2.5em;
            margin-bottom: 20px;
            color: #333;
        }

        /* Flash Message Styles */
        .message {
            background-color: #f8d7da;
            color: #721c24;
            padding: 15px;
            border-radius: 5px;
            margin-bottom: 30px;
            font-weight: bold;
        }

        /* Book List Styling */
        .book-list {
            display: flex;
            flex-wrap: wrap;
            gap: 30px;
        }

        .book-item {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 30%;
            min-width: 250px;
        }

        .book-title {
            font-size: 1.8em;
            font-weight: bold;
            color: #333;
            margin-bottom: 15px;
        }

        .book-details {
            list-style-type: none;
            padding-left: 0;
            font-size: 1.1em;
        }

        .book-details li {
            margin-bottom: 8px;
        }

        .book-item strong {
            color: #555;
        }

        /* Pagination Styling */
        .pagination {
            display: flex;
            justify-content: center;
            margin-top: 40px;
        }

        .pagination a {
            background-color: #3498db;
            color: white;
            padding: 10px 15px;
            margin: 0 5px;
            text-decoration: none;
            border-radius: 5px;
        }

        .pagination a:hover {
            background-color: #2980b9;
        }

        /* Media Queries for Responsiveness */
        @media (max-width: 768px) {
            .book-item {
                width: 48%;
            }
        }

        @media (max-width: 480px) {
            .book-item {
                width: 100%;
            }
        }
    </style>
    <!-- Adding Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
</head>
<body>
    <div id="navbar">
        <g:render template="/navbar" />
    </div>

    <div id="content" role="main">
        <div class="container">
            <section class="row">
                <div id="list-book" class="col-12 content scaffold-list" role="main">
                    <h1>Books List</h1>

                    <!-- Display Flash Messages -->
                    <g:if test="${flash.message}">
                        <div class="message" role="status">${flash.message}</div>
                    </g:if>

                    <!-- Book List -->
                    <div class="book-list">
                        <g:each in="${bookList}" var="book">
                            <div class="book-item">
                                <p class="book-title">${book.title}</p>

                                <!-- Book Details -->
                                <ul class="book-details">
                                    <li><strong>Year:</strong> ${book.publishYear}</li>
                                    <li><strong>Author:</strong> ${book.author?.name}</li>
                                </ul>
                            </div>
                        </g:each>
                    </div>

                    <!-- Pagination -->
                    <g:if test="${bookCount > params.int('max')}">
                        <div class="pagination">
                            <g:paginate total="${bookCount ?: 0}" />
                        </div>
                    </g:if>
                </div>
            </section>
        </div>
    </div>
</body>
</html>