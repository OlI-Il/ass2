(define (problem bubble-example2)
    
    (:domain bubble)
    
    (:objects b - ball
            s1 - syrup
            s2 - syrup
            t - tea
            cup - cups
            f1 - flavor
            f2 - flavor
    )
    
    (:init (not (in b cup))
        (not (in s1 cup))
        (not (in s2 cup))
        (not (in t cup))
        (not (iced))
        (not (ball_added))
        (not (tea_added))
        (not (syrup_added))
        (not (ice_added))
        (flavored_syrup s1 f1)
        (flavored_syrup s2 f2)
    )
    
    (:goal (and (iced)
            (not (in b cup))
            (in t cup)
            (in s1 cup)
            (in s2 cup)
            (not (ball_added))
            (tea_added)
            (syrup_added)
            (ice_added)
            (flavored_syrup s1 f1)
            (flavored_syrup s2 f2)
            )
            
    )

)