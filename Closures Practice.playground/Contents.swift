import UIKit

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

//Sorting via function
func forward(_ s1: String, _ s2: String) -> Bool {
    return s1 < s2
}


var reversedNames = names.sorted(by: forward)

print(reversedNames)

//Closure Version of Above Function
reversedNames = names.sorted(by: { (s1:String, s2:String) in
    return s1 < s2
})

//Closure Version of Above Function
reversedNames = names.sorted(by: { s1, s2 in
    return s1 < s2
})

//Closure Version of Above Function
reversedNames = names.sorted(by: { s1, s2 in
    s1 < s2
})

//Closure Version of Above Function
reversedNames = names.sorted(by: { $0 < $1 })

//Closure Version of Above Function
reversedNames = names.sorted(){ $0 < $1 } //Trailing closure way

reversedNames = names.sorted { $0 < $1 } //If closure is the only argument required by the method

print(reversedNames)



