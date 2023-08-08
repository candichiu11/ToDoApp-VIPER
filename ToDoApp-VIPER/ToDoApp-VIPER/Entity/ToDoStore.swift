//
//  ToDoStore.swift
//  ToDoApp-VIPER
//
//  Created by Candi Lilun Chiu on 23.07.23.
//

import Foundation

class ToDoStore {
    
    private init() {}
    
    public private(set) var todos: [ToDoItem] = [
    ToDoItem(title: "Focus", content: "Decide on what you want to focus in your life"),
    ToDoItem(title: "Value", content: "Decide on what values are meaningful in your life"),
    ToDoItem(title: "Action", content: "Decide on what you should do to achieve empowering life")
    
    ]
    
    func addTodo(with todo: ToDoItem) {
        todos.append(todo)
    }
    
    func removeTodo(with todo: ToDoItem) {
        if let index = todos.firstIndex(where: {$0 === todo}) {
            todos.remove(at: index)
        }
        
        
    }
}
