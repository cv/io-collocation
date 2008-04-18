Collocation do (
    main := method(
        c := with("test/test_input.txt")        
        "Words: " print
        c words println
        "" println
        
        "Frequencies: " print
        c frequencies asWords println
        "" println
        
        "Bigrams " print
        c frequencies asBigrams println
        
        c
    )
)
