package cs4760progassign
import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class BooksController {

    def index() {
        def books = Book.list() // Assuming Book is a domain class
        render(view: "index", model: [books: books])
    }
}
