//
//  Modile.swift
//  ToDoApp
//
//  Created by Артем Кумакшев on 22.05.2025.
//

import Foundation

struct Task: Identifiable{
    var id = UUID()
    var title: String
    var isDone: Bool
}
