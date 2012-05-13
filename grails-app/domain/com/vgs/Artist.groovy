package com.vgs

class Artist {

	String name
	Date dateCreated

    static constraints = {
		name(blank:false)
    }

	static hasMany = [ songs : Song ]

	String toString() {
		name
	}
}
