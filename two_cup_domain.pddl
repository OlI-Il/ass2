(define (domain bubble)

    (:requirements
        :strips
        :typing
    )

    (:types
        ball syrup tea - ingredients
        cups
        flavor
    )
    
    (:constants
        ball - ball
        syrup - syrup
        tea - tea
        cup1 cup2 - cups
        mango lime - flavor
    )


    (:predicates (in ?i - ingredients ?cup - cups)
                 (iced ?cup - cups)
                 (mixed ?cup - cups)
                 (hot ?cup - cups)
                 (ball_added)
                 (syrup_added)
                 (tea_added)
                 (ice_added)
                 (heated_ball ?b - ball)
                 (heated_syrup ?s - syrup)
                 (heated_tea ?t - tea)
                 (flavored_syrup ?s - syrup ?f - flavor)
                 (flavored_ball ?b - ball ?f - flavor)
    )
    
    
    (:action pour
        :parameters (?from - cups ?to - cups)
        :precondition (not (= ?from ?to))
        :effect (and (forall (?i - ingredients) (when (in ?i ?from) (in ?i ?to)))
                 (when (mixed ?from) (mixed ?to))
                 (when (hot ?from) (hot ?to))
                 (when (iced ?from) (iced ?to))
                 (not (mixed ?from))
                 (not (iced ?from))
        )
    )
    
    (:action add-ice
        :parameters (?cup - cups)
        :precondition(and (not (iced ?cup))
                    (not (ice_added))
        ) 
        :effect(and (iced ?cup)
                    (ice_added)
        )
    )
    
    
    (:action add-ball
        :parameters (?b - ball ?cup - cups)
        :precondition(and (not (in ?b ?cup))
                        (not (ball_added)) 
        )
        :effect(and (in ?b ?cup)
                    (ball_added)
        )
    )
    

    (:action add-syrup
        :parameters (?s - syrup ?cup - cups)
        :precondition(and (not (in ?s ?cup))
                        (not (syrup_added)) 
        )
        :effect(and (in ?s ?cup)
                    (syrup_added)
        )
    )
    
    (:action add-tea
        :parameters (?t - tea ?cup - cups)
        :precondition(and (not (in ?t ?cup))
                        (not (tea_added)) 
        )
        :effect(and (in ?t ?cup)
                    (tea_added)
        )
    )
    
    (:action mix
        :parameters (?b - ball ?s - syrup ?t - tea ?cup - cups)
        :precondition (and (in ?s ?cup)
                    (in ?t ?cup)
                    (not (in ?b ?cup))
        )
        :effect (mixed ?cup)
    )
    
    (:action mix
        :parameters (?b - ball ?s - syrup ?t - tea ?cup - cups ?f - flavor)
        :precondition (and (in ?s ?cup)
                    (in ?t ?cup)
                    (in ?b ?cup)
        )
        :effect (and (mixed ?cup)
                    (not (in ?b ?cup))
                    (when (flavored_ball ?b ?f)(flavored_syrup ?s ?f))
        )
        
    )
    
    (:action mix
        :parameters (?b - ball ?s - syrup ?t - tea ?cup - cups ?f - flavor)
        :precondition (and (not (in ?s ?cup))
                    (in ?t ?cup)
                    (in ?b ?cup)
        )
        :effect (and (not (in ?b ?cup))
                (in ?s ?cup)
                (when (flavored_ball ?b ?f)(flavored_syrup ?s ?f))
        )
    )
    
    (:action mix
        :parameters (?b - ball ?s - syrup ?t - tea ?cup - cups ?f - flavor)
        :precondition (and (not (in ?s ?cup))
                    (not (in ?t ?cup))
                    (in ?b ?cup)
        )
        :effect (and (in ?s ?cup)
                    (when (flavored_ball ?b ?f)(flavored_syrup ?s ?f))
                    (not (in ?b ?cup))
        )
    )
    
    (:action mix
        :parameters (?b - ball ?s - syrup ?t - tea ?cup - cups ?f - flavor)
        :precondition (and (in ?s ?cup)
                    (not (in ?t ?cup))
                    (in ?b ?cup)
        )
        :effect (and (not (in ?b ?cup))
                (when (flavored_ball ?b ?f)(flavored_syrup ?s ?f))
        )
    )
    
    (:action heat-syrup
        :parameters (?b - ball ?s - syrup ?t - tea ?cup - cups)
        :precondition (and (not (in ?b ?cup))
                    (in ?s ?cup)
                    (not (in ?t ?cup)) 
        )
        :effect (and
            (hot ?cup)
            (not (iced ?cup))
            (heated_syrup ?s)
        )
    )
    
    
    (:action heat-ball
        :parameters (?b - ball ?s - syrup ?t - tea ?cup - cups)
        :precondition (and (in ?b ?cup)
                    (not (in ?s ?cup))
                    (not (in ?t ?cup)) 
        )
        :effect (and
            (hot ?cup)
            (not (iced ?cup))
            (heated_ball ?b)
        )
    )
    
    
    (:action heat-tea
        :parameters (?b - ball ?s - syrup ?t - tea ?cup - cups)
        :precondition (and (not (in ?b ?cup))
                    (not (in ?s ?cup))
                    (in ?t ?cup)
        )
        :effect (and
            (hot ?cup)
            (not (iced ?cup))
            (heated_tea ?t)
        )
    )
    
    
    (:action heat-tea-syrup
        :parameters (?b - ball ?s - syrup ?t - tea ?cup - cups)
        :precondition (and (not (in ?b ?cup))
                    (in ?s ?cup)
                    (in ?t ?cup)
        )
        :effect (and
            (hot ?cup)
            (not (iced ?cup))
            (heated_tea ?t)
            (heated_syrup ?s)
        )
    )    
    
    (:action heat-ball-syrup
        :parameters (?b - ball ?s - syrup ?t - tea ?cup - cups)
        :precondition (and (in ?b ?cup)
                    (in ?s ?cup)
                    (not (in ?t ?cup))
        )
        :effect (and
            (hot ?cup)
            (not (iced ?cup))
            (heated_ball ?b)
            (heated_syrup ?s)
        )
    ) 
    
    (:action heat-ball-tea
        :parameters (?b - ball ?s - syrup ?t - tea ?cup - cups)
        :precondition (and (in ?b ?cup)
                    (not (in ?s ?cup))
                    (in ?t ?cup)
        )
        :effect (and
            (hot ?cup)
            (not (iced ?cup))
            (heated_ball ?b)
            (heated_tea ?t)
        )
    )
    
    
    (:action heat
        :parameters (?b - ball ?s - syrup ?t - tea ?cup - cups)
        :precondition (and (in ?b ?cup)
                    (in ?s ?cup)
                    (in ?t ?cup)
        )
        :effect (and
            (hot ?cup)
            (not (iced ?cup))
            (heated_ball ?b)
            (heated_syrup ?s)
            (heated_tea ?t)
        )
    )
)