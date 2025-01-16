package cs4760progassign

class AuthorsController {

    def index() {
        // Fetch authors with their associated books (eager loading)
        def authors = Author.list([fetch: [books: 'join']]) // Eagerly load books
        
        // Remove duplicate authors by making sure to only return unique authors
        authors = authors.unique()

        // Render the view with the unique authors list
        render(view: "index", model: [authors: authors])
    }
}
