package cs4760progassign

import grails.testing.gorm.DomainUnitTest
import spock.lang.Specification
import grails.gorm.transactions.Rollback

@Rollback
class AuthorSpec extends Specification implements DomainUnitTest<Author> {

    def setup() {
        // Setup any common test data or configurations here
        Author.withNewTransaction {
            new Author(name: "J.K. Rowling").save(failOnError: true)
        }
    }

    def cleanup() {
        // Cleanup any data created during tests
        Author.deleteAll()
    }

    void "test author creation"() {
        when: "A new Author is created"
        def author = new Author(name: "George R.R. Martin")
        author.save(failOnError: true)

        then: "The author should be saved successfully"
        Author.count() == 2
        Author.findByName("George R.R. Martin") != null
    }
}
