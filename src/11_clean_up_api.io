removeSlot("Collocation")

Collocation := Object clone do (
    with := method(fileName,
        
        readInput := method(fileName,
            File with (fileName) do (
                lines := readLines
                return lines
            )            
        )
        
        readWords := method(lines,
            regex := Regex clone setPattern("\\w+")
            words := lines map(line, regex setString(line) allMatches) flatten
            words map(string) map(asLowercase)            
        )
        
        wordFreq := method(words,
            frequencies := Map clone do(
                increment := method(key,
                    value := at(key)
                    if(value, put(key, value+1), put(key, 1))
                )
            )
        
            words foreach(word,
                frequencies increment(word)
            )
            return frequencies
        )
        
        instance := self clone
        instance fileName := fileName
        instance lines := readInput(fileName)
        instance words := readWords(instance lines)
        instance frequencies := wordFreq(instance words)
        return instance
    )
)