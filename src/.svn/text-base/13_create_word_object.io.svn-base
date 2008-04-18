Word := Object clone do (
    
    with := method(word, frequency,
        instance := Word clone
        instance word := word
        instance frequency := frequency
        instance asString = method("#{word} (f=#{frequency})" interpolate)
        instance removeSlot("clone")
        instance removeSlot("with")
        instance
    )
)
