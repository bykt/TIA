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
			(at person1 floor7)
			(at person2 floor5)
			(at person3 floor3)
			(at person4 floor1)
			(at person5 floor10)
			(at person6 floor6)
			(at person7 floor4)
			(at person8 floor8)
			(at person9 floor2)
			(at person10 floor1)
			(at person11 floor9)
			(at person12 floor9)
			(at person13 floor7)
			(at person14 floor3)
			(at person15 floor1)
			(at person16 floor5)
			(at person17 floor6)
			(at person18 floor6)
			(at person19 floor8)
			(at person20 floor6)
		)
)

(:metric minimize (total-time))
)