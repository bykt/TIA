; Domain Lifts

(define (domain lifts)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; REQUIREMENTS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(:requirements 
	:durative-actions 
	:typing 
	:fluents
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; TYPES
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(:types lift person floor - object)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; PREDICATES
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(:predicates 
	(at ?x - (either person lift) ?f - floor)
	(in ?p - person ?l - lift)
	(up ?f1 ?f2 - floor)
	(down ?f1 ?f2 - floor)
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; FUNCTIONS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(:functions 
	(number ?f - floor)
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; ACTIONS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(:durative-action enter
	:parameters (?p - person ?l - lift ?f - floor)
	:duration (= ?duration 1)
	:condition (and
					(at start (at ?p ?f))
					(over all (at ?l ?f))
				)
	:effect (and 
				(at start (in ?p ?l))
				(at start (not (at ?p ?f)))
			)
)

(:durative-action exit
	:parameters (?p - person ?l - lift ?f - floor)
	:duration (= ?duration 1)
	:condition (and
					(over all (at ?l ?f))
					(at start (in ?p ?l))
				)
	:effect (and
				(at start (not (in ?p ?l)))
				(at start (at ?p ?f))
			)
)

(:durative-action move-up
	:parameters (?l - lift ?f1 ?f2 - floor)
	:duration (= ?duration 2)
	:condition (and
					(at start (at ?l ?f1))
					(over all (up ?f1 ?f2))
				)
	:effect (and
		(at start (not (at ?l ?f1)))
		(at end (at ?l ?f2))
	)
)

(:durative-action move-down
	:parameters (?l - lift ?f1 ?f2 - floor)
	:duration (= ?duration 2)
	:condition (and
					(at start (at ?l ?f1))
					(over all (down ?f1 ?f2))
				)
	:effect (and
		(at start (not (at ?l ?f1)))
		(at end (at ?l ?f2))
	)
)
)