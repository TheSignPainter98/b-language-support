/* Some example program
 * Author: kcza
 * 2019-10-01
*/

MACHINE
	someTestMachine

SETS
	someSet

VARIABLES
	varA, varB

INVARIANT
	varA <: someSet & card(varA) <= 125

INITIALISATION
	varA := {}

OPERATIONS
	oo <-- someFunc(ii) = PRE ii : someSet
		THEN
			varB := varB \/ {ii}
			oo := card(varB)
		END
END
