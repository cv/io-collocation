SortedMap := Map clone do (
    order := list()
    
    put = method(k, v,
        order append(k)
        resend
    )
        
    foreach = method(
        key := call argAt(0)
        value := call argAt(1)
        body := call argAt(2)
        
        order foreach(k,
            call sender setSlot(key name, k)
            call sender setSlot(value name, at(k))
            call sender doMessage(body)
        )
    )
)