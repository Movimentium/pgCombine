/*:
 # C2_02: Publishers: Just
 **Publishers** distributes elements to 1 or N Subscribers that it accepts, through the extension of Operators, to create data event chains.
 */
import Foundation
import Combine

//: 1. A simple publisher using `Just`, to produce once for each subscriber
let _ = Just("Hola mundo")
    .sink { valor in
        print("valor: \(valor)")
    }


//: 2. Taking advantage of `NotificationCenter`'s publisher
let notifCenter = NotificationCenter.default
let notif = Notification(name: .NSSystemClockDidChange)
let notifClockPublisher = notifCenter.publisher(for: .NSSystemClockDidChange)
    .sink { valor in
        print("valor: \(valor)")
    }

notifCenter.post(notif)

//: [Next](@next)
