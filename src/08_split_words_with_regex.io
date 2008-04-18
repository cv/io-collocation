Collocation do (
    readWords := method(lines,
        r := Regex clone setPattern("\\w+")
        result := lines map(line, 
            r setString(line) allMatches
        ) flatten
        result map(string) map(asLowercase)
    )
)