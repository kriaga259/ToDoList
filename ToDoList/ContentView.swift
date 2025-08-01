//
//  ContentView.swift
//  ToDoList
//
//  Created by Scholar on 7/28/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var showNewTask = false //keep track whether NewToDoView is open/closed
    @Query var toDos: [ToDoItem] //to read info from SwiftData, load all ToDoItem objs into 1 arr
    
    var body: some View {
        VStack {
            HStack {
                Text("To-Do List")
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
                Button {
                    withAnimation {
                        showNewTask = true
                    }
                } label: {
                    Text("+")
                }
                .font(.title)
                .fontWeight(.bold)
                
            }
            .padding() //push everything away from screen edge
            Spacer()
            
            List {
                ForEach(toDos) { toDoItem in
                    Text(toDoItem.title)
                }
            }
        }
        
        if showNewTask {
            NewToDoView()
        }
    }
}

#Preview {
    ContentView()
}
