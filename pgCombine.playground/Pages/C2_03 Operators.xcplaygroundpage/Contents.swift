//: [Previous](@previous)
/*:
 # C2_03: Operators
 Apple provide you with pre-built functions that extend your Publishers, helping you refine your logic, and these are called **Operators**.
 */
import Foundation
import Combine

//: 1. Create a new publisher operator, to square each number, using `map()`
[2,3,5,7,11]
    .publisher
    .map { $0 * $0 }
    .sink { print($0) }


//: 2. Use `decode()` with `map()` to convert a REST response to an object
let url = URL(string: "https://jsonplaceholder.typicode.com/posts")!

struct Tarea: Decodable {
    let id: Int
    let title: String
    let userId: Int
    let body: String
}

let dataPublisher = URLSession.shared.dataTaskPublisher(for: url)
    .map { $0.data }
    .decode(type: [Tarea].self, decoder: JSONDecoder())

let cancellableSink = dataPublisher
    .sink { completion in
        print(completion)
    } receiveValue: { items in
        var i = 1
        items.forEach { item in
            print("---------------\ni: ", i)
            dump(item)
            i += 1
        }
    }


//: [Next](@next)
