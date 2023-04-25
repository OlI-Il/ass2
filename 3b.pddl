(define (problem bubble-example3)
    
    (:domain bubble)
    
    (:objects b - ball
            ls - syrup
            ms - syrup
            t - tea
            cup1 cup2 - cups
            mango lime - flavor
    )
    
    (:init (not (in b cup1))
        (not (in ms cup1))
        (not (in ls cup1))
        (not (in t cup1))
        (not (iced cup1))
        (not (mixed cup1))
        (not (hot cup1))

        (not (in b cup2))
        (not (in ms cup2))
        (not (in ls cup2))
        (not (in t cup2))
        (not (iced cup2))
        (not (mixed cup2))
        (not (hot cup2))
        
        (not (heated_ball b))
        (not (heated_syrup ms))
        (not (heated_syrup ls))
        (not (heated_tea t))
        (not (ball_added))
        (not (tea_added))
        (not (syrup_added))
        (not (ice_added))
        (flavored_syrup ms mango)
        (flavored_syrup ls lime)
    )
    
    (:goal (or (and
            (not (in b cup1))
            (in ms cup1)
            (in ls cup1)
            (iced cup1)
            (not (hot cup1))
            (mixed cup1)
            (not (heated_syrup ms))
            (heated_syrup ls)
            (flavored_syrup ms mango)
            (flavored_syrup ls lime))
            
            (and
            (not (in b cup2))
            (in ms cup2)
            (in ls cup2)
            (iced cup2)
            (not (hot cup2))
            (mixed cup2)
            (not (heated_syrup ms))
            (heated_syrup ls)
            (flavored_syrup ms mango)
            (flavored_syrup ls lime))
        )
    )

)