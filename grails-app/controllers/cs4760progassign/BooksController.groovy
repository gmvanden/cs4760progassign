package cs4760progassign

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class BooksController {

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        def bookList = Book.list(params)
        def bookCount = Book.count()
        render(view: "index", model: [bookList: bookList, bookCount: bookCount])
    }
}
