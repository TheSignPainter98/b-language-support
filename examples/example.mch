/* Some example program
 * Author: kcza
 * 2019-10-01
*/

MACHINE
	someTestMachine(asdf)

CONSTRAINTS
	asdf : NAT1

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
			|| oo := bool(card(varB) <= 10)
		END
END
