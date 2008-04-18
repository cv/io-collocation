FrequencyMap do (
    asBigrams := method(
        words := asWords
        bigrams := Map clone
        for(i, 0, words size,
            bigrams put(words at(i) asSimpleString, words at(i+1))
        )
        bigrams
    )
)