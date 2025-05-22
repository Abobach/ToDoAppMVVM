//
//  ViewModel.swift
//  ToDoApp
//
//  Created by Артем Кумакшев on 22.05.2025.
//

import Foundation

class TaskViewModel: ObservableObject{
    @Published var task: [Task] = []
    
    func addTask(title: String){
        let newTask = Task(title: title, isDone: false)
        task.append(newTask)
    }
    
    func toggleTask(id: UUID){
        if let index = task.firstIndex(where: { $0.id == id }) {
            task[index].isDone.toggle()
        }
    }
}
