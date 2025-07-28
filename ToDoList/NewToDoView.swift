//
//  NewToDoView.swift
//  ToDoList
//
//  Created by Scholar on 7/28/25.
//

import SwiftUI

struct NewToDoView: View {
    var body: some View {
        VStack {
            Text("Task Title")
                .font(.title2)
                .fontWeight(.semibold)
            TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .padding()
//                .cornerRadius(15)
                .background(Color(.systemGroupedBackground))
                .padding()
            
            Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                Text("Is it important?")
                    .font(.title3)
            }
            Button {
            
            } label: {
                Text("Save")
            }
        }
        .padding()
    }
}

#Preview {
    NewToDoView()
}
