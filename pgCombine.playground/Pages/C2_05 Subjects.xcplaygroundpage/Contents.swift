//: [Previous](@previous)
/*:
 # C2_05: Subjects
 A Subject is consider a special type of Publisher, conforming to its own protocol, the Subject protocol. Apple defines subjects as
 
 > A publisher that exposes a method for outside callers to publish elements.
 
 A publisher that you can use to inject values into a stream, done through one of its required methods, send(), to commonly bridge existing imperative code with Combine.
 
 */
import Foundation
import Combine
import UIKit

//: 1. Declare an Int PassthroughSubject
let subject01 = PassthroughSubject<Int, Never>()
//: 2. Attach a subscriber to the subject
let subscription = subject01
    .sink { print($0) }

//: 3. Publish the value `94`, via the subject, directly
subject01.send(94)

//: 4. Connect subject to a publisher, and publish the value `29`
Just(29)
    .subscribe(subject01)


//: 5. Declare another subject, a CurrentValueSubject, with an initial `I am a...` value cached
let subject02 = CurrentValueSubject<String, Never>("I am a...")
//: 6. Attach a subscriber to the subject
let suscription02 = subject02
    .sink { print($0) }
//: 7. Publish the value `Subject`, via the subject, directly
subject02.send("Subject")


//: [Next](@next)
