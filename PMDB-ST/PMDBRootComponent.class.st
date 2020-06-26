"
This is the root component for the PMDB application 

To start the application evaluate 'PMDB initilize' 
"
Class {
	#name : #PMDBRootComponent,
	#superclass : #WAComponent,
	#instVars : [
		'main'
	],
	#category : #'PMDB-ST-PMDB-ST'
}

{ #category : #testing }
PMDBRootComponent class >> canBeRoot [ 
	^ true
]

{ #category : #'class initialization' }
PMDBRootComponent class >> initialize [ 
	"PMDBRootComponent initialize"
	| app |
	app := WAAdmin register: self asApplicationAt: 'PMDB'."Will probably update late on in development"
	"Not going to use sessions for the time being, might use later on"
	"Not adding any external libraries right now, TODO add libraries once development on the UI
	starts"
]

{ #category : #hooks }
PMDBRootComponent >> children [ 
	^ { main }
]

{ #category : #initialization }
PMDBRootComponent >> initialize [ 
	super initialize.
	main := PMDBScreenComponent new.
]

{ #category : #accessing }
PMDBRootComponent >> main: aComponent [
	main := aComponent 
]

{ #category : #rendering }
PMDBRootComponent >> renderContentOn: html [ 
	html render: main
]

{ #category : #updating }
PMDBRootComponent >> updateRoot: anHtmlRoot [ 
	super updateRoot: anHtmlRoot.
	anHtmlRoot beHtml5.
	anHtmlRoot title: 'PMDB'.
]
