import grails.util.Environment
import com.vgs.*

class BootStrap {

    def init = { servletContext ->
		switch (Environment.current) {
			case Environment.DEVELOPMENT:
				createDummyDataIfRequired()
				break
			case Environment.PRODUCTION:
				println "No special bootstrapping required for PRODUCTION"
				break
		}
    }

    def destroy = {
    }

	void createDummyDataIfRequired() {
		if(!Artist.findByName("John Doe")) {
			println "Fresh database. Creating John Doe artist."
			def johnDoe = new Artist(name:"John Doe").save()
			println "Creating John Doe's songs"
			def songOne = new Song(title:"Song One",
				body: "Song One Body...", artist: johnDoe).save()
		} else {
			println "Existing John Doe, skipping creation"
		}
	}
}
