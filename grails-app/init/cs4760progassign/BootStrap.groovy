package cs4760progassign

class BootStrap {

    def init = { servletContext ->
        // Create and save Stephen King with books
        def stephenKing = new Author(name: "Stephen King")
        stephenKing.addToBooks(new Book(title: "The Stand", publishYear: 1978))
        stephenKing.addToBooks(new Book(title: "The Shining", publishYear: 1977))
        stephenKing.addToBooks(new Book(title: "IT", publishYear: 1986)) // Adding another book for Stephen King
        stephenKing.save()

        // Create and save Mark Twain with books
        def markTwain = new Author(name: "Mark Twain")
        markTwain.addToBooks(new Book(title: "Tom Sawyer", publishYear: 1876))
        markTwain.addToBooks(new Book(title: "Huckleberry Finn", publishYear: 1884))
        markTwain.addToBooks(new Book(title: "The Prince and the Pauper", publishYear: 1881)) // Another book for Mark Twain
        markTwain.save()

        // Create and save J.K. Rowling with books
        def jkRowling = new Author(name: "J.K. Rowling")
        jkRowling.addToBooks(new Book(title: "Harry Potter and the Sorcerer's Stone", publishYear: 1997))
        jkRowling.addToBooks(new Book(title: "Harry Potter and the Chamber of Secrets", publishYear: 1998))
        jkRowling.addToBooks(new Book(title: "Harry Potter and the Prisoner of Azkaban", publishYear: 1999)) // Another book for J.K. Rowling
        jkRowling.save()

        // Create and save George Orwell with books
        def georgeOrwell = new Author(name: "George Orwell")
        georgeOrwell.addToBooks(new Book(title: "1984", publishYear: 1949))
        georgeOrwell.addToBooks(new Book(title: "Animal Farm", publishYear: 1945))
        georgeOrwell.addToBooks(new Book(title: "Homage to Catalonia", publishYear: 1938)) // Another book for George Orwell
        georgeOrwell.save()

        // Create and save Harper Lee with books
        def harperLee = new Author(name: "Harper Lee")
        harperLee.addToBooks(new Book(title: "To Kill a Mockingbird", publishYear: 1960))
        harperLee.addToBooks(new Book(title: "Go Set a Watchman", publishYear: 2015)) // Another book for Harper Lee
        harperLee.save()
    }

    def destroy = {
    }
}