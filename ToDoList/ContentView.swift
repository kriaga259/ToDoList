//
//  ContentView.swift
//  ToDoList
//
//  Created by Scholar on 7/28/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("To-Do List")
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
                Button {
                    
                } label: {
                    Text("+")
                }
                .font(.title)
                .fontWeight(.bold)
                
                //wb this works same? Button("+") {} ???
                
            }
            .padding() //push everything away from screen edge
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
