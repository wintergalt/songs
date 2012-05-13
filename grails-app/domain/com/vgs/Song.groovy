package com.vgs

class Song {

	String title
	String body
	Artist artist
	Date dateCreated
	
    static constraints = {
		title(blank:false, maxSize:200)
		body(blank:false, size:1..5000)
		artist(nullable:false)
    }

	static belongsTo = [ artist : Artist ]
	
	String toString() {
		title
	}
}
