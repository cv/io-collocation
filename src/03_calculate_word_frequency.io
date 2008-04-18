Collocation do(
    wordFreq := method(words,
        freqs := Map clone do(
            increment := method(key,
                value := at(key)
                if(value, put(key, value+1), put(key, 1))
            )
        )
        
        words foreach(word,
            freqs increment(word)
        )
        return freqs
    )
)