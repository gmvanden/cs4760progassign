package cs4760progassign
class AuthorsController {

    def index() {
        def authors = Author.list() // Assuming Author is a domain class
        render(view: "index", model: [authors: authors])
    }
}
