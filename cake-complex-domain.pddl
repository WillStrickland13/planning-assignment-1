(define (domain cake)
  (:requirements :strips)
  (:predicates
    (have ?c)
    (eaten ?c)
    (dirty ?c)
  )
  (:action eat
      :parameters (?c)
      :precondition (have ?c)
      :effect (and
          (not (have ?c))
          (eaten ?c)
      )
  )
  (:action bake
      :parameters (?c)
      :precondition (and
            (not (have ?c))
            (not (dirty ?c))
        )
      :effect (and (have ?c) (dirty ?c))
  )
  (:action clean
      :parameters (?c)
      :precondition (dirty ?c)
      :effect (
        not(dirty ?c)
        )
  )
)