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
	(in ?p – person ?l - lift)
	(desire ?p - person ?f - floor)
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
					(at start (at ?l ?f))
				)
	:effect (at end (in ?p ?l))
)

(:durative-action exit
	:parameters (?p - person ?l - lift ?f - floor)
	:duration (= ?duration 1)
	:condition (and
					(at start (at ?p ?f))
					(at start (at ?l ?f))
					(at start (in ?p ?l))
				)
	:effect (at end (not (in ?p ?l)))
)

(:durative-action move
	:parameters (?l - lift ?f1 ?f2 - floor)
	:duration (= ?duration (- (number ?f1) (number ?f2)))
	:condition (and
					(at start (at ?l ?f1))
					(at start (<> (number ?f1) (number ?f2)))
				)
	:effect (and
		(at end (not (at ?l ?f1)))
		(at end (at ?l ?f2))
	)
)
)