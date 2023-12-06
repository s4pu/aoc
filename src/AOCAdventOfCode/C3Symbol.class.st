Class {
	#name : #C3Symbol,
	#superclass : #Challenge3,
	#instVars : [
		'x',
		'y',
		'symbol',
		'count',
		'ratio'
	],
	#category : #AOCAdventOfCode
}

{
	#category : #'as yet unclassified',
	#'squeak_changestamp' : 'leop 12/3/2023 14:13'
}
C3Symbol >> addPart: aNumber [

	count isNil ifTrue: [count := 1] ifFalse: [count := count + 1].
	ratio isNil ifTrue: [ratio := aNumber] ifFalse: [ratio := ratio * aNumber]
]

{
	#category : #'as yet unclassified',
	#'squeak_changestamp' : 'leop 12/3/2023 14:06'
}
C3Symbol >> count [

	^ count
]

{
	#category : #'as yet unclassified',
	#'squeak_changestamp' : 'leop 12/3/2023 14:12'
}
C3Symbol >> ratio [

	^ ratio
]

{
	#category : #'as yet unclassified',
	#'squeak_changestamp' : 'leop 12/3/2023 14:00'
}
C3Symbol >> symbol [

	^ symbol
]

{
	#category : #'as yet unclassified',
	#'squeak_changestamp' : 'leop 12/3/2023 14:00'
}
C3Symbol >> symbol: aString [

	symbol := aString
]

{
	#category : #'as yet unclassified',
	#'squeak_changestamp' : 'leop 12/3/2023 11:42'
}
C3Symbol >> x [

	^ x
]

{
	#category : #'as yet unclassified',
	#'squeak_changestamp' : 'leop 12/3/2023 11:42'
}
C3Symbol >> x: aNumber [

	x := aNumber
]

{
	#category : #'as yet unclassified',
	#'squeak_changestamp' : 'leop 12/3/2023 11:42'
}
C3Symbol >> y [

	^ y
]

{
	#category : #'as yet unclassified',
	#'squeak_changestamp' : 'leop 12/3/2023 11:42'
}
C3Symbol >> y: aNumber [

	y := aNumber
]
