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
	(up floor1 floor2)
	(up floor2 floor3)
	(up floor3 floor4)
	(up floor4 floor5)
	(up floor5 floor6)
	(up floor6 floor7)
	(up floor7 floor8)
	(up floor8 floor9)
	(up floor9 floor10)

	(down floor10 floor9)
	(down floor9 floor8)
	(down floor8 floor7)
	(down floor7 floor6)
	(down floor6 floor5)
	(down floor5 floor4)
	(down floor4 floor3)
	(down floor3 floor2)
	(down floor2 floor1)

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