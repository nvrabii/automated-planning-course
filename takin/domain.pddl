;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Takin world
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (domain TAKIN)
    (:requirements :strips :typing)
    (:types place block)
    (:predicates
           (on ?x - block ?y - place)
           (free ?x - block)
           (neighbors ?x - place ?y - place)
    )

    (:action swap
         :parameters (?p1 - place ?p2 - place ?b1 - block ?b2 - block)
         :precondition (and (neighbors ?p1 ?p2) (or (free ?b1) (free ?b2)) (on ?b1 ?p1) (on ?b2 ?p2))
         :effect
         (and
            (on ?b1 ?p2)
            (on ?b2 ?p1)
            (not (on ?b1 ?p1))
            (not (on ?b2 ?p2))
         )
    )
)
