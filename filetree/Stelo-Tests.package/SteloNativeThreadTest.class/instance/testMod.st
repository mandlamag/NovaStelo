test
testMod
	| t |
	t := self newThread.
	t push: 10.
	t push: 5.
	self assert: t stack size equals: 2.
	t mod.
	self assert: t stack size equals: 1.
	self assert: t pop equals: 0.
	t push: -5.
	t push: 10.
	self assert: t stack size equals: 2.
	t mod.
	self assert: t stack size equals: 1.
	self assert: t pop equals: 5.