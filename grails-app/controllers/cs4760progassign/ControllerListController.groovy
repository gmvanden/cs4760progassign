package cs4760progassign

class ControllerListController {

    def index() {
        grailsApplication.controllerClasses.each { c ->
            println "Controller: ${c.fullName}"
        }
        render(view: "index")
    }
}
