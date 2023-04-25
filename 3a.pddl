(define (problem bubble-example3)
    
    (:domain bubble)
    
    (:objects b - ball
            s - syrup
            t - tea
            cup1 cup2 - cups
            mango - flavor
    )
    
    (:init (not (in b cup1))
        (not (in s cup1))
        (not (in t cup1))
        (not (iced cup1))
        (not (mixed cup1))
        (not (hot cup1))

        (not (in b cup2))
        (not (in s cup2))
        (not (in t cup2))
        (not (iced cup2))
        (not (mixed cup2))
        (not (hot cup2))
        
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
    
    (:goal (or (and
            (in t cup1)
            (in b cup1)
            (in s cup1)
            (not (iced cup1))
            (not (hot cup1))
            (mixed cup1)
            (heated_ball b)
            (not (heated_syrup s))
            (not (heated_tea t))
            (flavored_syrup s mango)
            (flavored_ball b mango))
            
            (and
            (in t cup2)
            (in b cup2)
            (in s cup2)
            (not (iced cup2))
            (not (hot cup2))
            (mixed cup2)
            (heated_ball b)
            (not (heated_syrup s))
            (not (heated_tea t))
            (flavored_syrup s mango)
            (flavored_ball b mango))
        )
    )

)