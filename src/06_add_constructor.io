Collocation do (
    with := method(fileName,
        result := self clone
        result fileName := fileName
        result do(
            lines := readInput(fileName)
            words := readWords(lines)
            frequencies := wordFreq(words)
        )
        result
    )
    
    main := method(
        c := with("test_input.txt")
        "Lines: " print
        c lines println
        println
        
        "Words: " print
        c words println
        println
        
        "Frequencies: " print
        c frequencies println
        println
        
        c
    )
)