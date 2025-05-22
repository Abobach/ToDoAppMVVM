//
//  ContentView.swift
//  ToDoApp
//
//  Created by Артем Кумакшев on 22.05.2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = TaskViewModel()
    @State private var newTaskTitle = ""
    var body: some View {
        VStack {
            HStack{
                TextField("Добавить новую задачу", text: $newTaskTitle)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button("Добавить задачу"){
                    viewModel.addTask(title: newTaskTitle)
                    newTaskTitle = ""
                }
            }.padding()
            
            List{
                ForEach(viewModel.task){ task in
                    HStack{
                        Text(task.title)
                        Spacer()
                        Image(systemName: task.isDone ? "checkmark.circle.fill" : "circle")
                            .foregroundColor(.green)
                            .onTapGesture {
                                viewModel.toggleTask(id: task.id)
                            }
                    }
                }
            }
        }
        
    }
}

#Preview {
    ContentView()
}
