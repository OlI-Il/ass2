(define (problem bubble-example1)
    
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
        (not (ball_added))
        (not (tea_added))
        (not (syrup_added))
        (not (ice_added))
        (flavored_syrup s mango)
        (flavored_ball b mango)
    )
    
    (:goal (and (iced)
            (in t cup)
            (in b cup)
            (in s cup)
            (flavored_syrup s mango)
            (flavored_ball b mango)
            )
            
    )

)