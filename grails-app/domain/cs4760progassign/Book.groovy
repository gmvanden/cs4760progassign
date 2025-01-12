package cs4760progassign

class Book {

    String title
    Integer publishYear
    Author author // Domain relationship


    static constraints = {
        title nullable: false, blank: false, maxSize: 255
        author nullable: false
        publishYear nullable: false// Assuming no negative years are allowed
    }

    //String toString() {
      //  return "${title} (${publishYear}) by ${author?.name}"
    //}

    String toString(){
        "${title}"
    }
}
