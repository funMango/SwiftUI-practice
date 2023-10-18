//: A UIKit based Playground for presenting user interface
  
import UIKit

func printNumbers() {
    print("1")
    asyncFunction(completionHandler: {
        print("async function finish") // Async 함수가 끝날 때 실행될 클로저를 넘김.
    })
    print("3")
}

func asyncFunction(completionHandler: @escaping () -> Void) {
    DispatchQueue.main.async {
        print("2")
        completionHandler() // -> Async 함수가 끝나는 시점에 넘겨 받은 completionHandler 호출
    }
}
