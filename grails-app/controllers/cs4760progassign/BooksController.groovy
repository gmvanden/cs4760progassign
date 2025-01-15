package cs4760progassign

class BooksController {

    static final boolean debugIndex = true

    def index() {
        // Book.listOrderByTitle() gets all Book instances from the database and puts them in a list.
        def bks = Book.listOrderByTitle()
        
        // Debugging output for the list of books
        if (debugIndex) {
            println ""
            bks.each { println it.title + " by " + Author.get(it.authorId).name }
        }

        // Make a list of all books' titles and authors
        def bkList = []
        for (int i = 0; i < bks.size(); i++) {
            def bkAuthor = [:]
            bkAuthor.put('title', bks[i].title)
            bkAuthor.put('author', Author.get(bks[i].authorId).name)
            bkList << bkAuthor
        }

        // Debugging output for the list of books and authors
        if (debugIndex) {
            println " "
            println bkList
        }

        // Render the books list view with the model
        render view: "/books/index", model: [bkList: bkList]
    }
}
