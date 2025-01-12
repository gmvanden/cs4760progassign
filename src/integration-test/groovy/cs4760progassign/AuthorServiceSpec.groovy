package cs4760progassign

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import grails.*
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class AuthorServiceSpec extends Specification {

    AuthorService authorService
    SessionFactory sessionFactory

    private Long setupData() {

        Author author1 = new Author(name: "J.R.R. Tolkien").save(flush: true, failOnError: true)
        Author author2 = new Author(name: "George Orwell").save(flush: true, failOnError: true)
        Author author3 = new Author(name: "J.K. Rowling").save(flush: true, failOnError: true)
        Author author4 = new Author(name: "Isaac Asimov").save(flush: true, failOnError: true)
        Author author5 = new Author(name: "Agatha Christie").save(flush: true, failOnError: true)
        
        return author1.id
    }

    void "test get"() {
        setupData()

        expect:
        authorService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Author> authorList = authorService.list(max: 2, offset: 2)

        then:
        authorList.size() == 2
        authorList.get(0).name == "J.K. Rowling"
        authorList.get(1).name == "Isaac Asimov"
    }

    void "test count"() {
        setupData()

        when:
        // Retrieve all authors using the service's list method
        List<Author> authorList = authorService.list()

        then:
        // Log each author's name and other relevant information
        authorList.each { author ->
            println "Author: ${author.name}, ID: ${author.id}"
        }

        // Verify the count of authors is as expected (5 in this case)
        authorService.count() == 5
    }


    void "test delete"() {
        Long authorId = setupData()

        expect:
        authorService.count() == 5

        when:
        authorService.delete(authorId)
        sessionFactory.currentSession.flush()

        then:
        authorService.count() == 4
    }

    void "test save"() {
        when:
        Author author = new Author(name: "Mark Twain")
        authorService.save(author)

        then:
        author.id != null
    }
}
