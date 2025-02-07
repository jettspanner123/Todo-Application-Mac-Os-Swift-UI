//
//  ContentView.swift
//  Test
//
//  Created by Uddeshya Singh on 05/02/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    
    @State var tasks: Array<Task> = [
        Task(title: "Grocery Shopping", isCompleted: false, dueDate: Calendar.current.date(byAdding: .day, value: 1, to: Date())!, details: "Milk, eggs, bread, cheese"),
        Task(title: "Pay Bills", isCompleted: true, dueDate: Calendar.current.date(byAdding: .day, value: -2, to: Date())!, details: "Electricity and Internet"),
        Task(title: "Book Flight", isCompleted: false, dueDate: Calendar.current.date(byAdding: .day, value: 7, to: Date())!, details: "To New York"),
        Task(title: "Doctor's Appointment", isCompleted: false, dueDate: Calendar.current.date(byAdding: .day, value: 3, to: Date())!, details: "Checkup"),
        Task(title: "Finish Project", isCompleted: true, dueDate: Calendar.current.date(byAdding: .day, value: -5, to: Date())!, details: "Marketing campaign"),
        Task(title: "Walk the dog", isCompleted: false, dueDate: Date(), details: "Around the park"),
        Task(title: "Learn Swift", isCompleted: false, dueDate: Calendar.current.date(byAdding: .day, value: 30, to: Date())!, details: "Focus on SwiftUI"),
        Task(title: "Read a Book", isCompleted: true, dueDate: Calendar.current.date(byAdding: .day, value: -10, to: Date())!, details: "The Lord of the Rings")
        
    ]
    
    var body: some View {
        
    }
}

#Preview {
    ContentView()
}
