<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="site" />
    <title>Book Store Books</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f9f9f9;
        }
        h1 {
            color: #333;
            text-align: center;
        }
        ul {
            list-style-type: none;
            padding: 0;
        }
        li {
            background-color: #fff;
            margin: 5px 0;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        li:hover {
            background-color: #f0f0f0;
        }
    </style>
</head>

<body>
    <h1>Books Available in Our Store</h1>
    <ul>
        <g:each in="${bkList}" var="book">
            <li>${book.title} by ${book.author}</li>
        </g:each>
    </ul>
</body>
</html>
