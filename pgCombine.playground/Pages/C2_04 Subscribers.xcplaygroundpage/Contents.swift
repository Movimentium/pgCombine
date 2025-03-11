//: [Previous](@previous)
/*:
 # C2_04: Subscribers
 As the counterparts to Publishers, **Subscribers** receive inputs from Publishers.
 We will understand how Subscribers interact within the Combine ecosystem.
 */
import Foundation
import Combine
import UIKit

//: 1. Create a new Just publisher, map some text as prefix, and assign to label.
[1, 5, 9]
    .publisher
    .sink { print($0) }

let lbl = UILabel()
Just("Miguel")
    .map { "Me llamo \($0)" }
    .assign(to: \.text, on: lbl)

print(lbl.text ?? "nil")

//: [Next](@next)
