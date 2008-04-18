FrequencyMap = SortedMap clone do (
    asWords := method(
        self map(key, value,
            Word with(key, value)
        )
    )
    
    increment := method(key,
        value := at(key)
        if(value, 
            put(key, value+1), 
            put(key, 1)
        )
    )
)