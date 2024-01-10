//
//  TodoItem.swift
//  VisionTodo
//
//  Created by 고병학 on 1/9/24.
//

import Foundation

struct TodoItem: Hashable {
    var title: String
    var content: String?
    var createdAt: Date
    var updatedAt: Date
}
