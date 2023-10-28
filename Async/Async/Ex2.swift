//
//  Ex2.swift
//  Async
//
//  Created by 이민호 on 10/20/23.
//

import SwiftUI

struct Ex2: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

func sumFrom (_ start: Int,_ end: Int) async -> Int{
    var ans: Int = 0
    for i in start...end{
        ans += i
    }
    return ans
}
// 예제 2번: withTaskGroup으로 예제 1번 변형하기
func groupSum() async -> Int{
    var result: Int = 0
    var indexlist = [0, 50]
    await withTaskGroup(of: (Int).self) { group in
        for i in indexlist{
            group.addTask{
                return (await sumFrom(i + 1, i + 50))
            }
        }
        //요소 추가된 group 을 await로 부르기
        for await data in group{
            result += data
        }
    }
    
    return result
}

#Preview {
    Ex2()
}
