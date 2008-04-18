FrequencyMap := Map clone do (
    increment := method(key,
        value := at(key)
        if(value, put(key, value+1), put(key, 1))
    )
)

Collocation do (
    with := method(fileName,
        
        lines := method(
            self lines = File with (fileName) readLines
        )
        
        words := method(
            regex := Regex clone setPattern("\\w+")
            words := lines map(line, regex setString(line) allMatches) flatten
            self words = words map(word, word string asLowercase)
        )
        
        frequencies := method(
            freqMap := FrequencyMap clone
            words foreach(word,
                freqMap increment(word)
            )
            self frequencies = freqMap
        )
        
        instance := self clone
        instance fileName := fileName
        instance lines := getSlot("lines")
        instance words := getSlot("words")
        instance frequencies := getSlot("frequencies")
        instance
    )
)