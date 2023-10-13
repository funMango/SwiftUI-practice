//
//  Orange.swift
//  UIPractice
//
//  Created by 이민호 on 10/13/23.
//

import SwiftUI

struct Orange: View {
    @State private var orangeCnt: Int?
    @State private var boxAmount: Int?
    @State private var boxCnt: Int = 0
    @State private var remainOrange: Int = 0
    @State private var isPressed = false
    
    let title = "귤을 박스에 나누어 담는 계산기"
        
    var body: some View {
        VStack {
            Text(title)
                .font(.system(size: 55))
                .fontWeight(.bold)
                .frame(minWidth: 350, alignment: .leading)
                .padding(.top, 30)
                .padding(.bottom, 40)
            
            
            Group {
                VStack {
                    Text("귤의 총 개수")
                        .font(.system(size: 15))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom, -5)
                    TextField("귤개수를 입력해 주세요", value: $orangeCnt, format: .number)
                        .textFieldStyle(.roundedBorder)
                        
                }
                .padding(.bottom, -10)
                
                VStack {
                    Text("박스한개당 귤의 개수")
                        .font(.system(size: 15))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom, -5)
                    TextField("박스용량을 입력해 주세요", value: $boxAmount, format: .number)
                        .textFieldStyle(.roundedBorder)
                }
            }
            .padding(.horizontal, 20)
            .padding(.bottom, 30)
            
            
            if isPressed {
                VStack(spacing: 6) {
                    Text("귤박스 개수는 \(boxCnt)개입니다.")
                        .font(.system(size: 30))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("남은 귤 개수는 \(remainOrange)개입니다.")
                        .font(.system(size: 30))
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 30)
                .padding(.horizontal, 20)
            }
            
            Button(action: {
                calRemainOrange(orangeCnt, boxAmount)
                isPressed = true
            }, label: {
                Text("계산")
                    .frame(maxWidth: .infinity)
            })
            .buttonStyle(.borderedProminent)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 20)
            
            Spacer()
        }
    }
    
    func calRemainOrange(_ orangeCnt: Int?, _ boxAmount: Int?) {
        if let oCnt = orangeCnt , let bCnt = boxAmount {
            remainOrange =  oCnt % bCnt
            boxCnt = oCnt / bCnt
        }
    }
}

#Preview {
    Orange()
}
