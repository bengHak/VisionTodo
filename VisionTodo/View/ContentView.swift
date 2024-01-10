//
//  ContentView.swift
//  VisionTodo
//
//  Created by 고병학 on 1/8/24.
//

import SwiftUI

struct ContentView: View {
    @State var todos: [TodoItem] = []
    
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                Text("Todo List")
                    .font(.largeTitle)
                    .padding(.top, 20)
                Button("add todo") {
                    addTodo()
                }
                ForEach(self.todos, id: \.title, content: { element in
                    Text(element.title)
                })
            }
            .padding()
        }
    }
    
    func addTodo() {
        let date: Date = .init()
        let formatter: DateFormatter = .init()
        formatter.dateFormat = "dd HH:mm:ss"
        let dateString: String = formatter.string(from: date)
        todos.append(.init(
            title: "Todo \(dateString)",
            createdAt: date,
            updatedAt: date
        ))
    }
}

#Preview(windowStyle: .plain) {
    ContentView()
}
