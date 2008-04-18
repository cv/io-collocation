Collocation do (
    readWords := method(lines,
        result := list()
        lines foreach(line, result append (line split)) flatten        
    )
)