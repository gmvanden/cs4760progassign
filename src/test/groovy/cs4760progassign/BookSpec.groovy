package cs4760progassign

import grails.testing.gorm.DomainUnitTest
import spock.lang.Specification
import grails.gorm.transactions.Rollback

@Rollback
class BookSpec extends Specification implements DomainUnitTest<Book> {

   def setup() {
        // Create a valid Author instance before setting up test data
        def author = new Author(name: "J.R.R. Tolkien").save(failOnError: true)
        assert author != null, "Author should not be null"

        Book.withNewTransaction {
            new Book(title: "The Hobbit", author: author, publishYear: 1937).save(failOnError: true)
        }
    }


    def cleanup() {
        // Clean up test data
        Book.deleteAll()
    }

    void "test book creation"() {
    given: "A valid Author instance"
    def author = new Author(name: "George Orwell").save(failOnError: true)

    when: "A new Book is created"
    def book = new Book(title: "1984", author: author, publishYear: 1949)
    book.save(failOnError: true)

    then: "The book should be saved successfully"
    Book.count() == 2
    Book.findByTitle("1984") != null
    Book.findByTitle("1984").author.name == "George Orwell"
    Book.findByTitle("1984").publishYear == 1949
}

}
