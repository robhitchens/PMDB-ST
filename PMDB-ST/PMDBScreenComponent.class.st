"
just a simple screen component for now to be used for understanding how to use seaside to 
develop web applications
"
Class {
	#name : #PMDBScreenComponent,
	#superclass : #WAComponent,
	#category : #'PMDB-ST'
}

{ #category : #initialization }
PMDBScreenComponent >> initialize [ 
	super initialize.
]

{ #category : #rendering }
PMDBScreenComponent >> renderContentOn: html [
	html heading level: 3; with: 'This is a heading'.
]
