package cs4760progassign

class Author {

    String name

    static hasMany = [books: Book]

    static constraints = {
        name nullable: false, blank: false, maxSize: 255
    }

    //String toString() {
       // String returnable = "${name}\nBooks:\n"
       // books?.each { book ->
         //   returnable += "- ${book.title} (${book.publishYear})\n"
       // }
      //  return returnable
    //}

    String toString(){
        "${name}"
    }
}

