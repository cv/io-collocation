Refactoring := Object clone do (

   renameSlot := method(object, oldName, newName,

       object setSlot(newName, object getSlot(oldName))

       if(object getSlot("method renames") isNil,
            object setSlot("method renames", Object clone)            
       )
   
       object getSlot("method renames") setSlot(oldName, newName)

       object setSlot(oldName, method(
               rename := self getSlot("method renames") getSlot(call message name)
           
               stack := Coroutine currentCoroutine callStack
               "stack message name = " print
               stack at(2) message name println
           
               "stack message sender" print
               stack at(1) sender println

               "call sender = " print
               call sender print
           
               "call sender slot = " print
               call sender self getSlot(stack at(2) message name) println

               newMessage := call message setName(rename)
               self doMessage(newMessage)
           )
       )
       
       nil
   )    
)

Test := Object clone do (
    foo := method(bar)
    bar := method("bar" println)
)

"* Refactoring" println
Refactoring renameSlot(Test, "bar", "baz")

"* Calling" println
Test foo // blows up