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
	person6 - person
	person7 - person
	person8 - person
	person9 - person
	person10 - person
	person11 - person
	person12 - person
	person13 - person
	person14 - person
	person15 - person
	person16 - person
	person17 - person
	person18 - person
	person19 - person
	person20 - person
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
	(at person6 floor3)
	(at person7 floor8)
	(at person8 floor3)
	(at person9 floor10)
	(at person10 floor5)
	(at person11 floor6)
	(at person12 floor2)
	(at person13 floor9)
	(at person14 floor7)
	(at person15 floor3)
	(at person16 floor4)
	(at person17 floor1)
	(at person18 floor10)
	(at person19 floor8)
	(at person20 floor7)
)

(:goal (and
			(at person1 floor3)
			(at person2 floor1)
			(at person3 floor1)
			(at person4 floor9)
			(at person5 floor4)
			(at person6 floor3)
			(at person7 floor8)
			(at person8 floor3)
			(at person9 floor10)
			(at person10 floor5)
			(at person11 floor6)
			(at person12 floor2)
			(at person13 floor9)
			(at person14 floor7)
			(at person15 floor3)
			(at person16 floor2)
			(at person17 floor6)
			(at person18 floor9)
			(at person19 floor2)
			(at person20 floor8)
		)
)

(:metric minimize (total-time))
)