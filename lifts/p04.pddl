; Problem p01

(define (problem lifts-pilot)

(:domain lifts)

(:objects 
	floor1 - floor
	floor2 - floor
	floor3 - floor
	floor4 - floor
	floor5 - floor
	floor6 - floor
	floor7 - floor
	floor8 - floor
	floor9 - floor
	floor10 - floor

	lift1 - lift
	lift2 - lift

	person1 - person
	person2 - person
	person3 - person
	person4 - person
	person5 - person
)

(:init
	(= (number floor1) 1)
	(= (number floor2) 2)
	(= (number floor3) 3)
	(= (number floor4) 4)
	(= (number floor5) 5)
	(= (number floor6) 6)
	(= (number floor7) 7)
	(= (number floor8) 8)
	(= (number floor9) 9)
	(= (number floor10) 10)

	(at lift1 floor3)
	(at lift2 floor8)

	(at person1 floor3)
	(at person2 floor1)
	(at person3 floor1)
	(at person4 floor9)
	(at person5 floor4)
)

(:goal (and
			(at person1 floor7)
			(at person2 floor5)
			(at person3 floor3)
			(at person4 floor1)
			(at person5 floor10)
		)
)

(:metric minimize (total-time))
)