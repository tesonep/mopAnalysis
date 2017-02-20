instance creation
coverageEvent
	| str |
	inCoverage
		ifTrue: [ ^ self ].
		
	CoverageAnalysis ifFalse:[^self].

	[ inCoverage := true.
	str := thisContext sender sender sender method printString.
	(ListenedMethods includes: str)
		ifFalse: [ ListenedMethods add: str ] ]
		ensure: [ inCoverage := false ]