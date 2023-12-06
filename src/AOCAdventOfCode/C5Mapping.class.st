Class {
	#name : #C5Mapping,
	#superclass : #Challenge5,
	#instVars : [
		'destinationRangeStarts',
		'sourceRangeStarts',
		'rangeLengths'
	],
	#category : #AOCAdventOfCode
}

{
	#category : #'as yet unclassified',
	#'squeak_changestamp' : 'leop 12/5/2023 08:55'
}
C5Mapping class >> newFrom: anArray [

	| newMapping destinationStarts sourceStarts rangeLengths |
	newMapping := C5Mapping new.
	destinationStarts := OrderedCollection new.
	sourceStarts := OrderedCollection new.
	rangeLengths := OrderedCollection new.
	anArray do: [:line | | parts |
		parts := line findBetweenSubStrs: #(' ').
		destinationStarts add: (parts at: 1) asNumber.
		sourceStarts add: (parts at: 2) asNumber.
		rangeLengths add: (parts at: 3) asNumber].
	^ newMapping
		destinationRangeStarts: destinationStarts;
		sourceRangeStarts: sourceStarts;
		rangeLengths: rangeLengths;
		yourself
]

{
	#category : #'as yet unclassified',
	#'squeak_changestamp' : 'leop 12/5/2023 08:12'
}
C5Mapping >> destinationRangeStarts: anArray [

	destinationRangeStarts := anArray.
]

{
	#category : #'as yet unclassified',
	#'squeak_changestamp' : 'leop 12/5/2023 09:21'
}
C5Mapping >> map: aNumber [

	sourceRangeStarts doWithIndex: [:currSourceStart :index | | currRangeLength currDestStart |
		currRangeLength := rangeLengths at: index.
		currDestStart := destinationRangeStarts at: index.
		"Wenn aNumber in range ist, schau, wie groß der Abstand ist"
		(currSourceStart <= aNumber and: [currSourceStart + currRangeLength > aNumber]) ifTrue: [ | diff |
			diff := aNumber - currSourceStart.
			^ currDestStart + diff]].
	^ aNumber
]

{
	#category : #'as yet unclassified',
	#'squeak_changestamp' : 'leop 12/5/2023 09:21'
}
C5Mapping >> mapSlow: aNumber [

	sourceRangeStarts doWithIndex: [:currSourceStart :index | | currRangeLength currDestStart |
		currRangeLength := rangeLengths at: index.
		currDestStart := destinationRangeStarts at: index.
		(currSourceStart to: currSourceStart + currRangeLength) doWithIndex: [:source :srcIndx | source = aNumber ifTrue: [^ currDestStart + (srcIndx - 1)]]].
	^ aNumber
]

{
	#category : #'as yet unclassified',
	#'squeak_changestamp' : 'leop 12/5/2023 08:12'
}
C5Mapping >> rangeLengths: anArray [

	rangeLengths := anArray.
]

{
	#category : #'as yet unclassified',
	#'squeak_changestamp' : 'leop 12/5/2023 08:12'
}
C5Mapping >> sourceRangeStarts: anArray [

	sourceRangeStarts := anArray.
]
