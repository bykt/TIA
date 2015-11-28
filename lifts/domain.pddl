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
	:parameters (?p - person ?l - lift ?fl ?fp - floor)
	:duration (= ?duration 1)
	:condition (and
					(at start (at ?l ?fl))
					(at start (at ?p ?fp))
					(at start (in ?p ?l))
				)
	:effect (and
				(at end (not (in ?p ?l)))
				(at end (not (at ?p ?fp)))
				(at end (at ?p ?fl))
			)
)

(:durative-action move-up
	:parameters (?l - lift ?f1 ?f2 - floor)
	:duration (= ?duration (* 2 (- (number ?f2) (number ?f1))))
	;:duration (= ?duration 5)
	:condition (and
					(at start (at ?l ?f1))
					(at start (< (number ?f1) (number ?f2)))
				)
	:effect (and
		(at end (not (at ?l ?f1)))
		(at end (at ?l ?f2))
	)
)

(:durative-action move-down
	:parameters (?l - lift ?f1 ?f2 - floor)
	:duration (= ?duration (* 2 (- (number ?f1) (number ?f2))))
	;:duration (= ?duration 5)
	:condition (and
					(at start (at ?l ?f1))
					(at start (> (number ?f1) (number ?f2)))
				)
	:effect (and
		(at end (not (at ?l ?f1)))
		(at end (at ?l ?f2))
	)
)
)