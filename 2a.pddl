(define (problem bubble-example3)
    
    (:domain bubble)
    
    (:objects b - ball
            s - syrup
            t - tea
            cup - cups
            mango - flavor
    )
    
    (:init (not (in b cup))
        (not (in s cup))
        (not (in t cup))
        (not (iced))
        (not (mixed))
        (not (heated_ball b))
        (not (heated_syrup s))
        (not (heated_tea t))
        (not (ball_added))
        (not (tea_added))
        (not (syrup_added))
        (not (ice_added))
        (flavored_syrup s mango)
        (flavored_ball b mango)
    )
    
    (:goal (and
            (in t cup)
            (in b cup)
            (in s cup)
            (not (iced))
            (mixed)
            (heated_ball b)
            (not (heated_syrup s))
            (not (heated_tea t))
            (flavored_syrup s mango)
            (flavored_ball b mango)
            )
            
    )

)