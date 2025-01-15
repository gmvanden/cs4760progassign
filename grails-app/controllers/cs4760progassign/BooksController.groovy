package cs4760progassign
class BooksController {

    def index() {
        def books = Book.list() // Assuming Book is a domain class
        render(view: "index", model: [books: books])
    }
}
