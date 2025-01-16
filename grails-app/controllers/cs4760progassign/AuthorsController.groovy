package cs4760progassign
import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class AuthorsController {

    def index() {
        def authors = Author.list() // Assuming Author is a domain class
        render(view: "index", model: [authors: authors])
    }
}
