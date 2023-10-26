//
//  ToDoItem.swift
//  ListAndNav
//
//  Created by 이민호 on 10/16/23.
//

import Foundation

struct ToDoItem : Identifiable {
    var id = UUID()
    var task: String
    var imageName: String
}
