Class {
	#name : #C3Number,
	#superclass : #Object,
	#instVars : [
		'y',
		'xStart',
		'xEnd',
		'value'
	],
	#category : #AOCAdventOfCode
}

{
	#category : #'as yet unclassified',
	#'squeak_changestamp' : 'leop 12/3/2023 12:50'
}
C3Number >> isAdjacentTo: aSymbol [
	"y ist +-1 -> x muss zwischen xStart-1 und xEnd+1 liegen"

	(y - aSymbol y) abs <= 1 ifTrue: [(aSymbol x >= (xStart - 1) and: [aSymbol x <= (xEnd + 1)]) ifTrue: [^ true]].
	^ false
]

{
	#category : #'as yet unclassified',
	#'squeak_changestamp' : 'leop 12/3/2023 12:31'
}
C3Number >> value [

	^ value
]

{
	#category : #'as yet unclassified',
	#'squeak_changestamp' : 'leop 12/3/2023 12:35'
}
C3Number >> valueFromLine: aString [

	value := aString from: xStart to: xEnd
]

{
	#category : #'as yet unclassified',
	#'squeak_changestamp' : 'leop 12/3/2023 11:45'
}
C3Number >> xEnd [

	^ xEnd
]

{
	#category : #'as yet unclassified',
	#'squeak_changestamp' : 'leop 12/3/2023 11:45'
}
C3Number >> xEnd: aNumber [

	xEnd := aNumber
]

{
	#category : #'as yet unclassified',
	#'squeak_changestamp' : 'leop 12/3/2023 11:45'
}
C3Number >> xStart [

	^ xStart
]

{
	#category : #'as yet unclassified',
	#'squeak_changestamp' : 'leop 12/3/2023 11:46'
}
C3Number >> xStart: aNumber [

	xStart := aNumber
]

{
	#category : #'as yet unclassified',
	#'squeak_changestamp' : 'leop 12/3/2023 12:39'
}
C3Number >> y [

	^ y
]

{
	#category : #'as yet unclassified',
	#'squeak_changestamp' : 'leop 12/3/2023 12:39'
}
C3Number >> y: aNumber [

	y := aNumber
]
