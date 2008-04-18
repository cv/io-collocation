Bigram := Object clone do (
    with := method(word1, word2, frequency,
        instance := Object clone
        instance word1 := word1
        instance word2 := word2
        instance frequency := frequency
        instance asString = method("(#{word1} #{word2} / #{frequency})")
        instance removeSlot("with")
        instance removeSlot("clone")
        instance
    )
)