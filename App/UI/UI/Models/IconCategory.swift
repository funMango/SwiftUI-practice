//
//  IconCategory.swift
//  UI
//
//  Created by 이민호 on 2023/11/08.
//

import Foundation

struct IconCategory: Identifiable, Hashable {
    let id = UUID()
    var categoryName: String
    var images: [String]
}
